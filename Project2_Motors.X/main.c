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
#define DESIRED_BAUD_RATE	9600

#define MAX_DUTY                0x5FFF
#define FUDGE_FACTOR            0x500

void setup_UARTPORTS(void);
void initialize_CLS (void);
void setup_UART2 (unsigned int pb_clock);
void configureInterrupts (void);
void setupTimer2 (void);
void setupOC(void);
void setupHB ( void );
void setupSwitch ( void );
void setupInputCapture(void);
void adjust_speeds(void);
void delay(int ms);
void check_state();
double calc_distances(void);


int motor1ticks = 0;
int motor2ticks = 0;

int state = 0;

int statechange = 1;

// Globals for setting up pmod CLS
unsigned char enable_display[] = {27, '[', '3', 'e', '\0'};
unsigned char set_cursor[] = {27, '[', '1', 'c', '\0'};
unsigned char home_cursor[] = {27, '[', 'j', '\0'};
unsigned char wrap_line[] = {27, '[', '0', 'h', '\0'};

int main (void)
{
        int i;
        double ft = 0;
        unsigned int pbClock = 0;
        char clsbuffer[80];
        pbClock = SYSTEMConfigPerformance (SYSTEM_CLOCK);

        //Setups
        setupSwitch();
        setupHB();
        setupTimer2();
        setupOC();
        setup_UARTPORTS();
        setup_UART2(pbClock);
        initialize_CLS();
        configureInterrupts();

        putsUART2("Hello World");

	while (1)
	{
            check_state();
            i = 1024*1024;//insert some delay
            while(i--);
            ft = calc_distances();
            sprintf(clsbuffer,"%d,%d : %f ",motor2ticks,motor1ticks,ft);
            putsUART2(home_cursor);
            putsUART2(clsbuffer);
            //adjust the speeds to be in sync
            adjust_speeds();
	}

	return 0;
}
void check_state()
{
    if (state == 0)
    {
        if (statechange)
        {
            CloseOC2();
            CloseOC3();
            statechange = 0;
        }
    }
    if (state == 1)
    {
        if (statechange)
        {
            OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
            OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
            statechange = 0;
        }
        if (calc_distances()>10)
        {
            statechange = 1;
            state = 3;
        }
    }
    if (state == 3)
    {
        if (statechange)
        {
            motor1ticks = 0;
            motor2ticks = 0;
            statechange = 0;
        }
        if (calc_distances()>15)
        {
            statechange = 1;
            state = 0;
        }
    }
    if (state == 2)
    {
        if (statechange)
        {
            OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
            OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
            statechange = 0;
        }
        if (calc_distances()>5)
        {
            statechange = 1;
            state = 4;
        }
    }
    if (state == 4)
    {
        if (statechange)
        {

            motor1ticks = 0;
            motor2ticks = 0;
            CloseOC3();
            statechange = 0;
        }
        if (motor1ticks >= 120)
        {
            state = 5;
            statechange = 1;
        }
    }
    if (state == 5)
    {
        if (statechange)
        {
            motor1ticks = 0;
            motor2ticks = 0;
            OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
            statechange = 0;
        }
        if (calc_distances()>5)
        {
            statechange = 1;
            state = 4;
        }
    }

}

double calc_distances(void)
{
    //wheel circumference = 9 inches
    //number of ticks per full revolution = 120
    double feet_traveled;
    double miles_per_hour;
    int avg_motor_ticks;
    
    avg_motor_ticks = (motor1ticks+motor2ticks)/2;

    feet_traveled = ((double)avg_motor_ticks / 120.0) * .75;

    return feet_traveled;
    


}

void adjust_speeds(void)
{
    double current_ratio;
    //current_ratio = (double)OC2RS/(double)OC1RS;
    if ((motor1ticks <= 30) || (motor2ticks <= 30))
        return; //dodge divide by zero errors
    //as well as problems when putting the robot down on the ground.
    if (motor1ticks>motor2ticks)
    {
        current_ratio = (double)motor2ticks / (double)motor1ticks;
        OC2RS = current_ratio * MAX_DUTY - FUDGE_FACTOR;
    }
    else if (motor1ticks<motor2ticks)
    {
        current_ratio = (double)motor1ticks / (double)motor2ticks;
        OC3RS = current_ratio * MAX_DUTY - FUDGE_FACTOR;
    }

}
void configureInterrupts (void)
{
        // JF01 - RA14 - INT3 - SW1

	INTEnableSystemMultiVectoredInt ();

	ConfigINT3 (EXT_INT_PRI_7 | RISING_EDGE_INT | EXT_INT_ENABLE);
        ConfigINT4 (EXT_INT_PRI_7 | RISING_EDGE_INT | EXT_INT_ENABLE);


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
    OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
    OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );

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
    PORTSetPinsDigitalIn( IOPORT_A, BIT_15 ); // Triggers the interrupt, and hence motor will spin

}

void setupInputCapture(void)
{
    OpenCapture2(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture2(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    OpenCapture3(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture3(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    

}
void setup_UARTPORTS(void)
{
    // UART 2 port pins - connected to pmod CLS
	/* JH-01 U2CTS/RF12 			RF12
   	   JH-02 PMA8/U2TX/CN18/RF5 		RF5
           JH-03 PMA9/U2RX/CN17/RF4 	        RF4
	   JH-04 U2RTS/BCLK2/RF13 	        RF13 */

	PORTSetPinsDigitalIn (IOPORT_F, BIT_4);
	PORTSetPinsDigitalOut (IOPORT_F, BIT_5);
}

void setup_UART2 (unsigned int pb_clock)
{
	// OpenUART2( config1, config2, ubrg)
	OpenUART2 (UART_EN | UART_IDLE_CON | UART_RX_TX | UART_DIS_WAKE | UART_DIS_LOOPBACK | UART_DIS_ABAUD | UART_NO_PAR_8BIT | UART_1STOPBIT | UART_IRDA_DIS |
               UART_MODE_FLOWCTRL | UART_DIS_BCLK_CTS_RTS | UART_NORMAL_RX | UART_BRGH_SIXTEEN,
               UART_TX_PIN_LOW | UART_RX_ENABLE | UART_TX_ENABLE | UART_INT_TX | UART_INT_RX_CHAR | UART_ADR_DETECT_DIS	| UART_RX_OVERRUN_CLEAR,
			   mUARTBRG(pb_clock, DESIRED_BAUD_RATE));
}

void initialize_CLS (void)
{
	putsUART2 (enable_display);
	putsUART2 (set_cursor);
	putsUART2 (home_cursor);
	putsUART2 (wrap_line);
}

//stalls program execution for ms milliseconds
void delay(int ms)
{

    unsigned long int count = 0;
    for (count = 0; count < ms * 40; count++)
        asm("nop");
}

//sw 1 interrupt handler
void __ISR(_EXTERNAL_3_VECTOR, IPL7AUTO) INT3Handler(void)
{
    statechange = 1;
    state = 1;
    mINT3ClearIntFlag (); // Clear interrupt
}
//sw 2 interrupt handler
void __ISR(_EXTERNAL_4_VECTOR, IPL7AUTO) INT4Handler(void)
{

    statechange = 1;
    state = 2;

    mINT4ClearIntFlag (); // Clear interrupt
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