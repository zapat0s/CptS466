/*******************************************************************************
 * Programmer: Joshua Clark, Alex Schuldberg                                   *
 * Class: CptS 466                                                             *
 * Lab Project: 4                                                              *
 * Date: 3/26/2014                                                             *
 *                                                                             *
 * Description:  A counter. Pressing btn 1 starts the up counter while btn 2
 *
 *   *
 * starts the down counter. Pressing both btn 1 and 2 together stops the       *
 * counter and pressing btn 1 and 2 together a second time clears the counter. *
 ******************************************************************************/

// #include all necessary standard and user-defined libraries
#include <plib.h> // Includes all major functions and macros required to develop
                  // programs for the PIC32MX4
#include <p32xxxx.h> // Need specific PIC32 names for memory regions

#include "FreeRTOS.h"
#include "FreeRTOSConfig.h"
#include "task.h"
#include "queue.h"
#include "ConfigPerformance.h"
#include "semphr.h"

// Place your #pragma statements here, or in another .h file;
// #pragma statements are used to set your operating clock frequency

/* SYSCLK = 80 MHz (8 MHz Crystal/ FPLLIDIV * FPLLMUL / FPLLODIV)
// PBCLK = 40 MHz
// Primary Osc w/PLL (XT+,HS+,EC+PLL)
// WDT OFF
// Other options are don't care */

/* Oscillator Settings
*/
#pragma config FNOSC = PRIPLL // Oscillator selection
#pragma config POSCMOD = EC // Primary oscillator mode
#pragma config FPLLIDIV = DIV_2 // PLL input divider
#pragma config FPLLMUL = MUL_20 // PLL multiplier
#pragma config FPLLODIV = DIV_1 // PLL output divider
#pragma config FPBDIV = DIV_2 // Peripheral bus clock divider
#pragma config FSOSCEN = OFF // Secondary oscillator enable

// Place your #define constants and macros here, or in another .h file

//FUNTIME CONSTANTS
#define SYS_CLOCK		80000000
#define SYSTEM_CLOCK		80000000
#define DESIRED_BAUD_RATE	115200

#define UART_BAUD_BT            115200
#define UART_BITS_BT            8

#define MAX_DUTY                0x7FFF

#define GetSystemClock()            (SYS_CLOCK)
#define GetPeripheralClock()        (SYS_CLOCK) // FPBDIV = DIV_1
#define GetInstructionClock()       (SYS_CLOCK)

// Globals
static int motor_ticks = 0;

// Semephores
SemaphoreHandle_t motor_control_sem;

// Queues
QueueHandle_t display_queue;

// Globals for setting up pmod CLS
static char enable_display[] = {27, '[', '3', 'e', '\0'};
static char set_cursor[] = {27, '[', '1', 'c', '\0'};
static char home_cursor[] = {27, '[', 'j', '\0'};
static char wrap_line[] = {27, '[', '0', 'h', '\0'};

static void prvSetupHardware(void);

void setupSPI_ports(void);
void setup_SPI2(void);

void setup_UART(void);

void initialize_CLS(void);
void clsPrint(char* str);

void setupHB(void);
void setupInputCapture(void);

void setupSwitch(void);

//motor helpers
void runMotorForward();
void stopMotors();
void runMotorBackward();

//UART helper
void readUARTString(char* readBuff);



// Tasks
void vTaskDisplay(void *pvParameters);
void vTaskMotorControl(void *pvParameters);
void vTaskBluetooth(void *pvParameters);

int main (void)
{
    // Variable declarations


    // Setup/initialize devices
    prvSetupHardware ();

    // Setup Queues and Semephores
    motor_control_sem = xSemaphoreCreateBinary();
    display_queue = xQueueCreate(10, sizeof( unsigned int ));

    // Can you draw the execution pattern diagram for these tasks?
    xTaskCreate (vTaskDisplay, "Update Display", configMINIMAL_STACK_SIZE, NULL,
                 tskIDLE_PRIORITY + 1, NULL);
    xTaskCreate (vTaskMotorControl, "Motor Control", configMINIMAL_STACK_SIZE, NULL,
                 tskIDLE_PRIORITY + 3, NULL);
    xTaskCreate (vTaskBluetooth, "Bluetooth", configMINIMAL_STACK_SIZE, NULL,
                 tskIDLE_PRIORITY + 1, NULL);
    vTaskStartScheduler ();

    // Should not reach this point!
    while (1) { // Embedded programs run forever
        // Event loop
    }

	return 0;
}
/*************************************************************
 * Task: vTaskDisplay                                        *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description:                                              *
 * Input parameters: none                                    *
 * Usages:                                                   *
 * Preconditions: SPI2 and CLS must be setup.                *
 *************************************************************/
