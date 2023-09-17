#include "hal.h"
#include "halGpio.h"
#include "halPhy.h"
#include "halTimer.h"



int main(void) {
    HAL_Init();
    
    int i = 0;
    
    while(1) {
        if (halTimerIrqCount == 100) {
            i++;
            halTimerIrqCount = 0;
        }
        
        switch(i) {
            case 0:
                HAL_GPIO_LED_R_set();
                break;
            case 1:
                HAL_GPIO_LED_G_set();
                break;
            case 2:
                HAL_GPIO_LED_B_set();
                break;
            case 3:
                HAL_GPIO_LED_R_clr();
                break;
            case 4:
                HAL_GPIO_LED_G_clr();
                break;
            case 5:
                HAL_GPIO_LED_B_clr();
                break;
            default:
                HAL_GPIO_LED_R_set();
                i = 0;
                break;
        }
    }
    
    return 0;
}
