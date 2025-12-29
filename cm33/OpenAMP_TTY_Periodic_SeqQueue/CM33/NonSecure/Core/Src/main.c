/**
  ******************************************************************************
  * @file    main.c
  * @author  MCD Application Team
  * @brief   Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "copro_sync.h"
#include "openamp.h"
#include "virt_uart.h"   // For RPMSG_SERVICE_NAME and VIRT_UART_Init

/* Private includes ----------------------------------------------------------*/
/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define MAX_BUFFER_SIZE RPMSG_BUFFER_SIZE

/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
COM_InitTypeDef COM_Init;
IPCC_HandleTypeDef hipcc;

/* USER CODE BEGIN PV */
VIRT_UART_HandleTypeDef huart0;
VIRT_UART_HandleTypeDef huart1;

//OpenAMP_TTY_Periodic_SeqQueue: Create a struct that gets reused for BME280
typedef struct
{
    uint32_t seq;
    uint32_t timestamp_ms;
    uint32_t value;       // dummy payload for now
} sample_msg_t;

//OpenAMP_TTY_Periodic_SeqQueue: Add a ring buffer
#define SAMPLE_Q_DEPTH 8

static sample_msg_t sample_q[SAMPLE_Q_DEPTH];
static volatile uint8_t q_head = 0;
static volatile uint8_t q_tail = 0;
static volatile uint32_t dropped_samples = 0;

//OpenAMP_TTY_Periodic_SeqQueue:  a Helper Macro
#define Q_NEXT(idx) (((idx) + 1) % SAMPLE_Q_DEPTH)

//OpenAMP_TTY_Periodic_SeqQueue: Add dummy producer state
static uint32_t sample_seq = 0;
static uint32_t last_sample_tick = 0;

//OpenAMP_TTY_Periodic_SeqQueue: Define a framed RPMsg payload message to fix the alignment issue
#define MSG_MAGIC 0xA5A5A5A5

typedef struct __attribute__((packed)) {
    uint32_t magic; // 0xA5A5A5A5
    uint32_t seq;
    uint32_t timestamp_ms;
    uint32_t value;
} rpmsg_frame_t;


// Add these Global variables for OpenAMP_TTY_Periodic example
volatile uint8_t VirtUart0Ready = 0;
// use this for huart1 periodic, and uncomment attribute
// volatile uint8_t VirtUart1Ready __attribute__((unused)) = 0;//


/* Exported variables --------------------------------------------------------*/
/* Private function prototypes -----------------------------------------------*/
static void MX_IPCC_Init(void);
void VIRT_UART0_RxCpltCallback(VIRT_UART_HandleTypeDef *huart);
void VIRT_UART1_RxCpltCallback(VIRT_UART_HandleTypeDef *huart);

//OpenAMP_TTY_Periodic_SeqQueue: forward declaration
static int queue_push(const sample_msg_t *msg);
static int queue_pop(sample_msg_t *msg);

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Main program
  * @param  None
  * @retval int
  */
