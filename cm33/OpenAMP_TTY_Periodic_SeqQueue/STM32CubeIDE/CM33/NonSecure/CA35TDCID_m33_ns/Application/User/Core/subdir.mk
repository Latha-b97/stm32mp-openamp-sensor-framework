################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/main.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/stm32mp2xx_hal_msp.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/stm32mp2xx_it.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Utilities/Services/GenericServices/syscalls.c 

OBJS += \
./Application/User/Core/main.o \
./Application/User/Core/stm32mp2xx_hal_msp.o \
./Application/User/Core/stm32mp2xx_it.o \
./Application/User/Core/syscalls.o 

C_DEPS += \
./Application/User/Core/main.d \
./Application/User/Core/stm32mp2xx_hal_msp.d \
./Application/User/Core/stm32mp2xx_it.d \
./Application/User/Core/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/main.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/main.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32mp2xx_hal_msp.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/stm32mp2xx_hal_msp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32mp2xx_it.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/CM33/NonSecure/Core/Src/stm32mp2xx_it.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/syscalls.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Utilities/Services/GenericServices/syscalls.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -I../../../../../../../../../Utilities/CoproSync -Os -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core

clean-Application-2f-User-2f-Core:
	-$(RM) ./Application/User/Core/main.cyclo ./Application/User/Core/main.d ./Application/User/Core/main.o ./Application/User/Core/main.su ./Application/User/Core/stm32mp2xx_hal_msp.cyclo ./Application/User/Core/stm32mp2xx_hal_msp.d ./Application/User/Core/stm32mp2xx_hal_msp.o ./Application/User/Core/stm32mp2xx_hal_msp.su ./Application/User/Core/stm32mp2xx_it.cyclo ./Application/User/Core/stm32mp2xx_it.d ./Application/User/Core/stm32mp2xx_it.o ./Application/User/Core/stm32mp2xx_it.su ./Application/User/Core/syscalls.cyclo ./Application/User/Core/syscalls.d ./Application/User/Core/syscalls.o ./Application/User/Core/syscalls.su

.PHONY: clean-Application-2f-User-2f-Core

