################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/template/sys.c 

OBJS += \
./Middlewares/OpenAMP/libmetal/generic/template/sys.o 

C_DEPS += \
./Middlewares/OpenAMP/libmetal/generic/template/sys.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/OpenAMP/libmetal/generic/template/sys.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/system/generic/template/sys.c Middlewares/OpenAMP/libmetal/generic/template/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-OpenAMP-2f-libmetal-2f-generic-2f-template

clean-Middlewares-2f-OpenAMP-2f-libmetal-2f-generic-2f-template:
	-$(RM) ./Middlewares/OpenAMP/libmetal/generic/template/sys.cyclo ./Middlewares/OpenAMP/libmetal/generic/template/sys.d ./Middlewares/OpenAMP/libmetal/generic/template/sys.o ./Middlewares/OpenAMP/libmetal/generic/template/sys.su

.PHONY: clean-Middlewares-2f-OpenAMP-2f-libmetal-2f-generic-2f-template

