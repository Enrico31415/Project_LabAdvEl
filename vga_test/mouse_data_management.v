`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:17 05/08/2018 
// Design Name: 
// Module Name:    mouse_data_management 
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
module mouse_data_management(
		qzt_clk,
		status,
		deltaX,
		deltaY,
		tx,
		
		posX,
		posY
    );

input qzt_clk;
input [7:0] status;
input [7:0] deltaX;
input [7:0] deltaY;
input tx;
		
output reg [9:0] posX=0;
output reg [9:0] posY=0;

reg tx_old;
// do the 2 bit complement
always @ (posedge qzt_clk) begin
	if (!tx_old & tx) begin
		posX=posX+deltaX;
		posY=posY+deltaY;
	end
	tx_old<=tx;
end

/*
		if (BTN_EAST == 1)
		begin
			x_pos = x_pos + 1;
		end
		else if (BTN_WEST == 1)
		begin
			x_pos = x_pos - 1;
		end
		else if (BTN_NORTH == 1)
		begin
			y_pos = y_pos - 1;
		end
		else if (BTN_SOUTH == 1)
		begin
			y_pos = y_pos + 1;
		end
		
		if (x_pos >= 'd640)
			x_pos = 1;
		if (y_pos >= 'd480)
			y_pos = 1;
		if (x_pos <= 'd0)
			x_pos = 640;
		if (y_pos <= 'd0)
			y_pos = 480;
		
*/

endmodule
