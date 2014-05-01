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

#define MAX_DUTY        0x5FFF
#define FUDGE_FACTOR    0x500

// States of program
#define INIT 0
#define COUNT 1
#define STOP 2

//FUNTIME CONSTANTS
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

// Globals
static int motor_ticks = 0;

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
void setupOC(void);

void setupSwitch(void);

// Tasks
void vTaskDisplay(void *pvParameters);
void vTaskMotorControl(void *pvParameters);
void vTaskBluetooth(void *pvParameters);

int main (void)
{
	// Variable declarations

	// Setup/initialize ports
        setupSPI_ports();
        setupSwitch();

        OpenTimer2( T2_ON | T2_PS_1_1, 0x7FFF ); // The right argument determines the period of the output waveform
        setupHB();
        setupInputCapture();
        
	// Setup/initialize devices

        prvSetupHardware ();


        // Can you draw the execution pattern diagram for these tasks?
        xTaskCreate (vTaskDisplay, "Update Display", configMINIMAL_STACK_SIZE, NULL,
                     tskIDLE_PRIORITY + 1, NULL);
        xTaskCreate (vTaskMotorControl, "Motor Control", configMINIMAL_STACK_SIZE, NULL,
                    tskIDLE_PRIORITY + 3, NULL);
        xTaskCreate (vTaskBluetooth, "Bluetooth", configMINIMAL_STACK_SIZE, NULL,
                     tskIDLE_PRIORITY + 1, NULL);
        vTaskStartScheduler ();

        // Should not reach this point!
	while (1) // Embedded programs run forever
	{
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
void vTaskDisplay (void *pvParameters)
{
    char clsbuff[64];
    while(1)
    {
        
        //sprintf(clsbuff,"T %4.1ff A %4.1ff Dist %4.1fft", tempInDegreesF, avgTemperatureInF, total_traveled);
        
        clsPrint(clsbuff);

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
void vTaskMotorControl (void *pvParameters)
{
    while (1){
        
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
void vTaskBluetooth(void *pvParameters)
{
    while (1){

        vTaskDelay(250 / portTICK_RATE_MS);
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

static void prvSetupHardware( void )
{
	/* Configure the hardware for maximum performance. */
	vHardwareConfigurePerformance();

	/* Setup to use the external interrupt controller. */
	vHardwareUseMultiVectoredInterrupts();

	portDISABLE_INTERRUPTS();

        // BTN1 ==> PA6
	// BTN2 ==> PA7
	PORTSetPinsDigitalIn(IOPORT_A, BIT_6| BIT_7);
        setup_UART();
        setup_SPI2();
        initialize_ACL();
        initialize_CLS ();
        setupI2C();

}
/*-----------------------------------------------------------*/

void vApplicationMallocFailedHook( void )
{
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

void vApplicationIdleHook( void )
{
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

void vApplicationStackOverflowHook( TaskHandle_t pxTask, char *pcTaskName )
{
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

void vApplicationTickHook( void )
{
	/* This function will be called by each tick interrupt if
	configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
	added here, but the tick hook is called from an interrupt context, so
	code must not attempt to block, and only the interrupt safe FreeRTOS API
	functions can be used (those that end in FromISR()). */
}
/*-----------------------------------------------------------*/

void _general_exception_handler( unsigned long ulCause, unsigned long ulStatus )
{
	/* This overrides the definition provided by the kernel.  Other exceptions
	should be handled here. */
	for( ;; );
}
/*-----------------------------------------------------------*/

void vAssertCalled( const char * pcFile, unsigned long ulLine )
{
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


//sets up the ports for the SPI
void setupSPI_ports (void)
{
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

void setup_SPI2 (void)
{
        // void SpiChnOpen(int chn, SpiCtrlFlags config, unsigned int fpbDiv);
        // SpiChnOpen (1, SPI_OPEN_MSTEN | SPI_OPEN_SMP_END | SPI_OPEN_MODE8, 1024);
        SpiChnOpen (2, SPI_CON_MSTEN  | SPI_CON_MODE16 | SPI_CON_ON | SPI_CON_SMP | SPI_CON_FRMEN, 16);

        // Create a falling edge pin SS to start communication
        PORTSetBits (IOPORT_G, BIT_9);
        //delay (1000);
        PORTClearBits (IOPORT_G, BIT_9);
}

//initializes the CLS
void initialize_CLS (void)
{
        putsUART2 (enable_display);
	putsUART2 (set_cursor);
	putsUART2 (home_cursor);
	putsUART2 (wrap_line);
}

//prints the designated string to the CLS via the SPI
void clsPrint(char* str)
{
    putsUART2 (str);
	
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

void setupOC(void)
{
    PORTSetBits( IOPORT_D, BIT_8 ); //set h bridge dir
    // The right most arguments of the OpenOC1 call represent the duty cycle of the output waveform
    OpenOC2( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
    OpenOC3( OC_ON | OC_TIMER_MODE16 | OC_TIMER2_SRC | OC_IDLE_STOP | OC_PWM_FAULT_PIN_DISABLE, MAX_DUTY, MAX_DUTY );
}

void setupInputCapture(void)
{
    OpenCapture2(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture2(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
    OpenCapture3(IC_ON | IC_CAP_16BIT | IC_IDLE_STOP | IC_FEDGE_FALL | IC_TIMER3_SRC | IC_INT_1CAPTURE | IC_EVERY_EDGE);
    ConfigIntCapture3(IC_INT_ON | IC_INT_PRIOR_3 | IC_INT_SUB_PRIOR_0);
}

void setupSwitch ( void )
{
    PORTSetPinsDigitalIn (IOPORT_D, BIT_3);
    PORTSetPinsDigitalIn (IOPORT_D, BIT_1);

}

//output capture interrupt handler
void __ISR(_INPUT_CAPTURE_2_VECTOR,ipl3) Capture2Handler(void)
{
    motor1ticks++;
    mIC2ClearIntFlag();
}

//output capture interrupt handler for the other wheel
void __ISR(_INPUT_CAPTURE_3_VECTOR,ipl3) Capture3Handler(void)
{
    motor2ticks++;
    mIC3ClearIntFlag();

}