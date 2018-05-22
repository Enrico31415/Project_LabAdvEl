`timescale 1ns / 1ps
`define turn_player_placing 2'b01
`define turn_ia_placing 2'b00
`define turn_player_shoot 2'b10
`define turn_ia_shoot 2'b11
`define frequency_div 	30'd1




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


wire [2:0] mouse_cell_x;
wire [2:0] mouse_cell_y;
wire [3:0] mouse_cell_read_status; //stato attuale della cella letta

wire [2:0] pointer_cell_x;
wire [2:0] pointer_cell_y;






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
if (turn_status == 2'd0)//piazzamento dell'ia 
	begin
		//TODO CODICE DI CARLO
		turn_status = turn_status + 2'd1;
	end



	else if (turn_status == 2'd1)// piazzamento del giocatore
	begin
		turn_status = turn_status + 2'd1;
	end
	
	
	
	
	else if (turn_status == 2'd2)//se tocca al giocatore
	begin
		if(mouse_click[0] & mouse_right_enable) //se ho cliccato sulal cella => cambio lo stato
		begin
			case(mouse_cell_read_status)
				`free:
				begin
					write_enable = 1'b1;
					cell_new_status = `Ps;
				end
				`Is:
				begin
					write_enable = 1'b1;
					cell_new_status = `PsIs;
				end
				`Pn:
				begin
					write_enable = 1'b1;
					cell_new_status = `PnPs;
				end
				`In:
				begin
					write_enable = 1'b1;
					cell_new_status = `InPs;
				end
				`PnIn:
				begin
					write_enable = 1'b1;
					cell_new_status = `PnInPs;
				end
				`PnIs:
				begin
					write_enable = 1'b1;
					cell_new_status = `PnPsIs;
				end
				`InIs:
				begin
					write_enable = 1'b1;
					cell_new_status = `InPsIs;
				end
				`PnInIs:
				begin
					write_enable = 1'b1;
					cell_new_status = `PnInPsIs;
				end
			endcase
		end
		else
		begin
			write_enable = 1'b0;
		end
		mouse_right_enable = !mouse_click[0];
	end
	else if (turn_status == 2'd3)//se tocca all'ia
	begin
		//TODO
		
		//COdice di carlo. Se tocca all'ia a sparare.
		
		turn_status = turn_status - 2'd1;
	end
end


endmodule
