#ifndef _HAL_PHY_H_
#define _HAL_PHY_H_

// Includes
#include <stdint.h>
#include "hal.h"
#include "halGpio.h"
#include <xc.h>

// Definitions
#if defined(PLATFORM_DM)
    HAL_GPIO_PIN(LED1,      C,  12);
    HAL_GPIO_PIN(LED2,      C,  15);
    
    HAL_GPIO_PIN(LED_R,     G,  9);
    HAL_GPIO_PIN(LED_G,     B,  4);
    HAL_GPIO_PIN(LED_B,     B,  7);
    
    HAL_GPIO_PIN(SW1,       D,  1);
    HAL_GPIO_PIN(SW2,       D,  0);
    
    // mikroBUS A
    HAL_GPIO_PIN(PHY_RST,   D,  5);
    HAL_GPIO_PIN(PHY_IRQ,   F,  6);
    HAL_GPIO_PIN(PHY_SLP_TR,B,  14);
    HAL_GPIO_PIN(PHY_CS,    E,  4);
    HAL_GPIO_PIN(PHY_MISO,  D,  2);
    HAL_GPIO_PIN(PHY_MOSI,  D,  3);
    HAL_GPIO_PIN(PHY_SCK,   D,  4);
#elif defined(PLATFORM_UMOGI)
    HAL_GPIO_PIN(LED1,      G,  6);
    HAL_GPIO_PIN(LED2,      G,  7);
    HAL_GPIO_PIN(LED3,      G,  8);
    HAL_GPIO_PIN(LED4,      G,  9);
    
    HAL_GPIO_PIN(LED_R,     D,  1);
    HAL_GPIO_PIN(LED_G,     F,  4);
    HAL_GPIO_PIN(LED_B,     F,  5);
    
    HAL_GPIO_PIN(SW1,       C,  1);
    HAL_GPIO_PIN(SW2,       C,  3);
    HAL_GPIO_PIN(SW3,       E,  8);
    HAL_GPIO_PIN(SW4,       E,  9);
    
    // mikroBUS
    HAL_GPIO_PIN(PHY_RST,   D,  13);
    HAL_GPIO_PIN(PHY_IRQ,   D,  12);
    HAL_GPIO_PIN(PHY_SLP_TR,B,  11);
    HAL_GPIO_PIN(PHY_CS,    F,  0);
    HAL_GPIO_PIN(PHY_MISO,  F,  2);
    HAL_GPIO_PIN(PHY_MOSI,  F,  3);
    HAL_GPIO_PIN(PHY_SCK,   F,  8);
#endif
    
// Prototypes
uint8_t HAL_PhySpiWriteByte(uint8_t value);
void HAL_PhyReset(void);
void halPhyInit(void);

// Implementations
INLINE uint8_t HAL_PhySpiWriteByteInline(uint8_t value) {
    SPI2BUFL = value;
    while (!SPI2STATLbits.SPIRBF);
    
    return SPI2BUFL;
}

INLINE void HAL_PhySpiSelect(void) {
    HAL_GPIO_PHY_CS_clr();
}

INLINE void HAL_PhySpiDeselect(void) {
    HAL_GPIO_PHY_CS_set();
}

INLINE void HAL_PhySlpTrSet(void) {
    HAL_GPIO_PHY_SLP_TR_set();
}

INLINE void HAL_PhySlpTrClear(void) {
    HAL_GPIO_PHY_SLP_TR_clr();
}

#endif
