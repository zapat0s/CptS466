/*  Project 3: SPI and I2C
 *  CPTS466
 *  Programmed by Alex Schuldberg and Joshua Clark
 *  NOTE: Some open source code was utilized for the I2C procedures from this
 *  link:
 * http://ww1.microchip.com/downloads/en/DeviceDoc/PIC32_I2C_CodeExample_041613.zip
 *  The code was however heavily modified to work for this project
 */

#include <plib.h>
#include <p32xxxx.h>
#include <stdlib.h>
#include <peripheral/i2c.h>
#include <peripheral/ports.h>
#include <peripheral/system.h>



#pragma config FNOSC = PRIPLL // Oscillator selection
#pragma config POSCMOD = EC // Primary oscillator mode
#pragma config FPLLIDIV = DIV_2 // PLL input divider
#pragma config FPLLMUL = MUL_20 // PLL multiplier
#pragma config FPLLODIV = DIV_1 // PLL output divider
#pragma config FPBDIV = DIV_2 // Peripheral bus clock divider
#pragma config FSOSCEN = OFF // Secondary oscillator enable

#define SYS_CLOCK		80000000
#define SYSTEM_CLOCK		80000000
#define DESIRED_BAUD_RATE	9600

#define MAX_DUTY                0x5FFF
#define FUDGE_FACTOR            0x500

#define GetSystemClock()            (SYS_CLOCK)
#define GetPeripheralClock()        (SYS_CLOCK) // FPBDIV = DIV_1
#define GetInstructionClock()       (SYS_CLOCK)
#define I2C_CLOCK_FREQ              100000

#define TMP2_ADDRESS            0x4B



void initialize_CLS (void);
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
void setupSPI_ports (void);
void setup_SPI2 (void);
void initialize_CLS (void);
void clsPrint(char* str);
void setupI2C(void);



BOOL TransmitOneByte( UINT8 data );
BOOL StartTransfer( BOOL restart );
void StopTransfer( void );
double getTemp(void);


int motor1ticks = 0;
int motor2ticks = 0;

int state = 0;

int statechange = 1;

// Globals for setting up pmod CLS
static char enable_display[] = {27, '[', '3', 'e', '\0'};
static char set_cursor[] = {27, '[', '1', 'c', '\0'};
static char home_cursor[] = {27, '[', 'j', '\0'};
static char wrap_line[] = {27, '[', '0', 'h', '\0'};

//Globals for I2C
UINT8               i2cData[] = {'a', 27, '[', '3', 'e', '\0', 27, '[', '1', 'c', '\0', 27, '[', 'j', '\0', 'H', 'i', '\0'};
I2C_7_BIT_ADDRESS   SlaveAddress;
int                 Index;
int                 DataSz;
UINT32              actualClock;
BOOL                Acknowledged;
BOOL                Success = TRUE;
UINT8               i2cbyte;

