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
		
output reg [10:0] posX=11'd0;
output reg [10:0] posY=11'd0;

reg tx_old;
// do the 2 bit complement
always @ (posedge qzt_clk) begin
	if (!tx_old & tx) begin
		posX<=posX+{{3{status[4]}},deltaX};
		posY<=posY+ ~{{3{status[5]}},deltaY} + 1;
	end else begin
		if (posX[10] || (!posX[10] && posX<=11'd9))	posX<=11'd10;
		if (!posX[10] && posX[9:0]>=11'd640)			posX<=11'd640;
		if (posY[10] || (!posY[10] && posY<=11'd9))	posY<=11'd10;
		if (!posY[10] && posY[9:0]>=11'd480)			posY<=11'd480;
		/*
		if (posX[9])				posX<=posX + 10'd640;
		if (posX>=10'd639)	posX<=posX + (~ 10'd640) + 1;
		if (posY[9])				posY<=posY + 10'd480;
		if (posY>=10'd479)	posY<=posY + (~ 10'd480) + 1;
		*/
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
