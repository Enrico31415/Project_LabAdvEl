module memory_player_placing(
	 input clk_in,
    input [3:0] cell_x,
    input [3:0] cell_y,
    input [3:0] ship_length,
    input direction,
	 
	 output reg ship_placed
    );
	 
reg direction_old;
	 
reg [3:0] cell_counter = 4'd0; //contatore della cella

reg [4:0] buf_cell_read [3:0]; //stato della cella letta
	 
always @ (posedge clk_in)
begin
	//se ho piazzato la nave, allora resetta i conteggi
	if(ship_placed)
	begin
		cell_counter = 4'd0;
		ship_placed = 0;
	end
	//se ho cambiato la direzione
	if(direction_old != direction)
	begin
		cell_counter = 4'd0;
	end
	
	//vado a leggere le celle succssive tanto quanto è la lunghezza della nave
	if(cell_counter <= ship_length)
	begin
		//buf_cell_read[(cell_counter-1)] = 
	end
	else
	begin
		//resetto
		cell_counter = 4'd0;
		ship_placed = 0;
	end
	
	cell_counter = cell_counter + 1;
	direction_old = direction;
end	 


endmodule
