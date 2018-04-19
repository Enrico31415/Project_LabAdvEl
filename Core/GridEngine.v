`timescale 1ns / 1ps
`define turn_inizialize 2'b00
`define frequency_div 	30'd1
`define turn_player 2'b01
`define turn_IA 2'b10
`define cell_status_free 4'b0000
`define cell_status_occ 4'b0001
`define cell_status_player_hitted 4'b0010
`define cell_status_ia_hitted 4'b0011
`define cell_status_player_and_ia_hitted 4'b0100

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
	
	
	
	pointer_cell_read_status
	
	
	
	
    );
input clk_in;
input mouse_click;	
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;

input [9:0] pos_x;
input [9:0] pos_y;

//FIXME: per testare, sono nel turno del giocatore
reg [1:0] turn_status = 2'b01;  //determina la fase di gioco: 00 schieramento navi, 01 turno giocatore, 10 turno IA.
wire [3:0] mouse_cell_read_status; //stato attuale della cella letta
output [3:0] pointer_cell_read_status;
reg  [3:0] cell_new_status;

reg mouse_enable = 1'b1;
reg write_enable =1'b0;

wire[3:0] mouse_cell_x;
wire[3:0] mouse_cell_y;


wire[3:0] pointer_cell_x;
wire[3:0] pointer_cell_y;


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




//data la posizione in x, ed y, ritorna lo stato della cella. 
// si pu fare furbo? senza flag, ma controllando se lo stato  diverso?
// punta alla posizione del mouse.
cell_io memory( //gestisce la memoria
	.clk_in(clk_in),
	.mouse_cell_x(mouse_cell_x),
	.mouse_cell_y(mouse_cell_y),
	.new_value(cell_new_status),
	.we(write_enable),
	.pointer_cell_x(pointer_cell_x),
	.pointer_cell_y(pointer_cell_y),
	
	.status(mouse_cell_read_status),
	.status_pointed_cell(pointer_cell_read_status)
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
			write_enable = 1'b1;
			//se la cella  libera, allora pitturala
			if (mouse_cell_read_status == `cell_status_free)
			begin
				cell_new_status = `cell_status_occ;
			end
			else if (mouse_cell_read_status == `cell_status_occ) //viceversa, se  occupata, liberela.
			begin
				cell_new_status = `cell_status_player_hitted;
			end
			else if (mouse_cell_read_status == `cell_status_player_hitted) //viceversa, se  occupata, liberela.
			begin
				cell_new_status = `cell_status_ia_hitted;
			end
			else if (mouse_cell_read_status == `cell_status_ia_hitted) //viceversa, se  occupata, liberela.
			begin
				cell_new_status = `cell_status_player_and_ia_hitted;
			end
			else if (mouse_cell_read_status == `cell_status_player_and_ia_hitted) //viceversa, se  occupata, liberela.
			begin
				cell_new_status = `cell_status_free;
			end
		end	
		else
		begin
			write_enable = 1'b0;
		end
		mouse_enable = !mouse_click;
	end
	else if (turn_status == `turn_IA)//se tocca all'ia
	begin
		//TODO
		//genero random una posizione e verifico se  buona.
	end
end


endmodule
