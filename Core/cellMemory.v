// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da memoryGenerator.py
module cell_io(
 	 clk_in,
	 mouse_cell_x, //cella del mouse x 
	 mouse_cell_y, //cella del mouse y
	 pointer_cell_x, //cella del puntatore(pennello) x
	 pointer_cell_y, //idem y
	 we, //Write enable, se deve scrivere
	 new_value, //valore da scrivere
	 play_status, //stato attuale del gioco (schieramento, shooting, etc)
	 direction, //direzione della nave 
	 dimension, //dimensione della nave 

	 status, //stato ritornato dal mouse
	 status_pointed_cell, //stato ritornato dal puntantore
	 ship_placed //se ha scritto la nave in memoria
);
input clk_in;
input we;
input [4:0] new_value;
input [2:0] play_status;
input direction;
input [3:0] mouse_cell_x;
input [3:0] mouse_cell_y;
input [3:0] pointer_cell_x;
input [3:0] pointer_cell_y;
input [3:0] dimension;
output reg [4:0] status;
output reg [4:0] status_pointed_cell;
output reg ship_placed = 0;
// registri del tipo stat_X(posizione x)_Y(posizione y)
reg [4:0] stat_X0_Y0 = 5'b00000;
reg [4:0] stat_X1_Y0 = 5'b00000;
reg [4:0] stat_X2_Y0 = 5'b00000;
reg [4:0] stat_X3_Y0 = 5'b00000;
reg [4:0] stat_X4_Y0 = 5'b00000;
reg [4:0] stat_X5_Y0 = 5'b00000;
reg [4:0] stat_X6_Y0 = 5'b00000;
reg [4:0] stat_X7_Y0 = 5'b00000;
reg [4:0] stat_X8_Y0 = 5'b00000;
reg [4:0] stat_X9_Y0 = 5'b00000;
reg [4:0] stat_X0_Y1 = 5'b00000;
reg [4:0] stat_X1_Y1 = 5'b00000;
reg [4:0] stat_X2_Y1 = 5'b00000;
reg [4:0] stat_X3_Y1 = 5'b00000;
reg [4:0] stat_X4_Y1 = 5'b00000;
reg [4:0] stat_X5_Y1 = 5'b00000;
reg [4:0] stat_X6_Y1 = 5'b00000;
reg [4:0] stat_X7_Y1 = 5'b00000;
reg [4:0] stat_X8_Y1 = 5'b00000;
reg [4:0] stat_X9_Y1 = 5'b00000;
reg [4:0] stat_X0_Y2 = 5'b00000;
reg [4:0] stat_X1_Y2 = 5'b00000;
reg [4:0] stat_X2_Y2 = 5'b00000;
reg [4:0] stat_X3_Y2 = 5'b00000;
reg [4:0] stat_X4_Y2 = 5'b00000;
reg [4:0] stat_X5_Y2 = 5'b00000;
reg [4:0] stat_X6_Y2 = 5'b00000;
reg [4:0] stat_X7_Y2 = 5'b00000;
reg [4:0] stat_X8_Y2 = 5'b00000;
reg [4:0] stat_X9_Y2 = 5'b00000;
reg [4:0] stat_X0_Y3 = 5'b00000;
reg [4:0] stat_X1_Y3 = 5'b00000;
reg [4:0] stat_X2_Y3 = 5'b00000;
reg [4:0] stat_X3_Y3 = 5'b00000;
reg [4:0] stat_X4_Y3 = 5'b00000;
reg [4:0] stat_X5_Y3 = 5'b00000;
reg [4:0] stat_X6_Y3 = 5'b00000;
reg [4:0] stat_X7_Y3 = 5'b00000;
reg [4:0] stat_X8_Y3 = 5'b00000;
reg [4:0] stat_X9_Y3 = 5'b00000;
reg [4:0] stat_X0_Y4 = 5'b00000;
reg [4:0] stat_X1_Y4 = 5'b00000;
reg [4:0] stat_X2_Y4 = 5'b00000;
reg [4:0] stat_X3_Y4 = 5'b00000;
reg [4:0] stat_X4_Y4 = 5'b00000;
reg [4:0] stat_X5_Y4 = 5'b00000;
reg [4:0] stat_X6_Y4 = 5'b00000;
reg [4:0] stat_X7_Y4 = 5'b00000;
reg [4:0] stat_X8_Y4 = 5'b00000;
reg [4:0] stat_X9_Y4 = 5'b00000;
reg [4:0] stat_X0_Y5 = 5'b00000;
reg [4:0] stat_X1_Y5 = 5'b00000;
reg [4:0] stat_X2_Y5 = 5'b00000;
reg [4:0] stat_X3_Y5 = 5'b00000;
reg [4:0] stat_X4_Y5 = 5'b00000;
reg [4:0] stat_X5_Y5 = 5'b00000;
reg [4:0] stat_X6_Y5 = 5'b00000;
reg [4:0] stat_X7_Y5 = 5'b00000;
reg [4:0] stat_X8_Y5 = 5'b00000;
reg [4:0] stat_X9_Y5 = 5'b00000;
reg [4:0] stat_X0_Y6 = 5'b00000;
reg [4:0] stat_X1_Y6 = 5'b00000;
reg [4:0] stat_X2_Y6 = 5'b00000;
reg [4:0] stat_X3_Y6 = 5'b00000;
reg [4:0] stat_X4_Y6 = 5'b00000;
reg [4:0] stat_X5_Y6 = 5'b00000;
reg [4:0] stat_X6_Y6 = 5'b00000;
reg [4:0] stat_X7_Y6 = 5'b00000;
reg [4:0] stat_X8_Y6 = 5'b00000;
reg [4:0] stat_X9_Y6 = 5'b00000;
reg [4:0] stat_X0_Y7 = 5'b00000;
reg [4:0] stat_X1_Y7 = 5'b00000;
reg [4:0] stat_X2_Y7 = 5'b00000;
reg [4:0] stat_X3_Y7 = 5'b00000;
reg [4:0] stat_X4_Y7 = 5'b00000;
reg [4:0] stat_X5_Y7 = 5'b00000;
reg [4:0] stat_X6_Y7 = 5'b00000;
reg [4:0] stat_X7_Y7 = 5'b00000;
reg [4:0] stat_X8_Y7 = 5'b00000;
reg [4:0] stat_X9_Y7 = 5'b00000;
reg [4:0] stat_X0_Y8 = 5'b00000;
reg [4:0] stat_X1_Y8 = 5'b00000;
reg [4:0] stat_X2_Y8 = 5'b00000;
reg [4:0] stat_X3_Y8 = 5'b00000;
reg [4:0] stat_X4_Y8 = 5'b00000;
reg [4:0] stat_X5_Y8 = 5'b00000;
reg [4:0] stat_X6_Y8 = 5'b00000;
reg [4:0] stat_X7_Y8 = 5'b00000;
reg [4:0] stat_X8_Y8 = 5'b00000;
reg [4:0] stat_X9_Y8 = 5'b00000;
reg [4:0] stat_X0_Y9 = 5'b00000;
reg [4:0] stat_X1_Y9 = 5'b00000;
reg [4:0] stat_X2_Y9 = 5'b00000;
reg [4:0] stat_X3_Y9 = 5'b00000;
reg [4:0] stat_X4_Y9 = 5'b00000;
reg [4:0] stat_X5_Y9 = 5'b00000;
reg [4:0] stat_X6_Y9 = 5'b00000;
reg [4:0] stat_X7_Y9 = 5'b00000;
reg [4:0] stat_X8_Y9 = 5'b00000;
reg [4:0] stat_X9_Y9 = 5'b00000;
// operazioni di scrittura/lettura dal mouse
always @ (negedge clk_in)
begin
//se e' il turno del giocatore
	if (play_status== 2'b01)
	begin
		if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X0_Y0 =new_value;
			end
			status=stat_X0_Y0;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X1_Y0 =new_value;
			end
			status=stat_X1_Y0;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X2_Y0 =new_value;
			end
			status=stat_X2_Y0;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X3_Y0 =new_value;
			end
			status=stat_X3_Y0;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X4_Y0 =new_value;
			end
			status=stat_X4_Y0;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X5_Y0 =new_value;
			end
			status=stat_X5_Y0;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X6_Y0 =new_value;
			end
			status=stat_X6_Y0;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X7_Y0 =new_value;
			end
			status=stat_X7_Y0;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X8_Y0 =new_value;
			end
			status=stat_X8_Y0;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd0)
		begin
			if(we)
			begin
				stat_X9_Y0 =new_value;
			end
			status=stat_X9_Y0;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X0_Y1 =new_value;
			end
			status=stat_X0_Y1;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X1_Y1 =new_value;
			end
			status=stat_X1_Y1;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X2_Y1 =new_value;
			end
			status=stat_X2_Y1;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X3_Y1 =new_value;
			end
			status=stat_X3_Y1;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X4_Y1 =new_value;
			end
			status=stat_X4_Y1;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X5_Y1 =new_value;
			end
			status=stat_X5_Y1;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X6_Y1 =new_value;
			end
			status=stat_X6_Y1;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X7_Y1 =new_value;
			end
			status=stat_X7_Y1;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X8_Y1 =new_value;
			end
			status=stat_X8_Y1;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd1)
		begin
			if(we)
			begin
				stat_X9_Y1 =new_value;
			end
			status=stat_X9_Y1;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X0_Y2 =new_value;
			end
			status=stat_X0_Y2;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X1_Y2 =new_value;
			end
			status=stat_X1_Y2;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X2_Y2 =new_value;
			end
			status=stat_X2_Y2;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X3_Y2 =new_value;
			end
			status=stat_X3_Y2;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X4_Y2 =new_value;
			end
			status=stat_X4_Y2;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X5_Y2 =new_value;
			end
			status=stat_X5_Y2;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X6_Y2 =new_value;
			end
			status=stat_X6_Y2;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X7_Y2 =new_value;
			end
			status=stat_X7_Y2;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X8_Y2 =new_value;
			end
			status=stat_X8_Y2;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd2)
		begin
			if(we)
			begin
				stat_X9_Y2 =new_value;
			end
			status=stat_X9_Y2;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X0_Y3 =new_value;
			end
			status=stat_X0_Y3;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X1_Y3 =new_value;
			end
			status=stat_X1_Y3;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X2_Y3 =new_value;
			end
			status=stat_X2_Y3;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X3_Y3 =new_value;
			end
			status=stat_X3_Y3;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X4_Y3 =new_value;
			end
			status=stat_X4_Y3;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X5_Y3 =new_value;
			end
			status=stat_X5_Y3;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X6_Y3 =new_value;
			end
			status=stat_X6_Y3;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X7_Y3 =new_value;
			end
			status=stat_X7_Y3;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X8_Y3 =new_value;
			end
			status=stat_X8_Y3;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd3)
		begin
			if(we)
			begin
				stat_X9_Y3 =new_value;
			end
			status=stat_X9_Y3;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X0_Y4 =new_value;
			end
			status=stat_X0_Y4;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X1_Y4 =new_value;
			end
			status=stat_X1_Y4;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X2_Y4 =new_value;
			end
			status=stat_X2_Y4;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X3_Y4 =new_value;
			end
			status=stat_X3_Y4;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X4_Y4 =new_value;
			end
			status=stat_X4_Y4;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X5_Y4 =new_value;
			end
			status=stat_X5_Y4;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X6_Y4 =new_value;
			end
			status=stat_X6_Y4;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X7_Y4 =new_value;
			end
			status=stat_X7_Y4;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X8_Y4 =new_value;
			end
			status=stat_X8_Y4;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd4)
		begin
			if(we)
			begin
				stat_X9_Y4 =new_value;
			end
			status=stat_X9_Y4;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X0_Y5 =new_value;
			end
			status=stat_X0_Y5;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X1_Y5 =new_value;
			end
			status=stat_X1_Y5;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X2_Y5 =new_value;
			end
			status=stat_X2_Y5;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X3_Y5 =new_value;
			end
			status=stat_X3_Y5;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X4_Y5 =new_value;
			end
			status=stat_X4_Y5;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X5_Y5 =new_value;
			end
			status=stat_X5_Y5;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X6_Y5 =new_value;
			end
			status=stat_X6_Y5;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X7_Y5 =new_value;
			end
			status=stat_X7_Y5;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X8_Y5 =new_value;
			end
			status=stat_X8_Y5;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd5)
		begin
			if(we)
			begin
				stat_X9_Y5 =new_value;
			end
			status=stat_X9_Y5;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X0_Y6 =new_value;
			end
			status=stat_X0_Y6;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X1_Y6 =new_value;
			end
			status=stat_X1_Y6;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X2_Y6 =new_value;
			end
			status=stat_X2_Y6;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X3_Y6 =new_value;
			end
			status=stat_X3_Y6;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X4_Y6 =new_value;
			end
			status=stat_X4_Y6;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X5_Y6 =new_value;
			end
			status=stat_X5_Y6;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X6_Y6 =new_value;
			end
			status=stat_X6_Y6;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X7_Y6 =new_value;
			end
			status=stat_X7_Y6;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X8_Y6 =new_value;
			end
			status=stat_X8_Y6;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd6)
		begin
			if(we)
			begin
				stat_X9_Y6 =new_value;
			end
			status=stat_X9_Y6;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X0_Y7 =new_value;
			end
			status=stat_X0_Y7;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X1_Y7 =new_value;
			end
			status=stat_X1_Y7;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X2_Y7 =new_value;
			end
			status=stat_X2_Y7;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X3_Y7 =new_value;
			end
			status=stat_X3_Y7;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X4_Y7 =new_value;
			end
			status=stat_X4_Y7;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X5_Y7 =new_value;
			end
			status=stat_X5_Y7;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X6_Y7 =new_value;
			end
			status=stat_X6_Y7;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X7_Y7 =new_value;
			end
			status=stat_X7_Y7;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X8_Y7 =new_value;
			end
			status=stat_X8_Y7;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd7)
		begin
			if(we)
			begin
				stat_X9_Y7 =new_value;
			end
			status=stat_X9_Y7;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X0_Y8 =new_value;
			end
			status=stat_X0_Y8;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X1_Y8 =new_value;
			end
			status=stat_X1_Y8;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X2_Y8 =new_value;
			end
			status=stat_X2_Y8;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X3_Y8 =new_value;
			end
			status=stat_X3_Y8;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X4_Y8 =new_value;
			end
			status=stat_X4_Y8;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X5_Y8 =new_value;
			end
			status=stat_X5_Y8;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X6_Y8 =new_value;
			end
			status=stat_X6_Y8;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X7_Y8 =new_value;
			end
			status=stat_X7_Y8;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X8_Y8 =new_value;
			end
			status=stat_X8_Y8;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd8)
		begin
			if(we)
			begin
				stat_X9_Y8 =new_value;
			end
			status=stat_X9_Y8;
		end
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X0_Y9 =new_value;
			end
			status=stat_X0_Y9;
		end
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X1_Y9 =new_value;
			end
			status=stat_X1_Y9;
		end
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X2_Y9 =new_value;
			end
			status=stat_X2_Y9;
		end
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X3_Y9 =new_value;
			end
			status=stat_X3_Y9;
		end
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X4_Y9 =new_value;
			end
			status=stat_X4_Y9;
		end
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X5_Y9 =new_value;
			end
			status=stat_X5_Y9;
		end
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X6_Y9 =new_value;
			end
			status=stat_X6_Y9;
		end
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X7_Y9 =new_value;
			end
			status=stat_X7_Y9;
		end
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X8_Y9 =new_value;
			end
			status=stat_X8_Y9;
		end
		else if(mouse_cell_x == 4'd9 && mouse_cell_y == 4'd9)
		begin
			if(we)
			begin
				stat_X9_Y9 =new_value;
			end
			status=stat_X9_Y9;
		end
	end
	//se e' il turnio dello schieramento
	if (play_status== 2'b00)
	begin
		//controllo la posizione: capisco in che cella sono
		if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y0= 5'd2;
						end
						else if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y0= 5'd2;
						end
						else if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y0= 5'd2;
						end
						else if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y0= 5'd2;
						end
						else if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y0= 5'd1;
						end
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y1= 5'd2;
						end
						else if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y1= 5'd2;
						end
						else if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y1= 5'd2;
						end
						else if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y1= 5'd2;
						end
						else if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y1= 5'd1;
						end
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y2= 5'd2;
						end
						else if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y2= 5'd2;
						end
						else if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y2= 5'd2;
						end
						else if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y2= 5'd2;
						end
						else if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y2= 5'd1;
						end
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y3= 5'd2;
						end
						else if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y3= 5'd2;
						end
						else if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y3= 5'd2;
						end
						else if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y3= 5'd2;
						end
						else if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y3= 5'd1;
						end
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y4= 5'd2;
						end
						else if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y4= 5'd2;
						end
						else if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y4= 5'd2;
						end
						else if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y4= 5'd2;
						end
						else if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y4= 5'd1;
						end
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y5= 5'd2;
						end
						else if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y5= 5'd2;
						end
						else if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y5= 5'd2;
						end
						else if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y5= 5'd2;
						end
						else if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y5= 5'd1;
						end
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y6= 5'd2;
						end
						else if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y6= 5'd2;
						end
						else if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y6= 5'd2;
						end
						else if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y6= 5'd2;
						end
						else if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y6= 5'd1;
						end
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y7= 5'd2;
						end
						else if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y7= 5'd2;
						end
						else if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y7= 5'd2;
						end
						else if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y7= 5'd2;
						end
						else if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y7= 5'd1;
						end
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd0 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y8= 5'd2;
						end
						else if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y8= 5'd2;
						end
						else if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y8= 5'd2;
						end
						else if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X1_Y8= 5'd2;
						end
						else if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X0_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y8= 5'd1;
						end
						if(stat_X0_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X0_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y0= 5'd2;
						end
						else if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y0= 5'd1;
						end
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y1= 5'd2;
						end
						else if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y1= 5'd1;
						end
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y2= 5'd2;
						end
						else if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y2= 5'd1;
						end
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y3= 5'd2;
						end
						else if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y3= 5'd1;
						end
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y4= 5'd2;
						end
						else if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y4= 5'd1;
						end
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y5= 5'd2;
						end
						else if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y5= 5'd1;
						end
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y6= 5'd2;
						end
						else if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y6= 5'd1;
						end
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y7= 5'd2;
						end
						else if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y7= 5'd1;
						end
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd1 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X2_Y8= 5'd2;
						end
						else if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X1_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y8= 5'd1;
						end
						if(stat_X1_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X1_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y0= 5'd2;
						end
						else if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y0= 5'd1;
						end
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y1= 5'd2;
						end
						else if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y1= 5'd1;
						end
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y2= 5'd2;
						end
						else if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y2= 5'd1;
						end
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y3= 5'd2;
						end
						else if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y3= 5'd1;
						end
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y4= 5'd2;
						end
						else if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y4= 5'd1;
						end
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y5= 5'd2;
						end
						else if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y5= 5'd1;
						end
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y6= 5'd2;
						end
						else if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y6= 5'd1;
						end
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y7= 5'd2;
						end
						else if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y7= 5'd1;
						end
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd2 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X3_Y8= 5'd2;
						end
						else if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X2_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y8= 5'd1;
						end
						if(stat_X2_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X2_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y0= 5'd2;
						end
						else if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y0= 5'd1;
						end
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y1= 5'd2;
						end
						else if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y1= 5'd1;
						end
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y2= 5'd2;
						end
						else if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y2= 5'd1;
						end
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y3= 5'd2;
						end
						else if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y3= 5'd1;
						end
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y4= 5'd2;
						end
						else if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y4= 5'd1;
						end
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y5= 5'd2;
						end
						else if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y5= 5'd1;
						end
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y6= 5'd2;
						end
						else if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y6= 5'd1;
						end
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y7= 5'd2;
						end
						else if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y7= 5'd1;
						end
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd3 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X4_Y8= 5'd2;
						end
						else if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X3_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y8= 5'd1;
						end
						if(stat_X3_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X3_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y0= 5'd2;
						end
						else if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y0= 5'd1;
						end
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y1= 5'd2;
						end
						else if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y1= 5'd1;
						end
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y2= 5'd2;
						end
						else if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y2= 5'd1;
						end
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y3= 5'd2;
						end
						else if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y3= 5'd1;
						end
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y4= 5'd2;
						end
						else if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y4= 5'd1;
						end
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y5= 5'd2;
						end
						else if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y5= 5'd1;
						end
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y6= 5'd2;
						end
						else if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y6= 5'd1;
						end
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y7= 5'd2;
						end
						else if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y7= 5'd1;
						end
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd4 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X5_Y8= 5'd2;
						end
						else if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X4_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y8= 5'd1;
						end
						if(stat_X4_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X4_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y0= 5'd2;
						end
						else if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y0= 5'd1;
						end
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y1= 5'd2;
						end
						else if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y1= 5'd1;
						end
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y2= 5'd2;
						end
						else if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y2= 5'd1;
						end
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y3= 5'd2;
						end
						else if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y3= 5'd1;
						end
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y4= 5'd2;
						end
						else if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y4= 5'd1;
						end
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y0 == 5'd1)
				 stat_X0_Y0 =0;
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y5= 5'd2;
						end
						else if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y5= 5'd1;
						end
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y1 == 5'd1)
				 stat_X0_Y1 =0;
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y6= 5'd2;
						end
						else if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y6= 5'd1;
						end
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y2 == 5'd1)
				 stat_X0_Y2 =0;
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y7= 5'd2;
						end
						else if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y7= 5'd1;
						end
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd5 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X0_Y3 == 5'd1)
				 stat_X0_Y3 =0;
			 if(stat_X0_Y4 == 5'd1)
				 stat_X0_Y4 =0;
			 if(stat_X0_Y5 == 5'd1)
				 stat_X0_Y5 =0;
			 if(stat_X0_Y6 == 5'd1)
				 stat_X0_Y6 =0;
			 if(stat_X0_Y7 == 5'd1)
				 stat_X0_Y7 =0;
			 if(stat_X0_Y8 == 5'd1)
				 stat_X0_Y8 =0;
			 if(stat_X0_Y9 == 5'd1)
				 stat_X0_Y9 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X6_Y8= 5'd2;
						end
						else if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X5_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y8= 5'd1;
						end
						if(stat_X5_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X5_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y0= 5'd2;
						end
						else if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y0= 5'd1;
						end
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y1= 5'd2;
						end
						else if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y1= 5'd1;
						end
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y2= 5'd2;
						end
						else if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y2= 5'd1;
						end
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y3= 5'd2;
						end
						else if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y3= 5'd1;
						end
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y4= 5'd2;
						end
						else if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y4= 5'd1;
						end
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y0 == 5'd1)
				 stat_X1_Y0 =0;
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y5= 5'd2;
						end
						else if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y5= 5'd1;
						end
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y1 == 5'd1)
				 stat_X1_Y1 =0;
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y6= 5'd2;
						end
						else if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y6= 5'd1;
						end
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y2 == 5'd1)
				 stat_X1_Y2 =0;
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y7= 5'd2;
						end
						else if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y7= 5'd1;
						end
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd6 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X1_Y3 == 5'd1)
				 stat_X1_Y3 =0;
			 if(stat_X1_Y4 == 5'd1)
				 stat_X1_Y4 =0;
			 if(stat_X1_Y5 == 5'd1)
				 stat_X1_Y5 =0;
			 if(stat_X1_Y6 == 5'd1)
				 stat_X1_Y6 =0;
			 if(stat_X1_Y7 == 5'd1)
				 stat_X1_Y7 =0;
			 if(stat_X1_Y8 == 5'd1)
				 stat_X1_Y8 =0;
			 if(stat_X1_Y9 == 5'd1)
				 stat_X1_Y9 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X7_Y8= 5'd2;
						end
						else if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X6_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y8= 5'd1;
						end
						if(stat_X6_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X6_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y0= 5'd2;
						end
						else if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y0= 5'd1;
						end
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y1= 5'd2;
						end
						else if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y1= 5'd1;
						end
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y2= 5'd2;
						end
						else if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y2= 5'd1;
						end
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y3= 5'd2;
						end
						else if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y3= 5'd1;
						end
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y4= 5'd2;
						end
						else if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y4= 5'd1;
						end
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y0 == 5'd1)
				 stat_X2_Y0 =0;
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y5= 5'd2;
						end
						else if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y5= 5'd1;
						end
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y1 == 5'd1)
				 stat_X2_Y1 =0;
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y6= 5'd2;
						end
						else if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y6= 5'd1;
						end
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y2 == 5'd1)
				 stat_X2_Y2 =0;
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y7= 5'd2;
						end
						else if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y7= 5'd1;
						end
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd7 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X2_Y3 == 5'd1)
				 stat_X2_Y3 =0;
			 if(stat_X2_Y4 == 5'd1)
				 stat_X2_Y4 =0;
			 if(stat_X2_Y5 == 5'd1)
				 stat_X2_Y5 =0;
			 if(stat_X2_Y6 == 5'd1)
				 stat_X2_Y6 =0;
			 if(stat_X2_Y7 == 5'd1)
				 stat_X2_Y7 =0;
			 if(stat_X2_Y8 == 5'd1)
				 stat_X2_Y8 =0;
			 if(stat_X2_Y9 == 5'd1)
				 stat_X2_Y9 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X8_Y8= 5'd2;
						end
						else if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X7_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y8= 5'd1;
						end
						if(stat_X7_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X7_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd0)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y0= 5'd2;
						end
						else if(stat_X9_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y0= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y0 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y0= 5'd1;
						end
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd1)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y1= 5'd2;
						end
						else if(stat_X9_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y1= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y1 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y1= 5'd1;
						end
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd2)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y2= 5'd2;
						end
						else if(stat_X9_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y2= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y2 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y2= 5'd1;
						end
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd3)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y3= 5'd2;
						end
						else if(stat_X9_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y3= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y3 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y3= 5'd1;
						end
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd4)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y4= 5'd2;
						end
						else if(stat_X9_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y4= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y4 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y4= 5'd1;
						end
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd5)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y0 == 5'd1)
				 stat_X3_Y0 =0;
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y0 == 5'd1)
				 stat_X4_Y0 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y0 == 5'd1)
				 stat_X5_Y0 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y0 == 5'd1)
				 stat_X6_Y0 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y0 == 5'd1)
				 stat_X7_Y0 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y0 == 5'd1)
				 stat_X8_Y0 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y0 == 5'd1)
				 stat_X9_Y0 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y5= 5'd2;
						end
						else if(stat_X9_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y5= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y5 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y5= 5'd1;
						end
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd6)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y1 == 5'd1)
				 stat_X3_Y1 =0;
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y1 == 5'd1)
				 stat_X4_Y1 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y1 == 5'd1)
				 stat_X5_Y1 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y1 == 5'd1)
				 stat_X6_Y1 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y1 == 5'd1)
				 stat_X7_Y1 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y1 == 5'd1)
				 stat_X8_Y1 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y1 == 5'd1)
				 stat_X9_Y1 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y6= 5'd2;
						end
						else if(stat_X9_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y6= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y6 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y6= 5'd1;
						end
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd7)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y2 == 5'd1)
				 stat_X3_Y2 =0;
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y2 == 5'd1)
				 stat_X4_Y2 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y2 == 5'd1)
				 stat_X5_Y2 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y2 == 5'd1)
				 stat_X6_Y2 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y2 == 5'd1)
				 stat_X7_Y2 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y2 == 5'd1)
				 stat_X8_Y2 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y2 == 5'd1)
				 stat_X9_Y2 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y7= 5'd2;
						end
						else if(stat_X9_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y7= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y7 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y7= 5'd1;
						end
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
				endcase
			end
		end
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 4'd8 && mouse_cell_y == 4'd8)
		begin
			//sbianco tutto attorno
			 if(stat_X3_Y3 == 5'd1)
				 stat_X3_Y3 =0;
			 if(stat_X3_Y4 == 5'd1)
				 stat_X3_Y4 =0;
			 if(stat_X3_Y5 == 5'd1)
				 stat_X3_Y5 =0;
			 if(stat_X3_Y6 == 5'd1)
				 stat_X3_Y6 =0;
			 if(stat_X3_Y7 == 5'd1)
				 stat_X3_Y7 =0;
			 if(stat_X3_Y8 == 5'd1)
				 stat_X3_Y8 =0;
			 if(stat_X3_Y9 == 5'd1)
				 stat_X3_Y9 =0;
			 if(stat_X4_Y3 == 5'd1)
				 stat_X4_Y3 =0;
			 if(stat_X4_Y4 == 5'd1)
				 stat_X4_Y4 =0;
			 if(stat_X4_Y5 == 5'd1)
				 stat_X4_Y5 =0;
			 if(stat_X4_Y6 == 5'd1)
				 stat_X4_Y6 =0;
			 if(stat_X4_Y7 == 5'd1)
				 stat_X4_Y7 =0;
			 if(stat_X4_Y8 == 5'd1)
				 stat_X4_Y8 =0;
			 if(stat_X4_Y9 == 5'd1)
				 stat_X4_Y9 =0;
			 if(stat_X5_Y3 == 5'd1)
				 stat_X5_Y3 =0;
			 if(stat_X5_Y4 == 5'd1)
				 stat_X5_Y4 =0;
			 if(stat_X5_Y5 == 5'd1)
				 stat_X5_Y5 =0;
			 if(stat_X5_Y6 == 5'd1)
				 stat_X5_Y6 =0;
			 if(stat_X5_Y7 == 5'd1)
				 stat_X5_Y7 =0;
			 if(stat_X5_Y8 == 5'd1)
				 stat_X5_Y8 =0;
			 if(stat_X5_Y9 == 5'd1)
				 stat_X5_Y9 =0;
			 if(stat_X6_Y3 == 5'd1)
				 stat_X6_Y3 =0;
			 if(stat_X6_Y4 == 5'd1)
				 stat_X6_Y4 =0;
			 if(stat_X6_Y5 == 5'd1)
				 stat_X6_Y5 =0;
			 if(stat_X6_Y6 == 5'd1)
				 stat_X6_Y6 =0;
			 if(stat_X6_Y7 == 5'd1)
				 stat_X6_Y7 =0;
			 if(stat_X6_Y8 == 5'd1)
				 stat_X6_Y8 =0;
			 if(stat_X6_Y9 == 5'd1)
				 stat_X6_Y9 =0;
			 if(stat_X7_Y3 == 5'd1)
				 stat_X7_Y3 =0;
			 if(stat_X7_Y4 == 5'd1)
				 stat_X7_Y4 =0;
			 if(stat_X7_Y5 == 5'd1)
				 stat_X7_Y5 =0;
			 if(stat_X7_Y6 == 5'd1)
				 stat_X7_Y6 =0;
			 if(stat_X7_Y7 == 5'd1)
				 stat_X7_Y7 =0;
			 if(stat_X7_Y8 == 5'd1)
				 stat_X7_Y8 =0;
			 if(stat_X7_Y9 == 5'd1)
				 stat_X7_Y9 =0;
			 if(stat_X8_Y3 == 5'd1)
				 stat_X8_Y3 =0;
			 if(stat_X8_Y4 == 5'd1)
				 stat_X8_Y4 =0;
			 if(stat_X8_Y5 == 5'd1)
				 stat_X8_Y5 =0;
			 if(stat_X8_Y6 == 5'd1)
				 stat_X8_Y6 =0;
			 if(stat_X8_Y7 == 5'd1)
				 stat_X8_Y7 =0;
			 if(stat_X8_Y8 == 5'd1)
				 stat_X8_Y8 =0;
			 if(stat_X8_Y9 == 5'd1)
				 stat_X8_Y9 =0;
			 if(stat_X9_Y3 == 5'd1)
				 stat_X9_Y3 =0;
			 if(stat_X9_Y4 == 5'd1)
				 stat_X9_Y4 =0;
			 if(stat_X9_Y5 == 5'd1)
				 stat_X9_Y5 =0;
			 if(stat_X9_Y6 == 5'd1)
				 stat_X9_Y6 =0;
			 if(stat_X9_Y7 == 5'd1)
				 stat_X9_Y7 =0;
			 if(stat_X9_Y8 == 5'd1)
				 stat_X9_Y8 =0;
			 if(stat_X9_Y9 == 5'd1)
				 stat_X9_Y9 =0;
			//controllo la direzione
			if(!direction)
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(we)
						begin
							stat_X9_Y8= 5'd2;
						end
						else if(stat_X9_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X9_Y8= 5'd1;
						end
					end
				endcase
			end
			else
			begin
				//controllo la dimensione della nave
				case (dimension)
					4'd2:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd3:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd4:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
					4'd5:
					begin
						//se e' libera
						if(stat_X8_Y8 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y8= 5'd1;
						end
						if(stat_X8_Y9 == 5'd0)
						begin
							//pre-occupo
							stat_X8_Y9= 5'd1;
						end
					end
				endcase
			end
		end
	end
end
// operazioni di read, fatte per plottare a schermo
always @ (posedge clk_in)
begin
	if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X0_Y0;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X1_Y0;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X2_Y0;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X3_Y0;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X4_Y0;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X5_Y0;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X6_Y0;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X7_Y0;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X8_Y0;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd0)
		status_pointed_cell=stat_X9_Y0;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X0_Y1;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X1_Y1;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X2_Y1;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X3_Y1;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X4_Y1;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X5_Y1;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X6_Y1;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X7_Y1;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X8_Y1;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd1)
		status_pointed_cell=stat_X9_Y1;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X0_Y2;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X1_Y2;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X2_Y2;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X3_Y2;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X4_Y2;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X5_Y2;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X6_Y2;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X7_Y2;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X8_Y2;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd2)
		status_pointed_cell=stat_X9_Y2;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X0_Y3;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X1_Y3;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X2_Y3;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X3_Y3;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X4_Y3;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X5_Y3;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X6_Y3;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X7_Y3;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X8_Y3;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd3)
		status_pointed_cell=stat_X9_Y3;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X0_Y4;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X1_Y4;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X2_Y4;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X3_Y4;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X4_Y4;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X5_Y4;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X6_Y4;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X7_Y4;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X8_Y4;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd4)
		status_pointed_cell=stat_X9_Y4;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X0_Y5;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X1_Y5;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X2_Y5;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X3_Y5;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X4_Y5;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X5_Y5;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X6_Y5;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X7_Y5;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X8_Y5;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd5)
		status_pointed_cell=stat_X9_Y5;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X0_Y6;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X1_Y6;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X2_Y6;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X3_Y6;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X4_Y6;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X5_Y6;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X6_Y6;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X7_Y6;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X8_Y6;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd6)
		status_pointed_cell=stat_X9_Y6;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X0_Y7;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X1_Y7;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X2_Y7;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X3_Y7;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X4_Y7;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X5_Y7;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X6_Y7;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X7_Y7;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X8_Y7;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd7)
		status_pointed_cell=stat_X9_Y7;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X0_Y8;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X1_Y8;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X2_Y8;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X3_Y8;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X4_Y8;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X5_Y8;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X6_Y8;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X7_Y8;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X8_Y8;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd8)
		status_pointed_cell=stat_X9_Y8;
	else if(pointer_cell_x == 4'd0 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X0_Y9;
	else if(pointer_cell_x == 4'd1 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X1_Y9;
	else if(pointer_cell_x == 4'd2 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X2_Y9;
	else if(pointer_cell_x == 4'd3 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X3_Y9;
	else if(pointer_cell_x == 4'd4 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X4_Y9;
	else if(pointer_cell_x == 4'd5 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X5_Y9;
	else if(pointer_cell_x == 4'd6 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X6_Y9;
	else if(pointer_cell_x == 4'd7 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X7_Y9;
	else if(pointer_cell_x == 4'd8 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X8_Y9;
	else if(pointer_cell_x == 4'd9 && pointer_cell_y == 4'd9)
		status_pointed_cell=stat_X9_Y9;
end
endmodule
