`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:21 03/27/2018 
// Design Name: 
// Module Name:    PS2_send 
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
module PS2_send( data, send,
    
	  ok, err
//	  ,errCode
	  );
//
input		clk_in;
input	[7:0]	limit;

output	[7:0]	out;
output		carry;

reg	[7:0]	out;
reg		carry;

always @(posedge clk_in) begin
	if (out >= (limit - 8'b00000001)) begin
		out = 0;
		carry = 1;
	end else if (out == 0) begin
		out = 1;
		carry = 0;
	end else
		out = out + 1;
end
//
input		data[7:0];
input 	send;
output	ok;
output	err;
//output	errCode[];

reg data[7:0];

always 


endmodule
