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
		carry);

input		qzt_clk;
input		clk_in;
input		[7:0]	limit;
input		run;

output	[7:0]	out;
output	carry;

reg	[7:0]	out;
reg	carry;
reg 	run_old;
reg 	clk_in_old;

always @(posedge qzt_clk) begin
	if (!clk_in_old & clk_in) begin
		if (!run_old & run) begin
			out=0;
			carry=0;
		end
		if (run) begin
			if (out >= (limit - 8'b00000001)) begin
				carry = 1;
			end else if (out == 0) begin
				out = 1;
				carry = 0;
			end else begin
				out = out + 1;
			end
		end else begin
			out=0;
			carry=0;
		end
		
	end
	run_old=run;
	clk_in_old=clk_in;
end

endmodule
