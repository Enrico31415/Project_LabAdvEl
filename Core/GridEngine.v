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
	

	
	
	cell_x, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_y, //determina quale cella  in utilizzo in x (parte da in alto a sx)!!!
	cell_status //stato della cella in uso: 4 possiblit: 00 vuota, 01 occupata nava, 10 nave colpita, 11 bordo.
	
	
	
	
    );
input mouse_click;	
input clk_in;
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;
//FIXME: per testare, sono nel turno del giocatore
reg [1:0] turn_status = 2'b01;  //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
output reg [3:0] cell_x = 4'b1111; //da 0 a 15 (uso solo i primi 10)
output reg [3:0] cell_y = 4'b1111; //da 0 a 15
output reg [1:0] cell_status = 2'b11;

	 

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
		
		
		// gestisco la posizione del mouse: con le griglie: na svangata di if
		if (mouse_pos_x <= ('d64-`line_dimension) && mouse_pos_x >= 0 && //condizione sulla x
				mouse_pos_y <= ('d48-`row_dimension) && mouse_pos_y >= 0) //condizione sulla y
			begin //sono in 0,0 (quadrante)
				cell_x = 4'b0000;
				cell_y = 4'b0000;
				//se clicco
				if(mouse_click) //TODO anche il rilascio
				begin
					//cambio lo stato della cella
					cell_status = 2'b01;
				end
				else
				begin
					cell_status = 2'b00;
				end
			end
		else if (mouse_pos_x <= ('d128-`line_dimension) && mouse_pos_x >= ('d64+`line_dimension)  && //condizione sulla x
				mouse_pos_y <= ('d96-`row_dimension) && mouse_pos_y >= ('d48+`row_dimension) ) //condizione sulla y
			begin //sono in 1,1 (quadrante)
				cell_x = 4'b0001;
				cell_y = 4'b0001;
				//se clicco
				if(mouse_click) //TODO anche il rilascio
				begin
					//cambio lo stato della cella
					cell_status = 2'b01;
				end
				else
				begin
					cell_status = 2'b00;
				end
			end
	end
	else if (turn_status == `turn_IA)//se tocca all'ia
	begin
		//TODO:
		//genero random una posizione e verifico se  buona.
		
	end
end 


endmodule
