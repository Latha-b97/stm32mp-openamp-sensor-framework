################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/device.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/init.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/io.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/log.c \
/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.c 

OBJS += \
./Middlewares/OpenAMP/libmetal/device.o \
./Middlewares/OpenAMP/libmetal/init.o \
./Middlewares/OpenAMP/libmetal/io.o \
./Middlewares/OpenAMP/libmetal/log.o \
./Middlewares/OpenAMP/libmetal/shmem.o 

C_DEPS += \
./Middlewares/OpenAMP/libmetal/device.d \
./Middlewares/OpenAMP/libmetal/init.d \
./Middlewares/OpenAMP/libmetal/io.d \
./Middlewares/OpenAMP/libmetal/log.d \
./Middlewares/OpenAMP/libmetal/shmem.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/OpenAMP/libmetal/device.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/device.c Middlewares/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/OpenAMP/libmetal/init.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/init.c Middlewares/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/OpenAMP/libmetal/io.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/io.c Middlewares/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/OpenAMP/libmetal/log.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/log.c Middlewares/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Middlewares/OpenAMP/libmetal/shmem.o: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib/shmem.c Middlewares/OpenAMP/libmetal/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 -DSTM32MP257Cxx -DSTM32MP25xxxx -DCORE_CM33 -DUSE_HAL_DRIVER -DNO_ATOMIC_64_SUPPORT -DMETAL_INTERNAL -DVIRTIO_DEVICE_ONLY -DMETAL_MAX_DEVICE_REGIONS=2 -DLINUX_RPROC_MASTER -c -I../../../../CM33/NonSecure/Core/Inc -I../../../../../../../../../Utilities/ResourcesManager -I../../../../CM33/NonSecure/OPENAMP -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/open-amp/lib/include -I./libmetal/lib/include -I../../../../../../../../../Middlewares/Third_Party/OpenAMP/virtual_driver -I../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Include -I../../../../../../../../../Drivers/CMSIS/Core/Include -I../../../../../../../../../Drivers/STM32MP2xx_HAL_Driver/Inc -I../../../../../../../../../Drivers/BSP/STM32MP257F-DK -I../../../../../../../../../Utilities/CoproSync -O0 -ffunction-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-OpenAMP-2f-libmetal

clean-Middlewares-2f-OpenAMP-2f-libmetal:
	-$(RM) ./Middlewares/OpenAMP/libmetal/device.cyclo ./Middlewares/OpenAMP/libmetal/device.d ./Middlewares/OpenAMP/libmetal/device.o ./Middlewares/OpenAMP/libmetal/device.su ./Middlewares/OpenAMP/libmetal/init.cyclo ./Middlewares/OpenAMP/libmetal/init.d ./Middlewares/OpenAMP/libmetal/init.o ./Middlewares/OpenAMP/libmetal/init.su ./Middlewares/OpenAMP/libmetal/io.cyclo ./Middlewares/OpenAMP/libmetal/io.d ./Middlewares/OpenAMP/libmetal/io.o ./Middlewares/OpenAMP/libmetal/io.su ./Middlewares/OpenAMP/libmetal/log.cyclo ./Middlewares/OpenAMP/libmetal/log.d ./Middlewares/OpenAMP/libmetal/log.o ./Middlewares/OpenAMP/libmetal/log.su ./Middlewares/OpenAMP/libmetal/shmem.cyclo ./Middlewares/OpenAMP/libmetal/shmem.d ./Middlewares/OpenAMP/libmetal/shmem.o ./Middlewares/OpenAMP/libmetal/shmem.su

.PHONY: clean-Middlewares-2f-OpenAMP-2f-libmetal

