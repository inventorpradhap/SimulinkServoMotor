###########################################################################
## Makefile generated for component 'stm32_gettingstarted'. 
## 
## Makefile     : stm32_gettingstarted.mk
## Generated on : Fri Nov 22 22:43:25 2024
## Final product: $(RELATIVE_PATH_TO_ANCHOR)/stm32_gettingstarted.elf
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile
# COMPILER_COMMAND_FILE   Compiler command listing model reference header paths
# CMD_FILE                Command file

PRODUCT_NAME              = stm32_gettingstarted
MAKEFILE                  = stm32_gettingstarted.mk
MATLAB_ROOT               = C:/PROGRA~1/MATLAB/R2023a
MATLAB_BIN                = C:/PROGRA~1/MATLAB/R2023a/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = O:/Design
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
TGT_FCN_LIB               = ARM Cortex-M
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ..
COMPILER_COMMAND_FILE     = stm32_gettingstarted_comp.rsp
CMD_FILE                  = stm32_gettingstarted.rsp
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          GNU Tools for ARM Embedded Processors
# Supported Version(s):    
# ToolchainInfo Version:   2023a
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# TARGET_LOAD_CMD_ARGS
# TARGET_LOAD_CMD
# MW_GNU_ARM_TOOLS_PATH
# FDATASECTIONS_FLG

#-----------
# MACROS
#-----------

LIBGCC                    = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-libgcc-file-name}
LIBC                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libc.a}
LIBM                      = ${shell $(MW_GNU_ARM_TOOLS_PATH)/arm-none-eabi-gcc ${CFLAGS} -print-file-name=libm.a}
PRODUCT_NAME_WITHOUT_EXTN = $(basename $(PRODUCT))
PRODUCT_BIN               = $(PRODUCT_NAME_WITHOUT_EXTN).bin
PRODUCT_HEX               = $(PRODUCT_NAME_WITHOUT_EXTN).hex
CPFLAGS                   = -O binary
SHELL                     = %SystemRoot%/system32/cmd.exe

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -lm

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# Assembler: GNU ARM Assembler
AS_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AS = "$(AS_PATH)/arm-none-eabi-gcc"

# C Compiler: GNU ARM C Compiler
CC_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CC = "$(CC_PATH)/arm-none-eabi-gcc"

# Linker: GNU ARM Linker
LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
LD = "$(LD_PATH)/arm-none-eabi-g++"

# C++ Compiler: GNU ARM C++ Compiler
CPP_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP = "$(CPP_PATH)/arm-none-eabi-g++"

# C++ Linker: GNU ARM C++ Linker
CPP_LD_PATH = $(MW_GNU_ARM_TOOLS_PATH)
CPP_LD = "$(CPP_LD_PATH)/arm-none-eabi-g++"

# Archiver: GNU ARM Archiver
AR_PATH = $(MW_GNU_ARM_TOOLS_PATH)
AR = "$(AR_PATH)/arm-none-eabi-ar"

# MEX Tool: MEX Tool
MEX_PATH = $(MATLAB_ARCH_BIN)
MEX = "$(MEX_PATH)/mex"

# Binary Converter: Binary Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Hex Converter: Hex Converter
OBJCOPYPATH = $(MW_GNU_ARM_TOOLS_PATH)
OBJCOPY = "$(OBJCOPYPATH)/arm-none-eabi-objcopy"

# Executable Size: Executable Size
EXESIZEPATH = $(MW_GNU_ARM_TOOLS_PATH)
EXESIZE = "$(EXESIZEPATH)/arm-none-eabi-size"

# Download: Download
DOWNLOAD =

# Execute: Execute
EXECUTE = $(PRODUCT)

# Builder: GMAKE Utility
MAKE_PATH = %MATLAB%\bin\win64
MAKE = "$(MAKE_PATH)/gmake"


#-------------------------
# Directives/Utilities
#-------------------------

ASDEBUG             = -g
AS_OUTPUT_FLAG      = -o
CDEBUG              = -g
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
MEX_DEBUG           = -g
RM                  = @del /f/q
ECHO                = @echo
MV                  = @move
RUN                 =

#----------------------------------------
# "Faster Builds" Build Configuration
#----------------------------------------

ARFLAGS              = ruvs
ASFLAGS              = -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -Wall \
                       -x assembler-with-cpp \
                       $(ASFLAGS_ADDITIONAL) \
                       $(DEFINES) \
                       $(INCLUDES) \
                       -c
OBJCOPYFLAGS_BIN     = -O binary $(PRODUCT) $(PRODUCT_BIN)
CFLAGS               = $(FDATASECTIONS_FLG) \
                       -Wall \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -c \
                       -O0