void vTaskDisplay(void *pvParameters) {
    char *msgptr;
    char clsbuff[64];
    while (1) {
        if( xQueueReceive( display_queue, &( msgptr ), ( TickType_t ) 10 ) )
        {
            sprintf(clsbuff, "%s", msgptr);
        }
        //sprintf(clsbuff, "%d", motor_ticks);
        clsPrint(clsbuff);
        SpiChnPutS(2, home_cursor, 3);
        vTaskDelay(500 / portTICK_RATE_MS); // 0.5 s delay
    }
}

/*************************************************************
 * Task: vTaskMotorControl                                   *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description:                                              *
 * Input parameters: none                                    *
 * Usages:                                                   *
 * Preconditions: HB5 and Output Compare must be setup.      *
 *************************************************************/
void vTaskMotorControl(void *pvParameters) {
    int LINELENGTH=1600;
    int state = 0;
    char *opening_msg = "Opening";
    char *done_msg = "Done";

    while (1){
        if (state == 0) {
            if( xSemaphoreTake( motor_control_sem, (TickType_t) 10 ) == pdTRUE ) {
                state = 1;
                motor_ticks = 0;
            }
        }
        //pull the door handle down
        if (state == 1) {
            xQueueSend(display_queue, (void*)opening_msg, (TickType_t) 0);
            stopMotors();
            runMotorForward();
            state = 2;
        }
        //delay for 5 seconds
        if ((motor_ticks > LINELENGTH) && (state == 2)) {
            state = 3;
            stopMotors();
            motor_ticks = 0;
            vTaskDelay(5000/portTICK_RATE_MS);
            //push the door handle back up
            runMotorBackward();
        }
        if ((motor_ticks > LINELENGTH) && (state == 3)) {
            xQueueSend(display_queue, (void*)done_msg, (TickType_t) 0);
            stopMotors();
            state = 0;
        }
        vTaskDelay(250 / portTICK_RATE_MS);
    }
}

/*************************************************************
 * Task: vTaskBluetooth                                      *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description:                                              *
 * Input parameters: none                                    *
 * Usages:                                                   *
 * Preconditions: Bluetooth must be setup.                   *
 *************************************************************/
void vTaskBluetooth(void *pvParameters) {
    //int switch_states;
    unsigned long ulVar = 10UL;
    char buff[64];
    while (1){
        //bluetooth handling
        readUARTString(buff);
            //read bytes until EOL
            
            //check for valid entry code
        if (strcmp(buff,"open")==0)
            xSemaphoreGive( motor_control_sem );//open door
        else //dont open door, clear buffer
            buff[0] = 0;
            
            
        //switch handling LEGACY
        /*
        switch_states = PORTRead(IOPORT_D);
        switch_states &= 0b100000001000;
        if (switch_states == 0b1000) {
            xSemaphoreGive( motor_control_sem );
        }
        if (switch_states == 0b100000000000) {
        }
        vTaskDelay(250 / portTICK_RATE_MS);
        */
    }
}

/*************************************************************
 * Function:                                                 *
 * Date Created:                                             *
 * Date Last Modified:                                       *
 * Description:                                              *
 * Input parameters:                                         *
 * Returns:                                                  *
 * Usages:                                                   *
 * Preconditions:                                            *
 * Postconditions:                                           *
 *************************************************************/

// Put other function definitions below main (), or they
// may go in another .c source file; Functions most likely
// will include port and device setups/initalizations;
// Be sure to comment all functions with the above block

/*-----------------------------------------------------------*/

static void prvSetupHardware( void ) {
	/* Configure the hardware for maximum performance. */
	vHardwareConfigurePerformance();

	/* Setup to use the external interrupt controller. */
	vHardwareUseMultiVectoredInterrupts();

	portDISABLE_INTERRUPTS();

        setup_UART();
        setupSPI_ports();
        setup_SPI2();
        initialize_CLS ();
        OpenTimer2( T2_ON | T2_PS_1_1, 0x7FFF ); // The right argument determines the period of the output waveform
        setupHB();
        setupInputCapture();
        setupSwitch();
}
/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook( void ) {
	/* vApplicationMallocFailedHook() will only be called if
	configUSE_MALLOC_FAILED_HOOK is set to 1 in FreeRTOSConfig.h.  It is a hook
	function that will get called if a call to pvPortMalloc() fails.
	pvPortMalloc() is called internally by the kernel whenever a task, queue,
	timer or semaphore is created.  It is also called by various parts of the
	demo application.  If heap_1.c or heap_2.c are used, then the size of the
	heap available to pvPortMalloc() is defined by configTOTAL_HEAP_SIZE in
	FreeRTOSConfig.h, and the xPortGetFreeHeapSize() API function can be used
	to query the size of free heap space that remains (although it does not
	provide information on how the remaining heap might be fragmented). */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationIdleHook( void ) {
	/* vApplicationIdleHook() will only be called if configUSE_IDLE_HOOK is set
	to 1 in FreeRTOSConfig.h.  It will be called on each iteration of the idle
	task.  It is essential that code added to this hook function never attempts
	to block in any way (for example, call xQueueReceive() with a block time
	specified, or call vTaskDelay()).  If the application makes use of the
	vTaskDelete() API function (as this demo application does) then it is also
	important that vApplicationIdleHook() is permitted to return to its calling
	function, because it is the responsibility of the idle task to clean up
	memory allocated by the kernel to any task that has since been deleted. */
}
/*-----------------------------------------------------------*/

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName ) {
	( void ) pcTaskName;
	( void ) pxTask;

	/* Run time task stack overflow checking is performed if
	configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2.  This hook	function is
	called if a task stack overflow is detected.  Note the system/interrupt
	stack is not checked. */
	taskDISABLE_INTERRUPTS();
	for( ;; );
}
/*-----------------------------------------------------------*/

