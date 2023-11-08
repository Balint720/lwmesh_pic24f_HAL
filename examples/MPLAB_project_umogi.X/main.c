// Configuration bits
// PIC24FJ256GB108 Configuration Bit Settings

// 'C' source line config statements

// CONFIG3
#pragma config WPFP = WPFP511           // Write Protection Flash Page Segment Boundary (Highest Page (same as page 170))
#pragma config WPDIS = WPDIS            // Segment Write Protection Disable bit (Segmented code protection disabled)
#pragma config WPCFG = WPCFGDIS         // Configuration Word Code Page Protection Select bit (Last page(at the top of program memory) and Flash configuration words are not protected)
#pragma config WPEND = WPENDMEM         // Segment Write Protection End Page Select bit (Write Protect from WPFP to the last page of memory)

// CONFIG2
#pragma config POSCMOD = HS             // Primary Oscillator Select (HS oscillator mode selected)
#pragma config DISUVREG = ON            // Internal USB 3.3V Regulator Disable bit (Regulator is enabled)
#pragma config IOL1WAY = ON             // IOLOCK One-Way Set Enable bit (Write RP Registers Once)
#pragma config OSCIOFNC = OFF           // Primary Oscillator Output Function (OSCO functions as CLKO (FOSC/2))
#pragma config FCKSM = CSDCMD           // Clock Switching and Monitor (Both Clock Switching and Fail-safe Clock Monitor are disabled)
#pragma config FNOSC = PRIPLL           // Oscillator Select (Primary oscillator (XT, HS, EC) with PLL module (XTPLL,HSPLL, ECPLL))
#pragma config PLL_96MHZ = ON           // 96MHz PLL Disable (Enabled)
#pragma config PLLDIV = DIV3            // USB 96 MHz PLL Prescaler Select bits (Oscillator input divided by 3 (12MHz input))
#pragma config IESO = OFF               // Internal External Switch Over Mode (IESO mode (Two-speed start-up)disabled)

// CONFIG1
#pragma config WDTPS = PS32768          // Watchdog Timer Postscaler (1:32,768)
#pragma config FWPSA = PR128            // WDT Prescaler (Prescaler ratio of 1:128)
#pragma config WINDIS = OFF             // Watchdog Timer Window (Standard Watchdog Timer enabled,(Windowed-mode is disabled))
#pragma config FWDTEN = OFF             // Watchdog Timer Enable (Watchdog Timer is disabled)
#pragma config ICS = PGx2               // Comm Channel Select (Emulator functions are shared with PGEC2/PGED2)
#pragma config GWRP = OFF               // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF                // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF             // JTAG Port Enable (JTAG port is disabled)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.

#include <xc.h>

#include "sys.h"
#include "halPhy.h"

#include "sysTimer.h" 

// timer data structure
SYS_Timer_t my_timer;

// timer handler
void my_timer_handler(struct SYS_Timer_t *timer){
    HAL_GPIO_LED1_toggle();
}

// data to send
char *payload = "Hello World!";
int payload_size = 13;

// data request structure
NWK_DataReq_t dataReq;

// callback function declaration
void data_sent_callback(struct NWK_DataReq_t *req);

// request data send
void send_data() {
    dataReq.dstAddr = 2;
    dataReq.srcEndpoint = 1;
    dataReq.dstEndpoint = 1;
    dataReq.data = payload;
    dataReq.size = payload_size;
    dataReq.confirm = data_sent_callback;
    NWK_DataReq(&dataReq);
}

// callback function definition
void data_sent_callback(struct NWK_DataReq_t *req){
    if(req->status == NWK_SUCCESS_STATUS){
        HAL_GPIO_LED_G_set();
        HAL_GPIO_LED_R_clr();
    } else {
        HAL_GPIO_LED_G_clr();
        HAL_GPIO_LED_R_set();
    }

    // send again
    send_data();
}

void APP_Init() {
    // initialize timer
    my_timer.interval = 1000; // ms
    my_timer.mode = SYS_TIMER_PERIODIC_MODE; // repeat
    my_timer.handler = my_timer_handler;
    SYS_TimerStart(&my_timer);
    
    // network init
    NWK_SetAddr(1);
    NWK_SetPanId(0xDEAD);
    PHY_SetChannel(11);
    PHY_SetTxPower(0x00); // maximal tx power
    PHY_SetRxState(true);

    // send data
    send_data();
}

void APP_TaskHandler() {
    
}

int main() {
    SYS_Init();
    APP_Init();

    while (1) {
        SYS_TaskHandler();
        APP_TaskHandler();
    }

    return 0;
}
