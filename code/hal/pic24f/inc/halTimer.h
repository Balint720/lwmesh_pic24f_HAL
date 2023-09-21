#ifndef _HAL_TIMER_H_
#define _HAL_TIMER_H_

// Includes
#include "sysTypes.h"

// Definitions
#define HAL_TIMER_INTERVAL 10ul // ms

#define SYS_FREQ 32000000UL     // Using FRCPLL oscillator (8 MHz)
                                /* PLL Prescaler (CPDIV): 0b001 (8/2) -> 4 -> 96 MHz /3 -> 32 /CPDIV (1) -> 32 MHZ  */
#define FCY SYS_FREQ/2          /*  "The selected clock source generates the processor
                                    and peripheral clock sources. The processor clock
                                    source is divided by two to produce the internal instruction cycle clock, FCY." */

// Variables
extern volatile uint8_t halTimerIrqCount;

// Prototypes
void HAL_TimerInit(void);
void HAL_TimerDelay(uint16_t us);

#endif