void vApplicationTickHook( void ) {
	/* This function will be called by each tick interrupt if
	configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
	added here, but the tick hook is called from an interrupt context, so
	code must not attempt to block, and only the interrupt safe FreeRTOS API
	functions can be used (those that end in FromISR()). */
}
/*-----------------------------------------------------------*/

void _general_exception_handler( unsigned long ulCause, unsigned long ulStatus ) {
	/* This overrides the definition provided by the kernel.  Other exceptions
	should be handled here. */
	for( ;; );
}
/*-----------------------------------------------------------*/

void vAssertCalled( const char * pcFile, unsigned long ulLine ) {
volatile unsigned long ul = 0;

	( void ) pcFile;
	( void ) ulLine;

	__asm volatile( "di" );
	{
		/* Set ul to a non-zero value using the debugger to step out of this
		function. */
		while( ul == 0 )
		{
                    portNOP();
		}
	}
	__asm volatile( "ei" );
}

/*************************************************************
 * Function: setupSPI_ports                                  *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: sets up the ports for the SPI                *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: none                                       *
 * Postconditions: Ports open for SPI2.                      *
 *************************************************************/
//
void setupSPI_ports (void) {
        //SPI1
        // Master Mode
	/* SDO1 - Output - RD0
	   SDI1 - Input - RC4
	   SCK1 - Ouput - RD10
	   SS1  - Output - RD9 */

	//PORTSetPinsDigitalOut (IOPORT_D, BIT_0 | BIT_9 | BIT_10);
	//PORTSetPinsDigitalIn (IOPORT_C, BIT_4);
    
        //SPI2
        // Master Mode
        /* SDO1 - Output - RD6
           SDI1 - Input - RG7
           SCK1 - Ouput - RD8
           SS1  - Output - RD9 */

        PORTSetPinsDigitalOut (IOPORT_G, BIT_6 | BIT_8 | BIT_9);
        PORTSetPinsDigitalIn (IOPORT_G, BIT_7);
}

/*************************************************************
 * Function: setup_SPI2                                      *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: sets up SPI 2 for pmodCLS                    *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: Ports open for SPI2.                       *
 * Postconditions: SPI2 is setup for pmodCLS                 *
 *************************************************************/
void setup_SPI2 (void) {
        // void SpiChnOpen(int chn, SpiCtrlFlags config, unsigned int fpbDiv);
        // SpiChnOpen (1, SPI_OPEN_MSTEN | SPI_OPEN_SMP_END | SPI_OPEN_MODE8, 1024);
        SpiChnOpen(2, SPI_CON_MSTEN  | SPI_CON_MODE8 | SPI_CON_ON | CLK_POL_ACTIVE_LOW, 256);

        // Create a falling edge pin SS to start communication
        PORTSetBits(IOPORT_G, BIT_9);
        PORTClearBits(IOPORT_G, BIT_9);
}

/*************************************************************
 * Function: initialize_CLS                                  *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: Enables, and initializes pmodCLS             *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: SPI2 is setup for pmodCLS                  *
 * Postconditions: PmodCl is setup for display.              *
 *************************************************************/
//initializes the CLS
void initialize_CLS(void) {
    SpiChnPutS(2, enable_display, 4);
    SpiChnPutS(2, set_cursor, 4);
    SpiChnPutS(2, home_cursor, 3);
    SpiChnPutS(2, wrap_line, 4);
}

/*************************************************************
 * Function: clsPrint                                        *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: prints the designated string to the CLS via  *
 * the SPI                                                   *
 * Input parameters: String to print                         *
 * Returns: void                                             *
 * Preconditions: PmodClS is setup for display.              *
 * Postconditions: PmodCLS is displaying string.             *
 *************************************************************/
//prints the designated string to the CLS via the SPI
void clsPrint(char* str) {
    SpiChnPutS(2, str, strlen(str) + 1);
}

