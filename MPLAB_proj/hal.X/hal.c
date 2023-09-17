// Includes
#include "hal.h"
#include "halPhy.h"
#include "halTimer.h"

// Implementations
void HAL_Init(void) {
    CLKDIVbits.CPDIV = 0b00;                    // PLL Utóosztó 0
    
    RCONbits.SWDTEN = 0;                        // Watchdog Timer softwares kikapcsolása
    
    CLKDIVbits.CPDIV = 0b00;
    while (!OSCCONbits.LOCK) {Nop();}           // PLL Startup Timer
    
    SYS_EnableInterrupts();
    
    HAL_TimerInit();
    halPhyInit();
}

void HAL_Delay(uint8_t us) {
    HAL_TimerDelay(us);
}