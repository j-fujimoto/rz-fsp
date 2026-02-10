/*
* Copyright (c) 2020 - 2026 Renesas Electronics Corporation and/or its affiliates
*
* SPDX-License-Identifier: BSD-3-Clause
*/

//==================================================================
// Entry point for the Reset handler
//==================================================================

    .global  _tx_vector_table
    .extern  _tx_thread_context_save
    .extern  _tx_thread_context_restore

    .global  _tx_irq_handler
    .global  _tx_fiq_handler
    .global	 _tx_vector_table_set

    .section    IRQ_FIQ_HANDLER, "ax"
    .align 8
//******************************************************************************
// fiq_handler
//******************************************************************************
_tx_fiq_handler:
  MSR      SPSEL, #0

  STP      x29, x30, [sp, #-16]!

  BL       _tx_thread_context_save

  BL       FIQ_ExecuteHandler

  B        _tx_thread_context_restore

//******************************************************************************
// irq_handler
//******************************************************************************
_tx_irq_handler:
  MSR      SPSEL, #0

  STP      x29, x30, [sp, #-16]!

  BL       _tx_thread_context_save

  BL       IRQ_ExecuteHandler

  B        _tx_thread_context_restore


//******************************************************************************
// vector table
//******************************************************************************
    .section VECTOR_TABLE, "ax"
    .align 11

//
// Current EL with SP0
//
_tx_vector_table:
SyncSp0:
    B SyncSp0

    .balign 0x80
IrqSp0:
    B _tx_irq_handler

    .balign 0x80
FiqSp0:
    B _tx_fiq_handler

    .balign 0x80
SerrSp0:
    WFI
    B SerrSp0
    .balign 0x80

//
// Current EL with SPx
//

SyncSpx:
    B SyncSpx

    .balign 0x80

IrqSpx:
    B irq_handler

    .balign 0x80
FiqSpx:
    B fiq_handler

    .balign 0x80
SerrSpx:
    WFI
    B SerrSpx

    .balign 0x80
//
// Lower EL using AArch64
//
SyncLowEl64:
    WFI
    B   SyncLowEl64

    .balign 0x80
IrqLowEl64:
    WFI
    B   IrqLowEl64

    .balign 0x80
FiqLowEl64:
    WFI
    B   FiqLowEl64

    .balign 0x80
SerrorLowEl64:
    WFI
    B   SerrorLowEl64

    .balign 0x80
//
// Lower EL using AArch32
//

SyncLowEl32:
    WFI
    B   SyncLowEl32

    .balign 0x80
IrqLowEl32:
    WFI
    B   IrqLowEl32

    .balign 0x80
FiqLowEl32:
    WFI
    B   FiqLowEl32

    .balign 0x80
SerrorLowEl32:
    WFI
    B   SerrorLowEl32

    .balign 0x80


//******************************************************************************
// Setup vector table for ThreadX
//******************************************************************************
 _tx_vector_table_set:
	LDR		X1, =_tx_vector_table
#ifdef EL1
	MSR		VBAR_EL1, X1
#else
#ifdef EL2
	MSR		VBAR_EL2, X1
#else
	MSR		VBAR_EL3, X1
#endif
#endif
	DSB		SY
	ISB		SY

    RET

    .END

