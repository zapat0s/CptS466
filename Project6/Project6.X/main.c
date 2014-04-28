// -----------------------------------------------------------------------------
// Template Notes:
//                  -> FreeRTOS uses Timer 1, do not try to use
//                  -> Microchip TCPIP Tick uses Timer 5, do not use, see "Tick.c"
//                  -> prvTCPIP connects WiFi and maintains TCPIP stack
//                     this task must be executed frequently, currently it is
//                     being serviced every 50ms.
//                  -> prvLED toggles an LED every 100ms
//                  -> For configuring the TCPIP stack for different
//                     functionality see TCPIP.h, TCPIPConfig.h, HardwareProfile.h,
//                     WF_Config.h
//                  -> INTERRUPTS:
//                           The interrupts for Timer 5 and External Interrupt 3
//                           are completely setup in Tick.c and WF_Eint.c
//                           respectively. Therefore you do not need to setup
//                           the vectors, handlers, etc., as they are already
//                           taken care of.  If you wish to change them see
//                           the ".c" files.  The wrappers for INT3 and Timer 5
//                           are in "INT3_ISR.S", "T5_ISR.S" respectively.
//                  -> DIGILENT PORT:
//                           PmodWiFi should be plugged into Digilent port JB.
//                  -> HARDWARE JUMPER:
//                           You will need to set the jumper on
//                           "JP3" to the "INT3" position.  It is
//                           important to note that "INT3" is also a
//                           pin on Digilent port "JF", thus you must
//                           make sure that you have nothing else
//                           connected on the "JF" pin or else you
//                           may damage your hardware. The I2C1 bus uses this
//                           pin as well, thus make sure you have nothing
//                           connected to it (i.e. J2).
//                  -> HAVE FUN!!! :D
// -----------------------------------------------------------------------------

#include <plib.h>
#include <stdio.h>
#include "FreeRTOS/include/FreeRTOS.h"
#include "FreeRTOS/include/task.h"
#include "FreeRTOS/include/queue.h"
#include "FreeRTOS/include/timers.h"
#include "FreeRTOS/include/semphr.h"

// --------------------- TCPIP WiFi Stuff ---------------------------------------
#define STACK_SIZE_TCPIP		(configMINIMAL_STACK_SIZE * 3)
#define ROUTER_SSID                     "AndroidAP"
#define PASSPHRASE                      "asdf1234"        // WPA2 encryption
#include "includes/MCHP_TCPIP.h"

// -----------------------------------------------------------------------------

// ------------------ Configuration Oscillators --------------------------------
// SYSCLK = 80 MHz (8MHz Crystal/ FPLLIDIV * FPLLMUL / FPLLODIV)
// PBCLK  = 40 MHz
// -----------------------------------------------------------------------------
#pragma config FPLLMUL = MUL_20, FPLLIDIV = DIV_2, FPLLODIV = DIV_1, FWDTEN = OFF
#pragma config POSCMOD = HS, FNOSC = PRIPLL, FPBDIV = DIV_2
//#pragma config CP = OFF, BWP = OFF, PWP = OFF
//#pragma config UPLLEN = OFF

// -----------------------------------------------------------------------------
//                    FreeRTOS Task Priorities, Queues, etc.
// -----------------------------------------------------------------------------
    #define taskIDLE_PRIORITY   1
    #define priLED              (taskIDLE_PRIORITY + 1)
    #define priTCPIP            (taskIDLE_PRIORITY + 2)

// -----------------------------------------------------------------------------
//                         Task/Function Prototypes
// -----------------------------------------------------------------------------
    static void prvLED(void *parameter);
    static void prvTCPIP(void* pvParameter);

// -----------------------------------------------------------------------------
//                                  Main
// -----------------------------------------------------------------------------
int main(void)
{
    // ---------------------------- Setpu LEDs ---------------------------------
        PORTSetPinsDigitalOut (IOPORT_B, BIT_10 |  BIT_11 |  BIT_12 |  BIT_13);
        PORTClearBits (IOPORT_B,  BIT_10 |  BIT_11 |  BIT_12 |  BIT_13);

    // ------------------------ Configure WiFi CS/SS Pin -----------------------
        #if defined(WF_CS_TRIS)
            WF_CS_IO = 1;
            WF_CS_TRIS = 0;
        #endif

        // Disable JTAG port so we get our I/O pins back, but first
        // wait 50ms so if you want to reprogram the part with
        // JTAG, you'll still have a tiny window before JTAG goes away.
        // The PIC32 Starter Kit debuggers use JTAG and therefore must not
        // disable JTAG.
        DelayMs(50);
    // -------------------------------------------------------------------------

    INTEnableSystemMultiVectoredInt();
    INTEnableInterrupts();

    // ------------------------- Create tasks ----------------------------------
    xTaskCreate(prvLED, "LED", configMINIMAL_STACK_SIZE, NULL, priLED, NULL);
    xTaskCreate(prvTCPIP, "TCPIP", STACK_SIZE_TCPIP, NULL, priTCPIP, NULL);

    // ---------------------  Start FreeRTOS Scheduler -------------------------
    vTaskStartScheduler();

    /* If all is well, the scheduler will now be running, and the following line
    will never be reached.  If the following line does execute, then there was
    insufficient FreeRTOS heap memory available for the idle and/or timer tasks
    to be created.  See the memory management section on the FreeRTOS web site
    for more details. */
    for( ;; );

    return 0;
}

