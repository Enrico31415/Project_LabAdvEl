
module cell_io(
 	 clk_in,
	 clk_25M_in,
	 mouse_cell_x, //cella del mouse x 
	 mouse_cell_y, //cella del mouse y
	 pointer_cell_x, //cella del puntatore(pennello) x
	 pointer_cell_y, //idem y
	 we, //Write enable, se deve scrivere
	 new_value, //valore da scrivere
	 reset, 

	 status, //stato ritornato dal mouse
	 status_pointed_cell //stato ritornato dal puntantore
	 );
input clk_in;
input clk_25M_in;
input we;
input reset;
input [3:0] new_value;
input [2:0] mouse_cell_x;
input [2:0] mouse_cell_y;
input [2:0] pointer_cell_x;
input [2:0] pointer_cell_y;
output reg [3:0] status;
output reg [3:0] status_pointed_cell;
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
	if(reset)
	begin
		for (i = 0; i <= 7; i = i + 1)
		begin
			for (j = 0; j <= 7; j = j + 1)
			begin
			 memory[i][j] = 4'd0;
			end
		end
	end
	else
	begin
		//se e' il turno del giocatore
		if(we)
		begin
			memory[mouse_cell_x][mouse_cell_y] =new_value;
		end
		status=memory[mouse_cell_x][mouse_cell_y];
	end
end //always
// operazioni di read, fatte per plottare a schermo
always @ (posedge clk_25M_in)
begin
	status_pointed_cell= memory[pointer_cell_x][pointer_cell_y];
end
endmodule
