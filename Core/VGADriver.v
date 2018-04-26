
`define red 	12'b111100000000
`define green 	12'b000011110000
`define blue 	12'b000000001111
`define black 	12'b000000000000
`define back_ground 	12'b001010110000
`define color_line 	12'b111100001111 
`define color_row 	12'b111100001111 
`define color_ship 	12'b010101010101
`define color_player_hit			12'b111010010001
`define color_ia_hit 				12'b111100000000
`define color_player_and_ia_hit 	12'b111100001100

`define cross_dimensions 	10'd5

`define dimension	10'd5
`define row_dimension	10'd2
`define line_dimension	10'd2

`define row_period	10'd48
`define line_period 10'd64


`define cell_status_free 						5'b00000
`define cell_status_occ 						5'b00001
`define cell_status_player_hitted 			5'b00010
`define cell_status_ia_hitted 				5'b00011
`define cell_status_player_and_ia_hitted 	5'b00100


module Module_VGADriver(
	clk_in,
	current_row, //pixcel in cui sto scrivendo
	current_line,
	enable, //se non sono nel porch
	mouse_pos_x,
	mouse_pos_y,
	cell_status,
	
	color_out
    );
input clk_in;
input enable;
input[9:0] current_row;
input[9:0] current_line;


input [4:0]	cell_status;


input[9:0] mouse_pos_x;
input[9:0] mouse_pos_y;

output reg [11:0] color_out = `black;


//cella in cui sto scrivendo.
wire [3:0] cell_x;
wire [3:0] cell_y;

reg [9:0] prec_line;

reg [9:0] cell_cross_counter_x = 10'd0;
reg [9:0] cell_cross_counter_y = 10'd0;


//ritona la posizione attuale del pennello in celle
pos_to_quadrant position_to_quadrant (
	.clk_in(clk_in),
	.pos_x(current_line),
	.pos_y(current_row),
	
	.cell_x(cell_x),
	.cell_y(cell_y)
);


	 
	 
always @(posedge clk_in) 
begin
	if (enable == 1) 
	begin		
		case (cell_status) // test sullo stato della cella in quesione
			`cell_status_free : // <-----------------------------------------------
				begin //se sono nel quadrato => cambio colore
					color_out = `black;
				end
			`cell_status_occ : 
				begin
					color_out = `color_ship;
				end
			`cell_status_player_hitted : 
				begin
					color_out = `color_player_hit;
				end
			`cell_status_ia_hitted : 
				begin
					color_out = `color_ia_hit;
				end
			`cell_status_player_and_ia_hitted : 
				begin
					color_out = `color_player_and_ia_hit;
				end
				default: 
					color_out = `black;
		endcase
		
		if (current_line <= ('d48+`row_dimension) && current_line > ('d48-`row_dimension)) // prima riga
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d96+`row_dimension)  && current_line > ('d96-`row_dimension)) //seconda riga 96
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d144+`row_dimension)  && current_line > ('d144-`row_dimension)) //terza riga 144
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d192+`row_dimension) && current_line > ('d192-`row_dimension)) //quarta riga: 192
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d240+`row_dimension) && current_line > ('d240-`row_dimension)) //quinta riga 240
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d288+`row_dimension) && current_line > ('d288-`row_dimension)) //sesta riga 288
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d336+`row_dimension) && current_line > ('d336-`row_dimension)) //settima riga 336
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d384+`row_dimension) && current_line > ('d384-`row_dimension)) //ottava riga 384
		begin
			color_out = `color_line;
		end
		else if (current_line <= ('d432+`row_dimension) && current_line > ('d432-`row_dimension)) //nona riga 432
		begin
			color_out = `color_line;
		end
		
		
		
		if (current_row <= ('d64+`line_dimension) && current_row> ('d64-`line_dimension)) // prima riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d128+`line_dimension) && current_row> ('d128-`line_dimension)) //seconda riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d192+`line_dimension) && current_row> ('d192-`line_dimension)) //terza riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d256+`line_dimension) && current_row> ('d256-`line_dimension)) //quarta riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d320+`line_dimension) && current_row> ('d320-`line_dimension)) //quinta riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d384+`line_dimension) && current_row> ('d384-`line_dimension)) //sesta riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d448+`line_dimension) && current_row> ('d448-`line_dimension)) //settima riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d512+`line_dimension) && current_row> ('d512-`line_dimension)) //ottava riga
		begin
			color_out = `color_row;
		end
		else if (current_row <= ('d576+`line_dimension) && current_row> ('d576-`line_dimension)) //nona riga
		begin
			color_out = `color_row;
		end
		/*
		if(current_row <= cell_cross_counter_x+cell_cross_counter_x>>1+cell_cross_counter_x>>1)
		begin
			color_out = myfunction(cell_x, cell_y, 4'd0, 4'd0);
		end
		if (cell_cross_counter_x > 10'd479)
		begin
			cell_cross_counter_x = 10'b0;
		end
		if (prec_line != current_line)
		begin
			cell_cross_counter_x = cell_cross_counter_x + 10'd1;
		end
		*/

		//qui disegno il punatore
		if(current_row <= (mouse_pos_x+`dimension) && current_line <= (mouse_pos_y + `dimension) &&
		current_row >= (mouse_pos_x-`dimension) && current_line >= (mouse_pos_y - `dimension) )
		begin
			color_out = `red;
		end
		
	end
	else
	begin
		color_out = `black;
	end
	prec_line = current_line;
end



function [11:0] test;
input[3:0] pos_x;
input[3:0] pos_y;
begin
	test = 12'b000000001111;
end
endfunction


endmodule