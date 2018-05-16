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
input [3:0] new_value;
input [3:0] play_status;
input direction;
input [4:0] mouse_cell_x;
input [4:0] mouse_cell_y;
input [4:0] pointer_cell_x;
input [4:0] pointer_cell_y;
input [3:0] dimension;
output reg [3:0] status;
output reg [3:0] status_pointed_cell;
output reg ship_placed = 0;
// registri del tipo stat_X(posizione x)_Y(posizione y)
reg [3:0] stat_X0_Y0 = 4'd0;
reg [3:0] stat_X1_Y0 = 4'd0;
reg [3:0] stat_X2_Y0 = 4'd0;
reg [3:0] stat_X3_Y0 = 4'd0;
reg [3:0] stat_X4_Y0 = 4'd0;
reg [3:0] stat_X5_Y0 = 4'd0;
reg [3:0] stat_X6_Y0 = 4'd0;
reg [3:0] stat_X7_Y0 = 4'd0;
reg [3:0] stat_X0_Y1 = 4'd0;
reg [3:0] stat_X1_Y1 = 4'd0;
reg [3:0] stat_X2_Y1 = 4'd0;
reg [3:0] stat_X3_Y1 = 4'd0;
reg [3:0] stat_X4_Y1 = 4'd0;
reg [3:0] stat_X5_Y1 = 4'd0;
reg [3:0] stat_X6_Y1 = 4'd0;
reg [3:0] stat_X7_Y1 = 4'd0;
reg [3:0] stat_X0_Y2 = 4'd0;
reg [3:0] stat_X1_Y2 = 4'd0;
reg [3:0] stat_X2_Y2 = 4'd0;
reg [3:0] stat_X3_Y2 = 4'd0;
reg [3:0] stat_X4_Y2 = 4'd0;
reg [3:0] stat_X5_Y2 = 4'd0;
reg [3:0] stat_X6_Y2 = 4'd0;
reg [3:0] stat_X7_Y2 = 4'd0;
reg [3:0] stat_X0_Y3 = 4'd0;
reg [3:0] stat_X1_Y3 = 4'd0;
reg [3:0] stat_X2_Y3 = 4'd0;
reg [3:0] stat_X3_Y3 = 4'd0;
reg [3:0] stat_X4_Y3 = 4'd0;
reg [3:0] stat_X5_Y3 = 4'd0;
reg [3:0] stat_X6_Y3 = 4'd0;
reg [3:0] stat_X7_Y3 = 4'd0;
reg [3:0] stat_X0_Y4 = 4'd0;
reg [3:0] stat_X1_Y4 = 4'd0;
reg [3:0] stat_X2_Y4 = 4'd0;
reg [3:0] stat_X3_Y4 = 4'd0;
reg [3:0] stat_X4_Y4 = 4'd0;
reg [3:0] stat_X5_Y4 = 4'd0;
reg [3:0] stat_X6_Y4 = 4'd0;
reg [3:0] stat_X7_Y4 = 4'd0;
reg [3:0] stat_X0_Y5 = 4'd0;
reg [3:0] stat_X1_Y5 = 4'd0;
reg [3:0] stat_X2_Y5 = 4'd0;
reg [3:0] stat_X3_Y5 = 4'd0;
reg [3:0] stat_X4_Y5 = 4'd0;
reg [3:0] stat_X5_Y5 = 4'd0;
reg [3:0] stat_X6_Y5 = 4'd0;
reg [3:0] stat_X7_Y5 = 4'd0;
reg [3:0] stat_X0_Y6 = 4'd0;
reg [3:0] stat_X1_Y6 = 4'd0;
reg [3:0] stat_X2_Y6 = 4'd0;
reg [3:0] stat_X3_Y6 = 4'd0;
reg [3:0] stat_X4_Y6 = 4'd0;
reg [3:0] stat_X5_Y6 = 4'd0;
reg [3:0] stat_X6_Y6 = 4'd0;
reg [3:0] stat_X7_Y6 = 4'd0;
reg [3:0] stat_X0_Y7 = 4'd0;
reg [3:0] stat_X1_Y7 = 4'd0;
reg [3:0] stat_X2_Y7 = 4'd0;
reg [3:0] stat_X3_Y7 = 4'd0;
reg [3:0] stat_X4_Y7 = 4'd0;
reg [3:0] stat_X5_Y7 = 4'd0;
reg [3:0] stat_X6_Y7 = 4'd0;
reg [3:0] stat_X7_Y7 = 4'd0;
// operazioni di scrittura/lettura dal mouse
always @ (negedge clk_in)
begin
//se e' il turno del giocatore
	if (play_status== 2'b01)
	begin
		if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X0_Y0 =new_value;
			end
			status=stat_X0_Y0;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X1_Y0 =new_value;
			end
			status=stat_X1_Y0;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X2_Y0 =new_value;
			end
			status=stat_X2_Y0;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X3_Y0 =new_value;
			end
			status=stat_X3_Y0;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X4_Y0 =new_value;
			end
			status=stat_X4_Y0;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X5_Y0 =new_value;
			end
			status=stat_X5_Y0;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X6_Y0 =new_value;
			end
			status=stat_X6_Y0;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd0)
		begin
			if(we)
			begin
				stat_X7_Y0 =new_value;
			end
			status=stat_X7_Y0;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X0_Y1 =new_value;
			end
			status=stat_X0_Y1;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X1_Y1 =new_value;
			end
			status=stat_X1_Y1;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X2_Y1 =new_value;
			end
			status=stat_X2_Y1;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X3_Y1 =new_value;
			end
			status=stat_X3_Y1;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X4_Y1 =new_value;
			end
			status=stat_X4_Y1;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X5_Y1 =new_value;
			end
			status=stat_X5_Y1;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X6_Y1 =new_value;
			end
			status=stat_X6_Y1;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd1)
		begin
			if(we)
			begin
				stat_X7_Y1 =new_value;
			end
			status=stat_X7_Y1;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X0_Y2 =new_value;
			end
			status=stat_X0_Y2;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X1_Y2 =new_value;
			end
			status=stat_X1_Y2;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X2_Y2 =new_value;
			end
			status=stat_X2_Y2;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X3_Y2 =new_value;
			end
			status=stat_X3_Y2;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X4_Y2 =new_value;
			end
			status=stat_X4_Y2;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X5_Y2 =new_value;
			end
			status=stat_X5_Y2;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X6_Y2 =new_value;
			end
			status=stat_X6_Y2;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd2)
		begin
			if(we)
			begin
				stat_X7_Y2 =new_value;
			end
			status=stat_X7_Y2;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X0_Y3 =new_value;
			end
			status=stat_X0_Y3;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X1_Y3 =new_value;
			end
			status=stat_X1_Y3;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X2_Y3 =new_value;
			end
			status=stat_X2_Y3;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X3_Y3 =new_value;
			end
			status=stat_X3_Y3;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X4_Y3 =new_value;
			end
			status=stat_X4_Y3;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X5_Y3 =new_value;
			end
			status=stat_X5_Y3;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X6_Y3 =new_value;
			end
			status=stat_X6_Y3;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd3)
		begin
			if(we)
			begin
				stat_X7_Y3 =new_value;
			end
			status=stat_X7_Y3;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X0_Y4 =new_value;
			end
			status=stat_X0_Y4;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X1_Y4 =new_value;
			end
			status=stat_X1_Y4;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X2_Y4 =new_value;
			end
			status=stat_X2_Y4;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X3_Y4 =new_value;
			end
			status=stat_X3_Y4;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X4_Y4 =new_value;
			end
			status=stat_X4_Y4;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X5_Y4 =new_value;
			end
			status=stat_X5_Y4;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X6_Y4 =new_value;
			end
			status=stat_X6_Y4;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd4)
		begin
			if(we)
			begin
				stat_X7_Y4 =new_value;
			end
			status=stat_X7_Y4;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X0_Y5 =new_value;
			end
			status=stat_X0_Y5;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X1_Y5 =new_value;
			end
			status=stat_X1_Y5;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X2_Y5 =new_value;
			end
			status=stat_X2_Y5;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X3_Y5 =new_value;
			end
			status=stat_X3_Y5;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X4_Y5 =new_value;
			end
			status=stat_X4_Y5;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X5_Y5 =new_value;
			end
			status=stat_X5_Y5;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X6_Y5 =new_value;
			end
			status=stat_X6_Y5;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd5)
		begin
			if(we)
			begin
				stat_X7_Y5 =new_value;
			end
			status=stat_X7_Y5;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X0_Y6 =new_value;
			end
			status=stat_X0_Y6;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X1_Y6 =new_value;
			end
			status=stat_X1_Y6;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X2_Y6 =new_value;
			end
			status=stat_X2_Y6;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X3_Y6 =new_value;
			end
			status=stat_X3_Y6;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X4_Y6 =new_value;
			end
			status=stat_X4_Y6;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X5_Y6 =new_value;
			end
			status=stat_X5_Y6;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X6_Y6 =new_value;
			end
			status=stat_X6_Y6;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd6)
		begin
			if(we)
			begin
				stat_X7_Y6 =new_value;
			end
			status=stat_X7_Y6;
		end
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X0_Y7 =new_value;
			end
			status=stat_X0_Y7;
		end
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X1_Y7 =new_value;
			end
			status=stat_X1_Y7;
		end
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X2_Y7 =new_value;
			end
			status=stat_X2_Y7;
		end
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X3_Y7 =new_value;
			end
			status=stat_X3_Y7;
		end
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X4_Y7 =new_value;
			end
			status=stat_X4_Y7;
		end
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X5_Y7 =new_value;
			end
			status=stat_X5_Y7;
		end
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X6_Y7 =new_value;
			end
			status=stat_X6_Y7;
		end
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd7)
		begin
			if(we)
			begin
				stat_X7_Y7 =new_value;
			end
			status=stat_X7_Y7;
		end
	end
	//se e' il turnio dello schieramento
	if (play_status== 2'b00)
	begin
		ship_placed = 0;
		//se sono stati temporanei, li piallo
		 if(stat_X0_Y0 == 4'd1)
			 stat_X0_Y0 =4'd0;
		 else if(stat_X0_Y0 == 4'd3)
			 stat_X0_Y0 =4'd2;
		 if(stat_X0_Y1 == 4'd1)
			 stat_X0_Y1 =4'd0;
		 else if(stat_X0_Y1 == 4'd3)
			 stat_X0_Y1 =4'd2;
		 if(stat_X0_Y2 == 4'd1)
			 stat_X0_Y2 =4'd0;
		 else if(stat_X0_Y2 == 4'd3)
			 stat_X0_Y2 =4'd2;
		 if(stat_X0_Y3 == 4'd1)
			 stat_X0_Y3 =4'd0;
		 else if(stat_X0_Y3 == 4'd3)
			 stat_X0_Y3 =4'd2;
		 if(stat_X0_Y4 == 4'd1)
			 stat_X0_Y4 =4'd0;
		 else if(stat_X0_Y4 == 4'd3)
			 stat_X0_Y4 =4'd2;
		 if(stat_X0_Y5 == 4'd1)
			 stat_X0_Y5 =4'd0;
		 else if(stat_X0_Y5 == 4'd3)
			 stat_X0_Y5 =4'd2;
		 if(stat_X0_Y6 == 4'd1)
			 stat_X0_Y6 =4'd0;
		 else if(stat_X0_Y6 == 4'd3)
			 stat_X0_Y6 =4'd2;
		 if(stat_X0_Y7 == 4'd1)
			 stat_X0_Y7 =4'd0;
		 else if(stat_X0_Y7 == 4'd3)
			 stat_X0_Y7 =4'd2;
		 if(stat_X1_Y0 == 4'd1)
			 stat_X1_Y0 =4'd0;
		 else if(stat_X1_Y0 == 4'd3)
			 stat_X1_Y0 =4'd2;
		 if(stat_X1_Y1 == 4'd1)
			 stat_X1_Y1 =4'd0;
		 else if(stat_X1_Y1 == 4'd3)
			 stat_X1_Y1 =4'd2;
		 if(stat_X1_Y2 == 4'd1)
			 stat_X1_Y2 =4'd0;
		 else if(stat_X1_Y2 == 4'd3)
			 stat_X1_Y2 =4'd2;
		 if(stat_X1_Y3 == 4'd1)
			 stat_X1_Y3 =4'd0;
		 else if(stat_X1_Y3 == 4'd3)
			 stat_X1_Y3 =4'd2;
		 if(stat_X1_Y4 == 4'd1)
			 stat_X1_Y4 =4'd0;
		 else if(stat_X1_Y4 == 4'd3)
			 stat_X1_Y4 =4'd2;
		 if(stat_X1_Y5 == 4'd1)
			 stat_X1_Y5 =4'd0;
		 else if(stat_X1_Y5 == 4'd3)
			 stat_X1_Y5 =4'd2;
		 if(stat_X1_Y6 == 4'd1)
			 stat_X1_Y6 =4'd0;
		 else if(stat_X1_Y6 == 4'd3)
			 stat_X1_Y6 =4'd2;
		 if(stat_X1_Y7 == 4'd1)
			 stat_X1_Y7 =4'd0;
		 else if(stat_X1_Y7 == 4'd3)
			 stat_X1_Y7 =4'd2;
		 if(stat_X2_Y0 == 4'd1)
			 stat_X2_Y0 =4'd0;
		 else if(stat_X2_Y0 == 4'd3)
			 stat_X2_Y0 =4'd2;
		 if(stat_X2_Y1 == 4'd1)
			 stat_X2_Y1 =4'd0;
		 else if(stat_X2_Y1 == 4'd3)
			 stat_X2_Y1 =4'd2;
		 if(stat_X2_Y2 == 4'd1)
			 stat_X2_Y2 =4'd0;
		 else if(stat_X2_Y2 == 4'd3)
			 stat_X2_Y2 =4'd2;
		 if(stat_X2_Y3 == 4'd1)
			 stat_X2_Y3 =4'd0;
		 else if(stat_X2_Y3 == 4'd3)
			 stat_X2_Y3 =4'd2;
		 if(stat_X2_Y4 == 4'd1)
			 stat_X2_Y4 =4'd0;
		 else if(stat_X2_Y4 == 4'd3)
			 stat_X2_Y4 =4'd2;
		 if(stat_X2_Y5 == 4'd1)
			 stat_X2_Y5 =4'd0;
		 else if(stat_X2_Y5 == 4'd3)
			 stat_X2_Y5 =4'd2;
		 if(stat_X2_Y6 == 4'd1)
			 stat_X2_Y6 =4'd0;
		 else if(stat_X2_Y6 == 4'd3)
			 stat_X2_Y6 =4'd2;
		 if(stat_X2_Y7 == 4'd1)
			 stat_X2_Y7 =4'd0;
		 else if(stat_X2_Y7 == 4'd3)
			 stat_X2_Y7 =4'd2;
		 if(stat_X3_Y0 == 4'd1)
			 stat_X3_Y0 =4'd0;
		 else if(stat_X3_Y0 == 4'd3)
			 stat_X3_Y0 =4'd2;
		 if(stat_X3_Y1 == 4'd1)
			 stat_X3_Y1 =4'd0;
		 else if(stat_X3_Y1 == 4'd3)
			 stat_X3_Y1 =4'd2;
		 if(stat_X3_Y2 == 4'd1)
			 stat_X3_Y2 =4'd0;
		 else if(stat_X3_Y2 == 4'd3)
			 stat_X3_Y2 =4'd2;
		 if(stat_X3_Y3 == 4'd1)
			 stat_X3_Y3 =4'd0;
		 else if(stat_X3_Y3 == 4'd3)
			 stat_X3_Y3 =4'd2;
		 if(stat_X3_Y4 == 4'd1)
			 stat_X3_Y4 =4'd0;
		 else if(stat_X3_Y4 == 4'd3)
			 stat_X3_Y4 =4'd2;
		 if(stat_X3_Y5 == 4'd1)
			 stat_X3_Y5 =4'd0;
		 else if(stat_X3_Y5 == 4'd3)
			 stat_X3_Y5 =4'd2;
		 if(stat_X3_Y6 == 4'd1)
			 stat_X3_Y6 =4'd0;
		 else if(stat_X3_Y6 == 4'd3)
			 stat_X3_Y6 =4'd2;
		 if(stat_X3_Y7 == 4'd1)
			 stat_X3_Y7 =4'd0;
		 else if(stat_X3_Y7 == 4'd3)
			 stat_X3_Y7 =4'd2;
		 if(stat_X4_Y0 == 4'd1)
			 stat_X4_Y0 =4'd0;
		 else if(stat_X4_Y0 == 4'd3)
			 stat_X4_Y0 =4'd2;
		 if(stat_X4_Y1 == 4'd1)
			 stat_X4_Y1 =4'd0;
		 else if(stat_X4_Y1 == 4'd3)
			 stat_X4_Y1 =4'd2;
		 if(stat_X4_Y2 == 4'd1)
			 stat_X4_Y2 =4'd0;
		 else if(stat_X4_Y2 == 4'd3)
			 stat_X4_Y2 =4'd2;
		 if(stat_X4_Y3 == 4'd1)
			 stat_X4_Y3 =4'd0;
		 else if(stat_X4_Y3 == 4'd3)
			 stat_X4_Y3 =4'd2;
		 if(stat_X4_Y4 == 4'd1)
			 stat_X4_Y4 =4'd0;
		 else if(stat_X4_Y4 == 4'd3)
			 stat_X4_Y4 =4'd2;
		 if(stat_X4_Y5 == 4'd1)
			 stat_X4_Y5 =4'd0;
		 else if(stat_X4_Y5 == 4'd3)
			 stat_X4_Y5 =4'd2;
		 if(stat_X4_Y6 == 4'd1)
			 stat_X4_Y6 =4'd0;
		 else if(stat_X4_Y6 == 4'd3)
			 stat_X4_Y6 =4'd2;
		 if(stat_X4_Y7 == 4'd1)
			 stat_X4_Y7 =4'd0;
		 else if(stat_X4_Y7 == 4'd3)
			 stat_X4_Y7 =4'd2;
		 if(stat_X5_Y0 == 4'd1)
			 stat_X5_Y0 =4'd0;
		 else if(stat_X5_Y0 == 4'd3)
			 stat_X5_Y0 =4'd2;
		 if(stat_X5_Y1 == 4'd1)
			 stat_X5_Y1 =4'd0;
		 else if(stat_X5_Y1 == 4'd3)
			 stat_X5_Y1 =4'd2;
		 if(stat_X5_Y2 == 4'd1)
			 stat_X5_Y2 =4'd0;
		 else if(stat_X5_Y2 == 4'd3)
			 stat_X5_Y2 =4'd2;
		 if(stat_X5_Y3 == 4'd1)
			 stat_X5_Y3 =4'd0;
		 else if(stat_X5_Y3 == 4'd3)
			 stat_X5_Y3 =4'd2;
		 if(stat_X5_Y4 == 4'd1)
			 stat_X5_Y4 =4'd0;
		 else if(stat_X5_Y4 == 4'd3)
			 stat_X5_Y4 =4'd2;
		 if(stat_X5_Y5 == 4'd1)
			 stat_X5_Y5 =4'd0;
		 else if(stat_X5_Y5 == 4'd3)
			 stat_X5_Y5 =4'd2;
		 if(stat_X5_Y6 == 4'd1)
			 stat_X5_Y6 =4'd0;
		 else if(stat_X5_Y6 == 4'd3)
			 stat_X5_Y6 =4'd2;
		 if(stat_X5_Y7 == 4'd1)
			 stat_X5_Y7 =4'd0;
		 else if(stat_X5_Y7 == 4'd3)
			 stat_X5_Y7 =4'd2;
		 if(stat_X6_Y0 == 4'd1)
			 stat_X6_Y0 =4'd0;
		 else if(stat_X6_Y0 == 4'd3)
			 stat_X6_Y0 =4'd2;
		 if(stat_X6_Y1 == 4'd1)
			 stat_X6_Y1 =4'd0;
		 else if(stat_X6_Y1 == 4'd3)
			 stat_X6_Y1 =4'd2;
		 if(stat_X6_Y2 == 4'd1)
			 stat_X6_Y2 =4'd0;
		 else if(stat_X6_Y2 == 4'd3)
			 stat_X6_Y2 =4'd2;
		 if(stat_X6_Y3 == 4'd1)
			 stat_X6_Y3 =4'd0;
		 else if(stat_X6_Y3 == 4'd3)
			 stat_X6_Y3 =4'd2;
		 if(stat_X6_Y4 == 4'd1)
			 stat_X6_Y4 =4'd0;
		 else if(stat_X6_Y4 == 4'd3)
			 stat_X6_Y4 =4'd2;
		 if(stat_X6_Y5 == 4'd1)
			 stat_X6_Y5 =4'd0;
		 else if(stat_X6_Y5 == 4'd3)
			 stat_X6_Y5 =4'd2;
		 if(stat_X6_Y6 == 4'd1)
			 stat_X6_Y6 =4'd0;
		 else if(stat_X6_Y6 == 4'd3)
			 stat_X6_Y6 =4'd2;
		 if(stat_X6_Y7 == 4'd1)
			 stat_X6_Y7 =4'd0;
		 else if(stat_X6_Y7 == 4'd3)
			 stat_X6_Y7 =4'd2;
		 if(stat_X7_Y0 == 4'd1)
			 stat_X7_Y0 =4'd0;
		 else if(stat_X7_Y0 == 4'd3)
			 stat_X7_Y0 =4'd2;
		 if(stat_X7_Y1 == 4'd1)
			 stat_X7_Y1 =4'd0;
		 else if(stat_X7_Y1 == 4'd3)
			 stat_X7_Y1 =4'd2;
		 if(stat_X7_Y2 == 4'd1)
			 stat_X7_Y2 =4'd0;
		 else if(stat_X7_Y2 == 4'd3)
			 stat_X7_Y2 =4'd2;
		 if(stat_X7_Y3 == 4'd1)
			 stat_X7_Y3 =4'd0;
		 else if(stat_X7_Y3 == 4'd3)
			 stat_X7_Y3 =4'd2;
		 if(stat_X7_Y4 == 4'd1)
			 stat_X7_Y4 =4'd0;
		 else if(stat_X7_Y4 == 4'd3)
			 stat_X7_Y4 =4'd2;
		 if(stat_X7_Y5 == 4'd1)
			 stat_X7_Y5 =4'd0;
		 else if(stat_X7_Y5 == 4'd3)
			 stat_X7_Y5 =4'd2;
		 if(stat_X7_Y6 == 4'd1)
			 stat_X7_Y6 =4'd0;
		 else if(stat_X7_Y6 == 4'd3)
			 stat_X7_Y6 =4'd2;
		 if(stat_X7_Y7 == 4'd1)
			 stat_X7_Y7 =4'd0;
		 else if(stat_X7_Y7 == 4'd3)
			 stat_X7_Y7 =4'd2;
		//controllo la posizione: capisco in che cella sono
		if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X1_Y0= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X1_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X1_Y0= 4'd1;
								stat_X2_Y0= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X1_Y0= 4'd2;
								stat_X2_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X1_Y0= 4'd1;
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X1_Y0= 4'd2;
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X0_Y1= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X0_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X0_Y1= 4'd1;
								stat_X0_Y2= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X0_Y1= 4'd2;
								stat_X0_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y0= 4'd1;
								stat_X0_Y1= 4'd1;
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
							end
							if(stat_X0_Y0 == 4'd2)
								stat_X0_Y0= 4'd3;
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if((we)&&(stat_X0_Y0 == 4'd0) 
										&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y0= 4'd2;
								stat_X0_Y1= 4'd2;
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X1_Y1= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X1_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X1_Y1= 4'd1;
								stat_X2_Y1= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X1_Y1= 4'd2;
								stat_X2_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X1_Y1= 4'd1;
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X1_Y1= 4'd2;
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X0_Y2= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X0_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y1= 4'd1;
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
							end
							if(stat_X0_Y1 == 4'd2)
								stat_X0_Y1= 4'd3;
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if((we)&&(stat_X0_Y1 == 4'd0) 
										&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y1= 4'd2;
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X1_Y2= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X1_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X1_Y2= 4'd1;
								stat_X2_Y2= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X1_Y2= 4'd2;
								stat_X2_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X1_Y2= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X1_Y2= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y2= 4'd1;
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
							end
							if(stat_X0_Y2 == 4'd2)
								stat_X0_Y2= 4'd3;
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if((we)&&(stat_X0_Y2 == 4'd0) 
										&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y2= 4'd2;
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X1_Y3= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X1_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X1_Y3= 4'd1;
								stat_X2_Y3= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X1_Y3= 4'd2;
								stat_X2_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X1_Y3= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X1_Y3= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y3= 4'd1;
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
							end
							if(stat_X0_Y3 == 4'd2)
								stat_X0_Y3= 4'd3;
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if((we)&&(stat_X0_Y3 == 4'd0) 
										&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y3= 4'd2;
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X1_Y4= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X1_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X1_Y4= 4'd1;
								stat_X2_Y4= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X1_Y4= 4'd2;
								stat_X2_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X1_Y4= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X1_Y4= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y4= 4'd1;
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y4 == 4'd2)
								stat_X0_Y4= 4'd3;
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y4 == 4'd0) 
										&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y4= 4'd2;
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X1_Y5= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X1_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X1_Y5= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X1_Y5= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X1_Y5= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X1_Y5= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y5= 4'd1;
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y5 == 4'd2)
								stat_X0_Y5= 4'd3;
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y5 == 4'd0) 
										&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y5= 4'd2;
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y6= 4'd1;
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y6 == 4'd2)
								stat_X0_Y6= 4'd3;
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y6 == 4'd0) 
										&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y6= 4'd2;
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd0 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X0_Y7= 4'd1;
							end
							if(stat_X0_Y7 == 4'd2)
								stat_X0_Y7= 4'd3;
							if((we)&&(stat_X0_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X0_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X0_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X2_Y0= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X2_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X1_Y1= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X1_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X1_Y1= 4'd1;
								stat_X1_Y2= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X1_Y1= 4'd2;
								stat_X1_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y0= 4'd1;
								stat_X1_Y1= 4'd1;
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
							end
							if(stat_X1_Y0 == 4'd2)
								stat_X1_Y0= 4'd3;
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if((we)&&(stat_X1_Y0 == 4'd0) 
										&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y0= 4'd2;
								stat_X1_Y1= 4'd2;
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X2_Y1= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X2_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X1_Y2= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X1_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y1= 4'd1;
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
							end
							if(stat_X1_Y1 == 4'd2)
								stat_X1_Y1= 4'd3;
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if((we)&&(stat_X1_Y1 == 4'd0) 
										&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y1= 4'd2;
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X2_Y2= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X2_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y2= 4'd1;
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
							end
							if(stat_X1_Y2 == 4'd2)
								stat_X1_Y2= 4'd3;
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if((we)&&(stat_X1_Y2 == 4'd0) 
										&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y2= 4'd2;
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X2_Y3= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X2_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y3= 4'd1;
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X1_Y3 == 4'd2)
								stat_X1_Y3= 4'd3;
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X1_Y3 == 4'd0) 
										&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y3= 4'd2;
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X2_Y4= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X2_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y4= 4'd1;
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y4 == 4'd2)
								stat_X1_Y4= 4'd3;
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y4 == 4'd0) 
										&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y4= 4'd2;
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X2_Y5= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X2_Y5= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X2_Y5= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X2_Y5= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y5= 4'd1;
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y5 == 4'd2)
								stat_X1_Y5= 4'd3;
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y5 == 4'd0) 
										&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y5= 4'd2;
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y6= 4'd1;
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y6 == 4'd2)
								stat_X1_Y6= 4'd3;
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y6 == 4'd0) 
										&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y6= 4'd2;
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd1 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X1_Y7= 4'd1;
							end
							if(stat_X1_Y7 == 4'd2)
								stat_X1_Y7= 4'd3;
							if((we)&&(stat_X1_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X1_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X1_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X2_Y1= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X2_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X2_Y1= 4'd1;
								stat_X2_Y2= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X2_Y1= 4'd2;
								stat_X2_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y0= 4'd1;
								stat_X2_Y1= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
							end
							if(stat_X2_Y0 == 4'd2)
								stat_X2_Y0= 4'd3;
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if((we)&&(stat_X2_Y0 == 4'd0) 
										&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y0= 4'd2;
								stat_X2_Y1= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X2_Y2= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X2_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y1= 4'd1;
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
							end
							if(stat_X2_Y1 == 4'd2)
								stat_X2_Y1= 4'd3;
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if((we)&&(stat_X2_Y1 == 4'd0) 
										&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y1= 4'd2;
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y2= 4'd1;
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X2_Y2 == 4'd2)
								stat_X2_Y2= 4'd3;
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X2_Y2 == 4'd0) 
										&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y2= 4'd2;
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y3= 4'd1;
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X2_Y3 == 4'd2)
								stat_X2_Y3= 4'd3;
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X2_Y3 == 4'd0) 
										&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y3= 4'd2;
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y4= 4'd1;
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y4 == 4'd2)
								stat_X2_Y4= 4'd3;
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y4 == 4'd0) 
										&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y4= 4'd2;
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X3_Y5= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X3_Y5= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X3_Y5= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X3_Y5= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y5= 4'd1;
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y5 == 4'd2)
								stat_X2_Y5= 4'd3;
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y5 == 4'd0) 
										&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y5= 4'd2;
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y6= 4'd1;
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y6 == 4'd2)
								stat_X2_Y6= 4'd3;
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y6 == 4'd0) 
										&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y6= 4'd2;
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd2 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X2_Y7= 4'd1;
							end
							if(stat_X2_Y7 == 4'd2)
								stat_X2_Y7= 4'd3;
							if((we)&&(stat_X2_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X2_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X2_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X3_Y1= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X3_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X3_Y1= 4'd1;
								stat_X3_Y2= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X3_Y1= 4'd2;
								stat_X3_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y0= 4'd1;
								stat_X3_Y1= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X3_Y0 == 4'd2)
								stat_X3_Y0= 4'd3;
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X3_Y0 == 4'd0) 
										&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y0= 4'd2;
								stat_X3_Y1= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X3_Y2= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X3_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y1= 4'd1;
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X3_Y1 == 4'd2)
								stat_X3_Y1= 4'd3;
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X3_Y1 == 4'd0) 
										&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y1= 4'd2;
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y2= 4'd1;
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X3_Y2 == 4'd2)
								stat_X3_Y2= 4'd3;
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X3_Y2 == 4'd0) 
										&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y2= 4'd2;
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y3= 4'd1;
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X3_Y3 == 4'd2)
								stat_X3_Y3= 4'd3;
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X3_Y3 == 4'd0) 
										&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y3= 4'd2;
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y4= 4'd1;
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y4 == 4'd2)
								stat_X3_Y4= 4'd3;
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y4 == 4'd0) 
										&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y4= 4'd2;
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X4_Y5= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X4_Y5= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X4_Y5= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X4_Y5= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y5= 4'd1;
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y5 == 4'd2)
								stat_X3_Y5= 4'd3;
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y5 == 4'd0) 
										&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y5= 4'd2;
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y6= 4'd1;
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y6 == 4'd2)
								stat_X3_Y6= 4'd3;
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y6 == 4'd0) 
										&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y6= 4'd2;
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd3 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X3_Y7= 4'd1;
							end
							if(stat_X3_Y7 == 4'd2)
								stat_X3_Y7= 4'd3;
							if((we)&&(stat_X3_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X3_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X3_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X4_Y1= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X4_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X4_Y1= 4'd1;
								stat_X4_Y2= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X4_Y1= 4'd2;
								stat_X4_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y0= 4'd1;
								stat_X4_Y1= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X4_Y0 == 4'd2)
								stat_X4_Y0= 4'd3;
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X4_Y0 == 4'd0) 
										&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y0= 4'd2;
								stat_X4_Y1= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X4_Y2= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X4_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y1= 4'd1;
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X4_Y1 == 4'd2)
								stat_X4_Y1= 4'd3;
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X4_Y1 == 4'd0) 
										&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y1= 4'd2;
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y2= 4'd1;
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X4_Y2 == 4'd2)
								stat_X4_Y2= 4'd3;
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X4_Y2 == 4'd0) 
										&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y2= 4'd2;
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y3= 4'd1;
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X4_Y3 == 4'd2)
								stat_X4_Y3= 4'd3;
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X4_Y3 == 4'd0) 
										&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y3= 4'd2;
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y4= 4'd1;
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y4 == 4'd2)
								stat_X4_Y4= 4'd3;
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y4 == 4'd0) 
										&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y4= 4'd2;
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X5_Y5= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X5_Y5= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X5_Y5= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X5_Y5= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y5= 4'd1;
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y5 == 4'd2)
								stat_X4_Y5= 4'd3;
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y5 == 4'd0) 
										&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y5= 4'd2;
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y6= 4'd1;
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y6 == 4'd2)
								stat_X4_Y6= 4'd3;
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y6 == 4'd0) 
										&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y6= 4'd2;
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd4 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X4_Y7= 4'd1;
							end
							if(stat_X4_Y7 == 4'd2)
								stat_X4_Y7= 4'd3;
							if((we)&&(stat_X4_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X4_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X4_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X5_Y1= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X5_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X5_Y1= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X5_Y1= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y0= 4'd1;
								stat_X5_Y1= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X5_Y0 == 4'd2)
								stat_X5_Y0= 4'd3;
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X5_Y0 == 4'd0) 
										&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y0= 4'd2;
								stat_X5_Y1= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X5_Y2= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X5_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X5_Y2= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X5_Y2= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y1= 4'd1;
								stat_X5_Y2= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X5_Y1 == 4'd2)
								stat_X5_Y1= 4'd3;
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X5_Y1 == 4'd0) 
										&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y1= 4'd2;
								stat_X5_Y2= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X5_Y3= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X5_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X5_Y3= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X5_Y3= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y2= 4'd1;
								stat_X5_Y3= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X5_Y2 == 4'd2)
								stat_X5_Y2= 4'd3;
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X5_Y2 == 4'd0) 
										&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y2= 4'd2;
								stat_X5_Y3= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X5_Y4= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X5_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X5_Y4= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X5_Y4= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y3= 4'd1;
								stat_X5_Y4= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X5_Y3 == 4'd2)
								stat_X5_Y3= 4'd3;
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X5_Y3 == 4'd0) 
										&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y3= 4'd2;
								stat_X5_Y4= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X5_Y5= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X5_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X5_Y5= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X5_Y5= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y4= 4'd1;
								stat_X5_Y5= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X5_Y4 == 4'd2)
								stat_X5_Y4= 4'd3;
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X5_Y4 == 4'd0) 
										&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y4= 4'd2;
								stat_X5_Y5= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X6_Y5= 4'd1;
								stat_X7_Y5= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X6_Y5= 4'd2;
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X6_Y5= 4'd1;
								stat_X7_Y5= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X6_Y5= 4'd2;
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X5_Y6= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X5_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X5_Y6= 4'd1;
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X5_Y6= 4'd2;
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y5= 4'd1;
								stat_X5_Y6= 4'd1;
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y5 == 4'd2)
								stat_X5_Y5= 4'd3;
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y5 == 4'd0) 
										&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y5= 4'd2;
								stat_X5_Y6= 4'd2;
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y6= 4'd1;
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y6 == 4'd2)
								stat_X5_Y6= 4'd3;
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y6 == 4'd0) 
										&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y6= 4'd2;
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd5 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X5_Y7= 4'd1;
							end
							if(stat_X5_Y7 == 4'd2)
								stat_X5_Y7= 4'd3;
							if((we)&&(stat_X5_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X5_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X5_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X7_Y0= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y0= 4'd1;
								stat_X6_Y1= 4'd1;
							end
							if(stat_X6_Y0 == 4'd2)
								stat_X6_Y0= 4'd3;
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if((we)&&(stat_X6_Y0 == 4'd0) 
										&&(stat_X6_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y0= 4'd2;
								stat_X6_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X7_Y1= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y1= 4'd1;
								stat_X6_Y2= 4'd1;
							end
							if(stat_X6_Y1 == 4'd2)
								stat_X6_Y1= 4'd3;
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if((we)&&(stat_X6_Y1 == 4'd0) 
										&&(stat_X6_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y1= 4'd2;
								stat_X6_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X7_Y2= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y2= 4'd1;
								stat_X6_Y3= 4'd1;
							end
							if(stat_X6_Y2 == 4'd2)
								stat_X6_Y2= 4'd3;
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if((we)&&(stat_X6_Y2 == 4'd0) 
										&&(stat_X6_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y2= 4'd2;
								stat_X6_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X7_Y3= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y3= 4'd1;
								stat_X6_Y4= 4'd1;
							end
							if(stat_X6_Y3 == 4'd2)
								stat_X6_Y3= 4'd3;
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if((we)&&(stat_X6_Y3 == 4'd0) 
										&&(stat_X6_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y3= 4'd2;
								stat_X6_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X7_Y4= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y4= 4'd1;
								stat_X6_Y5= 4'd1;
							end
							if(stat_X6_Y4 == 4'd2)
								stat_X6_Y4= 4'd3;
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if((we)&&(stat_X6_Y4 == 4'd0) 
										&&(stat_X6_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y4= 4'd2;
								stat_X6_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X7_Y5= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X7_Y5= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X7_Y5= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y5= 4'd1;
								stat_X6_Y6= 4'd1;
							end
							if(stat_X6_Y5 == 4'd2)
								stat_X6_Y5= 4'd3;
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if((we)&&(stat_X6_Y5 == 4'd0) 
										&&(stat_X6_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y5= 4'd2;
								stat_X6_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X7_Y6= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X7_Y6= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X7_Y6= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y6= 4'd1;
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y6 == 4'd2)
								stat_X6_Y6= 4'd3;
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y6 == 4'd0) 
										&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y6= 4'd2;
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd6 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X6_Y7= 4'd1;
							end
							if(stat_X6_Y7 == 4'd2)
								stat_X6_Y7= 4'd3;
							if((we)&&(stat_X6_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X6_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X6_Y7= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd0)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y0= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y0= 4'd1;
							end
							if(stat_X7_Y0 == 4'd2)
								stat_X7_Y0= 4'd3;
							if((we)&&(stat_X7_Y0 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y0= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y0= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd1)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y1= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y1= 4'd1;
							end
							if(stat_X7_Y1 == 4'd2)
								stat_X7_Y1= 4'd3;
							if((we)&&(stat_X7_Y1 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y1= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y1= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd2)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y2= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y2= 4'd1;
							end
							if(stat_X7_Y2 == 4'd2)
								stat_X7_Y2= 4'd3;
							if((we)&&(stat_X7_Y2 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y2= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y2= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd3)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y3= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y3= 4'd1;
							end
							if(stat_X7_Y3 == 4'd2)
								stat_X7_Y3= 4'd3;
							if((we)&&(stat_X7_Y3 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y3= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y3= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd4)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y4= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y4= 4'd1;
							end
							if(stat_X7_Y4 == 4'd2)
								stat_X7_Y4= 4'd3;
							if((we)&&(stat_X7_Y4 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y4= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y4= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd5)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y5= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y5= 4'd1;
							end
							if(stat_X7_Y5 == 4'd2)
								stat_X7_Y5= 4'd3;
							if((we)&&(stat_X7_Y5 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y5= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y5= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd6)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y6= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y6= 4'd1;
							end
							if(stat_X7_Y6 == 4'd2)
								stat_X7_Y6= 4'd3;
							if((we)&&(stat_X7_Y6 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y6= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y6= 4'd3;
				end
			end//direzione
		end//posizione
		//controllo la posizione: capisco in che cella sono
		else if(mouse_cell_x == 5'd7 && mouse_cell_y == 5'd7)
		begin//controllo la direzione
			if(!direction) //controllo la direzione: orrizontale
			begin
				if (dimension+ mouse_cell_x < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y7= 4'd3;
				end
			end//direzione
			else //direzione verticale
			begin
				if (dimension+ mouse_cell_y < 4'd8)//se sono dentro
				begin
					case (dimension)
						4'd2:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd3:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
						4'd4:
						begin
							if((!we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave
							begin
								stat_X7_Y7= 4'd1;
							end
							if(stat_X7_Y7 == 4'd2)
								stat_X7_Y7= 4'd3;
							if((we)&&(stat_X7_Y7 == 4'd0) 
										)//se posso piazzare la nave, e devo piazzarla
							begin
								stat_X7_Y7= 4'd2;
								ship_placed=1;
							end
						end//interno case
					endcase
				end // if di sovradimensione
				else //se la nave supera la dimensione: non ci sta
				begin
					 stat_X7_Y7= 4'd3;
				end
			end//direzione
		end//posizione
	end//posizione
end
// operazioni di read, fatte per plottare a schermo
always @ (posedge clk_in)
begin
	if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X0_Y0;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X1_Y0;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X2_Y0;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X3_Y0;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X4_Y0;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X5_Y0;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X6_Y0;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd0)
		status_pointed_cell=stat_X7_Y0;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X0_Y1;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X1_Y1;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X2_Y1;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X3_Y1;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X4_Y1;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X5_Y1;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X6_Y1;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd1)
		status_pointed_cell=stat_X7_Y1;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X0_Y2;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X1_Y2;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X2_Y2;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X3_Y2;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X4_Y2;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X5_Y2;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X6_Y2;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd2)
		status_pointed_cell=stat_X7_Y2;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X0_Y3;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X1_Y3;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X2_Y3;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X3_Y3;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X4_Y3;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X5_Y3;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X6_Y3;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd3)
		status_pointed_cell=stat_X7_Y3;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X0_Y4;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X1_Y4;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X2_Y4;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X3_Y4;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X4_Y4;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X5_Y4;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X6_Y4;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd4)
		status_pointed_cell=stat_X7_Y4;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X0_Y5;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X1_Y5;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X2_Y5;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X3_Y5;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X4_Y5;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X5_Y5;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X6_Y5;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd5)
		status_pointed_cell=stat_X7_Y5;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X0_Y6;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X1_Y6;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X2_Y6;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X3_Y6;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X4_Y6;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X5_Y6;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X6_Y6;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd6)
		status_pointed_cell=stat_X7_Y6;
	else if(pointer_cell_x == 5'd0 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X0_Y7;
	else if(pointer_cell_x == 5'd1 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X1_Y7;
	else if(pointer_cell_x == 5'd2 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X2_Y7;
	else if(pointer_cell_x == 5'd3 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X3_Y7;
	else if(pointer_cell_x == 5'd4 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X4_Y7;
	else if(pointer_cell_x == 5'd5 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X5_Y7;
	else if(pointer_cell_x == 5'd6 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X6_Y7;
	else if(pointer_cell_x == 5'd7 && pointer_cell_y == 5'd7)
		status_pointed_cell=stat_X7_Y7;
end
endmodule
