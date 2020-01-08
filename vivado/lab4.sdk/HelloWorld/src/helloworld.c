/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "xparameters.h"	// Contains macros that define addresses of different devices
#include "platform.h"
#include "xil_printf.h"		// Xilinx's printf function
#include "xil_io.h"			// Contains functions for AXI I/O
#include "FILTER_IIR.h"	// Contains IP specific I/O functions and register address definitions

//#include "Volume_Pregain.h"

#include <stdio.h>
#include <stdlib.h>
#include "xil_exception.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xscugic.h"


int main()
{
    xil_printf("\n\r\n\r\n\rHello World\n\r");
    u32 baseaddr = XPAR_FILTER_IIR_0_S00_AXI_BASEADDR;
    //FILTER_IIR_Reg_SelfTest(&baseaddr);

    //FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG15_OFFSET, 1);
    //u32 isReset = FILTER_IIR_mReadReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG15_OFFSET);
    //xil_printf("Is reset %d\n\r", isReset);


    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG0_OFFSET, 0x00002CB6);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG1_OFFSET, 0x0000596C);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG2_OFFSET, 0x00002CB6);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG3_OFFSET, 0x8097A63A);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG4_OFFSET, 0x3F690C9D);

    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG5_OFFSET, 0x074D9236);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG6_OFFSET, 0x00000000);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG7_OFFSET, 0xF8B26DCA);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG8_OFFSET, 0x9464B81B);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG9_OFFSET, 0x3164DB93);

    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG10_OFFSET, 0x12BEC333);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG11_OFFSET, 0xDA82799A);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG12_OFFSET, 0x12BEC333);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG13_OFFSET, 0x00000000);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG14_OFFSET, 0x0AFB0CCC);


    u32 enable = 1;
    u32 disable = 0;

    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG16_OFFSET, 0); //when 1, creates random noise
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG17_OFFSET, enable);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG18_OFFSET, disable);
    FILTER_IIR_mWriteReg(baseaddr, FILTER_IIR_S00_AXI_SLV_REG19_OFFSET, enable);

    return 0;
}