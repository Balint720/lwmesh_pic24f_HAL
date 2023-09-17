// Includes
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include "hal.h"
#include "halPhy.h"
//#include "phy.h"

// Configuration bits
#if defined(PLATFORM_DM)
// PIC24FJ128GL306 Configuration Bit Settings

// 'C' source line config statements

// FSEC
#pragma config BWRP = OFF               // Boot Segment Write-Protect bit (Boot Segment may be written)
#pragma config BSS = DISABLED           // Boot Segment Code-Protect Level bits (No Protection (other than BWRP))
#pragma config BSEN = OFF               // Boot Segment Control bit (No Boot Segment)
#pragma config GWRP = OFF               // General Segment Write-Protect bit (General Segment may be written)
#pragma config GSS = DISABLED           // General Segment Code-Protect Level bits (No Protection (other than GWRP))
#pragma config CWRP = OFF               // Configuration Segment Write-Protect bit (Configuration Segment may be written)
#pragma config CSS = DISABLED           // Configuration Segment Code-Protect Level bits (No Protection (other than CWRP))
#pragma config AIVTDIS = OFF            // Alternate Interrupt Vector Table bit (Disabled AIVT)

// FBSLIM
#pragma config BSLIM = 0x1FFF           // Boot Segment Flash Page Address Limit bits (Enter Hexadecimal value)

// FOSCSEL
#pragma config FNOSC = FRCPLL           // Oscillator Source Selection (Fast RC Oscillator with divide-by-N with PLL module (FRCPLL) )
#pragma config PLLMODE = PLL96DIV2      // PLL Mode Selection (96 MHz PLL. Oscillator input is divided by 2 (8 MHz input))
#pragma config IESO = OFF               // Two-speed Oscillator Start-up Enable bit (Start up with user-selected oscillator source)

// FOSC
#pragma config POSCMD = NONE            // Primary Oscillator Mode Select bits (Primary Oscillator disabled)
#pragma config OSCIOFCN = ON            // OSC2 Pin Function bit (OSC2 is general purpose digital I/O pin)
#pragma config SOSCSEL = ON             // SOSC Power Selection Configuration bits (SOSC is used in crystal (SOSCI/SOSCO) mode)
#pragma config PLLSS = PLL_FRC          // PLL Secondary Selection Configuration bit (PLL is fed by the on-chip Fast RC (FRC) oscillator)
#pragma config IOL1WAY = OFF            // Peripheral pin select configuration bit (Allow multiple reconfigurations)
#pragma config FCKSM = CSDCMD           // Clock Switching Mode bits (Both Clock switching and Fail-safe Clock Monitor are disabled)

// FWDT
#pragma config WDTPS = PS32768          // Watchdog Timer Postscaler bits (1:32,768)
#pragma config FWPSA = PR128            // Watchdog Timer Prescaler bit (1:128)
#pragma config FWDTEN = OFF             // Watchdog Timer Enable bits (WDT and SWDTEN disabled)
#pragma config WINDIS = OFF             // Watchdog Timer Window Enable bit (Watchdog Timer in Non-Window mode)
#pragma config WDTWIN = WIN25           // Watchdog Timer Window Select bits (WDT Window is 25% of WDT period)
#pragma config WDTCMX = WDTCLK          // WDT MUX Source Select bits (WDT clock source is determined by the WDTCLK Configuration bits)
#pragma config WDTCLK = LPRC            // WDT Clock Source Select bits (WDT uses LPRC)

// FPOR
#pragma config BOREN = ON               // Brown Out Enable bit (Brown Out Enable Bit)
#pragma config LPCFG = OFF              // Low power regulator control (No Retention Sleep)
#pragma config DNVPEN = ENABLE          // Downside Voltage Protection Enable bit (Downside protection enabled using ZPBOR when BOR is inactive)

// FICD
#pragma config ICS = PGD1               // ICD Communication Channel Select bits (Communicate on PGEC1 and PGED1)
#pragma config JTAGEN = OFF             // JTAG Enable bit (JTAG is disabled)

// FDMTIVTL
#pragma config DMTIVTL = 0xFFFF         // Deadman Timer Interval Low Word (Enter Hexadecimal value)

// FDMTIVTH
#pragma config DMTIVTH = 0xFFFF         // Deadman Timer Interval High Word (Enter Hexadecimal value)

// FDMTCNTL
#pragma config DMTCNTL = 0xFFFF         // Deadman Timer Instruction Count Low Word (Enter Hexadecimal value)

// FDMTCNTH
#pragma config DMTCNTH = 0xFFFF         // Deadman Timer Instruction Count High Word (Enter Hexadecimal value)

// FMDT
#pragma config DMTDIS = OFF             // Deadman Timer Enable Bit (Dead Man Timer is Disabled and can be enabled by software)

// FDEVOPT1
#pragma config ALTCMPI = DISABLE        // Alternate Comparator Input Enable bit (C2INC and C3INC are on their standard pin locations )
#pragma config TMPRPIN = OFF            // Tamper Pin Enable bit (TMPRN pin function is disabled)
#pragma config SOSCHP = ON              // SOSC High Power Enable bit (valid only when SOSCSEL = 1 (Enable SOSC high power mode (default))
#pragma config ALTI2C1 = ALTI2C1_OFF    // Alternate I2C pin Location (I2C1 Pin mapped to SDA1/SCL1 pins)
#pragma config SMB3EN = SMBUS3          // SM Bus Enable (SMBus 3.0 input levels)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#endif

// Implementations
uint8_t Hal_PhySpiWriteByte(uint8_t value) {
    return HAL_PhySpiWriteByteInline(value);
}

void halPhyInit(void) {
    // PPS SPI
    ATOMIC_SECTION_ENTER;
    
    OSCCON = 0x46;
    OSCCON = 0x57;
    OSCCONbits.IOLOCK = 0;
#if defined(PLATFORM_DM)
    RPINR22bits.SDI2R = 23;         // SPI2 Data Input          RP23 -> RD2
    RPOR11bits.RP22R = 10;          // SPI2 Data Output         RP22 -> RD3
    RPOR12bits.RP25R = 11;          // SPI2 Serial Clock Output RP25 -> RD4
#elif defined(PLATFORM_UMOGI)
    RPINR22bits.SDI2R = 30;         // SPI2 Data Input          RP22 -> RD2
    RPOR8bits.RP16R = 10;          // SPI2 Data Output          RP16 -> RD3
    RPOR7bits.RP15R = 11;          // SPI2 Serial Clock Output  RP15 -> RD4
#endif
    
    OSCCON = 0x46;
    OSCCON = 0x57;
    OSCCONbits.IOLOCK = 1;
    
    ATOMIC_SECTION_LEAVE;
    
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
    
    
    // SPI Setup
    SPI2CON1bits.SPIEN = 0;                 // Stop and reset SPI2 module
    uint8_t x = SPI2BUFL; x = SPI2BUFH;     // Clear receive buffer
    SPI2CON1Lbits.ENHBUF = 0;               // Standard Buffer mode
    SPI2BRGL = 0;                           // Baud rate register (16 MHz, 0 -> 8 MHz SCK)
    SPI2STATLbits.SPIROV = 0;               // Clear Overflow bit
    
    // SPI Master mode settings
    SPI2CON1Lbits.MSTEN = 1;                // Master mode enable
    SPI2CON1Lbits.MODE = 0b00;              // 8 bit word length
    
    // Enable SPI
    SPI2CON1Lbits.SPIEN = 1;
}
