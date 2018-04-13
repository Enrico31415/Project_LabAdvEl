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
	
	mouse_click,
	
	current_color,
	
	
	cell_x_main, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_y_main, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_status //stato della cella in uso: 4 possiblit: 00 vuota, 01 occupata nava, 10 nave colpita, 11 bordo.
	
	
	
	
    );
input mouse_click;	
input clk_in;
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;
input [11:0] current_color;
//FIXME: per testare, sono nel turno del giocatore
reg [1:0] turn_status = 2'b01;  //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
output [3:0] cell_x_main; //da 0 a 15 (uso solo i primi 12)
output [3:0] cell_y_main; //da 0 a 15
output reg [1:0] cell_status = 2'b00;


reg mouse_enable = 1;


mouse_pos_to_quadrant mps (
	.clk_in(clk_in),
	.mouse_pos_x(mouse_pos_x),
	.mouse_pos_y(mouse_pos_y),
	
	.cell_x(cell_x_main),
	.cell_y(cell_y_main)
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
		//se clicca, vedo cosa fare.... qui il casino.
		
			case(current_color)
				`back_ground : cell_status = `cell_status_free;
				`ship_color : cell_status = `cell_status_occ;
			endcase
		
		
			/* Nuova implementazione*/
			// testata a simulatore
			// TODO: Posizione cell_x e cell_y, Generare codice da programma.
//			cell_x = mouse_pos_x / `row_period;
//			cell_y = mouse_pos_y / `line_period;
			
			
			
			
			
			
			
			
			
			if(mouse_click & mouse_enable) //se ho cliccato sulal cella => cambio lo stato
			begin
				//se la cella  libera, allora pitturala
				if (cell_status == `cell_status_free)
				begin
					cell_status = `cell_status_occ;
				end
				else if (cell_status == `cell_status_occ) //viceversa, se  occupata, liberela.
				begin
					cell_status = `cell_status_free;
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
