`timescale 1ns / 1ps
`define turn_player_placing 2'b01
`define turn_ia_placing 2'b00
`define turn_player_shoot 2'b10
`define turn_ia_shoot 2'b11
`define frequency_div 	30'd1
`define turn_player 2'b01
`define turn_IA 2'b10






// CODIFICA DELLA CELLA DI MEMORIA: 5 bit
// 	_ 1 bit libero (?)	_ _ 2 bit per i colpi sparati 	_ _ 2 bit per la disposizione
//  
// bit per la disposizione: 
//		00 acqua 			/ 01 nave mia			/ 10 nave sua 			/ 11 entrambe
//
// bit per i colpi sparati: 
// 	00 non sparato 	/ 01 sparato da me 	/ 10 sparato da lui 	/ 11 sparato da entrambi
//
//



`define row_dimension	10'd2
`define line_dimension	10'd2

// tutti gli stati delle navi
`include "cellStatus.v"


module GridEngine(clk_in,
	//TODO Implementazione della posizione del mouse.
	mouse_pos_x,
	mouse_pos_y,
	
	// posizione attuale del pxcel a schermo
	pos_x,
	pos_y,
	
	mouse_click, //evento del click del mouse [0] right click, [1] left click
	
	
	
	// dimensione delle navi
	ship_size0, ship_size1, ship_size2, ship_size3, ship_size4,
	
	
	
	
	
	
	pointer_cell_read_status
	
	
	
	
    );
	 

input [3:0] ship_size0, ship_size1, ship_size2, ship_size3, ship_size4;

// sono 5 navi, con profondit 3 bit (massimo 7 la lunghezza)


input clk_in;
input [1:0] mouse_click;	
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;

input [9:0] pos_x;
input [9:0] pos_y;

output [3:0] pointer_cell_read_status;


reg [1:0] turn_status = 2'd0;  //determina la fase di gioco:
reg [3:0] cell_new_status = 4'd0;

reg mouse_right_enable = 1'b1;
reg mouse_left_enable = 1'b1;
reg write_enable =1'b0;

// registro che tiene conto della direzione della nave: 0 orrizontale, 1 verticale
reg direction = 0;

reg [3:0] ship_size_pointer = 4'd0;

wire [2:0] mouse_cell_x;
wire [2:0] mouse_cell_y;
wire [4:0] mouse_cell_read_status; //stato attuale della cella letta

wire [2:0] pointer_cell_x;
wire [2:0] pointer_cell_y;

// crea un array da: 5 elementi [4:0]
// di profondit 2^4-1 (3:0)
wire [2:0] ship_size [4:0];

wire ship_placed;

assign ship_size[0] = ship_size0;
assign ship_size[1] = ship_size1;
assign ship_size[2] = ship_size2;
assign ship_size[3] = ship_size3;
assign ship_size[4] = ship_size4;






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
	 
	 
	
	
	.play_status(turn_status), //stato attuale del gioco (schieramento, shooting, etc)
	.direction(direction), //direzione della nave 
	.dimension(ship_size[ship_size_pointer]), //dimensione della nave 
	
	
	.status(mouse_cell_read_status),
	.ship_placed(ship_placed),
	.status_pointed_cell(pointer_cell_read_status)
);



always @ (posedge clk_in)
begin
if (turn_status == `turn_ia_placing)//se devo inizializzare 
	begin
		//TODO CODICE DI CARLO
		turn_status = turn_status + 2'd1;
		cell_new_status =  4'd2;
	end



	else if (turn_status == `turn_player_placing)//se devo inizializzare 
	begin
		//TODO: generazione random, controllo posizionamento
		//TODO: provo ad implementare il posizionamento delle navi.
		write_enable = mouse_click[0] & mouse_right_enable;
		case (ship_size_pointer)
			4'd0: // posiziona la prima nave
			begin
				if (ship_placed)
				begin
					ship_size_pointer = ship_size_pointer+1;
				end
				
			end
			4'd1: // posiziona la seconda nave
			begin
				if (ship_placed)
				begin
					ship_size_pointer = ship_size_pointer+1;
				end
			end
			4'd2: // posiziona la terza nave
			begin
				if (ship_placed)
				begin
					ship_size_pointer = ship_size_pointer+1;
				end
			end
			4'd3: // posiziona la quarta nave
			begin
				if (ship_placed)
				begin
					ship_size_pointer = ship_size_pointer+1;
				end
			end
			4'd4: // posiziona la quinta nave
			begin
				if (ship_placed)
				begin
					ship_size_pointer = ship_size_pointer+1;
					turn_status = turn_status +2'd1;
				end
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
			direction = !direction; // s
		end
		mouse_left_enable = !mouse_click[1];
	end
	
	
	
	
	else if (turn_status == `turn_player)//se tocca al giocatore
	begin
		//TODO: 
		//aspetto qui finch non ha cliccato?
		if(mouse_click[0] & mouse_right_enable) //se ho cliccato sulal cella => cambio lo stato
		begin
			write_enable = 1'b1;
			cell_new_status = 4'd3;
		end
		else
		begin
			write_enable = 1'b0;
		end
		mouse_right_enable = !mouse_click[0];
	end
	else if (turn_status == `turn_IA)//se tocca all'ia
	begin
		//TODO
		//genero random una posizione e verifico se  buona.
	end
end


endmodule
