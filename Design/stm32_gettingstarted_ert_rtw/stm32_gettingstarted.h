/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: stm32_gettingstarted.h
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

#ifndef RTW_HEADER_stm32_gettingstarted_h_
#define RTW_HEADER_stm32_gettingstarted_h_
#ifndef stm32_gettingstarted_COMMON_INCLUDES_
#define stm32_gettingstarted_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "main.h"
#endif                               /* stm32_gettingstarted_COMMON_INCLUDES_ */

#include "stm32_gettingstarted_types.h"
#include <stddef.h>
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block states (default storage) for system '<Root>' */
typedef struct {
  stm32cube_blocks_PWMOutput_st_T obj; /* '<S6>/PWM Output' */
  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
  int32_T clockTickCounter_b;          /* '<Root>/Pulse Generator1' */
} DW_stm32_gettingstarted_T;

/* Parameters (default storage) */
struct P_stm32_gettingstarted_T_ {
  real_T PulseGenerator_Amp;           /* Expression: 3
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Period;        /* Expression: 2
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_Duty;          /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator_PhaseDelay;    /* Expression: 2
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T PulseGenerator1_Amp;          /* Expression: 2
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
  real_T PulseGenerator1_Period;       /* Expression: 2
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
  real_T PulseGenerator1_Duty;         /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
  real_T PulseGenerator1_PhaseDelay;   /* Expression: 2
                                        * Referenced by: '<Root>/Pulse Generator1'
                                        */
};

/* Real-time Model Data Structure */
struct tag_RTM_stm32_gettingstarted_T {
  const char_T * volatile errorStatus;
};

/* Block parameters (default storage) */
extern P_stm32_gettingstarted_T stm32_gettingstarted_P;

/* Block states (default storage) */
extern DW_stm32_gettingstarted_T stm32_gettingstarted_DW;

/* Model entry point functions */
extern void stm32_gettingstarted_initialize(void);
extern void stm32_gettingstarted_step(void);
extern void stm32_gettingstarted_terminate(void);

/* Real-time Model object */
extern RT_MODEL_stm32_gettingstarted_T *const stm32_gettingstarted_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'stm32_gettingstarted'
 * '<S1>'   : 'stm32_gettingstarted/Blue LED'
 * '<S2>'   : 'stm32_gettingstarted/PWM Output'
 * '<S3>'   : 'stm32_gettingstarted/Blue LED/ECSoC'
 * '<S4>'   : 'stm32_gettingstarted/Blue LED/ECSoC/ECSimCodegen'
 * '<S5>'   : 'stm32_gettingstarted/PWM Output/ECSoC'
 * '<S6>'   : 'stm32_gettingstarted/PWM Output/ECSoC/ECSimCodegen'
 */
#endif                                 /* RTW_HEADER_stm32_gettingstarted_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
