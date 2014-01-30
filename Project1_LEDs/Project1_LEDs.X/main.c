/*******************************************************************************
 * Programmer:  Alex Schuldberg                                                *
 * Class: CptS 466                                                             *
 * Lab Project:   Project 1                                                    *
 * Date:        1/29/14                                                        *
 *                                                                             *
 * Description: A timer that makes LEDs count up and down                      *
 *                                                                             *
 ******************************************************************************/

#include <plib.h> // Includes all major functions and macros required to develop
                  // programs for the PIC32MX4
#include <p32xxxx.h> // // Need specific PIC32 names for memory regions
#include <peripheral/ports.h>
#include <peripheral/int.h>
#include <sys/attribs.h>


void setup_LEDs (void);
void setup_buttons (void);

int main (void)
{
    unsigned int led_state = 0;
	// Variable declarations

	// Setup/initialize ports
	// Setup/initialize devices
    setup_LEDs ();
    setup_buttons ();

	while (1) // Embedded programs run forever
	{
            led_state = 0b1111<<10;
            PORTB |= led_state;
            delay(500);
            PORTB &= 0b1100001111111111;
	}

	return 0;
}


//Sets up the LEDs
void setup_LEDs (void)
{
    PORTSetPinsDigitalOut (IOPORT_B, BIT_10 | BIT_11 | BIT_12 | BIT_13 );
	// Of course you can replace these macros with assigning values
	// directly to registers as we've been doing in lecture!
	// For example, TRISB = 0bxxxx

}

//SEts up the buttons as inputs
void setup_buttons (void)
{
    PORTSetPinsDigitalIn (IOPORT_A, BIT_6 | BIT_7);
	// Of course you can replace these macros with assigning values
	// directly to registers as we've been doing in lecture!
	// For example, TRISB = 0bxxxx

}

//stalls program execution for ms milliseconds
void delay(int ms)
{

    unsigned long int count = 0;
    for (count = 0; count < ms * 40; count++)
        asm("nop");
}