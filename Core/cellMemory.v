// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da memoryGenerator.py
module cell_io(
 	 clk_in,
	 pos_x,
	 pos_y,
	 write_enable,
	 new_value,

	 status
);
input clk_in;
input write_enable;
input [1:0]new_value;
input [3:0]pos_x;
input [3:0]pos_y;
output reg [1:0]status;
// registri del tipo sta_X(posizione x)_Y(posizione y)
reg [1:0] stat_X0_Y0 = 2'b00;
reg [1:0] stat_X1_Y0 = 2'b00;
reg [1:0] stat_X2_Y0 = 2'b00;
reg [1:0] stat_X3_Y0 = 2'b00;
reg [1:0] stat_X4_Y0 = 2'b00;
reg [1:0] stat_X5_Y0 = 2'b00;
reg [1:0] stat_X6_Y0 = 2'b00;
reg [1:0] stat_X7_Y0 = 2'b00;
reg [1:0] stat_X8_Y0 = 2'b00;
reg [1:0] stat_X9_Y0 = 2'b00;
reg [1:0] stat_X0_Y1 = 2'b00;
reg [1:0] stat_X1_Y1 = 2'b00;
reg [1:0] stat_X2_Y1 = 2'b00;
reg [1:0] stat_X3_Y1 = 2'b00;
reg [1:0] stat_X4_Y1 = 2'b00;
reg [1:0] stat_X5_Y1 = 2'b00;
reg [1:0] stat_X6_Y1 = 2'b00;
reg [1:0] stat_X7_Y1 = 2'b00;
reg [1:0] stat_X8_Y1 = 2'b00;
reg [1:0] stat_X9_Y1 = 2'b00;
reg [1:0] stat_X0_Y2 = 2'b00;
reg [1:0] stat_X1_Y2 = 2'b00;
reg [1:0] stat_X2_Y2 = 2'b00;
reg [1:0] stat_X3_Y2 = 2'b00;
reg [1:0] stat_X4_Y2 = 2'b00;
reg [1:0] stat_X5_Y2 = 2'b00;
reg [1:0] stat_X6_Y2 = 2'b00;
reg [1:0] stat_X7_Y2 = 2'b00;
reg [1:0] stat_X8_Y2 = 2'b00;
reg [1:0] stat_X9_Y2 = 2'b00;
reg [1:0] stat_X0_Y3 = 2'b00;
reg [1:0] stat_X1_Y3 = 2'b00;
reg [1:0] stat_X2_Y3 = 2'b00;
reg [1:0] stat_X3_Y3 = 2'b00;
reg [1:0] stat_X4_Y3 = 2'b00;
reg [1:0] stat_X5_Y3 = 2'b00;
reg [1:0] stat_X6_Y3 = 2'b00;
reg [1:0] stat_X7_Y3 = 2'b00;
reg [1:0] stat_X8_Y3 = 2'b00;
reg [1:0] stat_X9_Y3 = 2'b00;
reg [1:0] stat_X0_Y4 = 2'b00;
reg [1:0] stat_X1_Y4 = 2'b00;
reg [1:0] stat_X2_Y4 = 2'b00;
reg [1:0] stat_X3_Y4 = 2'b00;
reg [1:0] stat_X4_Y4 = 2'b00;
reg [1:0] stat_X5_Y4 = 2'b00;
reg [1:0] stat_X6_Y4 = 2'b00;
reg [1:0] stat_X7_Y4 = 2'b00;
reg [1:0] stat_X8_Y4 = 2'b00;
reg [1:0] stat_X9_Y4 = 2'b00;
reg [1:0] stat_X0_Y5 = 2'b00;
reg [1:0] stat_X1_Y5 = 2'b00;
reg [1:0] stat_X2_Y5 = 2'b00;
reg [1:0] stat_X3_Y5 = 2'b00;
reg [1:0] stat_X4_Y5 = 2'b00;
reg [1:0] stat_X5_Y5 = 2'b00;
reg [1:0] stat_X6_Y5 = 2'b00;
reg [1:0] stat_X7_Y5 = 2'b00;
reg [1:0] stat_X8_Y5 = 2'b00;
reg [1:0] stat_X9_Y5 = 2'b00;
reg [1:0] stat_X0_Y6 = 2'b00;
reg [1:0] stat_X1_Y6 = 2'b00;
reg [1:0] stat_X2_Y6 = 2'b00;
reg [1:0] stat_X3_Y6 = 2'b00;
reg [1:0] stat_X4_Y6 = 2'b00;
reg [1:0] stat_X5_Y6 = 2'b00;
reg [1:0] stat_X6_Y6 = 2'b00;
reg [1:0] stat_X7_Y6 = 2'b00;
reg [1:0] stat_X8_Y6 = 2'b00;
reg [1:0] stat_X9_Y6 = 2'b00;
reg [1:0] stat_X0_Y7 = 2'b00;
reg [1:0] stat_X1_Y7 = 2'b00;
reg [1:0] stat_X2_Y7 = 2'b00;
reg [1:0] stat_X3_Y7 = 2'b00;
reg [1:0] stat_X4_Y7 = 2'b00;
reg [1:0] stat_X5_Y7 = 2'b00;
reg [1:0] stat_X6_Y7 = 2'b00;
reg [1:0] stat_X7_Y7 = 2'b00;
reg [1:0] stat_X8_Y7 = 2'b00;
reg [1:0] stat_X9_Y7 = 2'b00;
reg [1:0] stat_X0_Y8 = 2'b00;
reg [1:0] stat_X1_Y8 = 2'b00;
reg [1:0] stat_X2_Y8 = 2'b00;
reg [1:0] stat_X3_Y8 = 2'b00;
reg [1:0] stat_X4_Y8 = 2'b00;
reg [1:0] stat_X5_Y8 = 2'b00;
reg [1:0] stat_X6_Y8 = 2'b00;
reg [1:0] stat_X7_Y8 = 2'b00;
reg [1:0] stat_X8_Y8 = 2'b00;
reg [1:0] stat_X9_Y8 = 2'b00;
reg [1:0] stat_X0_Y9 = 2'b00;
reg [1:0] stat_X1_Y9 = 2'b00;
reg [1:0] stat_X2_Y9 = 2'b00;
reg [1:0] stat_X3_Y9 = 2'b00;
reg [1:0] stat_X4_Y9 = 2'b00;
reg [1:0] stat_X5_Y9 = 2'b00;
reg [1:0] stat_X6_Y9 = 2'b00;
reg [1:0] stat_X7_Y9 = 2'b00;
reg [1:0] stat_X8_Y9 = 2'b00;
reg [1:0] stat_X9_Y9 = 2'b00;
always @ (posedge clk_in)
begin
	 if (write_enable)
	 begin
	 	 if(pos_x == 4'd0 && pos_y == 4'd0)
		 begin
			 stat_X0_Y0 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd0)
		 begin
			 stat_X1_Y0 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd0)
		 begin
			 stat_X2_Y0 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd0)
		 begin
			 stat_X3_Y0 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd0)
		 begin
			 stat_X4_Y0 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd0)
		 begin
			 stat_X5_Y0 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd0)
		 begin
			 stat_X6_Y0 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd0)
		 begin
			 stat_X7_Y0 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd0)
		 begin
			 stat_X8_Y0 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd0)
		 begin
			 stat_X9_Y0 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd1)
		 begin
			 stat_X0_Y1 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd1)
		 begin
			 stat_X1_Y1 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd1)
		 begin
			 stat_X2_Y1 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd1)
		 begin
			 stat_X3_Y1 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd1)
		 begin
			 stat_X4_Y1 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd1)
		 begin
			 stat_X5_Y1 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd1)
		 begin
			 stat_X6_Y1 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd1)
		 begin
			 stat_X7_Y1 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd1)
		 begin
			 stat_X8_Y1 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd1)
		 begin
			 stat_X9_Y1 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd2)
		 begin
			 stat_X0_Y2 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd2)
		 begin
			 stat_X1_Y2 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd2)
		 begin
			 stat_X2_Y2 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd2)
		 begin
			 stat_X3_Y2 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd2)
		 begin
			 stat_X4_Y2 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd2)
		 begin
			 stat_X5_Y2 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd2)
		 begin
			 stat_X6_Y2 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd2)
		 begin
			 stat_X7_Y2 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd2)
		 begin
			 stat_X8_Y2 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd2)
		 begin
			 stat_X9_Y2 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd3)
		 begin
			 stat_X0_Y3 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd3)
		 begin
			 stat_X1_Y3 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd3)
		 begin
			 stat_X2_Y3 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd3)
		 begin
			 stat_X3_Y3 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd3)
		 begin
			 stat_X4_Y3 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd3)
		 begin
			 stat_X5_Y3 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd3)
		 begin
			 stat_X6_Y3 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd3)
		 begin
			 stat_X7_Y3 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd3)
		 begin
			 stat_X8_Y3 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd3)
		 begin
			 stat_X9_Y3 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd4)
		 begin
			 stat_X0_Y4 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd4)
		 begin
			 stat_X1_Y4 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd4)
		 begin
			 stat_X2_Y4 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd4)
		 begin
			 stat_X3_Y4 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd4)
		 begin
			 stat_X4_Y4 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd4)
		 begin
			 stat_X5_Y4 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd4)
		 begin
			 stat_X6_Y4 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd4)
		 begin
			 stat_X7_Y4 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd4)
		 begin
			 stat_X8_Y4 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd4)
		 begin
			 stat_X9_Y4 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd5)
		 begin
			 stat_X0_Y5 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd5)
		 begin
			 stat_X1_Y5 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd5)
		 begin
			 stat_X2_Y5 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd5)
		 begin
			 stat_X3_Y5 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd5)
		 begin
			 stat_X4_Y5 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd5)
		 begin
			 stat_X5_Y5 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd5)
		 begin
			 stat_X6_Y5 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd5)
		 begin
			 stat_X7_Y5 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd5)
		 begin
			 stat_X8_Y5 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd5)
		 begin
			 stat_X9_Y5 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd6)
		 begin
			 stat_X0_Y6 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd6)
		 begin
			 stat_X1_Y6 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd6)
		 begin
			 stat_X2_Y6 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd6)
		 begin
			 stat_X3_Y6 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd6)
		 begin
			 stat_X4_Y6 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd6)
		 begin
			 stat_X5_Y6 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd6)
		 begin
			 stat_X6_Y6 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd6)
		 begin
			 stat_X7_Y6 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd6)
		 begin
			 stat_X8_Y6 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd6)
		 begin
			 stat_X9_Y6 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd7)
		 begin
			 stat_X0_Y7 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd7)
		 begin
			 stat_X1_Y7 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd7)
		 begin
			 stat_X2_Y7 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd7)
		 begin
			 stat_X3_Y7 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd7)
		 begin
			 stat_X4_Y7 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd7)
		 begin
			 stat_X5_Y7 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd7)
		 begin
			 stat_X6_Y7 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd7)
		 begin
			 stat_X7_Y7 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd7)
		 begin
			 stat_X8_Y7 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd7)
		 begin
			 stat_X9_Y7 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd8)
		 begin
			 stat_X0_Y8 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd8)
		 begin
			 stat_X1_Y8 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd8)
		 begin
			 stat_X2_Y8 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd8)
		 begin
			 stat_X3_Y8 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd8)
		 begin
			 stat_X4_Y8 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd8)
		 begin
			 stat_X5_Y8 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd8)
		 begin
			 stat_X6_Y8 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd8)
		 begin
			 stat_X7_Y8 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd8)
		 begin
			 stat_X8_Y8 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd8)
		 begin
			 stat_X9_Y8 =new_value;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd9)
		 begin
			 stat_X0_Y9 =new_value;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd9)
		 begin
			 stat_X1_Y9 =new_value;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd9)
		 begin
			 stat_X2_Y9 =new_value;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd9)
		 begin
			 stat_X3_Y9 =new_value;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd9)
		 begin
			 stat_X4_Y9 =new_value;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd9)
		 begin
			 stat_X5_Y9 =new_value;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd9)
		 begin
			 stat_X6_Y9 =new_value;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd9)
		 begin
			 stat_X7_Y9 =new_value;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd9)
		 begin
			 stat_X8_Y9 =new_value;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd9)
		 begin
			 stat_X9_Y9 =new_value;
		 end
	 end
	 else
	 begin
		 if(pos_x == 4'd0 && pos_y == 4'd0)
		 begin
			 status= stat_X0_Y0;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd0)
		 begin
			 status= stat_X1_Y0;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd0)
		 begin
			 status= stat_X2_Y0;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd0)
		 begin
			 status= stat_X3_Y0;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd0)
		 begin
			 status= stat_X4_Y0;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd0)
		 begin
			 status= stat_X5_Y0;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd0)
		 begin
			 status= stat_X6_Y0;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd0)
		 begin
			 status= stat_X7_Y0;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd0)
		 begin
			 status= stat_X8_Y0;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd0)
		 begin
			 status= stat_X9_Y0;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd1)
		 begin
			 status= stat_X0_Y1;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd1)
		 begin
			 status= stat_X1_Y1;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd1)
		 begin
			 status= stat_X2_Y1;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd1)
		 begin
			 status= stat_X3_Y1;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd1)
		 begin
			 status= stat_X4_Y1;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd1)
		 begin
			 status= stat_X5_Y1;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd1)
		 begin
			 status= stat_X6_Y1;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd1)
		 begin
			 status= stat_X7_Y1;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd1)
		 begin
			 status= stat_X8_Y1;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd1)
		 begin
			 status= stat_X9_Y1;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd2)
		 begin
			 status= stat_X0_Y2;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd2)
		 begin
			 status= stat_X1_Y2;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd2)
		 begin
			 status= stat_X2_Y2;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd2)
		 begin
			 status= stat_X3_Y2;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd2)
		 begin
			 status= stat_X4_Y2;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd2)
		 begin
			 status= stat_X5_Y2;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd2)
		 begin
			 status= stat_X6_Y2;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd2)
		 begin
			 status= stat_X7_Y2;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd2)
		 begin
			 status= stat_X8_Y2;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd2)
		 begin
			 status= stat_X9_Y2;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd3)
		 begin
			 status= stat_X0_Y3;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd3)
		 begin
			 status= stat_X1_Y3;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd3)
		 begin
			 status= stat_X2_Y3;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd3)
		 begin
			 status= stat_X3_Y3;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd3)
		 begin
			 status= stat_X4_Y3;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd3)
		 begin
			 status= stat_X5_Y3;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd3)
		 begin
			 status= stat_X6_Y3;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd3)
		 begin
			 status= stat_X7_Y3;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd3)
		 begin
			 status= stat_X8_Y3;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd3)
		 begin
			 status= stat_X9_Y3;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd4)
		 begin
			 status= stat_X0_Y4;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd4)
		 begin
			 status= stat_X1_Y4;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd4)
		 begin
			 status= stat_X2_Y4;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd4)
		 begin
			 status= stat_X3_Y4;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd4)
		 begin
			 status= stat_X4_Y4;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd4)
		 begin
			 status= stat_X5_Y4;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd4)
		 begin
			 status= stat_X6_Y4;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd4)
		 begin
			 status= stat_X7_Y4;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd4)
		 begin
			 status= stat_X8_Y4;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd4)
		 begin
			 status= stat_X9_Y4;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd5)
		 begin
			 status= stat_X0_Y5;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd5)
		 begin
			 status= stat_X1_Y5;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd5)
		 begin
			 status= stat_X2_Y5;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd5)
		 begin
			 status= stat_X3_Y5;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd5)
		 begin
			 status= stat_X4_Y5;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd5)
		 begin
			 status= stat_X5_Y5;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd5)
		 begin
			 status= stat_X6_Y5;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd5)
		 begin
			 status= stat_X7_Y5;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd5)
		 begin
			 status= stat_X8_Y5;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd5)
		 begin
			 status= stat_X9_Y5;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd6)
		 begin
			 status= stat_X0_Y6;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd6)
		 begin
			 status= stat_X1_Y6;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd6)
		 begin
			 status= stat_X2_Y6;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd6)
		 begin
			 status= stat_X3_Y6;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd6)
		 begin
			 status= stat_X4_Y6;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd6)
		 begin
			 status= stat_X5_Y6;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd6)
		 begin
			 status= stat_X6_Y6;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd6)
		 begin
			 status= stat_X7_Y6;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd6)
		 begin
			 status= stat_X8_Y6;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd6)
		 begin
			 status= stat_X9_Y6;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd7)
		 begin
			 status= stat_X0_Y7;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd7)
		 begin
			 status= stat_X1_Y7;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd7)
		 begin
			 status= stat_X2_Y7;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd7)
		 begin
			 status= stat_X3_Y7;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd7)
		 begin
			 status= stat_X4_Y7;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd7)
		 begin
			 status= stat_X5_Y7;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd7)
		 begin
			 status= stat_X6_Y7;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd7)
		 begin
			 status= stat_X7_Y7;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd7)
		 begin
			 status= stat_X8_Y7;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd7)
		 begin
			 status= stat_X9_Y7;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd8)
		 begin
			 status= stat_X0_Y8;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd8)
		 begin
			 status= stat_X1_Y8;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd8)
		 begin
			 status= stat_X2_Y8;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd8)
		 begin
			 status= stat_X3_Y8;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd8)
		 begin
			 status= stat_X4_Y8;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd8)
		 begin
			 status= stat_X5_Y8;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd8)
		 begin
			 status= stat_X6_Y8;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd8)
		 begin
			 status= stat_X7_Y8;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd8)
		 begin
			 status= stat_X8_Y8;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd8)
		 begin
			 status= stat_X9_Y8;
		 end
		 else if(pos_x == 4'd0 && pos_y == 4'd9)
		 begin
			 status= stat_X0_Y9;
		 end
		 else if(pos_x == 4'd1 && pos_y == 4'd9)
		 begin
			 status= stat_X1_Y9;
		 end
		 else if(pos_x == 4'd2 && pos_y == 4'd9)
		 begin
			 status= stat_X2_Y9;
		 end
		 else if(pos_x == 4'd3 && pos_y == 4'd9)
		 begin
			 status= stat_X3_Y9;
		 end
		 else if(pos_x == 4'd4 && pos_y == 4'd9)
		 begin
			 status= stat_X4_Y9;
		 end
		 else if(pos_x == 4'd5 && pos_y == 4'd9)
		 begin
			 status= stat_X5_Y9;
		 end
		 else if(pos_x == 4'd6 && pos_y == 4'd9)
		 begin
			 status= stat_X6_Y9;
		 end
		 else if(pos_x == 4'd7 && pos_y == 4'd9)
		 begin
			 status= stat_X7_Y9;
		 end
		 else if(pos_x == 4'd8 && pos_y == 4'd9)
		 begin
			 status= stat_X8_Y9;
		 end
		 else if(pos_x == 4'd9 && pos_y == 4'd9)
		 begin
			 status= stat_X9_Y9;
		 end
	 end
end
endmodule
