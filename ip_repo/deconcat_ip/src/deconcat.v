`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//
// Company: Woods Hole Oceanographic Institution and Hydroid, Inc.
// Engineer: Ned Forrester
// 
// Create Date: 12/21/2015
// Design Name: 
// Module Name: deconcat
// Project Name: 
// Target Devices: 
// Tool Versions: Vivado 2015.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
// deconcat performs an operation opposite to the Xilinx-provided concat.  It
// allows a wide bus to be split into a number of narrower buses.  The present
// design limits the input bus to 4096 bits, fanned out to a maximum of 32
// output buses having 1-4096 bits each.  Each output bus takes its N signals
// from the next N bits of the input bus.  Obviously, the total number of bits
// summed across all the enabled output buses cannot exceed the width of the
// input bus.  The output buses default to 1-bit and the input bus defaults to
// 32-bits.  Settable parameters are the width of the input bus, the number of
// output buses, and the individual widths of each output bus.
//
// (Licensed under BSD 2-clause License:
// https://tldrlegal.com/license/bsd-2-clause-license-%28freebsd%29 
// )
//
// Copyright (c) 2015, Woods Hole Oceanographic Institution and Hydroid, Inc.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
// 1. Redistributions of source code must retain the above copyright notice,
// this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright
// notice, this list of conditions and the following disclaimer in the
// documentation and/or other materials provided with the distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
// AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
// ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
// LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
// CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
// INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
// CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
// 
////////////////////////////////////////////////////////////////////////////////


module deconcat #
	(
		// width of the input bus, could be many if the output ports
		// are also busses
		parameter integer IN_WIDTH = 32,
		// number of output ports, these default to 1-bit each
		parameter integer NUM_PORTS = 32,
		// width of each output port, default = 1
		parameter integer OUT00_WIDTH = 1,
		parameter integer OUT01_WIDTH = 1,
		parameter integer OUT02_WIDTH = 1,
		parameter integer OUT03_WIDTH = 1,
		parameter integer OUT04_WIDTH = 1,
		parameter integer OUT05_WIDTH = 1,
		parameter integer OUT06_WIDTH = 1,
		parameter integer OUT07_WIDTH = 1,
		parameter integer OUT08_WIDTH = 1,
		parameter integer OUT09_WIDTH = 1,
		parameter integer OUT10_WIDTH = 1,
		parameter integer OUT11_WIDTH = 1,
		parameter integer OUT12_WIDTH = 1,
		parameter integer OUT13_WIDTH = 1,
		parameter integer OUT14_WIDTH = 1,
		parameter integer OUT15_WIDTH = 1,
		parameter integer OUT16_WIDTH = 1,
		parameter integer OUT17_WIDTH = 1,
		parameter integer OUT18_WIDTH = 1,
		parameter integer OUT19_WIDTH = 1,
		parameter integer OUT20_WIDTH = 1,
		parameter integer OUT21_WIDTH = 1,
		parameter integer OUT22_WIDTH = 1,
		parameter integer OUT23_WIDTH = 1,
		parameter integer OUT24_WIDTH = 1,
		parameter integer OUT25_WIDTH = 1,
		parameter integer OUT26_WIDTH = 1,
		parameter integer OUT27_WIDTH = 1,
		parameter integer OUT28_WIDTH = 1,
		parameter integer OUT29_WIDTH = 1,
		parameter integer OUT30_WIDTH = 1,
		parameter integer OUT31_WIDTH = 1
	)
	(
		input wire [IN_WIDTH-1:0] In_Bus,
		output wire [OUT00_WIDTH-1:0] Out00,
		output wire [OUT01_WIDTH-1:0] Out01,
		output wire [OUT02_WIDTH-1:0] Out02,
		output wire [OUT03_WIDTH-1:0] Out03,
		output wire [OUT04_WIDTH-1:0] Out04,
		output wire [OUT05_WIDTH-1:0] Out05,
		output wire [OUT06_WIDTH-1:0] Out06,
		output wire [OUT07_WIDTH-1:0] Out07,
		output wire [OUT08_WIDTH-1:0] Out08,
		output wire [OUT09_WIDTH-1:0] Out09,
		output wire [OUT10_WIDTH-1:0] Out10,
		output wire [OUT11_WIDTH-1:0] Out11,
		output wire [OUT12_WIDTH-1:0] Out12,
		output wire [OUT13_WIDTH-1:0] Out13,
		output wire [OUT14_WIDTH-1:0] Out14,
		output wire [OUT15_WIDTH-1:0] Out15,
		output wire [OUT16_WIDTH-1:0] Out16,
		output wire [OUT17_WIDTH-1:0] Out17,
		output wire [OUT18_WIDTH-1:0] Out18,
		output wire [OUT19_WIDTH-1:0] Out19,
		output wire [OUT20_WIDTH-1:0] Out20,
		output wire [OUT21_WIDTH-1:0] Out21,
		output wire [OUT22_WIDTH-1:0] Out22,
		output wire [OUT23_WIDTH-1:0] Out23,
		output wire [OUT24_WIDTH-1:0] Out24,
		output wire [OUT25_WIDTH-1:0] Out25,
		output wire [OUT26_WIDTH-1:0] Out26,
		output wire [OUT27_WIDTH-1:0] Out27,
		output wire [OUT28_WIDTH-1:0] Out28,
		output wire [OUT29_WIDTH-1:0] Out29,
		output wire [OUT30_WIDTH-1:0] Out30,
		output wire [OUT31_WIDTH-1:0] Out31
	);

/*
	assign Out00 = In_Bus[0]; 	
	assign Out01 = In_Bus[1]; 	
	assign Out02 = In_Bus[2:2]; 	
	assign Out03 = In_Bus[3]; 	
	assign Out04 = In_Bus[4]; 	
	assign Out05 = In_Bus[5]; 	
	assign Out06 = In_Bus[6]; 	
	assign Out07 = In_Bus[7]; 	
	assign Out08 = In_Bus[8]; 	
	assign Out09 = In_Bus[9]; 	
	assign Out10 = In_Bus[10]; 	
	assign Out11 = In_Bus[11]; 	
	assign Out12 = In_Bus[12]; 	
	assign Out13 = In_Bus[13]; 	
	assign Out14 = In_Bus[14]; 	
	assign Out15 = In_Bus[15]; 	
	assign Out16 = In_Bus[16]; 	
	assign Out17 = In_Bus[17]; 	
	assign Out18 = In_Bus[18]; 	
	assign Out19 = In_Bus[19]; 	
	assign Out20 = In_Bus[20]; 	
	assign Out21 = In_Bus[21]; 	
	assign Out22 = In_Bus[22]; 	
	assign Out23 = In_Bus[23]; 	
	assign Out24 = In_Bus[24]; 	
	assign Out25 = In_Bus[25]; 	
	assign Out26 = In_Bus[26]; 	
	assign Out27 = In_Bus[27]; 	
	assign Out28 = In_Bus[28]; 	
	assign Out29 = In_Bus[29]; 	
	assign Out30 = In_Bus[30]; 	
	assign Out31 = In_Bus[31]; 	
*/


	generate 

		localparam integer slice_00 = 0;

		if (NUM_PORTS >= 1)
		begin : C_NUM_1
		    assign Out00 = In_Bus[OUT00_WIDTH-1+slice_00:slice_00]; 	
		end
		else assign Out00 = 0;
	        localparam integer slice_01 = slice_00 + OUT00_WIDTH;

		if (NUM_PORTS >= 2)
		begin : C_NUM_2
		    assign Out01 = In_Bus[OUT01_WIDTH-1+slice_01:slice_01]; 	
		end
		else assign Out01 = 0;
		localparam integer slice_02 = slice_01 + OUT01_WIDTH;

		if (NUM_PORTS >= 3)
		begin : C_NUM_3
		    assign Out02 = In_Bus[OUT02_WIDTH-1+slice_02:slice_02]; 	
		end
		else assign Out02 = 0;
		localparam integer slice_03 = slice_02 + OUT02_WIDTH;

		if (NUM_PORTS >= 4)
		begin : C_NUM_4
		    assign Out03 = In_Bus[OUT03_WIDTH-1+slice_03:slice_03]; 	
		end
		else assign Out03 = 0;
		localparam integer slice_04 = slice_03 + OUT03_WIDTH;

		if (NUM_PORTS >= 5)
		begin : C_NUM_5
		    assign Out04 = In_Bus[OUT04_WIDTH-1+slice_04:slice_04]; 	
		end
		else assign Out04 = 0;
		localparam integer slice_05 = slice_04 + OUT04_WIDTH;

		if (NUM_PORTS >= 6)
		begin : C_NUM_6
		    assign Out05 = In_Bus[OUT05_WIDTH-1+slice_05:slice_05]; 	
		end
		else assign Out05 = 0;
		localparam integer slice_06 = slice_05 + OUT05_WIDTH;

		if (NUM_PORTS >= 7)
		begin : C_NUM_7
		    assign Out06 = In_Bus[OUT06_WIDTH-1+slice_06:slice_06]; 	
		end
		else assign Out06 = 0;
		localparam integer slice_07 = slice_06 + OUT06_WIDTH;

		if (NUM_PORTS >= 8)
		begin : C_NUM_8
		    assign Out07 = In_Bus[OUT07_WIDTH-1+slice_07:slice_07]; 	
		end
		else assign Out07 = 0;
		localparam integer slice_08 = slice_07 + OUT07_WIDTH;

		if (NUM_PORTS >= 9)
		begin : C_NUM_9
		    assign Out08 = In_Bus[OUT08_WIDTH-1+slice_08:slice_08]; 	
		end
		else assign Out08 = 0;
		localparam integer slice_09 = slice_08 + OUT08_WIDTH;

		if (NUM_PORTS >= 10)
		begin : C_NUM_10
		    assign Out09 = In_Bus[OUT09_WIDTH-1+slice_09:slice_09]; 	
		end
		else assign Out09 = 0;
		localparam integer slice_10 = slice_09 + OUT09_WIDTH;

		if (NUM_PORTS >= 11)
		begin : C_NUM_11
		    assign Out10 = In_Bus[OUT10_WIDTH-1+slice_10:slice_10]; 	
		end
		else assign Out10 = 0;
		localparam integer slice_11 = slice_10 + OUT10_WIDTH;

		if (NUM_PORTS >= 12)
		begin : C_NUM_12
		    assign Out11 = In_Bus[OUT11_WIDTH-1+slice_11:slice_11]; 	
		end
		else assign Out11 = 0;
		localparam integer slice_12 = slice_11 + OUT11_WIDTH;

		if (NUM_PORTS >= 13)
		begin : C_NUM_13
		    assign Out12 = In_Bus[OUT12_WIDTH-1+slice_12:slice_12]; 	
		end
		else assign Out12 = 0;
		localparam integer slice_13 = slice_12 + OUT12_WIDTH;

		if (NUM_PORTS >= 14)
		begin : C_NUM_14
		    assign Out13 = In_Bus[OUT13_WIDTH-1+slice_13:slice_13]; 	
		end
		else assign Out13 = 0;
		localparam integer slice_14 = slice_13 + OUT13_WIDTH;

		if (NUM_PORTS >= 15)
		begin : C_NUM_15
		    assign Out14 = In_Bus[OUT14_WIDTH-1+slice_14:slice_14]; 	
		end
		else assign Out14 = 0;
		localparam integer slice_15 = slice_14 + OUT14_WIDTH;

		if (NUM_PORTS >= 16)
		begin : C_NUM_16
		    assign Out15 = In_Bus[OUT15_WIDTH-1+slice_15:slice_15]; 	
		end
		else assign Out15 = 0;
		localparam integer slice_16 = slice_15 + OUT15_WIDTH;

		if (NUM_PORTS >= 17)
		begin : C_NUM_17
		    assign Out16 = In_Bus[OUT16_WIDTH-1+slice_16:slice_16]; 	
		end
		else assign Out16 = 0;
		localparam integer slice_17 = slice_16 + OUT16_WIDTH;

		if (NUM_PORTS >= 18)
		begin : C_NUM_18
		    assign Out17 = In_Bus[OUT17_WIDTH-1+slice_17:slice_17]; 	
		end
		else assign Out17 = 0;
		localparam integer slice_18 = slice_17 + OUT17_WIDTH;

		if (NUM_PORTS >= 19)
		begin : C_NUM_19
		    assign Out18 = In_Bus[OUT18_WIDTH-1+slice_18:slice_18]; 	
		end
		else assign Out18 = 0;
		localparam integer slice_19 = slice_18 + OUT18_WIDTH;

		if (NUM_PORTS >= 20)
		begin : C_NUM_20
		    assign Out19 = In_Bus[OUT19_WIDTH-1+slice_19:slice_19]; 	
		end
		else assign Out19 = 0;
		localparam integer slice_20 = slice_19 + OUT19_WIDTH;

		if (NUM_PORTS >= 21)
		begin : C_NUM_21
		    assign Out20 = In_Bus[OUT20_WIDTH-1+slice_20:slice_20]; 	
		end
		else assign Out20 = 0;
		localparam integer slice_21 = slice_20 + OUT20_WIDTH;

		if (NUM_PORTS >= 22)
		begin : C_NUM_22
		    assign Out21 = In_Bus[OUT21_WIDTH-1+slice_21:slice_21]; 	
		end
		else assign Out21 = 0;
		localparam integer slice_22 = slice_21 + OUT21_WIDTH;

		if (NUM_PORTS >= 23)
		begin : C_NUM_23
		    assign Out22 = In_Bus[OUT22_WIDTH-1+slice_22:slice_22]; 	
		end
		else assign Out22 = 0;
		localparam integer slice_23 = slice_22 + OUT22_WIDTH;

		if (NUM_PORTS >= 24)
		begin : C_NUM_24
		    assign Out23 = In_Bus[OUT23_WIDTH-1+slice_23:slice_23]; 	
		end
		else assign Out23 = 0;
		localparam integer slice_24 = slice_23 + OUT23_WIDTH;

		if (NUM_PORTS >= 25)
		begin : C_NUM_25
		    assign Out24 = In_Bus[OUT24_WIDTH-1+slice_24:slice_24]; 	
		end
		else assign Out24 = 0;
		localparam integer slice_25 = slice_24 + OUT24_WIDTH;

		if (NUM_PORTS >= 26)
		begin : C_NUM_26
		    assign Out25 = In_Bus[OUT25_WIDTH-1+slice_25:slice_25]; 	
		end
		else assign Out25 = 0;
		localparam integer slice_26 = slice_25 + OUT25_WIDTH;

		if (NUM_PORTS >= 27)
		begin : C_NUM_27
		    assign Out26 = In_Bus[OUT26_WIDTH-1+slice_26:slice_26]; 	
		end
		else assign Out26 = 0;
		localparam integer slice_27 = slice_26 + OUT26_WIDTH;

		if (NUM_PORTS >= 28)
		begin : C_NUM_28
		    assign Out27 = In_Bus[OUT27_WIDTH-1+slice_27:slice_27]; 	
		end
		else assign Out27 = 0;
		localparam integer slice_28 = slice_27 + OUT27_WIDTH;

		if (NUM_PORTS >= 29)
		begin : C_NUM_29
		    assign Out28 = In_Bus[OUT28_WIDTH-1+slice_28:slice_28]; 	
		end
		else assign Out28 = 0;
		localparam integer slice_29 = slice_28 + OUT28_WIDTH;

		if (NUM_PORTS >= 30)
		begin : C_NUM_30
		    assign Out29 = In_Bus[OUT29_WIDTH-1+slice_29:slice_29]; 	
		end
		else assign Out29 = 0;
		localparam integer slice_30 = slice_29 + OUT29_WIDTH;

		if (NUM_PORTS >= 31)
		begin : C_NUM_31
		    assign Out30 = In_Bus[OUT30_WIDTH-1+slice_30:slice_30]; 	
		end
		else assign Out30 = 0;
		localparam integer slice_31 = slice_30 + OUT30_WIDTH;

		if (NUM_PORTS >= 32)
		begin : C_NUM_32
		    assign Out31 = In_Bus[OUT31_WIDTH-1+slice_31:slice_31]; 	
		end
		else assign Out31 = 0;
		localparam integer slice_32 = slice_31 + OUT31_WIDTH;

	endgenerate

endmodule

