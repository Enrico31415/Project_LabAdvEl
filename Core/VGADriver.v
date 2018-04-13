`define red 	12'b111100000000
`define green 	12'b000011110000
`define blue 	12'b000000001111
`define black 	12'b000000000000
`define back_ground 	12'b010101101101
`define line_color 	12'b111100001111 
`define row_color 	12'b111100001111 
`define ship_color 	12'b010101010101

`define dimension	10'd5
`define row_dimension	10'd2
`define line_dimension	10'd2

`define row_period	10'd48
`define line_period 10'd64

module Module_VGADriver(
	clk_in,
	current_row,
	current_line,
	enable,
	x_pos,
	y_pos,
	cell_status,
	cell_x,
	cell_y,
	
	color_out
    );
	 
input clk_in;
input enable;
input[9:0] current_row;
input[9:0] current_line;


input [1:0]	cell_status;
input [3:0]	cell_x;
input [3:0]	cell_y;


input[9:0] x_pos;
input[9:0] y_pos;

output reg [11:0] color_out = `black;
	 
	 
always @(posedge clk_in) 
begin
	if (enable == 1) 
	begin
		
	color_out = `back_ground;



		if (current_line <= ('d48+`row_dimension) && current_line > ('d48-`row_dimension)) // prima riga
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d96+`row_dimension)  && current_line > ('d96-`row_dimension)) //seconda riga 96
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d144+`row_dimension)  && current_line > ('d144-`row_dimension)) //terza riga 144
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d192+`row_dimension) && current_line > ('d192-`row_dimension)) //quarta riga: 192
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d240+`row_dimension) && current_line > ('d240-`row_dimension)) //quinta riga 240
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d288+`row_dimension) && current_line > ('d288-`row_dimension)) //sesta riga 288
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d336+`row_dimension) && current_line > ('d336-`row_dimension)) //settima riga 336
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d384+`row_dimension) && current_line > ('d384-`row_dimension)) //ottava riga 384
		begin
			color_out = `line_color;
		end
		else if (current_line <= ('d432+`row_dimension) && current_line > ('d432-`row_dimension)) //nona riga 432
		begin
			color_out = `line_color;
		end
		
		
		
		if (current_row <= ('d64+`line_dimension) && current_row> ('d64-`line_dimension)) // prima riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d128+`line_dimension) && current_row> ('d128-`line_dimension)) //seconda riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d192+`line_dimension) && current_row> ('d192-`line_dimension)) //terza riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d256+`line_dimension) && current_row> ('d256-`line_dimension)) //quarta riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d320+`line_dimension) && current_row> ('d320-`line_dimension)) //quinta riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d384+`line_dimension) && current_row> ('d384-`line_dimension)) //sesta riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d448+`line_dimension) && current_row> ('d448-`line_dimension)) //settima riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d512+`line_dimension) && current_row> ('d512-`line_dimension)) //ottava riga
		begin
			color_out = `row_color;
		end
		else if (current_row <= ('d576+`line_dimension) && current_row> ('d576-`line_dimension)) //nona riga
		begin
			color_out = `row_color;
		end
		
		
		
		//qui disegno il punatore
		if(current_row <= (x_pos+`dimension) && current_line <= (y_pos + `dimension) &&
		current_row >= (x_pos-`dimension) && current_line >= (y_pos - `dimension) )
		begin
			color_out = `red;
		end
		
		
		else if(cell_status == 2'b01) //se c' una nave
			begin
				if(current_line <= ( cell_y + 4'b0001) * `line_period &&
					current_row <= (cell_x + 4'b0001) * `row_period &&
					 current_line > cell_y * `line_period &&
						current_row > cell_x  * `row_period ) //se sono dentro la cella in questione 
					begin
						color_out = `ship_color;
					end
			end
		
		
		
		
		
		
		/*
		Disegno le righe: uso il modulo
		
		// disegno le righe della battaglia navale. Ho 10 caselle da 48 -> 48<<2, da sistemare, veder se  compatibile.
		
*/
		
			
		
	end
	else
	begin
		color_out = `black;
	end
end




endmodule
