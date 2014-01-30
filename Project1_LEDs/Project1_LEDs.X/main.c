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

#define COUNTER_STOPPED 0
#define COUNTER_UP 1
#define COUNTER_DOWN 2

void setup_LEDs (void);
void setup_buttons (void);
void delay(int ms);


int main (void)
{
    unsigned int counter = 0;
    unsigned int cState = 1;
    unsigned int btnState;
	// Variable declarations

	// Setup/initialize ports
	// Setup/initialize devices
    setup_LEDs ();
    setup_buttons ();

    while (1) // Embedded programs run forever
    {
        btnState = PORTA & (BIT_6 | BIT_7);
        btnState = btnState >> 6;
        if (btnState == 1)//btn 1 only pressed
        {
            // check to make sure that the person's fingers stay on just 
            // that button
            delay(100);
            btnState = PORTA & (BIT_6 | BIT_7);
            btnState = btnState >> 6;
            if (btnState == 1)
            {

                cState = COUNTER_UP;
            }



        }
        else if (btnState == 2)//btn 2 only pressed
        {
            // check to make sure that the person's fingers stay on just
            // that button
            delay(100);
            btnState = PORTA & (BIT_6 | BIT_7);
            btnState = btnState >> 6;
            if (btnState == 2)
            {

                cState = COUNTER_DOWN;
            }

        }
        if (btnState == 3)//btn 1 and 2 pressed
        {
            if (cState == COUNTER_STOPPED)
            {
               
               counter = 0;
               PORTB &= 0b1100001111111111;
               LATB |= counter << 10;
            }
            cState = COUNTER_STOPPED;
            delay(500); //give them time to get their fingers off the switches
        }

        
        else if (cState == COUNTER_UP)
        {
            counter = (counter +1) % 8;
            PORTB &= 0b1100001111111111;
            LATB |= counter << 10;
            delay(1000);
        }
        else if (cState == COUNTER_DOWN)
        {
            counter = (counter - 1);
            if (counter == -1)
                counter = 7;
            
            PORTB &= 0b1100001111111111;
            LATB |= counter << 10;
            delay(1000);
        }

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