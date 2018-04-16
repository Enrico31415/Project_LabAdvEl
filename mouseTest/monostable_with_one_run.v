`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:44 04/15/2018 
// Design Name: 
// Module Name:    monostable_with_one_run 
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
module monostable_with_one_run(
		trigger,
		qzt_clk,
		clk,
		limit,
		
		out
    );

input [7:0] limit;
input trigger, qzt_clk, clk;
output reg out;
reg trigger_old;
wire w_count_end;
reg start_count;

always @ (posedge qzt_clk) begin
	if (trigger & ~trigger_old) begin
		start_count=1;
		out=1;
		end
	if (w_count_end) begin
		out=0;
		start_count=0;
		end
	trigger_old=trigger;
end
/*
onerun onerun(
		.CLK(clk),
		.limit(limit),
		.start_count(start_count),
					
		.countend(w_count_end)
		);
	*/	
Module_Counter_8_bit_oneRun oneRun	(
		.qzt_clk(qzt_clk),
		.clk_in(clk),
		.limit(limit),
		.run(start_count),

		//out,
		.carry(w_count_end)
		);

endmodule
