/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: stm32_gettingstarted.c
 *
 * Code generated for Simulink model 'stm32_gettingstarted'.
 *
 * Model version                  : 4.3
 * Simulink Coder version         : 9.9 (R2023a) 19-Nov-2022
 * C/C++ source code generated on : Fri Nov 22 22:50:28 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: ARM Compatible->ARM Cortex
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "stm32_gettingstarted.h"
#include "stm32_gettingstarted_types.h"
#include "rtwtypes.h"
#include "stm_timer_ll.h"

/* Block states (default storage) */
DW_stm32_gettingstarted_T stm32_gettingstarted_DW;

/* Real-time model */
static RT_MODEL_stm32_gettingstarted_T stm32_gettingstarted_M_;
RT_MODEL_stm32_gettingstarted_T *const stm32_gettingstarted_M =
  &stm32_gettingstarted_M_;

/* Forward declaration for local functions */
static void stm32_gettings_SystemCore_setup(stm32cube_blocks_PWMOutput_st_T *obj);
static void stm32_gettings_SystemCore_setup(stm32cube_blocks_PWMOutput_st_T *obj)
{
  uint8_T ChannelInfo;
  TIM_Type_T b;
  boolean_T isSlaveModeTriggerEnabled;
  obj->isInitialized = 1;
  b.PeripheralPtr = TIM1;
  b.isCenterAlignedMode = false;
  b.repetitionCounter = 0U;
  obj->TimerHandle = Timer_Handle_Init(&b);
  enableTimerInterrupts(obj->TimerHandle, 0);
  ChannelInfo = ENABLE_CH;
  enableTimerChannel1(obj->TimerHandle, ChannelInfo);
  isSlaveModeTriggerEnabled = isSlaveTriggerModeEnabled(obj->TimerHandle);
  if (!isSlaveModeTriggerEnabled) {
    enableCounter(obj->TimerHandle, false);
  }

  obj->isSetupComplete = true;
}

/* Model step function */
void stm32_gettingstarted_step(void)
{
  GPIO_TypeDef * portNameLoc;
  real_T rtb_PulseGenerator;
  int32_T pinWriteLoc;

  /* DiscretePulseGenerator: '<Root>/Pulse Generator' */
  rtb_PulseGenerator = (stm32_gettingstarted_DW.clockTickCounter <
                        stm32_gettingstarted_P.PulseGenerator_Duty) &&
    (stm32_gettingstarted_DW.clockTickCounter >= 0) ?
    stm32_gettingstarted_P.PulseGenerator_Amp : 0.0;
  if (stm32_gettingstarted_DW.clockTickCounter >=
      stm32_gettingstarted_P.PulseGenerator_Period - 1.0) {
    stm32_gettingstarted_DW.clockTickCounter = 0;
  } else {
    stm32_gettingstarted_DW.clockTickCounter++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator' */

  /* MATLABSystem: '<S4>/Digital Port Write' */
  portNameLoc = GPIOB;
  if (rtb_PulseGenerator != 0.0) {
    pinWriteLoc = 128;
  } else {
    pinWriteLoc = 0;
  }

  LL_GPIO_SetOutputPin(portNameLoc, (uint32_T)pinWriteLoc);
  LL_GPIO_ResetOutputPin(portNameLoc, ~(uint32_T)pinWriteLoc & 128U);

  /* End of MATLABSystem: '<S4>/Digital Port Write' */

  /* DiscretePulseGenerator: '<Root>/Pulse Generator1' */
  rtb_PulseGenerator = (stm32_gettingstarted_DW.clockTickCounter_b <
                        stm32_gettingstarted_P.PulseGenerator1_Duty) &&
    (stm32_gettingstarted_DW.clockTickCounter_b >= 0) ?
    stm32_gettingstarted_P.PulseGenerator1_Amp : 0.0;
  if (stm32_gettingstarted_DW.clockTickCounter_b >=
      stm32_gettingstarted_P.PulseGenerator1_Period - 1.0) {
    stm32_gettingstarted_DW.clockTickCounter_b = 0;
  } else {
    stm32_gettingstarted_DW.clockTickCounter_b++;
  }

  /* End of DiscretePulseGenerator: '<Root>/Pulse Generator1' */

  /* MATLABSystem: '<S6>/PWM Output' */
  setDutyCycleInPercentageChannel1(stm32_gettingstarted_DW.obj.TimerHandle,
    rtb_PulseGenerator);
}

/* Model initialize function */
void stm32_gettingstarted_initialize(void)
{
  /* InitializeConditions for DiscretePulseGenerator: '<Root>/Pulse Generator' */
  stm32_gettingstarted_DW.clockTickCounter = -2;

  /* InitializeConditions for DiscretePulseGenerator: '<Root>/Pulse Generator1' */
  stm32_gettingstarted_DW.clockTickCounter_b = -2;

  /* Start for MATLABSystem: '<S6>/PWM Output' */
  stm32_gettingstarted_DW.obj.isInitialized = 0;
  stm32_gettingstarted_DW.obj.matlabCodegenIsDeleted = false;
  stm32_gettings_SystemCore_setup(&stm32_gettingstarted_DW.obj);
}

/* Model terminate function */
void stm32_gettingstarted_terminate(void)
{
  uint8_T ChannelInfo;

  /* Terminate for MATLABSystem: '<S6>/PWM Output' */
  if (!stm32_gettingstarted_DW.obj.matlabCodegenIsDeleted) {
    stm32_gettingstarted_DW.obj.matlabCodegenIsDeleted = true;
    if ((stm32_gettingstarted_DW.obj.isInitialized == 1) &&
        stm32_gettingstarted_DW.obj.isSetupComplete) {
      disableCounter(stm32_gettingstarted_DW.obj.TimerHandle);
      disableTimerInterrupts(stm32_gettingstarted_DW.obj.TimerHandle, 0);
      ChannelInfo = ENABLE_CH;
      disableTimerChannel1(stm32_gettingstarted_DW.obj.TimerHandle, ChannelInfo);
    }
  }

  /* End of Terminate for MATLABSystem: '<S6>/PWM Output' */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
