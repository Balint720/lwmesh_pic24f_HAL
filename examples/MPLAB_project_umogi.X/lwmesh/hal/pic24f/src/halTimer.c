// Includes
#include <stdint.h>
#include "hal.h"
#include "halTimer.h"
#include "halPhy.h"

#include "libpic30.h"

// Definitions
#define TIMER_PRESCALER     8

#define SET_PRESC(prescale, timer) \
if      (prescale == 1)     { T##timer##CON |= 0b00 << 4;} \
else if (prescale == 8)     { T##timer##CON |= 0b01 << 4;} \
else if (prescale == 64)    { T##timer##CON |= 0b10 << 4;} \
else if (prescale == 256)   { T##timer##CON |= 0b11 << 4;} \
else                        { T##timer##CON |= 0b00 << 4;}

// Variables
volatile uint8_t halTimerIrqCount;

// Implementations
void HAL_TimerInit(void) {
    halTimerIrqCount = 0;
    
    T1CON = 0x000;
    
    SET_PRESC(TIMER_PRESCALER, 1);
    
    PR1 = ((FCY/1000ul) / TIMER_PRESCALER) * HAL_TIMER_INTERVAL - 1;
    
    // Interrupt
    IFS0bits.T1IF = 0;
    IPC0bits.T1IP = 4;
    IEC0bits.T1IE = 1;
    
    // Turn on Timer1
    T1CONbits.TON = 1;
}

void HAL_TimerDelay(uint16_t us) {
    __delay_ms(us);
}

void _ISR _T1Interrupt(void) {
    IFS0bits.T1IF = 0;
    
    halTimerIrqCount++;
}