CPPFLAGS             = -std=gnu++14 \
                       -fno-rtti \
                       -fno-exceptions \
                       $(FDATASECTIONS_FLG) \
                       -Wall \
                       -MMD -MP -MF"$(@:%.o=%.dep)" -MT"$@"  \
                       -c \
                       -O0
CPP_LDFLAGS          = -Wl,--gc-sections \
                       -Wl,-Map="$(PRODUCT_NAME).map"
CPP_SHAREDLIB_LDFLAGS  =
DOWNLOAD_FLAGS       =
EXESIZE_FLAGS        = $(PRODUCT)
EXECUTE_FLAGS        =
OBJCOPYFLAGS_HEX     = -O ihex $(PRODUCT) $(PRODUCT_HEX)
LDFLAGS              = -Wl,--gc-sections \
                       -Wl,-Map="$(PRODUCT_NAME).map"
MEX_CPPFLAGS         =
MEX_CPPLDFLAGS       =
MEX_CFLAGS           =
MEX_LDFLAGS          =
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    =



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = $(RELATIVE_PATH_TO_ANCHOR)/stm32_gettingstarted.elf
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Top-Level Standalone Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = 

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_ = -DMW_TIM1_ENABLED=1 -D__MW_TARGET_USE_HARDWARE_RESOURCES_H__ -DUSE_FULL_LL_DRIVER -DUSE_HAL_DRIVER -DSTM32F767xx -DMW_TIMEBASESOURCE=TIM5
DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=0 -DALLOCATIONFCN=0 -DTERMFCN=1 -DONESTEPFCN=1 -DMAT_FILE=0 -DMULTI_INSTANCE_CODE=0 -DINTEGER_CODE=0 -DMT=0
DEFINES_CUSTOM = 
DEFINES_OPTS = -DTID01EQ=0
DEFINES_SKIPFORSIL = -DXCP_CUSTOM_PLATFORM -DXCP_MEM_DAQ_RESERVED_POOL_BLOCKS_NUMBER=10 -D__FPU_PRESENT=1U -D__FPU_USED=1U -DSTACK_SIZE=64 -DRT
DEFINES_STANDARD = -DMODEL=stm32_gettingstarted -DNUMST=1 -DNCSTATES=0 -DHAVESTDIO -DMODEL_HAS_DYNAMICALLY_LOADED_SFCNS=0

DEFINES = $(DEFINES_) $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_SKIPFORSIL) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/stm_timer_ll.c $(START_DIR)/stm32_gettingstarted_ert_rtw/stm32_gettingstarted.c $(START_DIR)/stm32_gettingstarted_ert_rtw/stm32_gettingstarted_data.c C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/platform_timer.c $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/SysTickScheduler.c $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/m3m4m4f_multitasking.c C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/main.c C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/STM32F~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/STM32F~2.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/STM32F~3.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STM32F~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STM32F~2.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STM32F~3.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STM32F~4.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST9C69~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST5EF7~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST614F~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STF290~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST6B5E~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STAA20~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST4ACB~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST024B~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST85D6~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST9399~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST4B74~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST3573~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STDC7B~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST22EE~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STEF19~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST8E45~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST442D~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST5957~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST82D8~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST9610~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/STA21E~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/ST961E~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/SYSTEM~1.C C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Core/syscalls.c C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Core/sysmem.c C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Startup/STARTU~1.S

MAIN_SRC = $(START_DIR)/stm32_gettingstarted_ert_rtw/ert_main.c

ALL_SRCS = $(SRCS) $(MAIN_SRC)

###########################################################################
## OBJECTS
###########################################################################

OBJS = stm_timer_ll.o stm32_gettingstarted.o stm32_gettingstarted_data.o overrideHALDelay.o platform_timer.o SysTickScheduler.o m3m4m4f_multitasking.o main.o stm32f7xx_it.o stm32f7xx_hal_msp.o stm32f7xx_hal_timebase_tim.o stm32f7xx_ll_gpio.o stm32f7xx_ll_dma.o stm32f7xx_hal_tim.o stm32f7xx_hal_tim_ex.o stm32f7xx_ll_tim.o stm32f7xx_ll_rcc.o stm32f7xx_ll_utils.o stm32f7xx_ll_exti.o stm32f7xx_hal_rcc.o stm32f7xx_hal_rcc_ex.o stm32f7xx_hal_flash.o stm32f7xx_hal_flash_ex.o stm32f7xx_hal_gpio.o stm32f7xx_hal_dma.o stm32f7xx_hal_dma_ex.o stm32f7xx_hal_pwr.o stm32f7xx_hal_pwr_ex.o stm32f7xx_hal_cortex.o stm32f7xx_hal.o stm32f7xx_hal_i2c.o stm32f7xx_hal_i2c_ex.o stm32f7xx_hal_exti.o stm32f7xx_ll_usart.o stm32f7xx_hal_pcd.o stm32f7xx_hal_pcd_ex.o stm32f7xx_ll_usb.o system_stm32f7xx.o syscalls.o sysmem.o startup_stm32f767zitx.o

