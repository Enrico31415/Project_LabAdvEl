`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:26:30 05/07/2018 
// Design Name: 
// Module Name:    sim_test_girovettori 
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
module sim_test_girovettori(
		in,
		out
    );

input [10:0] in;
output reg[10:0] out;

reg clk20ns;
initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

integer n=0;
always @ (posedge clk20ns) begin
	for ( n=0 ; n <= 10 ; n=n+1 ) begin
		out[n] = in[10-n]; // Reverse video data buss bit order
	end
end

endmodule
