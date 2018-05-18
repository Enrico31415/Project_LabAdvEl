// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da memoryGeneratorv2.py
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
input [1:0] play_status;
input direction;
input [2:0] mouse_cell_x;
input [2:0] mouse_cell_y;
input [2:0] pointer_cell_x;
input [2:0] pointer_cell_y;
input [2:0] dimension;
output reg [3:0] status;
output reg [3:0] status_pointed_cell;
output reg ship_placed = 0;
// genero la memoria
reg [3:0] memory [0:7][0:7];
//la inizializzo a zero
integer i, j;
initial begin
	for (i = 0; i <= 7; i = i + 1)
	begin
		for (j = 0; j <= 7; j = j + 1)
		begin
			 memory[i][j] = 4'd0;
		end
	end
end
// operazioni di scrittura/lettura dal mouse
always @ (negedge clk_in)
begin
	ship_placed = 0;
//se e' il turno del giocatore
	if (play_status== 2'b10)
	begin
			if(we)
			begin
				memory[mouse_cell_x][mouse_cell_y] =new_value;
			end
			status=new_value;
		end
	else if (play_status== 2'b01)
	begin
		 // piallo gli stati temporanei
		for (i = 0; i <= 7; i = i + 1)
		begin
			for (j = 0; j <= 7; j = j + 1)
			begin
				if (memory[i][j] == 4'd1)
				 memory[i][j] = 4'd0;
				else if (memory[i][j] == 4'd3 )
				 memory[i][j] = 5'd2;
				else if (memory[i][j] == 4'd4 )
				 memory[i][j] = 4'd0;
			end
		end
		//controllo la direzione
		if(!direction)
		begin
			//case sulla dimensione della nave
			case(dimension)
			3'd2:
			begin
				if (mouse_cell_x+4'd2 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd4;
				end
			end
			3'd3:
			begin
				if (mouse_cell_x+4'd3 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0
								&& memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd4;
				end
			end
			3'd4:
			begin
				if (mouse_cell_x+4'd4 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x+4'd3][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x+4'd3][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x+4'd3][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x+4'd3][mouse_cell_y] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x+4'd1][mouse_cell_y] == 4'd0
								&& memory[mouse_cell_x+4'd2][mouse_cell_y] == 4'd0
								&& memory[mouse_cell_x+4'd3][mouse_cell_y] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x+4'd3][mouse_cell_y] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd1][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd2][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x+4'd3][mouse_cell_y] = 4'd4;
				end
			end
			endcase
		end
		else
		begin
			case(dimension)
			3'd2:
			begin
				if (mouse_cell_y+4'd2 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd4;
				end
			end
			3'd3:
			begin
				if (mouse_cell_y+4'd3 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0
								&& memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd4;
				end
			end
			3'd4:
			begin
				if (mouse_cell_y+4'd4 <= 4'd8)//se sono dentro il range
				begin
					//pre piazzo
					if (!we)
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd3;
						end
						if(memory[mouse_cell_x][mouse_cell_y+4'd3] == 4'd0)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd3] = 4'd1;
						end
						else if(memory[mouse_cell_x][mouse_cell_y+4'd3] == 4'd2)
						begin
							memory[mouse_cell_x][mouse_cell_y+4'd3] = 4'd3;
						end
					end//write enable
					else
					begin
						if(memory[mouse_cell_x][mouse_cell_y] == 4'd0 //se è pre allocata
								&& memory[mouse_cell_x][mouse_cell_y+4'd1] == 4'd0
								&& memory[mouse_cell_x][mouse_cell_y+4'd2] == 4'd0
								&& memory[mouse_cell_x][mouse_cell_y+4'd3] == 4'd0
							)
						begin // la piazzo
							memory[mouse_cell_x][mouse_cell_y] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd2;
							memory[mouse_cell_x][mouse_cell_y+4'd3] = 4'd2;
							ship_placed = 1;
						end
					end
				end
				else
				begin
					//metto che non si puo' scrivere
					memory[mouse_cell_x][mouse_cell_y] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd1] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd2] = 4'd4;
					memory[mouse_cell_x][mouse_cell_y+4'd3] = 4'd4;
				end
			end
			endcase
		end
	end
end //always
// operazioni di read, fatte per plottare a schermo
always @ (posedge clk_in)
begin
	status_pointed_cell= memory[pointer_cell_x][pointer_cell_y];
end
endmodule
