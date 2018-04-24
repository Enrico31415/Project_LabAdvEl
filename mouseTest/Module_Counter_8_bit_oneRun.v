`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:39:39 04/05/2018 
// Design Name: 
// Module Name:    Module_counter_8_bit_SR 
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
module	Module_Counter_8_bit_oneRun	(
		qzt_clk,
		clk_in,
		limit,
		run,

		out,
		carry
		);

input		qzt_clk;
input		clk_in;
input		[7:0]	limit;
input		run;

output	[7:0]	out;
output	carry;

reg	[7:0]	out=8'd0;
reg	carry=1'b0;
reg 	run_old=1'b0;
reg 	clk_in_old=1'b0;

always @(negedge qzt_clk) begin
	if (!run) begin
		out=0;
		carry=0;
	end else begin
		if (!clk_in_old & clk_in) begin
			if (out >= (limit - 8'b00000001)) begin
				carry = 1;
			end else if (out == 0) begin
				out = 1;
				carry = 0;
			end else begin
				out = out + 1;
			end
		end
	end
	clk_in_old=clk_in;
	run_old=run;
end

endmodule
