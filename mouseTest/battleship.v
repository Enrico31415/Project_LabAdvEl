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
module battleship(
				CLK_50M,
				BTN_SOUTH,

				LED,
				PS2_CLK1,
				PS2_DATA1,
				
				);

input		BTN_SOUTH;
input		CLK_50M; //here decalrations, variable with 1 bit.
output	[7:0]	LED;// so have low impedence. 8 digits. is a bus.
output	PS2_CLK1;
output	PS2_DATA1;

wire w_delay;
reg send;
reg run;
reg btn_old;

always @(posedge CLK_50M) begin
	if (BTN_SOUTH) begin
		run=1;
	end
	if (w_delay) begin
		send=1;
		run=0;
	end else begin
		send=0;
	end
	btn_old=BTN_SOUTH;
	//PS2_DATA1=run
end
assign LED[7]=BTN_SOUTH;
// here wires, modules, ecc.

`define delay 31'd50_000_000

PS2_send PS2_send(
		.qzt_clk(CLK_50M),
		.data(11'b11000000000),
		.send(send),

		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		.status(LED[6:0])
	  );

Module_Counter_8_bit_oneRun waitSeconds(
					.qzt_clk(CLK_50M),
					.clk_in(CLK_50M),
					.limit(`delay),
					.run(run),

					//out,
					.carry(w_delay)
					);
		/*			
Module_FrequencyDivider divider	(	.clk_in(CLK_50M),
					.period(30'd50000),

					.clk_out(PS2_DATA1));
	  */

/*
Module_FrequencyDivider		clock_10_kHz_generator(	.clk_in(CLK_50M),           //is another 'chip'
								.period(`mss),

						.clk_out(PS2_DATA1));
*/						
/*
module PS2Comm(
		.qzt_clk(CLK_50M),
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		.LED(LED)
    );
*/

// assign LED=8'b10101010;

endmodule
