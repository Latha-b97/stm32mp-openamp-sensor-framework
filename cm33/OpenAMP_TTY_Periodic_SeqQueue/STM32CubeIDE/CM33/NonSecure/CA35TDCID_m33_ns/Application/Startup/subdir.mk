################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Drivers/CMSIS/Device/ST/STM32MP2xx/Source/Templates/gcc/startup_stm32mp257cxx_m33.s 

OBJS += \
./Application/Startup/startup_stm32mp257cxx_m33.o 

S_DEPS += \
./Application/Startup/startup_stm32mp257cxx_m33.d 


# Each subdirectory must supply rules for building sources it contributes
Application/Startup/startup_stm32mp257cxx_m33.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Drivers/CMSIS/Device/ST/STM32MP2xx/Source/Templates/gcc/startup_stm32mp257cxx_m33.s Application/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Application-2f-Startup

clean-Application-2f-Startup:
	-$(RM) ./Application/Startup/startup_stm32mp257cxx_m33.d ./Application/Startup/startup_stm32mp257cxx_m33.o

.PHONY: clean-Application-2f-Startup