/*******************************************************************************
 *               Task: prvLED
 *       Date Created: 04/17/2013
 * Date Last Modified: 04/17/2013
 *        Description: Toggle LD4 every 100 ms
 *   Input parameters: void *parameter          Generic pointer
 *            Returns: Never returns
 *      Preconditions: Task must have been created before starting scheduler
 *     Postconditions: None
/******************************************************************************/
static void prvLED(void *parameter)
{
    unsigned long ulParam;
    portTickType xNextWakeTime;
    
    xNextWakeTime = xTaskGetTickCount();

    while(1)
    {
        // Wait for 100ms
        vTaskDelayUntil(&xNextWakeTime, 100);
        LATBINV = (1 << 13);
    }
}


/*******************************************************************************
 *               Task: prvTCPIP
 *       Date Created: 04/17/2013
 * Date Last Modified: 04/17/2013
 *        Description: TCPIP task that connects WiFi, services TCPIP software stack
 *   Input parameters: void *parameter          Generic pointer
 *            Returns: Never returns
 *      Preconditions: Task must have been created before starting scheduler
 *     Postconditions: None
/******************************************************************************/
static void prvTCPIP(void* pvParameter)
{
    UINT32 t = 0;
    unsigned long ulParam;
    portTickType xNextWakeTime;

    xNextWakeTime = xTaskGetTickCount();

    TickInit();

    // initialize the basic application configuration
    InitAppConfig();

    // Initialize the core stack layers
    StackInit();

        #if defined(DERIVE_KEY_FROM_PASSPHRASE_IN_HOST)
            g_WpsPassphrase.valid = FALSE;
        #endif    /* defined(DERIVE_KEY_FROM_PASSPHRASE_IN_HOST) */
    WF_Connect();

    while (1)
    {
            if(TickGet() - t >= TICK_SECOND/2ul)
            {
                t = TickGet();
                LED0_IO ^= 1;
            }

            // Wait for 50ms
            vTaskDelayUntil(&xNextWakeTime, 50);

            // perform normal stack tasks including checking for incoming
            // packets and calling appropriate handlers
            StackTask();

            #if defined(WF_CS_TRIS)
                #if !defined(MRF24WG)
                if (gRFModuleVer1209orLater)
                #endif
                WiFiTask();
            #endif

            // This tasks invokes each of the core stack application tasks
            StackApplications();

            #if defined(STACK_USE_ZEROCONF_LINK_LOCAL)
            ZeroconfLLProcess();
            #endif

            #if defined(STACK_USE_ZEROCONF_MDNS_SD)
            mDNSProcess();
            // Use this function to exercise service update function
            // HTTPUpdateRecord();
            #endif

            // -------------- Custom Code Here -----------------------------
            // NOTE: You can use semaphores, etc., to trigger other tasks
            //       not all code needs to execute here.  Just make sure
            //       this task is serviced frequently.
    }
}





// -----------------------------------------------------------------------------
//                          General Exception Handler
// -----------------------------------------------------------------------------
void _general_exception_handler( unsigned long ulCause, unsigned long ulStatus )
{
    /* This overrides the definition provided by the kernel.  Other exceptions
    should be handled here. */
    for( ;; )
    {
        // Set LEDs to indicate error
        LATBSET = (0xF << 10);
    }
}

// -----------------------------------------------------------------------------
//                      Application Malloc Failed Hook
// -----------------------------------------------------------------------------
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

// -----------------------------------------------------------------------------
//                          Application Idle Hook
// -----------------------------------------------------------------------------
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

// -----------------------------------------------------------------------------
//                      Application Stack overflow Hook
// -----------------------------------------------------------------------------
void vApplicationStackOverflowHook( xTaskHandle pxTask, signed char *pcTaskName )
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

// -----------------------------------------------------------------------------
//                           Application Tick Hook
// -----------------------------------------------------------------------------
void vApplicationTickHook( void )
{
	/* This function will be called by each tick interrupt if
	configUSE_TICK_HOOK is set to 1 in FreeRTOSConfig.h.  User code can be
	added here, but the tick hook is called from an interrupt context, so
	code must not attempt to block, and only the interrupt safe FreeRTOS API
	functions can be used (those that end in FromISR()). */
}