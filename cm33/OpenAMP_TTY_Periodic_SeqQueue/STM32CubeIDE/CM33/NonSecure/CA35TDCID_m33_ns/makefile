################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Utilities/subdir.mk
-include Middlewares/OpenAMP/virtual_drivers/subdir.mk
-include Middlewares/OpenAMP/openamp/virtio/subdir.mk
-include Middlewares/OpenAMP/openamp/rpmsg/subdir.mk
-include Middlewares/OpenAMP/openamp/remoteproc/subdir.mk
-include Middlewares/OpenAMP/libmetal/generic/template/subdir.mk
-include Middlewares/OpenAMP/libmetal/generic/subdir.mk
-include Middlewares/OpenAMP/libmetal/subdir.mk
-include Drivers/STM32MP2xx_HAL_Driver/subdir.mk
-include Drivers/CMSIS/subdir.mk
-include Drivers/BSP/STM32MP257F-DK/subdir.mk
-include Application/User/OPENAMP/subdir.mk
-include Application/User/Core/subdir.mk
-include Application/Startup/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf \

MAP_FILES += \
OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.list \

OBJCOPY_BIN += \
OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.bin \


# All Target
all:
	+@$(MAKE) --no-print-directory pre-build && $(MAKE) --no-print-directory main-build && $(MAKE) --no-print-directory post-build

# Main-build Target
main-build: OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf secondary-outputs

# Tool invocations
OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.map: $(OBJS) $(USER_OBJS) ../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Source/Templates/gcc/linker/stm32mp2xx_DDR_m33_ns.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m33 -T"../../../../../../../../../Drivers/CMSIS/Device/ST/STM32MP2xx/Source/Templates/gcc/linker/stm32mp2xx_DDR_m33_ns.ld" --specs=nosys.specs -Wl,-Map="OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.map" -Wl,--gc-sections -static -z max-page-size=4096 --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.list"
	@echo 'Finished building: $@'
	@echo ' '

OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.bin OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.list OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.map default.size.stdout
	-@echo ' '

pre-build:
	cmake -S ../../../../../../../../../Middlewares/Third_Party/OpenAMP/libmetal/ -B libmetal  -G"Unix Makefiles" -DCMAKE_TOOLCHAIN_FILE=cmake/platforms/stm32mp-generic-gcc.cmake
	-@echo ' '

post-build:
	arm-none-eabi-objcopy -S OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure.elf OpenAMP_TTY_periodic_SeqQueue_CM33_NonSecure_stripped.elf
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified pre-build post-build

-include ../makefile.targets