MAIN_OBJ = ert_main.o

ALL_OBJS = $(OBJS) $(MAIN_OBJ)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = C:/ProgramData/MATLAB/SupportPackages/R2023a/3P.instrset/cmsis.instrset/CMSIS/DSP/Lib/GCC/libarm_cortexM7lfdp_math.a C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/lib/GCC/libmw_pdmfilter_m7_dpfp.lib

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv5-d16 -mfloat-abi=hard
CFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CFLAGS += $(CFLAGS_SKIPFORSIL) $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mthumb-interwork -mfpu=fpv5-d16 -mfloat-abi=hard
CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES) @$(COMPILER_COMMAND_FILE)

CPPFLAGS += $(CPPFLAGS_SKIPFORSIL) $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_ = --specs=nano.specs
CPP_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv5-d16 --entry Reset_Handler --specs=nosys.specs -T"C:\Users\inven\Documents\MATLAB\STM Projects\Servo\STM32CubeIDE\STM32F767ZITX_FLASH.ld"

CPP_LDFLAGS += $(CPP_LDFLAGS_) $(CPP_LDFLAGS_SKIPFORSIL)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_ = --specs=nano.specs
CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv5-d16 --entry Reset_Handler --specs=nosys.specs -T"C:\Users\inven\Documents\MATLAB\STM Projects\Servo\STM32CubeIDE\STM32F767ZITX_FLASH.ld"

CPP_SHAREDLIB_LDFLAGS += $(CPP_SHAREDLIB_LDFLAGS_) $(CPP_SHAREDLIB_LDFLAGS_SKIPFORSIL)

#-----------
# Linker
#-----------

LDFLAGS_ = --specs=nano.specs
LDFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv5-d16 --entry Reset_Handler --specs=nosys.specs -T"C:\Users\inven\Documents\MATLAB\STM Projects\Servo\STM32CubeIDE\STM32F767ZITX_FLASH.ld"

LDFLAGS += $(LDFLAGS_) $(LDFLAGS_SKIPFORSIL)

#---------------------
# MEX C++ Compiler
#---------------------

MEX_CPP_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CPPFLAGS += $(MEX_CPP_Compiler_BASIC)

#-----------------
# MEX Compiler
#-----------------

MEX_Compiler_BASIC =  @$(COMPILER_COMMAND_FILE)

MEX_CFLAGS += $(MEX_Compiler_BASIC)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_ = --specs=nano.specs
SHAREDLIB_LDFLAGS_SKIPFORSIL = -mcpu=cortex-m7 -mthumb -mlittle-endian -mfloat-abi=hard -mfpu=fpv5-d16 --entry Reset_Handler --specs=nosys.specs -T"C:\Users\inven\Documents\MATLAB\STM Projects\Servo\STM32CubeIDE\STM32F767ZITX_FLASH.ld"

SHAREDLIB_LDFLAGS += $(SHAREDLIB_LDFLAGS_) $(SHAREDLIB_LDFLAGS_SKIPFORSIL)

###########################################################################
## INLINED COMMANDS
###########################################################################


ALL_DEPS:=$(patsubst %.o,%.dep,$(ALL_OBJS))
all:

ifndef DISABLE_GCC_FUNCTION_DATA_SECTIONS
FDATASECTIONS_FLG := -ffunction-sections -fdata-sections
endif



-include codertarget_assembly_flags.mk
-include ../codertarget_assembly_flags.mk
-include ../../codertarget_assembly_flags.mk
-include mw_gnu_arm_tools_path.mk
-include ../mw_gnu_arm_tools_path.mk
-include ../../mw_gnu_arm_tools_path.mk
-include $(ALL_DEPS)


###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild postbuild download execute


all : build postbuild
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS) $(LIBS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


postbuild : $(PRODUCT)
	@echo "### Invoking postbuild tool "Binary Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_BIN)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Hex Converter" ..."
	$(OBJCOPY) $(OBJCOPYFLAGS_HEX)
	@echo "### Done invoking postbuild tool."
	@echo "### Invoking postbuild tool "Executable Size" ..."
	$(EXESIZE) $(EXESIZE_FLAGS)
	@echo "### Done invoking postbuild tool."


