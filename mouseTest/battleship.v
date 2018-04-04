//`timescale 1ns / 1ps
`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:38:53 03/27/2018 
// Design Name: 
// Module Name:    battleship 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module battleship(CLK_50M,

				LED);

input		CLK_50M; //here decalrations, variable with 1 bit.
output	[7:0]	LED;// so have low impedence. 8 digits. is a bus. 

// here wires, modules, ecc.

// Module_FrequencyDivider		clock_1_Hz_generator(	.clk_in(CLK_50M),           //is another 'chip'
//								.period(`defaultPeriod),
//
//							.clk_out(w_clock_1_Hz));



endmodule