int main(void)
{
  unsigned int counter = 0;

  /* 1. Hardware Init first */
  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();


   /* Initialize led */
  BSP_LED_Init(LED3);
  BSP_LED_On(LED3);

  //loc_printf ("\r\n Starting OpenAMP application (%s: %s) \r\n", __DATE__, __TIME__);

  /* IPCC initialisation */
  MX_IPCC_Init();

  if(!IS_DEVELOPER_BOOT_MODE())
  {
    /*Corpo Sync Initialization*/
    CoproSync_Init();
  }


#if defined (RPMSG_LATE_ATTACH)
  /*
   * To enable only if the firmware is loaded by U-Boot
   * Do some works waiting Kick for the Host processor
   */
  while (OPENAMP_check_for_message())
  {
    BSP_LED_Toggle(LED3);
    HAL_Delay(1000);
  }
#endif /* RPMSG_LATE_ATTACH */

  //loc_printf("CM33 main SystemCoreClockUpdate \r\n");
  /* Update System clock variable */
  SystemCoreClockUpdate();

  /* Latha:2. Give the UART a tiny moment to stabilize */
  HAL_Delay(100);
  //loc_printf("\r\n\r\n 2.--- M33 BOOTING ---\r\n");

  /*3. OpenAmp initialisation ---------------------------------*/
  MX_OPENAMP_Init(RPMSG_REMOTE, NULL);

  //loc_printf("Linux ready, creating virtual UART endpoints\r\n");

  if (VIRT_UART_Init(&huart0) != VIRT_UART_OK) {
    //loc_printf("VIRT_UART_Init UART0 failed.\r\n");
    Error_Handler();
  }

  //loc_printf("Virtual UART1 OpenAMP-rpmsg channel creation\r\n");
  if (VIRT_UART_Init(&huart1) != VIRT_UART_OK) {
    //loc_printf("VIRT_UART_Init UART1 failed.\r\n");
    Error_Handler();
  }

  /*Need to register callback for message reception by channels*/
  if(VIRT_UART_RegisterCallback(&huart0, VIRT_UART_RXCPLT_CB_ID, VIRT_UART0_RxCpltCallback) != VIRT_UART_OK)
  {
   Error_Handler();
  }
  if(VIRT_UART_RegisterCallback(&huart1, VIRT_UART_RXCPLT_CB_ID, VIRT_UART1_RxCpltCallback) != VIRT_UART_OK)
  {
    Error_Handler();
  }

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  //loc_printf("CM33 main loop entered\r\n");
  while (1)
  {
	  //  first check for messages
	  OPENAMP_check_for_message();

	  //OpenAMP_TTY_Periodic_SeqQueue: 1 Hz dummy producer
	  // This does not send anything, it only produces samples, mimics the sensor data
	  if (HAL_GetTick() - last_sample_tick >= 1000)
	  {
	      last_sample_tick = HAL_GetTick();

	      sample_msg_t s;
	      s.seq = sample_seq++;
	      s.timestamp_ms = last_sample_tick;
	      s.value = s.seq;   // simple dummy payload

	      queue_push(&s);
	  }

	  //OpenAMP_TTY_Periodic_SeqQueue: TX consumer part - Add TX logic(consumer)
	  // This is the RPMsg task
	  if (VirtUart0Ready) // this is added mainly for testing
	  {
	      sample_msg_t out;

	      // raw sample_msg_t queued is unframed, so TTY looses alignment
	      // so use framed RPMsg payload only on the consumer side
	      if (queue_pop(&out) == 0)
	      {
	          rpmsg_frame_t frame;

	          frame.magic = MSG_MAGIC;
	          frame.seq = out.seq;
	          frame.timestamp_ms = out.timestamp_ms;
	          frame.value = out.value;

	         if( VIRT_UART_Transmit(&huart0,
	                             (uint8_t *)&frame,
								 sizeof(frame)) != VIRT_UART_OK)
          {
            // add this later
            //dropped_tx++;
          }
	      }
	  }


    if(counter++ == 200000)
    {
        BSP_LED_Toggle(LED3);
        counter = 0;
    }
  }
  /* USER CODE END WHILE */

  /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */

}

/**
  * @brief IPPC Initialization Function
  * @param  None
  * @retval None
  */
static void MX_IPCC_Init(void)
{

  hipcc.Instance = IPCC1;
  if (HAL_IPCC_Init(&hipcc) != HAL_OK)
  {
     Error_Handler();
  }
  /* IPCC interrupt Init */
  HAL_NVIC_SetPriority(IPCC1_RX_IRQn, DEFAULT_IRQ_PRIO, 0);
  HAL_NVIC_EnableIRQ(IPCC1_RX_IRQn);
}

//OpenAMP_TTY_Periodic_SeqQueue: Queue Helper Function
static int queue_push(const sample_msg_t *msg)
{
	__disable_irq(); // this is critical section start in STM

    uint8_t next = Q_NEXT(q_head);

    if (next == q_tail)
    {
        dropped_samples++;
        __enable_irq();
        return -1; // queue full
    }

    sample_q[q_head] = *msg;
    q_head = next;

    __enable_irq();// this is critical section end in STM

    return 0;
}

