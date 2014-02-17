#include <plib.h>
#include <p32xxxx.h>

#pragma config FNOSC = PRIPLL // Oscillator selection
#pragma config POSCMOD = EC // Primary oscillator mode
#pragma config FPLLIDIV = DIV_2 // PLL input divider
#pragma config FPLLMUL = MUL_20 // PLL multiplier
#pragma config FPLLODIV = DIV_1 // PLL output divider
#pragma config FPBDIV = DIV_2 // Peripheral bus clock divider
#pragma config FSOSCEN = OFF // Secondary oscillator enable

#define SYSTEM_CLOCK		80000000

void configureInterrupts (void);
void setupTimer2 (void);
void setupOC(void);
void setupHB ( void );
void setupSwitch ( void );
void setupInputCapture(void);

int motor1ticks = 0;
int motor2ticks = 0;

int main (void)
{
        unsigned int pbClock = 0;

        pbClock = SYSTEMConfigPerformance (SYSTEM_CLOCK);

        //Setups
        setupSwitch();
        setupHB();
        setupTimer2();
        setupOC();
        configureInterrupts();

	while (1)
	{

	}

	return 0;
}

void configureInterrupts (void)
{
        // JF01 - RA14 - INT3 - SW1

	INTEnableSystemMultiVectoredInt ();

	ConfigINT3 (EXT_INT_PRI_7 | RISING_EDGE_INT | EXT_INT_ENABLE);

        setupInputCapture(); //set up the input capture interrupts

	INTEnableInterrupts (); // Enable system wide interrupts
}

void setupTimer2 (void){
    OpenTimer2( T2_ON | T2_PS_1_1, 0x7FFF ); // The right argument determines the period of the output waveform

}

void setupTimer3 (void){
    OpenTimer3( T3_ON | T3_PS_1_1, 0x7FFF ); // The right argument determines the period of the output waveform

}

void setupOC(void)
{
    PORTSetBits( IOPORT_D, BIT_8 ); //set h bridge dir
    // The right most arguments of the OpenOC1 call represent the duty cycle of the output waveform
    OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, 0x3FFF, 0X3FFF );
    OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, 0x3FFF, 0X3FFF );

}

void setupHB ( void )
{
    PORTSetPinsDigitalOut( IOPORT_D, BIT_7 ); //Dir pin
    PORTClearBits(IOPORT_D,BIT_7);
    PORTSetPinsDigitalOut( IOPORT_D, BIT_1 ); //Enable pin
    PORTClearBits (IOPORT_D, BIT_1); // Make sure no waveform is outputted to Enable pin
    PORTSetPinsDigitalIn(IOPORT_D,BIT_9); //Input capture pin
    //PORTSetPinsDigitalIn(IOPORT_C,BIT_1);//Akso input capture pin (why do we need 2?)


    PORTSetPinsDigitalOut( IOPORT_D, BIT_6); //Dir pin
    PORTSetBits(IOPORT_D,BIT_6);
    PORTSetPinsDigitalOut (IOPORT_D, BIT_2); //Enable pin
    PORTClearBits (IOPORT_D, BIT_2); // Make sure no waveform is outputted to Enable pin
    PORTSetPinsDigitalIn(IOPORT_D,BIT_10); //Input capture pin
    //PORTSetPinsDigitalIn(IOPORT_C,BIT_2);//Akso input capture pin

}

void setupSwitch ( void )
{
    PORTSetPinsDigitalIn( IOPORT_A, BIT_14 ); // Triggers the interrupt, and hence motor will spin
}

void setupInputCapture(void)
{
    OpenCapture2(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture2(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    OpenCapture3(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture3(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    

}

void __ISR(_EXTERNAL_3_VECTOR, IPL7AUTO) INT3Handler(void)
{
    //Turn on Timer
    //OpenTimer2( T2_ON );
    setupTimer2 ();
    //Turn on OCR
   // OpenOC1( OC_ON );
    setupOC ();

    mINT3ClearIntFlag (); // Clear interrupt
}

void __ISR(_INPUT_CAPTURE_2_VECTOR,ipl3) Capture2Handler(void)
{
    motor1ticks++;
    //DBPRINTF("Motor1Ticks: %d",motor1ticks);
    mIC2ClearIntFlag();
}
void __ISR(_INPUT_CAPTURE_3_VECTOR,ipl3) Capture3Handler(void)
{
    motor2ticks++;
    //DBPRINTF("Motor1Ticks: %d",motor1ticks);
    mIC3ClearIntFlag();
}