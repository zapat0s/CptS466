// -----------------------------------------------------------------------------
//                    Interrupt Wrapper for EXT INT 3
// -----------------------------------------------------------------------------
#include <p32xxxx.h>
#include <sys/asm.h>
#include "FreeRTOS/portable/MPLAB/PIC32MX/ISR_Support.h"

	.set	nomips16
	.set 	noreorder
 	
	.extern vINT3InterruptHandler
	.extern xISRStackTop
	.global	vINT3InterruptWrapper

	.set	noreorder
	.set 	noat
	.ent	vINT3InterruptWrapper

vINT3InterruptWrapper:

	portSAVE_CONTEXT
	jal vINT3InterruptHandler
	nop
	portRESTORE_CONTEXT

	.end	vINT3InterruptWrapper

