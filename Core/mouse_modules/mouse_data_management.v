`timescale 1ns / 1ps
/*
	Treat the data coming from PS2_comm to have a position on the screen. and 
click. Data from the mouse are in 2'complement so easily summable. the only 
other thing is to set the boxes of the screen. For the clicks I just extract
and reordered them from status.
*/
module mouse_data_management(
		qzt_clk,
		status,
		deltaX,
		deltaY,
		tx,
		
		posX,
		posY,
		clicks
    );

input qzt_clk;
input [7:0] status;
input [7:0] deltaX;
input [7:0] deltaY;
input tx;
		
output reg 	[10:0] 	posX=11'd0;
output reg 	[10:0] 	posY=11'd0;
output 		[2:0] 	clicks;

reg tx_old;

// output clicks net has the clicks in the orther:
// {2:LEFT (0), 1:MIDDLE (2), 3:RIGHT (1)}
// <pos> ::= <pos_in_clicks>':'<pos_physical>' '<pos_in_status> 
assign clicks = {status[0], status[2], status[1]};

always @ (posedge qzt_clk) begin
	if (!tx_old & tx) begin
		posX<=posX+{{3{status[4]}},deltaX};
		posY<=posY+ ~{{3{status[5]}},deltaY} + 1;
	end else begin
		/* screen limits respected and the pointer doesn't disappear.
		*/
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
