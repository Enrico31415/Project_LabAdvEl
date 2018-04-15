`timescale 1ns / 1ps
`define turn_inizialize 2'b00
`define turn_player 2'b01
`define turn_IA 2'b10
`define cell_status_free 2'b00
`define cell_status_occ 2'b01
`define cell_status_hitted 2'b10
`define cell_status_outbound 2'b11

`define row_dimension	10'd2
`define line_dimension	10'd2

`define back_ground 	12'b010101101101
`define line_color 	12'b111100001111 
`define row_color 	12'b111100001111 
`define ship_color 	12'b010101010101


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
	
	mouse_click, //evento del click del mouse
	
	
	
	cell_x_mouse, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_y_mouse, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_read_status //stato della cella in uso: 4 possiblit: 00 vuota, 01 occupata nava, 10 nave colpita, 11 bordo.
	
	
	
	
    );
input mouse_click;	
input clk_in;
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;

input [9:0] pos_x;
input [9:0] pos_y;

//FIXME: per testare, sono nel turno del giocatore
reg [1:0] turn_status = 2'b01;  //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
output [3:0] cell_x_mouse; //da 0 a 15 (uso solo i primi 12)
output [3:0] cell_y_mouse; //da 0 a 15
output [1:0] cell_read_status; //stato attuale della cella letta
reg  [1:0] cell_new_status;

reg mouse_enable = 1;





pos_to_quadrant mouse_position_to_quadrant ( //ritorna la posizione in celle, attuale del mouse
	.clk_in(clk_in),
	.pos_x(mouse_pos_x),
	.pos_y(mouse_pos_y),
	
	.cell_x(cell_x_mouse),
	.cell_y(cell_y_mouse)
);


//data la posizione in x, ed y, ritorna lo stato della cella.
// si pu� fare furbo? senza flag, ma controllando se lo stato � diverso?
cell_io memory( //gestisce la memoria
	.clk_in(clk_in),
	.pos_x(pos_x),
	.pos_y(pos_y),
	.write_enable(mouse_click & mouse_enable), // scrivo solo se ho cliccato, e per un ciclo solo
	.new_value(cell_new_status),
	
	.status(cell_read_status)
);


always @ (posedge clk_in)
begin
	if (turn_status == `turn_inizialize)//se devo inizializzare 
	begin
		//TODO: generazione random, controllo posizionamento
		turn_status = turn_status + 1; //tocca al giocatore
	end
	else if (turn_status == `turn_player)//se tocca al giocatore
	begin
		//TODO: 
		//aspetto qui finch non ha cliccato?
		if(mouse_click & mouse_enable) //se ho cliccato sulal cella => cambio lo stato
		begin
			//se la cella  libera, allora pitturala
			if (cell_read_status == `cell_status_free)
			begin
				cell_new_status = `cell_status_occ;
			end
			else if (cell_read_status == `cell_status_occ) //viceversa, se  occupata, liberela.
			begin
				cell_new_status = `cell_status_free;
			end
		end	
		mouse_enable = !mouse_click;
	end
	else if (turn_status == `turn_IA)//se tocca all'ia
	begin
		//TODO:
		//genero random una posizione e verifico se  buona.
	end
end


endmodule