/*************************************************************
 * Function: setupHB                                         *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: Sets up the HB5 for motor control.           *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: none                                       *
 * Postconditions: Pmod HB5 is setup to power motor.         *
 *************************************************************/
void setupHB( void ) {
    PORTSetPinsDigitalOut( IOPORT_D, BIT_6); //Dir pin
    PORTSetBits(IOPORT_D,BIT_6);
    PORTSetPinsDigitalOut (IOPORT_D, BIT_2); //Enable pin
    PORTClearBits (IOPORT_D, BIT_2); // Make sure no waveform is outputted to Enable pin
    PORTSetPinsDigitalIn(IOPORT_D,BIT_10); //Input capture pin
    //PORTSetPinsDigitalIn(IOPORT_C,BIT_2);//Akso input capture pin
}

/*************************************************************
 * Function: setupOC                                         *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: prints the designated string to the CLS via  *
 * the SPI                                                   *
 * Input parameters: String to print                         *
 * Returns: void                                             *
 * Preconditions: Ports open for HB5.                        *
 * Postconditions: Motors are running.                       *
 *************************************************************/
void setupOC(void) {
    PORTSetBits( IOPORT_D, BIT_8 ); //set h bridge dir
    // The right most arguments of the OpenOC1 call represent the duty cycle of the output waveform
}

//start the motor running forward
void runMotorForward() {
    PORTClearBits(IOPORT_D,BIT_7); //set h bridge dir
    OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
}

//stop motor
void stopMotors() {
    CloseOC2();
}

//start the motor running backwards
void runMotorBackward()
{
    PORTSetBits(IOPORT_D,BIT_7); //set h bridge dir
    OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
}

void readUARTString(char* readBuff)
{
    char c;
    int i = 0;
    do
    {
        //wait on data
        while(!DataRdyUART2())
        {
            //vTaskDelay(10 / portTICK_RATE_MS);
        }
        c = getcUART2();
        readBuff[i]=c;
        i++;
        if (i == 64)
            break;

    }while ((c != '\n') && (c != '\r') && (c !=  '\0'));
    readBuff[i-1]=0;
    return;

}


/*************************************************************
 * Function: setupInputCapture                               *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: Setups input capture for motor control       *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: none                                       *
 * Postconditions: Interuspts will now fire when motors move.*
 *************************************************************/
void setupInputCapture(void) {
    OpenCapture2(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture2(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    
}

/*************************************************************
 * Function: setupSwitch                                     *
 * Date Created: 4/30/2014                                   *
 * Date Last Modified: 4/30/2014                             *
 * Description: Switch's setup for pooling.                  *
 * Input parameters: none                                    *
 * Returns: void                                             *
 * Preconditions: none                                       *
 * Postconditions: Switches setup for input.                 *
 *************************************************************/
void setupSwitch ( void ) {
    PORTSetPinsDigitalIn (IOPORT_D, BIT_3);
    PORTSetPinsDigitalIn (IOPORT_D, BIT_1);
}

void setup_UART(void) {
    int pb_clock;
        // UART 2 port pins - connected to pmod CLS
	/* JH-01 U2CTS/RF12 			RF12
   	   JH-02 PMA8/U2TX/CN18/RF5 		RF5
           JH-03 PMA9/U2RX/CN17/RF4 	        RF4
	   JH-04 U2RTS/BCLK2/RF13 	        RF13 */

    pb_clock = SYSTEMConfigPerformance (SYSTEM_CLOCK);
    PORTSetPinsDigitalIn (IOPORT_F, BIT_4);
    PORTSetPinsDigitalOut (IOPORT_F, BIT_5);
/*
    OpenUART2 (UART_EN | UART_IDLE_CON | UART_RX_TX | UART_DIS_WAKE | UART_DIS_LOOPBACK | UART_DIS_ABAUD | UART_NO_PAR_8BIT | UART_1STOPBIT | UART_IRDA_DIS |
           UART_MODE_FLOWCTRL | UART_DIS_BCLK_CTS_RTS | UART_NORMAL_RX | UART_BRGH_SIXTEEN,
           UART_TX_PIN_LOW | UART_RX_ENABLE | UART_TX_ENABLE | UART_INT_TX | UART_INT_RX_CHAR | UART_ADR_DETECT_DIS	| UART_RX_OVERRUN_CLEAR,
           mUARTBRG(pb_clock, DESIRED_BAUD_RATE));
    */
    UARTSetDataRate(UART2, pb_clock, DESIRED_BAUD_RATE);
    U2STA = 0x1400;
    U2MODE = 0x8000;
    U2TXREG = 'L';
}

//output capture interrupt handler
void __ISR(_INPUT_CAPTURE_2_VECTOR,ipl3) Capture2Handler(void)
{
    motor_ticks++;
    mIC2ClearIntFlag();
}