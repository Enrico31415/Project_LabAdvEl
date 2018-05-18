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
output reg [2:0]cell_x;
output reg [2:0]cell_y;
always @ (posedge clk_in)
begin
	 if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd0;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd1;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd2;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd3;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd4;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd5;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd6;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd60 && pos_y>= 10'd0)
	begin
		cell_x = 3'd7;
		cell_y = 3'd0;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd0;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd1;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd2;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd3;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd4;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd5;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd6;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd120 && pos_y>= 10'd60)
	begin
		cell_x = 3'd7;
		cell_y = 3'd1;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd0;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd1;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd2;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd3;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd4;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd5;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd6;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd180 && pos_y>= 10'd120)
	begin
		cell_x = 3'd7;
		cell_y = 3'd2;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd0;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd1;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd2;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd3;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd4;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd5;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd6;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd240 && pos_y>= 10'd180)
	begin
		cell_x = 3'd7;
		cell_y = 3'd3;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd0;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd1;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd2;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd3;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd4;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd5;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd6;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd300 && pos_y>= 10'd240)
	begin
		cell_x = 3'd7;
		cell_y = 3'd4;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd0;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd1;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd2;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd3;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd4;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd5;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd6;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd360 && pos_y>= 10'd300)
	begin
		cell_x = 3'd7;
		cell_y = 3'd5;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd0;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd1;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd2;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd3;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd4;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd5;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd6;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd420 && pos_y>= 10'd360)
	begin
		cell_x = 3'd7;
		cell_y = 3'd6;
	end
	 else if(pos_x< 10'd80 && pos_x>= 10'd0 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd0;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd160 && pos_x>= 10'd80 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd1;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd240 && pos_x>= 10'd160 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd2;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd320 && pos_x>= 10'd240 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd3;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd400 && pos_x>= 10'd320 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd4;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd480 && pos_x>= 10'd400 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd5;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd560 && pos_x>= 10'd480 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd6;
		cell_y = 3'd7;
	end
	 else if(pos_x< 10'd640 && pos_x>= 10'd560 &&  pos_y< 10'd480 && pos_y>= 10'd420)
	begin
		cell_x = 3'd7;
		cell_y = 3'd7;
	end
	end
endmodule
