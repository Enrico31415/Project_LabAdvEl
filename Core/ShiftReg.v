`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:18:15 11/14/2017 
// Design Name: 
// Module Name:    ShiftReg 
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
module	Module_Shift_reg_31bit(qzt_clk,
						clk_in,
						serial_in,
						closed_loop,
						set,
						reset,
						presetValue,
						out,
						serial_out);

input		qzt_clk;
input		clk_in;
input		serial_in;
input		closed_loop;
input		set;
input		reset;
input	[30:0]	presetValue;

output	[30:0]	out;
output	serial_out;

reg	[30:0]	out;
reg	serial_out;

reg	clk_in_old;


always @(posedge qzt_clk) begin
	if (reset) begin
		out = 0;

	end else if (set) begin
		out= presetValue;
	end else if (!clk_in_old & clk_in) begin
		if(!closed_loop) begin
			serial_out=out[0];
			out[30:0]= (out>>1);
			out[30]=serial_in;
		end else if (closed_loop) begin
			serial_out=out[0];
			out[30:0]=(out>>1);// out>>1;
			out[30]=serial_out;
		end
	end
	clk_in_old = clk_in;
end

endmodule

