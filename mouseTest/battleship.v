//`timescale 1ns / 1ps
`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6
`define mss 30'd5000
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

				LED,
				PS2_DATA1
				);

input		CLK_50M; //here decalrations, variable with 1 bit.
output	[7:0]	LED;// so have low impedence. 8 digits. is a bus.
output	PS2_DATA1;

// here wires, modules, ecc.

 Module_FrequencyDivider		clock_10_kHz_generator(	.clk_in(CLK_50M),           //is another 'chip'
								.period(`mss),

						.clk_out(PS2_DATA1));

assign LED=8'b10101010;

endmodule
