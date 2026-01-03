################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/mbox_ipcc.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/openamp.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/openamp_log.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/rsc_table.c 

OBJS += \
./Application/User/OPENAMP/mbox_ipcc.o \
./Application/User/OPENAMP/openamp.o \
./Application/User/OPENAMP/openamp_log.o \
./Application/User/OPENAMP/rsc_table.o 

C_DEPS += \
./Application/User/OPENAMP/mbox_ipcc.d \
./Application/User/OPENAMP/openamp.d \
./Application/User/OPENAMP/openamp_log.d \
./Application/User/OPENAMP/rsc_table.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/OPENAMP/mbox_ipcc.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/mbox_ipcc.c Application/User/OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/OPENAMP/openamp.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/openamp.c Application/User/OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/OPENAMP/openamp_log.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/openamp_log.c Application/User/OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/OPENAMP/rsc_table.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_Sensor_Node/CM33/NonSecure/OPENAMP/rsc_table.c Application/User/OPENAMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-OPENAMP

clean-Application-2f-User-2f-OPENAMP:
	-$(RM) ./Application/User/OPENAMP/mbox_ipcc.cyclo ./Application/User/OPENAMP/mbox_ipcc.d ./Application/User/OPENAMP/mbox_ipcc.o ./Application/User/OPENAMP/mbox_ipcc.su ./Application/User/OPENAMP/openamp.cyclo ./Application/User/OPENAMP/openamp.d ./Application/User/OPENAMP/openamp.o ./Application/User/OPENAMP/openamp.su ./Application/User/OPENAMP/openamp_log.cyclo ./Application/User/OPENAMP/openamp_log.d ./Application/User/OPENAMP/openamp_log.o ./Application/User/OPENAMP/openamp_log.su ./Application/User/OPENAMP/rsc_table.cyclo ./Application/User/OPENAMP/rsc_table.d ./Application/User/OPENAMP/rsc_table.o ./Application/User/OPENAMP/rsc_table.su

.PHONY: clean-Application-2f-User-2f-OPENAMP

