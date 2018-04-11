`timescale 1ns / 1ps
`define turn_inizialize 2'b00
`define turn_player 2'b01
`define turn_IA 2'b10
`define cell_status_free 2'b00
`define cell_status_occ 2'b01
`define cell_status_hitted 2'b10
`define cell_status_outbound 2'b11
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

	
	turn_status, //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
	cell_x, //determina quale cella è in utilizzo in x (parte da in alto a sx)!!!
	cell_y, //determina quale cella è in utilizzo in x (parte da in alto a sx)!!!
	cell_status //stato della cella in uso: 4 possiblità: 00 vuota, 01 occupata nava, 10 nave colpita, 11 bordo.
	
	//TODO Implementazione della posizione del mouse.
	
	
	
    );
	 
input clk_in;

output reg [1:0] turn_status = 2'b00;
output reg [3:0] cell_x; //da 0 a 15 (uso solo i primi 10)
output reg [3:0] cell_y; //da 0 a 15
output reg [1:0] cell_status = 2'b11;

	 

always @ (posedge clk_in)
begin
	if (turn_status == `turn_inizialize)//se devo inizializzare 
	begin
		//TODO: generazione random, controllo posizionamento
		
		
		
		turn_status = turn_status + 1; //tocca al giocatore
	end
	else if (turn_statut == `turn_player)//se tocca al giocatore
	begin
		//TODO: 
		//aspetto qui finché non ha cliccato?
		//se clicca, vedo cosa fare.... qui il casino.
	end
	else if (turn_statu == `turn_IA)//se tocca all'ia
	begin
		//TODO:
		//genero random una posizione e verifico se è buona.
		
	end
end 


endmodule