download : postbuild


execute : download
	@echo "### Invoking postbuild tool "Execute" ..."
	$(EXECUTE) $(EXECUTE_FLAGS)
	@echo "### Done invoking postbuild tool."


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS) $(LIBS) $(MAIN_OBJ)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(CPP_LD) $(CPP_LDFLAGS) -o $(PRODUCT) @$(CMD_FILE) $(LIBS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.o : %.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : %.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : %.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : %.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : %.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(CFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.S
	$(AS) $(ASFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cpp
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cc
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.C
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


%.o : $(MATLAB_ROOT)/simulink/src/%.cxx
	$(CPP) $(CPPFLAGS) -o "$@" "$<"


stm_timer_ll.o : C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/stm_timer_ll.c
	$(CC) $(CFLAGS) -o "$@" "$<"


ert_main.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/ert_main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32_gettingstarted.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/stm32_gettingstarted.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32_gettingstarted_data.o : $(START_DIR)/stm32_gettingstarted_ert_rtw/stm32_gettingstarted_data.c
	$(CC) $(CFLAGS) -o "$@" "$<"


overrideHALDelay.o : C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/overrideHALDelay.c
	$(CC) $(CFLAGS) -o "$@" "$<"


platform_timer.o : C:/ProgramData/MATLAB/SupportPackages/R2023a/toolbox/shared/supportpackages/stm32/src/platform_timer.c
	$(CC) $(CFLAGS) -o "$@" "$<"


SysTickScheduler.o : $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/SysTickScheduler.c
	$(CC) $(CFLAGS) -o "$@" "$<"


m3m4m4f_multitasking.o : $(MATLAB_ROOT)/toolbox/target/shared/armcortexmbase/scheduler/src/m3m4m4f_multitasking.c
	$(CC) $(CFLAGS) -o "$@" "$<"


main.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/main.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_it.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/stm32f7xx_it.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_msp.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/stm32f7xx_hal_msp.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_timebase_tim.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/stm32f7xx_hal_timebase_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_gpio.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_dma.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_dma.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_tim.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_tim_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_tim_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_tim.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_tim.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_rcc.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_utils.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_utils.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_exti.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_rcc.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_rcc.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_rcc_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_rcc_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_flash.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_flash.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_flash_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_flash_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_gpio.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_gpio.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_dma.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_dma.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_dma_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_dma_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_pwr.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_pwr.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_pwr_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_pwr_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_cortex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_cortex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_i2c.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_i2c.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_i2c_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_i2c_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_exti.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_exti.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_usart.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_usart.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_pcd.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_pcd.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_hal_pcd_ex.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_hal_pcd_ex.c
	$(CC) $(CFLAGS) -o "$@" "$<"


stm32f7xx_ll_usb.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Drivers/STM32F~1/Src/stm32f7xx_ll_usb.c
	$(CC) $(CFLAGS) -o "$@" "$<"


system_stm32f7xx.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/Core/Src/system_stm32f7xx.c
	$(CC) $(CFLAGS) -o "$@" "$<"


syscalls.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Core/syscalls.c
	$(CC) $(CFLAGS) -o "$@" "$<"


sysmem.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Core/sysmem.c
	$(CC) $(CFLAGS) -o "$@" "$<"


startup_stm32f767zitx.o : C:/Users/inven/DOCUME~1/MATLAB/STMPRO~1/Servo/STM32C~1/APPLIC~1/User/Startup/startup_stm32f767zitx.s
	$(AS) $(ASFLAGS) -o "$@" "$<"


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(COMPILER_COMMAND_FILE) $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### ASFLAGS = $(ASFLAGS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MEX_CFLAGS = $(MEX_CFLAGS)"
	@echo "### MEX_CPPFLAGS = $(MEX_CPPFLAGS)"
	@echo "### MEX_LDFLAGS = $(MEX_LDFLAGS)"
	@echo "### MEX_CPPLDFLAGS = $(MEX_CPPLDFLAGS)"
	@echo "### OBJCOPYFLAGS_BIN = $(OBJCOPYFLAGS_BIN)"
	@echo "### OBJCOPYFLAGS_HEX = $(OBJCOPYFLAGS_HEX)"
	@echo "### EXESIZE_FLAGS = $(EXESIZE_FLAGS)"
	@echo "### DOWNLOAD_FLAGS = $(DOWNLOAD_FLAGS)"
	@echo "### EXECUTE_FLAGS = $(EXECUTE_FLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files ..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(RM) *.dep
	$(ECHO) "### Deleted all derived files."

