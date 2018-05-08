`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:04 04/16/2018 
// Design Name: 
// Module Name:    Toggle 
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
module Toggle(
		qzt,
		in,
		
		out
    );

input qzt, in;
output reg out=0;
reg in_old=0;

always @ (posedge qzt) begin
	if (~in_old & in)
		out=~out;
	in_old=in;
end

endmodule
