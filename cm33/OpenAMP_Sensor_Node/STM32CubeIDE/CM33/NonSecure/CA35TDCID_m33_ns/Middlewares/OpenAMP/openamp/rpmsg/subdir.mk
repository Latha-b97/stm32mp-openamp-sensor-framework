################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg_virtio.c 

OBJS += \
./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.o \
./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.o 

C_DEPS += \
./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.d \
./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/OpenAMP/openamp/rpmsg/rpmsg.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg.c Middlewares/OpenAMP/openamp/rpmsg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/open-amp/lib/rpmsg/rpmsg_virtio.c Middlewares/OpenAMP/openamp/rpmsg/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-OpenAMP-2f-openamp-2f-rpmsg

clean-Middlewares-2f-OpenAMP-2f-openamp-2f-rpmsg:
	-$(RM) ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.cyclo ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.d ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.o ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg.su ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.cyclo ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.d ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.o ./Middlewares/OpenAMP/openamp/rpmsg/rpmsg_virtio.su

.PHONY: clean-Middlewares-2f-OpenAMP-2f-openamp-2f-rpmsg

