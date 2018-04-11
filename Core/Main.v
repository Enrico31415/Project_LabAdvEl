`timescale 1ns / 1ps
`define divider_to_25MHz '30b000000000000000000000000000001
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:38 04/11/2018 
// Design Name: 
// Module Name:    Main 
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
module Main(CLK_50M,

	    );
	 
input CLK_50M;
wire clk_25Mhz;

reg flag_inizialized = 0;
reg IA_move = 0;
	 
 reg [11:0] matrix [0:11][0:3]; //registro totale che tiene conto di tutto.
 
 Module_FrequencyDivider clock_25Mhz_Generator (	.clk_in(CLK_50M),
					.period(divider_to_25MHz),

					.clk_out(clk_25Mhz));
 
always @(posedge clk_25Mhz)
begin
	if (flag_inizialized) //se devo posizionare le navi
	begin
		
		
		flag_inizialized = 1;
	end
	if (IA_move) //se tocca all'IA muovere
	begin
		
		
		IA_move = 0;
		PLAYER_move = 1;
	end
	
	if (PLAYER_move) //se tocca al giocatore muovere
	begin
	
	
		PLAYER_move = 0;
		IA_move = 1;
	end
end


endmodule