int main (void)
{
        int i;
        double ft = 0;
        unsigned int pbClock = 0;
        char clsbuffer[80];
        int temperature;
        int num_iterations = 0;
        int avgtemp;
        pbClock = SYSTEMConfigPerformance (SYSTEM_CLOCK);

        //Setups
        setupSwitch();
        setupHB();
        setupTimer2();
        setupOC();

        setupSPI_ports();
        setup_SPI2();
        initialize_CLS();
        setupI2C();
        configureInterrupts();

        clsPrint("Hello World");

	while (1)
	{
            check_state();
            i = 1024*1024;//insert some delay
            while(i--);
            ft = calc_distances();
            temperature = getTemp();
            //convert to ferengtheight
            temperature = ((double)temperature * 1.8 )+32;
            //compute average
            avgtemp += temperature;
            avgtemp = avgtemp/2;
            //keep in mind this is a weighted average that weights later temps way higher than newer ones.
            
            sprintf(clsbuffer,"%f ft %df  avg: %df",ft,temperature,avgtemp);
            clsPrint(home_cursor);
            clsPrint(clsbuffer);
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
            motor1ticks = 0;
            motor2ticks = 0;
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
            state = 0;
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

//output capture interrupt handler
void __ISR(_INPUT_CAPTURE_2_VECTOR,ipl3) Capture2Handler(void)
{
    motor1ticks++;
    //DBPRINTF("Motor1Ticks: %d",motor1ticks);
    mIC2ClearIntFlag();
}

//output capture interrupt handler for the other wheel
void __ISR(_INPUT_CAPTURE_3_VECTOR,ipl3) Capture3Handler(void)
{
    motor2ticks++;
    //DBPRINTF("Motor1Ticks: %d",motor1ticks);
    mIC3ClearIntFlag();
}

//sets up the ports for the SPI
void setupSPI_ports (void)
{
	// Master Mode
	/* SDO1 - Output - RD6
	   SDI1 - Input - RG7
	   SCK1 - Ouput - RD8
	   SS1  - Output - RD9 */

	PORTSetPinsDigitalOut (IOPORT_G, BIT_6 | BIT_8 | BIT_9);
	PORTSetPinsDigitalIn (IOPORT_G, BIT_7);
}

//sets up the SPI for the CLS
void setup_SPI2 (void)
{
	// void	SpiChnOpen(int chn, SpiCtrlFlags config, unsigned int fpbDiv);
	// SpiChnOpen (1, SPI_OPEN_MSTEN | SPI_OPEN_SMP_END | SPI_OPEN_MODE8, 1024);
	SpiChnOpen (2, SPI_CON_MSTEN  | SPI_CON_MODE8 | SPI_CON_ON | CLK_POL_ACTIVE_LOW, 256);

	// Create a falling edge pin SS to start communication
	PORTSetBits (IOPORT_G, BIT_9);
	delay (1000);
	PORTClearBits (IOPORT_G, BIT_9);
}

//initializes the CLS
void initialize_CLS (void)
{
	SpiChnPutS (2, enable_display, 4);
	SpiChnPutS (2, set_cursor, 4);
	SpiChnPutS (2, home_cursor, 3);
	SpiChnPutS (2, wrap_line, 4);
}

//prints the designated string to the CLS via the SPI
void clsPrint(char* str)
{
    SpiChnPutS (2, str, strlen(str));

}

//sets up the I2C
void setupI2C(void)
{
    //UINT32 actualClock;
    PORTSetPinsDigitalOut (IOPORT_A, BIT_2);
    PORTSetPinsDigitalIn(IOPORT_A, BIT_3);
    actualClock = I2CSetFrequency(I2C2, GetPeripheralClock(), I2C_CLOCK_FREQ);
    if ( abs(actualClock-I2C_CLOCK_FREQ) > I2C_CLOCK_FREQ/10 )
    {
        DBPRINTF("Error: I2C1 clock frequency (%u) error exceeds 10%%.\n", (unsigned)actualClock);
    }
    I2CEnable(I2C2, TRUE);
    
}

//gets the temperature from the temp sensor
double getTemp(void)
{
    INT16 temp;
    //
    // Read the data back from the Temp Sensor.
    //

    // Initialize the data buffer
    I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, TMP2_ADDRESS, I2C_WRITE);
    i2cData[0] = SlaveAddress.byte;
    DataSz = 1;

    // Start the transfer to read the Temp Sensor.
    if( !StartTransfer(FALSE) )
    {
        while(1);
    }

    // Address the Temp Sensor.
    Index = 0;
    while( Success & (Index < DataSz) )
    {
        // Transmit a byte
        if (TransmitOneByte(i2cData[Index]))
        {
            // Advance to the next byte
            Index++;
        }
        else
        {
            Success = FALSE;
        }

        // Verify that the byte was acknowledged
        if(!I2CByteWasAcknowledged(I2C2))
        {
            DBPRINTF("Error: Sent byte was not acknowledged\n");
            Success = FALSE;
        }
    }

    // Restart and send the Temp Sensor's internal address to switch to a read transfer
    if(Success)
    {
        // Send a Repeated Started condition
        if( !StartTransfer(TRUE) )
        {
            while(1);
        }

        // Transmit the address with the READ bit set
        I2C_FORMAT_7_BIT_ADDRESS(SlaveAddress, TMP2_ADDRESS, I2C_READ);
        if (TransmitOneByte(SlaveAddress.byte))
        {
            // Verify that the byte was acknowledged
            if(!I2CByteWasAcknowledged(I2C2))
            {
                DBPRINTF("Error: Sent byte was not acknowledged\n");
                Success = FALSE;
            }
        }
        else
        {
            Success = FALSE;
        }
    }

    // Read the data from the desired address
    if(Success)
    {
        if(I2CReceiverEnable(I2C2, TRUE) == I2C_RECEIVE_OVERFLOW)
        {
            DBPRINTF("Error: I2C Receive Overflow\n");
            Success = FALSE;
        }
        else
        {
            while(!I2CReceivedDataIsAvailable(I2C2));
            i2cbyte = I2CGetByte(I2C2);
            temp = i2cbyte << 8;
            //while(!I2CReceivedDataIsAvailable(I2C2));
            i2cbyte = I2CGetByte(I2C2);
            temp |= i2cbyte;
            temp = temp >> 3;
            temp = (float)temp * 0.0625;
        }

    }

    // End the transfer (stop here if an error occured)
    StopTransfer();
    if(!Success)
    {
        while(1);
    }

    return temp;

}


/*******************************************************************************
  Function:
    BOOL TransmitOneByte( UINT8 data )

  Summary:
    This transmits one byte to the Temp Sensor.

  Description:
    This transmits one byte to the Temp Sensor, and reports errors for any bus
    collisions.

  Precondition:
    The transfer must have been previously started.

  Parameters:
    data    - Data byte to transmit

  Returns:
    TRUE    - Data was sent successfully
    FALSE   - A bus collision occured

  Example:
    <code>
    TransmitOneByte(0xAA);
    </code>

  Remarks:
    This is a blocking routine that waits for the transmission to complete.
  *****************************************************************************/

BOOL TransmitOneByte( UINT8 data )
{
    // Wait for the transmitter to be ready
    while(!I2CTransmitterIsReady(I2C2));

    // Transmit the byte
    if(I2CSendByte(I2C2, data) == I2C_MASTER_BUS_COLLISION)
    {
        DBPRINTF("Error: I2C Master Bus Collision\n");
        return FALSE;
    }

    // Wait for the transmission to finish
    while(!I2CTransmissionHasCompleted(I2C2));

    return TRUE;
}


/*******************************************************************************
  Function:
    BOOL StartTransfer( BOOL restart )

  Summary:
    Starts (or restarts) a transfer to/from the Temp Sensor.

  Description:
    This routine starts (or restarts) a transfer to/from the Temp Sensor, waiting (in
    a blocking loop) until the start (or re-start) condition has completed.

  Precondition:
    The I2C module must have been initialized.

  Parameters:
    restart - If FALSE, send a "Start" condition
            - If TRUE, send a "Restart" condition

  Returns:
    TRUE    - If successful
    FALSE   - If a collision occured during Start signaling

  Example:
    <code>
    StartTransfer(FALSE);
    </code>

  Remarks:
    This is a blocking routine that waits for the bus to be idle and the Start
    (or Restart) signal to complete.
  *****************************************************************************/

BOOL StartTransfer( BOOL restart )
{
    I2C_STATUS  status;

    // Send the Start (or Restart) signal
    if(restart)
    {
        I2CRepeatStart(I2C2);
    }
    else
    {
        // Wait for the bus to be idle, then start the transfer
        while( !I2CBusIsIdle(I2C2) );

        if(I2CStart(I2C2) != I2C_SUCCESS)
        {
            DBPRINTF("Error: Bus collision during transfer Start\n");
            return FALSE;
        }
    }

    // Wait for the signal to complete
    do
    {
        status = I2CGetStatus(I2C2);

    } while ( !(status & I2C_START) );

    return TRUE;
}



/*******************************************************************************
  Function:
    void StopTransfer( void )

  Summary:
    Stops a transfer to/from the Temp Sensor.

  Description:
    This routine Stops a transfer to/from the Temp Sensor, waiting (in a
    blocking loop) until the Stop condition has completed.

  Precondition:
    The I2C module must have been initialized & a transfer started.

  Parameters:
    None.

  Returns:
    None.

  Example:
    <code>
    StopTransfer();
    </code>

  Remarks:
    This is a blocking routine that waits for the Stop signal to complete.
  *****************************************************************************/

void StopTransfer( void )
{
    I2C_STATUS  status;

    // Send the Stop signal
    I2CStop(I2C2);

    // Wait for the signal to complete
    do
    {
        status = I2CGetStatus(I2C2);

    } while ( !(status & I2C_STOP) );
}






