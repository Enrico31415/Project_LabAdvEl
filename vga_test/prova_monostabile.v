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
module prova_monostabile(
				CLK_50M,
//				BTN_SOUTH,
				BTN_NORTH,

				LED,
//				PS2_CLK1,
	//			PS2_DATA1,
				
				);

input		BTN_NORTH;
//input		BTN_SOUTH;
input		CLK_50M; //here decalrations, variable with 1 bit.
output	[7:0]LED;// so have low impedence. 8 digits. is a bus.
//inout		PS2_CLK1;
//inout		PS2_DATA1;

`define second 30'd50000000

wire w_clk_1s;
monostable_with_one_run mono(
		.trigger(BTN_NORTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_1s),
		.limit(8'd5),
		
		.out(LED)
    );

Module_FrequencyDivider unsecondo(	
		.clk_in(CLK_50M),
		.period(`second),

		.clk_out(LED[7])
		);
		
assign LED[6:0]=7'b1111111;



endmodule
