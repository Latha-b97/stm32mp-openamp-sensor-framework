## <b>OpenAMP_TTY_Periodic SequenceQueue Description</b>

-  It demonstrates How to use OpenAMP MW + Virtual UART to create an Inter-Processor Communication channel seen as TTY device in Linux OS.
-  This project deals with CPU2 (Cortex-M33) firmware and requires Linux OS running on CPU1 (Cortex-A35).

- Following command should be done in Linux console to run the example :

        stty -onlcr -echo -F /dev/ttyRPMSG0
        cat /dev/ttyRPMSG0 &
        stty -onlcr -echo -F /dev/ttyRPMSG1
        cat /dev/ttyRPMSG1 &
        echo "Hello Virtual UART0" >/dev/ttyRPMSG0
        echo "Hello Virtual UART1" >/dev/ttyRPMSG1

You should get "Hello Virtual UART0" and "Hello Virtual UART1" in Linux console

### <b>Keywords</b>

OpenAMP, RPMsg, TFM, IPCC, Inter-Processor Communication

### <b>Description</b>

In Echo project, CM33 waits for the data to be first sent from Linux and echos it back. (i.e stays idle until it recevies data from Linux). Here in period CM33 need to send data(heartbeat) every 1 second.


### <b>Troubleshooting</b>

LED
LED is supposed to blink ornage. Upon "echo start > /sys/class/remoteproc/remoteproc1/state", LED 9 blinks orange, but I am not sure whether it is a correct indicator.

First when tried out, no Heartbeat count was printed, to debug, "loc_printf" is to print the debug logs in the PuTTy. I opened the PuTTY and connected to the serial port ( /dev/ttyACM0, 115200, 8 bits), but it was printing gibberish, not the logs added in the main(). It looked like there was a conflict that CM33 asked for the ownership of the UART 5. Anyway, this is nothing to do with the RPMsg.

So, remove all the debug logs "loc_printf" as well as the
/* #if defined(VALID_OUTPUT_TERMINAL_IO) && defined (GNUC)
initialise_monitor_handles();
#else
if(ResMgr_Request(RESMGR_RESOURCE_RIFSC, STM32MP25_RIFSC_UART5_ID) == RESMGR_STATUS_ACCE
{
COM_Init.BaudRate = 115200;
COM_Init.WordLength = UART_WORDLENGTH_8B;
COM_Init.StopBits = UART_STOPBITS_1;
COM_Init.Parity = UART_PARITY_NONE;
COM_Init.HwFlowCtl = UART_HWCONTROL_NONE;


//COM_Init.OverSampling = UART_OVERSAMPLING_16; // Add this for stability

// Initialize and select COM1 which is the COM port associated with current Core
BSP_COM_Init(COM_VCP_CM33, &COM_Init);
BSP_COM_SelectLogPort(COM_VCP_CM33);
}
#endif */

In the while loop, if I add huart0.rvdev != NULL, HeartBeat count is not happening.
if(VirtUart0Ready) // && huart0.rvdev != NULL /
