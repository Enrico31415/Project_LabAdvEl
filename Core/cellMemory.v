
module cell_io(
 	 clk_in,
	 mouse_cell_x, //cella del mouse x 
	 mouse_cell_y, //cella del mouse y
	 pointer_cell_x, //cella del puntatore(pennello) x
	 pointer_cell_y, //idem y
	 we, //Write enable, se deve scrivere
	 new_value, //valore da scrivere
	 ship_length, // dimensione della nave
    direction, // direzione 
	 game_status, // stato del gioco
	 player_placing, // statico: turno del giocatore: posiziona
	 player_shoot, //statico: turno del giocatore: spara
	
	
	
	 cell_status_free,
	 cell_status_player_occ,
	 cell_status_ia_occ,
	 cell_status_player_hitted,
	 cell_status_ia_hitted,
	 cell_status_player_and_ia_hitted,
	 cell_status_pre_occupied,

		
	 
	 ship_placed, 
	 status, //stato ritornato dal mouse
	 status_pointed_cell //stato ritornato dal puntantore
);
input clk_in;
input we;
input [4:0] new_value;
input [3:0] mouse_cell_x;
input [3:0] mouse_cell_y;
input [3:0] pointer_cell_x;
input [3:0] pointer_cell_y;
reg direction_old;
reg [3:0] cell_counter = 4'd0; //contatore della cella
reg [4:0] buf_cell_read [3:0]; //stato della cella letta
input direction;
input [1:0] game_status;
input [1:0] player_placing, player_shoot;
input [3:0] ship_length;

input [4:0] cell_status_free;
input [4:0] cell_status_player_occ;
input [4:0] cell_status_ia_occ;
input [4:0] cell_status_player_hitted;
input [4:0] cell_status_ia_hitted;
input [4:0] cell_status_player_and_ia_hitted;
input [4:0] cell_status_pre_occupied;

// mi dice se posso piazzarla
reg [3:0] ship_placement_allowed = 4'd0;

reg [1:0] memory_status = 2'd0; //00 lettura, //01 controllo //02 scrittura //03 reset

output reg ship_placed = 0;
output reg [4:0] status;
output reg [4:0] status_pointed_cell;
// genero la memoria
reg [4:0] memory [0:9][0:9];
//la inizializzo a zero
integer i, j;
initial begin
	for (i = 0; i <= 9; i = i + 1)
	begin
		for (j = 0; j <= 9; j = j + 1)
		begin
			 memory[i][j] = 5'd0;
		end
	end
end






// operazioni di scrittura/lettura dal mouse
always @ (negedge clk_in)
begin
	if(game_status == player_shoot) // se il giocatore deve sparare
	begin
		if(we)
		begin
			memory[mouse_cell_x][mouse_cell_y] = new_value;
		end
		status = memory[mouse_cell_x][mouse_cell_y];
	end
	
	
	
	
	else if (game_status == player_placing) //se il giocatore deve posizionare le navi
	begin
		//se ho cambiato la direzione
		if(direction_old != direction)
		begin
			cell_counter = 4'd0;
			ship_placement_allowed = 4'd0;
		end 
		if (direction == 1'd0)
		begin
			case (memory_status)
			2'd0: //leggo
			begin
				ship_placement_allowed = 4'd0;
				buf_cell_read[(cell_counter-1)] = memory[(mouse_cell_x+cell_counter - 1)][mouse_cell_y];
				$display("status 0");
				$display( "%d", (mouse_cell_x+cell_counter - 1));
				if(cell_counter >= ship_length) //se è così, ho finito di leggere
				begin
					cell_counter = 4'd0;
					memory_status = memory_status+1;
				end
				cell_counter = cell_counter + 1;
			end
			2'd1: //controllo
			begin
				if (buf_cell_read[(cell_counter - 1)] == cell_status_free || buf_cell_read[(cell_counter - 1)] == cell_status_pre_occupied) //se è libera o pre occupata
				begin //se la somma torna, allora posso piazzarla
					ship_placement_allowed = ship_placement_allowed + 1;
					memory[((mouse_cell_x+cell_counter - 1))][mouse_cell_y] = cell_status_pre_occupied;
				end
				$display("status 1");
				$display( "%d", (mouse_cell_x+cell_counter - 1));
				if (cell_counter >= ship_length) //se ho finito di leggere
				begin
					cell_counter = 4'd0;
					memory_status = memory_status+1; 
				end
				cell_counter = cell_counter + 1;
			end
			2'd2: //se posso piazzarle, pre piazzo
			begin
				if (ship_placement_allowed	== cell_counter)
				begin
					memory[(mouse_cell_x+cell_counter)][mouse_cell_y] = cell_status_pre_occupied;
				end
				
				cell_counter = cell_counter + 1;
			end
			2'd3:
			begin
				if (we && ship_placement_allowed	== cell_counter) 
				begin
					memory[(mouse_cell_x+cell_counter)][mouse_cell_y] = cell_status_player_occ;
				end
				cell_counter = cell_counter +1;
				if(cell_counter	>= ship_length)
				begin
					memory_status = 1'd0;
					ship_placed = 1'd0;
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
