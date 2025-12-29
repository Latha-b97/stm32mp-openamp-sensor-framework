# Install script for directory: /home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Middlewares/Third_Party/OpenAMP/libmetal/lib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/latha/STM32CubeIDE/STM32CubeIDE_1.19.0/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.13.3.rel1.linux64_1.0.0.202410170706/tools/bin/arm-none-eabi-objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/alloc.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/alloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/assert.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/assert.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/atomic.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/atomic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/cache.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/cache.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/condition.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/condition.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/config.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/cpu.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/cpu.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/device.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/device.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/errno.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/errno.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/dma.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/dma.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/io.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/io.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/irq.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/irq.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/irq_controller.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/irq_controller.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/list.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/list.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/log.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/log.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/mutex.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/mutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/shmem.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/shmem.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/sleep.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/sleep.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/softirq.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/softirq.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/spinlock.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/spinlock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/sys.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/sys.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/time.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/time.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/utilities.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/utilities.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/version.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/version.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/armcc/errno.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler/armcc/errno.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/gcc/atomic.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler/gcc/atomic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/gcc/compiler.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler/gcc/compiler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/iar/compiler.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler/iar/compiler.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/compiler/iar/errno.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/compiler/iar/errno.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/processor/arm/atomic.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/processor/arm/atomic.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/processor/arm/cpu.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/processor/arm/cpu.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/alloc.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/alloc.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/assert.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/assert.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/cache.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/cache.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/condition.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/condition.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/io.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/io.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/irq.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/irq.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/log.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/log.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/mutex.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/mutex.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/sleep.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/sleep.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/sys.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/sys.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE RENAME "metal/system/generic/template/sys.h" FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/include/metal/system/generic/template/sys.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/libmetal.a")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/compiler/cmake_install.cmake")
  include("/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/processor/cmake_install.cmake")
  include("/home/latha/Documents/stm32cubemp2-v1-2-0/STM32Cube_FW_MP2_V1.2.0/Projects/STM32MP257F-DK/Applications/OpenAMP/OpenAMP_TTY_Periodic_SeqQueue/STM32CubeIDE/CM33/NonSecure/CA35TDCID_m33_ns/libmetal/lib/system/cmake_install.cmake")

endif()

