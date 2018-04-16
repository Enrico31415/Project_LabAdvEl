// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da positionToQuadrant.py
module pos_to_quadrant(
	clk_in,
	pos_x,
	pos_y,

	cell_x,
	cell_y
);
input clk_in;
input [9:0]pos_x;
input [9:0]pos_y;
output reg [3:0]cell_x;
output reg [3:0]cell_y;
always @ (posedge clk_in)
begin
	 if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd0;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd1;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd2;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd3;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd4;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd5;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd6;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd7;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd8;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd48 && pos_y>= 10'd0)
	begin
		cell_y = 4'd9;
		cell_x = 4'd0;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd0;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd1;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd2;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd3;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd4;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd5;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd6;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd7;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd8;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd96 && pos_y>= 10'd48)
	begin
		cell_y = 4'd9;
		cell_x = 4'd1;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd0;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd1;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd2;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd3;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd4;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd5;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd6;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd7;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd8;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd144 && pos_y>= 10'd96)
	begin
		cell_y = 4'd9;
		cell_x = 4'd2;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd0;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd1;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd2;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd3;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd4;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd5;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd6;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd7;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd8;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd192 && pos_y>= 10'd144)
	begin
		cell_y = 4'd9;
		cell_x = 4'd3;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd0;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd1;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd2;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd3;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd4;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd5;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd6;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd7;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd8;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd240 && pos_y>= 10'd192)
	begin
		cell_y = 4'd9;
		cell_x = 4'd4;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd0;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd1;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd2;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd3;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd4;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd5;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd6;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd7;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd8;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd288 && pos_y>= 10'd240)
	begin
		cell_y = 4'd9;
		cell_x = 4'd5;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd0;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd1;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd2;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd3;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd4;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd5;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd6;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd7;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd8;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd336 && pos_y>= 10'd288)
	begin
		cell_y = 4'd9;
		cell_x = 4'd6;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd0;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd1;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd2;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd3;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd4;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd5;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd6;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd7;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd8;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd384 && pos_y>= 10'd336)
	begin
		cell_y = 4'd9;
		cell_x = 4'd7;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd0;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd1;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd2;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd3;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd4;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd5;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd6;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd7;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd8;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd432 && pos_y>= 10'd384)
	begin
		cell_y = 4'd9;
		cell_x = 4'd8;
	end
	 else if(pos_x< 10'd64 && pos_x>= 10'd0 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd0;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd128 && pos_x>= 10'd64 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd1;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd192 && pos_x>= 10'd128 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd2;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd256 && pos_x>= 10'd192 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd3;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd256 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd4;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd384 && pos_x>= 10'd320 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd5;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd448 && pos_x>= 10'd384 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd6;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd512 && pos_x>= 10'd448 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd7;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd576 && pos_x>= 10'd512 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd8;
		cell_x = 4'd9;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd576 &&  pos_y< 10'd480 && pos_y>= 10'd432)
	begin
		cell_y = 4'd9;
		cell_x = 4'd9;
	end
	end
endmodule
