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
inout		PS2_CLK1;
inout		PS2_DATA1;
/*
wire w_delay;
wire send;
reg run;
reg btn_old;
*/
//assign send = BTN_SOUTH;
assign LED[7]=BTN_SOUTH;

/*
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

// here wires, modules, ecc.
*/
`define delay 31'd50_000_000

assign PS2_CLK1=1'bz;
assign PS2_DATA1=1'bz;
assign LED[6:4]=PS2_CLK1;
assign LED[3:0]=PS2_DATA1;
/*
wire w_tmp;
PS2_send PS2_send(
		.qzt_clk(CLK_50M),
		.data(11'b11000000000),
		.send(send),


		//.PS2C(PS2_CLK1),
		//.PS2D(PS2_DATA1),
		.status(w_tmp)
	  );
assign LED[6:0] = ~w_tmp;
*/
/*
Module_Counter_8_bit_oneRun waitSeconds(
					.qzt_clk(CLK_50M),
					.clk_in(CLK_50M),
					.limit(`delay),
					.run(run),

					//out,
					.carry(w_delay)
					);
					
*/
/*
wire w_tmp;	
Module_FrequencyDivider divider	(	.clk_in(CLK_50M),
					.period(30'd50000),

					.clk_out(w_tmp));
					
assign PS2_DATA1 = w_tmp? 1'bz : 1'b0; 
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
