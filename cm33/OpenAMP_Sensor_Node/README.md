## <b>OpenAMP_Sensor Node Description</b>

Purpose:

Demonstrates CM33 integration with OpenAMP RPMsg and I2C sensor communication (BME280). This project builds on OpenAMP_TTY_Periodic_SeqQueue by adding sensor interaction.
Description:

Starting from OpenAMP_TTY_Periodic_SeqQueue, this project sets up CM33 ↔ Linux communication and integrates a BME280 sensor using I2C.

It integrates:

    Project creation: OpenAMP_Sensor_Node with CM33 as remote core and A35 as master.
    Peripheral and middleware setup via STM32CubeMX / .ioc:
        Enable I2C peripheral for BME280
        Enable OpenAMP (RPMsg) middleware
        Enable basic clocks and GPIOs
        Generate HAL and startup code for CM33
    Data Flow

[BME280]

│ I2C (HAL_I2C_Mem_Read)

▼

[CM33 RAM]

│ struct sensor_msg

▼

[RPMsg buffer] │

▼

[Linux]

    CM33 reads data from BME280 via I2C
    Messages are structured and stored in a buffer
    RPMsg sends the sensor data reliably to Linux


1. We are starting with OpenAMP_Sensor_Node, which is simply a copy of OpenAMP_TTY_periodic_SeqQueue
2. In this step, we  need to
		- Create project for OpenAMP_Sensor_node.
		- Enable I2C peripheral for BME280.
		- Enable OpenAMP (RPMsg) middleware.
		- Set CM33 as remote core, A35 as master.

With the IOC file, we need to do the following and generate the code
	- Enable OpenAMP
	- Enable I2C for BME280
	- Enable basic clock + GPIO
	and then generate the code for OpenAMP support, I2C HAL, and CM33 startup.

We are setting up
**BME280 → CM33 = I2C**
CM33 → Linux = RPMsg (OpenAMP)

   [BME280]
   │
   │  I2C (HAL_I2C_Mem_Read)
   ▼
[CM33 RAM]
   │
   │  struct sensor_msg
   ▼
[RPMsg buffer]
   │
   ▼
[Linux]


Important:**
First, we need to add the I2C support through STM32CubeMX. This is usually done by opening the .ioc file ( ex: OPENAMP_Sensor_Node.ioc). However, OPENAMP_Sensor_Node does not have the OPENAMP_Sensor_Node.ioc file. This is becasue OPENAMP_Sensor_Node project is evolved from OpenAMP_TTY_Echo example given by the STM32Cube. There are pre-generated reference projects, we cannot open the CubeMX in the STM32CubeIDE. So, we need to find an alternative.


### <b>Keywords</b>

OpenAMP, RPMsg, TFM, IPCC, Inter-Processor Communication







