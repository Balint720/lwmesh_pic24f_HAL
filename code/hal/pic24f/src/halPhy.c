// Includes
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "hal.h"
#include "halPhy.h"
#include "phy.h"

// Implementations
uint8_t HAL_PhySpiWriteByte(uint8_t value) {
    return HAL_PhySpiWriteByteInline(value);
}

void halPhyInit(void) {
    // LEDs and Switches
#if defined(PLATFORM_DM)
    HAL_GPIO_LED1_out();
    HAL_GPIO_LED2_out();
    
    HAL_GPIO_LED_R_out();
    HAL_GPIO_LED_G_out();
    HAL_GPIO_LED_B_out();
    
    HAL_GPIO_SW1_in();
    HAL_GPIO_SW2_in();
#elif defined(PLATFORM_UMOGI)
    HAL_GPIO_LED1_out();
    HAL_GPIO_LED2_out();
    HAL_GPIO_LED3_out();
    HAL_GPIO_LED4_out();
    
    HAL_GPIO_LED_R_out();
    HAL_GPIO_LED_G_out();
    HAL_GPIO_LED_B_out();
    
    HAL_GPIO_SW1_in();
    HAL_GPIO_SW2_in();
    HAL_GPIO_SW3_in();
    HAL_GPIO_SW4_in();
#endif
    
    HAL_GPIO_PHY_SLP_TR_out();
    HAL_GPIO_PHY_SLP_TR_clr();
    HAL_GPIO_PHY_RST_out();
    HAL_GPIO_PHY_IRQ_in();
    HAL_GPIO_PHY_CS_out();
    HAL_GPIO_PHY_MISO_in();
    HAL_GPIO_PHY_MOSI_out();
    HAL_GPIO_PHY_SCK_out();
    
    // PPS SPI
    ATOMIC_SECTION_ENTER;
    
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    
#if defined(PLATFORM_DM)
    RPINR22bits.SDI2R = 23;         // SPI2 Data Input          RP23 -> RD2
    RPOR11bits.RP22R = 10;          // SPI2 Data Output         RP22 -> RD3
    RPOR12bits.RP25R = 11;          // SPI2 Serial Clock Output RP25 -> RD4
#elif defined(PLATFORM_UMOGI)
    RPINR22bits.SDI2R = 30;         // SPI2 Data Input          RP22 -> RD2
    RPOR8bits.RP16R = 10;          // SPI2 Data Output          RP16 -> RD3
    RPOR7bits.RP15R = 11;          // SPI2 Serial Clock Output  RP15 -> RD4
#endif
    
    __builtin_write_OSCCONL(OSCCON | 0x40);
    
    ATOMIC_SECTION_LEAVE;
    
    
    // SPI Setup
 #if defined(PLATFORM_DM)
    SPI2CON1bits.SPIEN = 0;                 // Stop and reset SPI2 module
    uint8_t x = SPI2BUFL; x = SPI2BUFH;     // Clear receive buffer
    SPI2CON1Lbits.ENHBUF = 0;               // Standard Buffer mode
    SPI2BRGL = 7;                           // Baud rate register (16 MHz, 0 -> 8 MHz SCK)
    SPI2STATLbits.SPIROV = 0;               // Clear Overflow bit
    
    // SPI Master mode settings
    SPI2CON1Lbits.MSTEN = 1;                // Master mode enable
    SPI2CON1Lbits.MODE = 0b00;              // 8 bit word length
    
    // Enable SPI
    SPI2CON1Lbits.SPIEN = 1;
#elif defined(PLATFORM_UMOGI)
    SPI2CON1 = 0x00;
    SPI2CON2 = 0x00;
    SPI2CON1bits.MSTEN = 1;                 // Master mode enable
    SPI2CON1bits.PPRE = 0b01;               // 16:1 primary prescaler
    SPI2CON1bits.SPRE = 0b000;              // 1:1 secondary prescaler

    SPI2STATbits.SPIROV = 0;                // Clear overflow bit
    
    // Enable SPI
    SPI2STATbits.SPIEN = 1;

#endif
}

void HAL_PhyReset(void) {
  HAL_GPIO_PHY_RST_clr();
  HAL_Delay(10);
  HAL_GPIO_PHY_RST_set();
}
