`define row_dimension	10'd2
`define line_dimension	10'd2

`define row_period	10'd48
`define line_period  10'd64


//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:06 04/11/2018 
// Design Name: 
// Module Name:    GridEngine 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module GridEngine(clk_in,
	//TODO Implementazione della posizione del mouse.
	mouse_pos_x,
	mouse_pos_y,
	
	// posizione attuale del pxcel a schermo
	pos_x,
	pos_y,
	
	mouse_click, //evento del click del mouse [0] right click, [1] left click
	
	//stati delle celle, siccome sono in comune con la memoria, per evitare mismatch  meglio che le definizione sia contenute nel modulo padre
	cell_status_free,
	cell_status_player_occ,
	cell_status_ia_occ,
	cell_status_player_hitted,
	cell_status_ia_hitted,
	cell_status_player_and_ia_hitted,
	cell_status_pre_occupied,
	
	
	// dimensione delle navi
	ship_size0, ship_size1, ship_size2, ship_size3, ship_size4,
	
	
	// stati del gioco
	turn_ia_placing,
	turn_player_placing,
	turn_ia_shoot,	
	turn_player_shoot,
	
	
	
	pointer_cell_read_status
	
	
	
	
    );
	 
`include "gridFunctions.v"

input [4:0] cell_status_free;
input [4:0] cell_status_ia_occ;
input [4:0] cell_status_player_occ;
input [4:0] cell_status_player_hitted;
input [4:0] cell_status_ia_hitted;
input [4:0] cell_status_player_and_ia_hitted;
input [4:0] cell_status_pre_occupied;

// sono 5 navi, con profondit 3 bit (massimo 7 la lunghezza)
input [3:0] ship_size0, ship_size1, ship_size2, ship_size3, ship_size4;



// stati del gioco
input [1:0] turn_ia_placing, turn_player_placing, turn_ia_shoot, turn_player_shoot;


input clk_in;
input [1:0] mouse_click;	
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;

input [9:0] pos_x;
input [9:0] pos_y;

output [4:0] pointer_cell_read_status;

//FIXME: per testare, sono nel turno del giocatore
reg [1:0] turn_status = 2'b00;  //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
reg  [4:0] cell_new_status;

reg mouse_right_enable = 1'b1;
reg mouse_left_enable = 1'b1;
reg write_enable =1'b0;

// registro che tiene conto della direzione della nave: 0 orrizontale, 1 verticale
reg direction = 0;

reg [3:0] ship_size_pointer = 4'd0;

wire [3:0] mouse_cell_x;
wire [3:0] mouse_cell_y;
wire [4:0] mouse_cell_read_status; //stato attuale della cella letta

wire[3:0] pointer_cell_x;
wire[3:0] pointer_cell_y;

// crea un array da: 5 elementi [4:0]
// di profondit 2^4-1 (3:0)
wire[3:0] ship_size [4:0];


assign ship_size[0] = ship_size0;
assign ship_size[1] = ship_size1;
assign ship_size[2] = ship_size2;
assign ship_size[3] = ship_size3;
assign ship_size[4] = ship_size4;

// flag per capire se � piazzata o meno la nave
wire ship_placed;



//dalla posizione del mouse, torna la posizione in celle.
pos_to_quadrant mouse_to_cell(
	.clk_in(clk_in), 
	.pos_x(mouse_pos_x),
	.pos_y(mouse_pos_y),
	
	.cell_x(mouse_cell_x),
	.cell_y(mouse_cell_y)

);


//dalla posizione del pixel in scrittura, torna la posizione in celle.
pos_to_quadrant pointer_to_cell(
	.clk_in(clk_in), 
	.pos_x(pos_x),
	.pos_y(pos_y),
	
	.cell_x(pointer_cell_x),
	.cell_y(pointer_cell_y)

);



cell_io memory( //gestisce la memoria
	.clk_in(clk_in),
	.mouse_cell_x(mouse_cell_x),
	.mouse_cell_y(mouse_cell_y),
	.new_value(cell_new_status),
	.we(write_enable),
	.pointer_cell_x(pointer_cell_x),
	.pointer_cell_y(pointer_cell_y),
	
	.game_status(turn_status), // stato del gioco
	.player_placing(turn_player_placing), // statico: turno del giocatore: posiziona
	.player_shoot(turn_player_shoot), 
	
	.ship_length(ship_size[ship_size_pointer]), // dimensione della nave
   .direction(direction), // direzione 
	
	
	.cell_status_free(cell_status_free),
	.cell_status_player_occ(cell_status_player_occ),
	.cell_status_ia_occ(cell_status_ia_occ),
	.cell_status_player_hitted(cell_status_player_hitted),
	.cell_status_ia_hitted(cell_status_ia_hitted),
	.cell_status_player_and_ia_hitted(cell_status_player_and_ia_hitted),
	.cell_status_pre_occupied(cell_status_pre_occupied),
	
	//roba letta dal mouse
	.status(mouse_cell_read_status),
	.status_pointed_cell(pointer_cell_read_status),
	.ship_placed(ship_placed)
);



always @ (posedge clk_in)
begin
	//piazza l'ia
	//turn_status = turn_player_placing;
	if (turn_status == turn_ia_placing)
	begin
		turn_status = turn_status + 1;
	end


	else if (turn_status == turn_player_placing)//se il giocatore deve posizionare le navi 
	begin
		write_enable = mouse_click[0] & mouse_right_enable;
		case (ship_size_pointer)
			4'd0: // posiziona la prima nave
			begin
				//cosa sbagliata: la funzione ritorna 1 se va a buon fine, pertanto  come fare +1 (non uccidetermi)
				ship_size_pointer = ship_size_pointer + ship_placed;
			end
			4'd1: // posiziona la seconda nave
			begin
				ship_size_pointer = ship_size_pointer + ship_placed;
			end
			4'd2: // posiziona la terza nave
			begin
				ship_size_pointer = ship_size_pointer + ship_placed;
			end
			4'd3: // posiziona la quarta nave
			begin
				ship_size_pointer = ship_size_pointer + ship_placed;
			end
			4'd4: // posiziona la quinta nave
			begin
				ship_size_pointer = ship_size_pointer + ship_placed;
				turn_status = turn_status+1;
			end
			default:
			begin
				//se cado qui, si  rotto
				//turn_status = turn_status+1;
			end
		endcase
		mouse_right_enable = !mouse_click[0];
		//se clicca il sinistro, devo giare il posizionamento
		if(mouse_click[1] & mouse_left_enable) //se ho cliccato 
		begin
			direction = direction+1; // sfrutto l'oveflow (spero funzioni. Funziona)
		end
		mouse_left_enable = !mouse_click[1];
	end
	
	
	
	if (turn_status == turn_player_shoot)//se tocca al giocatore
	begin
		//TODO: 
		//aspetto qui finch non ha cliccato?
		if(mouse_click[0] & mouse_right_enable) //se ho cliccato sulal cella => cambio lo stato
		begin
			write_enable = 1'b1;

			if (mouse_cell_read_status == cell_status_free)
			begin
				cell_new_status = cell_status_player_occ;  // _____________ 0->1 
			end
			else if (mouse_cell_read_status == cell_status_player_occ) 
			begin
				cell_new_status = cell_status_player_hitted;   // _____________ 1->2 
			end
			else if (mouse_cell_read_status == cell_status_player_hitted) 
			begin
				cell_new_status = cell_status_ia_hitted;  // _____________ 2->3 
			end
			else if (mouse_cell_read_status == cell_status_ia_hitted) 
			begin
				cell_new_status = cell_status_player_and_ia_hitted; // _____________ 3->4
			end
			else if (mouse_cell_read_status == cell_status_player_and_ia_hitted) 
			begin
				cell_new_status = cell_status_free;   // _____________ 4->0
			end
			else
			begin
				cell_new_status = cell_status_free;   
			end
		end	
		else
		begin
			write_enable = 1'b0;
		end
		mouse_right_enable = !mouse_click[0];
	end
	
	
	
	
	/*
	
	else if (turn_status == turn_player_shoot)//se tocca all'ia
	begin
		//TODO
		//genero random una posizione e verifico se  buona.
		
		
		
		turn_status = 0;
	end
	*/
end


endmodule
