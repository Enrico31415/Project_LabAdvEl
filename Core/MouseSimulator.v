`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:04 04/05/2018 
// Design Name: 
// Module Name:    mouse_symulator 
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
module Module_MouseSimulator(
	clk_in,
	BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH,
	clk_in_umano,
	x_pos, y_pos
    );
	 
	 
input clk_in, clk_in_umano;
input BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH;

output reg [9:0] x_pos = 'd360;
output reg [9:0] y_pos = 'd200;

//wire clock_and;
//
//assign clock_and = clk_in & clk_in_umano;

always @(posedge clk_in_umano)
begin
		if (BTN_EAST == 1)
		begin
			x_pos = x_pos + 1;
		end
		if (BTN_WEST == 1)
		begin
			x_pos = x_pos - 1;
		end
		if (BTN_NORTH == 1)
		begin
			y_pos = y_pos - 1;
		end
		if (BTN_SOUTH == 1)
		begin
			y_pos = y_pos + 1;
		end
		
		//PBC
		if (x_pos >= 10'd640)
			x_pos = 10'd639;
		if (y_pos >= 10'd480)
			y_pos = 10'd479;
		if (x_pos <= 10'd7)
			x_pos = 10'd8;
		if (y_pos <= 10'd7)
			y_pos = 10'd8;
		
		

end

endmodule
