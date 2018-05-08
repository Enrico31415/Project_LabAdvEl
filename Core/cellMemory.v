// modulo autogenerato, non modificare. Qualsiasi modifica sarà cancellata all successiva esecuzione
// generato da memoryGeneratorV2.py
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

	 turn_ia_placing, //stati di gioco 
	 turn_player_placing, //stati di gioco 
	 turn_ia_shoot, //stati di gioco 
	 turn_player_shoot, //stati di gioco 

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
input [1:0] turn_ia_placing;
input [1:0] turn_player_placing;
input [1:0] turn_ia_shoot;
input [1:0] turn_player_shoot;
output reg [4:0] status;
output reg [4:0] status_pointed_cell;
output reg ship_placed = 0;
// genero la memoria
reg [5:0] memory [0:9][0:9];
//la inizializzo a zero
integer i, j;
initial begin
	for (i = 0; i <= 9; i = i + 1)
	begin
		for (j = 0; j <= 9; j = j + 1)
		begin
			 memory[i][j] = 5'b0;
		end
	end
end
// operazioni di scrittura/lettura dal mouse
always @ (negedge clk_in)
begin
//se e' il turno del giocatore
	if (play_status== turn_player_shoot)
	begin
			if(we)
			begin
				memory[mouse_cell_x][mouse_cell_y] =new_value;
			end
			status=new_value;
		end
	if (play_status== turn_player_shoot)
	begin
		//controllo la direzione
		if(direction)
		begin
			//case sulla dimensione della nave
		 //test0
		end
		else
		begin
		 //test1
		end
	end
end //always
// operazioni di read, fatte per plottare a schermo
always @ (posedge clk_in)
begin
	status_pointed_cell= memory[pointer_cell_x][pointer_cell_y];
end
endmodule
