# Bring-up Notes

This document covers:
1. Booting the STM32MP257F-DK using the OpenSTLinux starter image on a microSD card
2. Setting up development environment using STM32CubeIDE and STM32CubeMP2 Firmware Package

## 1. Boot setup - STM32MP257F-DK

### Overview
This section describes how to boot the STM32MP257F-DK using the OpenSTLinux starter image on a microSD card.

### Hardware needed:
- STM32MP257F-DK
- SD micro card
- microSD card reader
- USB-C cable - ( may be 2)
- minicom app
  Note: Set up is done on Ubuntu system

  
### STM Starter package and files to download:
  - Starter Package - https://wiki.st.com/stm32mpu/wiki/STM32MP25_Discovery_kits_-_Starter_Package?utm_source=chatgpt.com#Downloading_the_image_and_flashing_it_on_the_board
  - Hardware Description - https://wiki.st.com/stm32mpu/wiki/STM32MP257x-DKx_-_hardware_description
  - Download FLASH-stm32mp2-openstlinux-6.6-yocto-scarthgap-mpu-v25.06.11.tar -  https://www.st.com/en/embedded-software/stm32mp2starter.html (Download - MP2-START-A35-TD 	STM32MP2 OpenSTLinux Starter Package for **A35-TD flavor)**

### Flash Image into microSD card
- Connect the SD card Reader to the USB A( Don't connect the STM board yet)
- In the terminal, identify the SD card device using **lsblk** (for example /dev/sdd). Be very careful to select the correct device.
- sudo dd if=flashlayout_st-image-weston/optee/../../FlashLayout_sdcard_stm32mp257f-dk-optee.raw of=/dev/sdd bs=8M conv=fdatasync status=progress

	### Verify SD Card Layout 
	sync and verify that it is written correctly to the SD micro card

	- sudo sync
	- sudo sgdisk -p /dev/sdd (you should see DK partitions for bootfs, vendorfs, rootfs, userfs)
	
### Boot Configuration (SD Card Boot)
 - The STM32MP257F-DK boots from the microSD card by default when a valid image is present.
 - No BOOT switch changes are required for SD card boot on this board.
 
   If switches are required
       - Set the BOOT configuration switches to SD-card boot mode before powering on the board.
       - Refer to the hardware manual for switch locations.
                                                                          
### Board Setup and First Boot

Power is supplied via the USB-C connection on CN21.

- Insert the SD micro card in CN6 
- Connect the CN21 to the PC through USB-C cable to the PC using USB-C - USB-A converter on the PC side. ( in the same port where card reader was connected to get the same sdd or sdc or sdb)
- No need to connect the CN15
- Install minicom if not already ( This is like a PuTTy)
- In the terminal use "**sudo minicom -D /dev/ttyACM0 -b 115200**"
  - Then press Reset button on the board (B1)
- You should see
  - LD6 (green, PWR): Power is good and the board is ON.
  - LD5 (red, STPMIC): PMIC status LED — red steady usually just means the power management IC is active (not necessarily an error).
  - LD9 (orange, blinking): Activity indicator (often tied to heartbeat or CPU load). A blinking orange usually means Linux kernel is running a “heartbeat” blink.
  - LD1 (blue, blinking): Often mapped to a user heartbeat or systemd status — blinking blue is also a Linux alive signal.
    note: LED behavior may vary slightly between images.
- In the Terminal, you should see 
    INFO:    Using SDMMC
    INFO:      Instance 1
    INFO:    Boot used partition fsbl1


### To unmount
	- sudo umount /dev/**sdd*** ( where sdd is the port/mount where the device is mounted)
	- sudo sync

### Get the IP Addr to ssh to the board
To get the board's IP address
  - Connect a ethernet cable to the STM board directly from the router or switch that provides DHCP.
  - use "ip addr show end0" command to get the IP address


### Quick Start( Next time)
- Insert the SD card.
- Connect the USBC CN21 out cable to the computer
- Connect the Ethernet cable to get the IP address
- Power on the board(press the button)
- Let it boot; check ip addr show end0 to verify the IP.
- Then SSH into it using the same IP (or whatever IP the router assigns).
		1. In the terminal, give sudo minicom -D /dev/ttyACM0 -b 115200 to see the progress.
		2. then "ip addr show end0" to get the IP address
		3. Then ssh using ssh root@192.168.0.104 to enter the board.
    4. User: root; password:(none)
  

## 2. Development Environment Setup

### 2.1 Installing STM32CubeIDE
- Open, build, and edit the projects from the Firmware Package
Compile M33 firmware

Download STM32CubeIDE
https://www.st.com/en/development-tools/stm32cubeide.html

> **Note:** This project was developed using STM32CubeIDE on an Ubuntu Linux host.

### 2.2 Installing STM32CubeMP2 Firmware Package
- Contains example code for
	- M33 (bare-metal and FreeRTOS examples)
	- A35 Linux-side applications
	- OpenAMP (RPMsg, remoteproc)
	- Peripherals (I2C, UART, GPIO, etc.)
   
 Download STM32CubeMP2 Firmware Package:
 https://www.st.com/en/embedded-software/stm32cubemp2.html


### 2.3 Worspace setup
STM32CubeIDE uses a *workspace* directory that stores IDE metadata only.
The actual firmware projects remain in their original locations within the
STM32CubeMP2 Firmware Package directory.

Typical setup:
- Workspace: contains `.metadata` only
- Projects: located under  
  `.../STM32Cube_FW_MP2_V*/Projects/STM32MP257F-DK/Applications/OpenAMP`

This allows working directly with example projects without copying them into the workspace.
