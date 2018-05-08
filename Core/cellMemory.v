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
	 //stati del gioco da confrontare
	 turn_ia_placing,
	 turn_player_placing,
	 turn_ia_shoot,	
	 turn_player_shoot,

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

// stati del gioco
input [1:0] turn_ia_placing, turn_player_placing, turn_ia_shoot, turn_player_shoot;

reg [4:0] memory [9:0][9:0];

// lettura da memoria fatta dal putantore dello schermo. Stram di dati
always @ (posedge clk_in)
begin
	status_pointed_cell = memory[pointer_cell_x][pointer_cell_y];
	
	
	case (play_status)
		turn_ia_placing:
		begin
		// todo
		end
		turn_player_placing:
		begin
		// todo
		end
		turn_ia_shoot:
		begin
		// todo
		end
		turn_player_shoot:
		begin
		// todo
		end
	endcase
end


// scrittura/lettura nella memoria del mouse
always @ (negedge clk_in)
begin
	if(we) //se devo scrivere
	begin
		memory[mouse_cell_x][mouse_cell_y] = new_value;
	end
	status = new_value;
end








endmodule