//OpenAMP_TTY_Periodic_SeqQueue: Queue Helper Function
static int queue_pop(sample_msg_t *msg)
{
	__disable_irq(); // this is critical section start in STM

    if (q_tail == q_head)
    {
    	__enable_irq();
        return -1; // empty
    }

    *msg = sample_q[q_tail];
    q_tail = Q_NEXT(q_tail);

    __enable_irq();// this is critical section end in STM

    return 0;
}

void VIRT_UART0_RxCpltCallback(VIRT_UART_HandleTypeDef *huart)
{
	// Latha: code commented out for periodic send message

    /*loc_printf("Msg received on VIRTUAL UART0 channel:  %s \n\r", (char *) huart->pRxBuffPtr);*/

    /* copy received msg in a variable to sent it back to master processor in main infinite loop*/
    /*VirtUart0ChannelRxSize = huart->RxXferSize < MAX_BUFFER_SIZE? huart->RxXferSize : MAX_BUFFER_SIZE-1;
    memcpy(VirtUart0ChannelBuffRx, huart->pRxBuffPtr, VirtUart0ChannelRxSize);

    */

	// No need to do memcpy,we don't care about echo for periodic, but this triggers transmit in the mainloop
    //VirtUart0RxMsg = SET;

    // Mark channel ready for periodic transmit
	//By setting VirtUart0Ready = 1 in the callback, the CM33 waits for that first message before it starts the heartbeat.
     VirtUart0Ready = 1;
    // Latha: code commented out for periodic send message
}

void VIRT_UART1_RxCpltCallback(VIRT_UART_HandleTypeDef *huart)
{
	// Latha: code commented out for periodic send message
    /*loc_printf("Msg received on VIRTUAL UART1 channel:  %s \n\r", (char *) huart->pRxBuffPtr);*/

    /* copy received msg in a variable to sent it back to master processor in main infinite loop*/
    /*
    VirtUart1ChannelRxSize = huart->RxXferSize < MAX_BUFFER_SIZE? huart->RxXferSize : MAX_BUFFER_SIZE-1;
    memcpy(VirtUart1ChannelBuffRx, huart->pRxBuffPtr, VirtUart1ChannelRxSize);

    */
	// No need to do memcpy,we don't care about echo for periodic, but this triggers transmit in the mainloop
//    VirtUart1RxMsg = SET;


	//By setting VirtUart1Ready = 1 in the callback, the CM33 waits for that first message before it starts the heartbeat.
	//VirtUart1Ready = 1;
    // Latha: code commented out for periodic send message
}

/**
  * @brief  Callback from IPCC Interrupt Handler: Remote Processor asks local processor to shutdown
  * @param  hipcc IPCC handle
  * @param  ChannelIndex Channel number
  * @param  ChannelDir Channel direction
  * @retval None
  */
void CoproSync_ShutdownCb(IPCC_HandleTypeDef * hipcc, uint32_t ChannelIndex, IPCC_CHANNELDirTypeDef ChannelDir)
{
  VIRT_UART_DeInit(&huart0);
  VIRT_UART_DeInit(&huart1);
  BSP_COM_DeInit(COM_VCP_CM33);
  OPENAMP_DeInit();
  /* Deinitialize the LED3 */
  BSP_LED_DeInit(LED3);
  /* When ready, notify the remote processor that we can be shut down */
  HAL_IPCC_NotifyCPU(hipcc, ChannelIndex, IPCC_CHANNEL_DIR_RX);
}


#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  while (1)
  {
  }
}
#endif /* USE_FULL_ASSERT */


/**
  * @brief  Callback from IPCC Interrupt Handler: Remote Processor asks local processor to shutdown
  * @param  hipcc IPCC handle
  * @param  ChannelIndex Channel number
  * @param  ChannelDir Channel direction
  * @retval None
  */
void Error_Handler(void)
{
  while(1)
  {
  }
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
