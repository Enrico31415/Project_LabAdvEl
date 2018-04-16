// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da memoryGenerator.py
module cell_io(
 	 clk_in,
	 cell_x,
	 cell_y,
	 new_value,

	 status
);
input clk_in;
input [1:0]new_value;
input [3:0]cell_x;
input [3:0]cell_y;
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
	if(cell_x == 4'd0 && cell_y == 4'd0)
	begin
		if(stat_X0_Y0 !=new_value)
		begin
			stat_X0_Y0 =new_value;
		end
		status=stat_X0_Y0;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd0)
	begin
		if(stat_X1_Y0 !=new_value)
		begin
			stat_X1_Y0 =new_value;
		end
		status=stat_X1_Y0;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd0)
	begin
		if(stat_X2_Y0 !=new_value)
		begin
			stat_X2_Y0 =new_value;
		end
		status=stat_X2_Y0;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd0)
	begin
		if(stat_X3_Y0 !=new_value)
		begin
			stat_X3_Y0 =new_value;
		end
		status=stat_X3_Y0;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd0)
	begin
		if(stat_X4_Y0 !=new_value)
		begin
			stat_X4_Y0 =new_value;
		end
		status=stat_X4_Y0;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd0)
	begin
		if(stat_X5_Y0 !=new_value)
		begin
			stat_X5_Y0 =new_value;
		end
		status=stat_X5_Y0;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd0)
	begin
		if(stat_X6_Y0 !=new_value)
		begin
			stat_X6_Y0 =new_value;
		end
		status=stat_X6_Y0;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd0)
	begin
		if(stat_X7_Y0 !=new_value)
		begin
			stat_X7_Y0 =new_value;
		end
		status=stat_X7_Y0;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd0)
	begin
		if(stat_X8_Y0 !=new_value)
		begin
			stat_X8_Y0 =new_value;
		end
		status=stat_X8_Y0;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd0)
	begin
		if(stat_X9_Y0 !=new_value)
		begin
			stat_X9_Y0 =new_value;
		end
		status=stat_X9_Y0;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd1)
	begin
		if(stat_X0_Y1 !=new_value)
		begin
			stat_X0_Y1 =new_value;
		end
		status=stat_X0_Y1;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd1)
	begin
		if(stat_X1_Y1 !=new_value)
		begin
			stat_X1_Y1 =new_value;
		end
		status=stat_X1_Y1;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd1)
	begin
		if(stat_X2_Y1 !=new_value)
		begin
			stat_X2_Y1 =new_value;
		end
		status=stat_X2_Y1;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd1)
	begin
		if(stat_X3_Y1 !=new_value)
		begin
			stat_X3_Y1 =new_value;
		end
		status=stat_X3_Y1;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd1)
	begin
		if(stat_X4_Y1 !=new_value)
		begin
			stat_X4_Y1 =new_value;
		end
		status=stat_X4_Y1;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd1)
	begin
		if(stat_X5_Y1 !=new_value)
		begin
			stat_X5_Y1 =new_value;
		end
		status=stat_X5_Y1;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd1)
	begin
		if(stat_X6_Y1 !=new_value)
		begin
			stat_X6_Y1 =new_value;
		end
		status=stat_X6_Y1;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd1)
	begin
		if(stat_X7_Y1 !=new_value)
		begin
			stat_X7_Y1 =new_value;
		end
		status=stat_X7_Y1;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd1)
	begin
		if(stat_X8_Y1 !=new_value)
		begin
			stat_X8_Y1 =new_value;
		end
		status=stat_X8_Y1;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd1)
	begin
		if(stat_X9_Y1 !=new_value)
		begin
			stat_X9_Y1 =new_value;
		end
		status=stat_X9_Y1;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd2)
	begin
		if(stat_X0_Y2 !=new_value)
		begin
			stat_X0_Y2 =new_value;
		end
		status=stat_X0_Y2;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd2)
	begin
		if(stat_X1_Y2 !=new_value)
		begin
			stat_X1_Y2 =new_value;
		end
		status=stat_X1_Y2;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd2)
	begin
		if(stat_X2_Y2 !=new_value)
		begin
			stat_X2_Y2 =new_value;
		end
		status=stat_X2_Y2;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd2)
	begin
		if(stat_X3_Y2 !=new_value)
		begin
			stat_X3_Y2 =new_value;
		end
		status=stat_X3_Y2;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd2)
	begin
		if(stat_X4_Y2 !=new_value)
		begin
			stat_X4_Y2 =new_value;
		end
		status=stat_X4_Y2;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd2)
	begin
		if(stat_X5_Y2 !=new_value)
		begin
			stat_X5_Y2 =new_value;
		end
		status=stat_X5_Y2;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd2)
	begin
		if(stat_X6_Y2 !=new_value)
		begin
			stat_X6_Y2 =new_value;
		end
		status=stat_X6_Y2;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd2)
	begin
		if(stat_X7_Y2 !=new_value)
		begin
			stat_X7_Y2 =new_value;
		end
		status=stat_X7_Y2;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd2)
	begin
		if(stat_X8_Y2 !=new_value)
		begin
			stat_X8_Y2 =new_value;
		end
		status=stat_X8_Y2;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd2)
	begin
		if(stat_X9_Y2 !=new_value)
		begin
			stat_X9_Y2 =new_value;
		end
		status=stat_X9_Y2;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd3)
	begin
		if(stat_X0_Y3 !=new_value)
		begin
			stat_X0_Y3 =new_value;
		end
		status=stat_X0_Y3;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd3)
	begin
		if(stat_X1_Y3 !=new_value)
		begin
			stat_X1_Y3 =new_value;
		end
		status=stat_X1_Y3;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd3)
	begin
		if(stat_X2_Y3 !=new_value)
		begin
			stat_X2_Y3 =new_value;
		end
		status=stat_X2_Y3;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd3)
	begin
		if(stat_X3_Y3 !=new_value)
		begin
			stat_X3_Y3 =new_value;
		end
		status=stat_X3_Y3;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd3)
	begin
		if(stat_X4_Y3 !=new_value)
		begin
			stat_X4_Y3 =new_value;
		end
		status=stat_X4_Y3;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd3)
	begin
		if(stat_X5_Y3 !=new_value)
		begin
			stat_X5_Y3 =new_value;
		end
		status=stat_X5_Y3;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd3)
	begin
		if(stat_X6_Y3 !=new_value)
		begin
			stat_X6_Y3 =new_value;
		end
		status=stat_X6_Y3;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd3)
	begin
		if(stat_X7_Y3 !=new_value)
		begin
			stat_X7_Y3 =new_value;
		end
		status=stat_X7_Y3;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd3)
	begin
		if(stat_X8_Y3 !=new_value)
		begin
			stat_X8_Y3 =new_value;
		end
		status=stat_X8_Y3;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd3)
	begin
		if(stat_X9_Y3 !=new_value)
		begin
			stat_X9_Y3 =new_value;
		end
		status=stat_X9_Y3;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd4)
	begin
		if(stat_X0_Y4 !=new_value)
		begin
			stat_X0_Y4 =new_value;
		end
		status=stat_X0_Y4;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd4)
	begin
		if(stat_X1_Y4 !=new_value)
		begin
			stat_X1_Y4 =new_value;
		end
		status=stat_X1_Y4;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd4)
	begin
		if(stat_X2_Y4 !=new_value)
		begin
			stat_X2_Y4 =new_value;
		end
		status=stat_X2_Y4;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd4)
	begin
		if(stat_X3_Y4 !=new_value)
		begin
			stat_X3_Y4 =new_value;
		end
		status=stat_X3_Y4;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd4)
	begin
		if(stat_X4_Y4 !=new_value)
		begin
			stat_X4_Y4 =new_value;
		end
		status=stat_X4_Y4;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd4)
	begin
		if(stat_X5_Y4 !=new_value)
		begin
			stat_X5_Y4 =new_value;
		end
		status=stat_X5_Y4;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd4)
	begin
		if(stat_X6_Y4 !=new_value)
		begin
			stat_X6_Y4 =new_value;
		end
		status=stat_X6_Y4;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd4)
	begin
		if(stat_X7_Y4 !=new_value)
		begin
			stat_X7_Y4 =new_value;
		end
		status=stat_X7_Y4;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd4)
	begin
		if(stat_X8_Y4 !=new_value)
		begin
			stat_X8_Y4 =new_value;
		end
		status=stat_X8_Y4;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd4)
	begin
		if(stat_X9_Y4 !=new_value)
		begin
			stat_X9_Y4 =new_value;
		end
		status=stat_X9_Y4;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd5)
	begin
		if(stat_X0_Y5 !=new_value)
		begin
			stat_X0_Y5 =new_value;
		end
		status=stat_X0_Y5;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd5)
	begin
		if(stat_X1_Y5 !=new_value)
		begin
			stat_X1_Y5 =new_value;
		end
		status=stat_X1_Y5;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd5)
	begin
		if(stat_X2_Y5 !=new_value)
		begin
			stat_X2_Y5 =new_value;
		end
		status=stat_X2_Y5;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd5)
	begin
		if(stat_X3_Y5 !=new_value)
		begin
			stat_X3_Y5 =new_value;
		end
		status=stat_X3_Y5;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd5)
	begin
		if(stat_X4_Y5 !=new_value)
		begin
			stat_X4_Y5 =new_value;
		end
		status=stat_X4_Y5;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd5)
	begin
		if(stat_X5_Y5 !=new_value)
		begin
			stat_X5_Y5 =new_value;
		end
		status=stat_X5_Y5;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd5)
	begin
		if(stat_X6_Y5 !=new_value)
		begin
			stat_X6_Y5 =new_value;
		end
		status=stat_X6_Y5;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd5)
	begin
		if(stat_X7_Y5 !=new_value)
		begin
			stat_X7_Y5 =new_value;
		end
		status=stat_X7_Y5;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd5)
	begin
		if(stat_X8_Y5 !=new_value)
		begin
			stat_X8_Y5 =new_value;
		end
		status=stat_X8_Y5;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd5)
	begin
		if(stat_X9_Y5 !=new_value)
		begin
			stat_X9_Y5 =new_value;
		end
		status=stat_X9_Y5;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd6)
	begin
		if(stat_X0_Y6 !=new_value)
		begin
			stat_X0_Y6 =new_value;
		end
		status=stat_X0_Y6;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd6)
	begin
		if(stat_X1_Y6 !=new_value)
		begin
			stat_X1_Y6 =new_value;
		end
		status=stat_X1_Y6;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd6)
	begin
		if(stat_X2_Y6 !=new_value)
		begin
			stat_X2_Y6 =new_value;
		end
		status=stat_X2_Y6;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd6)
	begin
		if(stat_X3_Y6 !=new_value)
		begin
			stat_X3_Y6 =new_value;
		end
		status=stat_X3_Y6;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd6)
	begin
		if(stat_X4_Y6 !=new_value)
		begin
			stat_X4_Y6 =new_value;
		end
		status=stat_X4_Y6;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd6)
	begin
		if(stat_X5_Y6 !=new_value)
		begin
			stat_X5_Y6 =new_value;
		end
		status=stat_X5_Y6;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd6)
	begin
		if(stat_X6_Y6 !=new_value)
		begin
			stat_X6_Y6 =new_value;
		end
		status=stat_X6_Y6;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd6)
	begin
		if(stat_X7_Y6 !=new_value)
		begin
			stat_X7_Y6 =new_value;
		end
		status=stat_X7_Y6;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd6)
	begin
		if(stat_X8_Y6 !=new_value)
		begin
			stat_X8_Y6 =new_value;
		end
		status=stat_X8_Y6;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd6)
	begin
		if(stat_X9_Y6 !=new_value)
		begin
			stat_X9_Y6 =new_value;
		end
		status=stat_X9_Y6;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd7)
	begin
		if(stat_X0_Y7 !=new_value)
		begin
			stat_X0_Y7 =new_value;
		end
		status=stat_X0_Y7;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd7)
	begin
		if(stat_X1_Y7 !=new_value)
		begin
			stat_X1_Y7 =new_value;
		end
		status=stat_X1_Y7;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd7)
	begin
		if(stat_X2_Y7 !=new_value)
		begin
			stat_X2_Y7 =new_value;
		end
		status=stat_X2_Y7;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd7)
	begin
		if(stat_X3_Y7 !=new_value)
		begin
			stat_X3_Y7 =new_value;
		end
		status=stat_X3_Y7;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd7)
	begin
		if(stat_X4_Y7 !=new_value)
		begin
			stat_X4_Y7 =new_value;
		end
		status=stat_X4_Y7;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd7)
	begin
		if(stat_X5_Y7 !=new_value)
		begin
			stat_X5_Y7 =new_value;
		end
		status=stat_X5_Y7;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd7)
	begin
		if(stat_X6_Y7 !=new_value)
		begin
			stat_X6_Y7 =new_value;
		end
		status=stat_X6_Y7;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd7)
	begin
		if(stat_X7_Y7 !=new_value)
		begin
			stat_X7_Y7 =new_value;
		end
		status=stat_X7_Y7;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd7)
	begin
		if(stat_X8_Y7 !=new_value)
		begin
			stat_X8_Y7 =new_value;
		end
		status=stat_X8_Y7;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd7)
	begin
		if(stat_X9_Y7 !=new_value)
		begin
			stat_X9_Y7 =new_value;
		end
		status=stat_X9_Y7;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd8)
	begin
		if(stat_X0_Y8 !=new_value)
		begin
			stat_X0_Y8 =new_value;
		end
		status=stat_X0_Y8;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd8)
	begin
		if(stat_X1_Y8 !=new_value)
		begin
			stat_X1_Y8 =new_value;
		end
		status=stat_X1_Y8;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd8)
	begin
		if(stat_X2_Y8 !=new_value)
		begin
			stat_X2_Y8 =new_value;
		end
		status=stat_X2_Y8;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd8)
	begin
		if(stat_X3_Y8 !=new_value)
		begin
			stat_X3_Y8 =new_value;
		end
		status=stat_X3_Y8;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd8)
	begin
		if(stat_X4_Y8 !=new_value)
		begin
			stat_X4_Y8 =new_value;
		end
		status=stat_X4_Y8;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd8)
	begin
		if(stat_X5_Y8 !=new_value)
		begin
			stat_X5_Y8 =new_value;
		end
		status=stat_X5_Y8;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd8)
	begin
		if(stat_X6_Y8 !=new_value)
		begin
			stat_X6_Y8 =new_value;
		end
		status=stat_X6_Y8;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd8)
	begin
		if(stat_X7_Y8 !=new_value)
		begin
			stat_X7_Y8 =new_value;
		end
		status=stat_X7_Y8;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd8)
	begin
		if(stat_X8_Y8 !=new_value)
		begin
			stat_X8_Y8 =new_value;
		end
		status=stat_X8_Y8;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd8)
	begin
		if(stat_X9_Y8 !=new_value)
		begin
			stat_X9_Y8 =new_value;
		end
		status=stat_X9_Y8;
	end
	else if(cell_x == 4'd0 && cell_y == 4'd9)
	begin
		if(stat_X0_Y9 !=new_value)
		begin
			stat_X0_Y9 =new_value;
		end
		status=stat_X0_Y9;
	end
	else if(cell_x == 4'd1 && cell_y == 4'd9)
	begin
		if(stat_X1_Y9 !=new_value)
		begin
			stat_X1_Y9 =new_value;
		end
		status=stat_X1_Y9;
	end
	else if(cell_x == 4'd2 && cell_y == 4'd9)
	begin
		if(stat_X2_Y9 !=new_value)
		begin
			stat_X2_Y9 =new_value;
		end
		status=stat_X2_Y9;
	end
	else if(cell_x == 4'd3 && cell_y == 4'd9)
	begin
		if(stat_X3_Y9 !=new_value)
		begin
			stat_X3_Y9 =new_value;
		end
		status=stat_X3_Y9;
	end
	else if(cell_x == 4'd4 && cell_y == 4'd9)
	begin
		if(stat_X4_Y9 !=new_value)
		begin
			stat_X4_Y9 =new_value;
		end
		status=stat_X4_Y9;
	end
	else if(cell_x == 4'd5 && cell_y == 4'd9)
	begin
		if(stat_X5_Y9 !=new_value)
		begin
			stat_X5_Y9 =new_value;
		end
		status=stat_X5_Y9;
	end
	else if(cell_x == 4'd6 && cell_y == 4'd9)
	begin
		if(stat_X6_Y9 !=new_value)
		begin
			stat_X6_Y9 =new_value;
		end
		status=stat_X6_Y9;
	end
	else if(cell_x == 4'd7 && cell_y == 4'd9)
	begin
		if(stat_X7_Y9 !=new_value)
		begin
			stat_X7_Y9 =new_value;
		end
		status=stat_X7_Y9;
	end
	else if(cell_x == 4'd8 && cell_y == 4'd9)
	begin
		if(stat_X8_Y9 !=new_value)
		begin
			stat_X8_Y9 =new_value;
		end
		status=stat_X8_Y9;
	end
	else if(cell_x == 4'd9 && cell_y == 4'd9)
	begin
		if(stat_X9_Y9 !=new_value)
		begin
			stat_X9_Y9 =new_value;
		end
		status=stat_X9_Y9;
	end
end
endmodule
