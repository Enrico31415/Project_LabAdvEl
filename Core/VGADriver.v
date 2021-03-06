
`define red 	12'b111100000000
`define white 	12'b111111111111
`define green 	12'b000011110000
`define blue 	12'b000000001111
`define black 	12'b000000000000
`define back_ground 	12'b010101010101
`define color_line 	12'b000000001111 
`define color_row 	12'b000000001111 
`define color_ship 	12'b010101010101
`define color_superposition 	12'b011000001100
`define color_player_hit			12'b111010010001
`define color_ia_hit 				12'b111100000000
`define color_player_and_ia_hit 	12'b111100001111

`define cross_dimensions 	10'd5

`define dimension	10'd5
`define row_dimension	10'd2
`define line_dimension	10'd2

`define row_period	10'd60
`define line_period  10'd80




module Module_VGADriver(
	clk_in,
	current_row, //pixcel in cui sto scrivendo
	current_line,
	enable, //se non sono nel porch
	mouse_pos_x,
	mouse_pos_y,
	
	//stato letto delle celle
	cell_status,
	game_end,
	
	color_out
    );
	 
input clk_in;
input enable;
input[9:0] current_row;
input[9:0] current_line;
	

input [3:0]	cell_status;

input [1:0] game_end;
input[9:0] mouse_pos_x;
input[9:0] mouse_pos_y;

output reg [11:0] color_out = `black;


//cella in cui sto scrivendo.
wire [2:0] cell_x;
wire [2:0] cell_y;

reg [9:0] prec_line;

reg [9:0] cell_cross_counter_x = 10'd0;
reg [9:0] cell_cross_counter_y = 10'd0;

reg [13:0] pointer_to_mask = 14'd0;
reg [13:0] pointer_to_mask_1 = 14'd0;
reg [13:0] pointer_to_mask_2 = 14'd0;
wire [4799:0] cross;
wire [4799:0] circle;
wire [4799:0] cross_over_circle;
wire [4799:0] s_over_circle;
wire [4799:0] s_over_cross;
wire [4799:0] s_over_cross_over_cirle;
wire [4799:0] ship_s;
wire [9999:0] player_win;
reg [18:0]  final_print;

//ritona la posizione attuale del pennello in celle
pos_to_quadrant position_to_quadrant (
	.clk_in(clk_in),
	.pos_x(current_row),
	.pos_y(current_line),
	
	.cell_x(cell_x),
	.cell_y(cell_y)
);
`include "VGAmask.v"


assign cross = `d_cross;
assign circle = `d_circle;
assign ship_s = `d_ship;
assign player_win = `d_endPlayerWin;
assign cross_over_circle = `d_circle | `d_cross;
assign s_over_circle = `d_circle | `d_ship;
assign s_over_cross = `d_cross | `d_ship;
assign s_over_cross_over_cirle = `d_ship | `d_cross | `d_circle ;
/*
initial begin 
	cross = `d_cross;
	circle = `d_circle;
end*/
	 
	 
always @(posedge clk_in) 
begin
	if (enable == 1) 
	begin		
		if (game_end == 2'd0)
		begin
			case (cell_status) // test sullo stato della cella in quesione
				4'd0: // <-----------------------------------------------
				begin //se sono nel quadrato => cambio colore
					color_out = `green;
				end
				4'd1: 
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd2: 
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (circle[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd3: 
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross_over_circle[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd4: 
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd6: 
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask]) //FIXME 
					//if (s_over_circle[pointer_to_mask]) //debugW
					begin
						color_out = `color_player_and_ia_hit;
						//color_out = `white; //DEBUg
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd7: //Ia sparato su nave del giocatore
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else if (circle[pointer_to_mask])
					begin
						color_out = `red;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				 4'd8:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (circle[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd9:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd10:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `red;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd11:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `red;
					end
					else if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd12:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else if(circle[pointer_to_mask])
					begin
						color_out = `red;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd13:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else if(circle[pointer_to_mask])
					begin
						color_out = `red;
					end
					else if(cross[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd14:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `red;
					end
					else if (circle[pointer_to_mask])
					begin
						color_out = `color_player_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd15:
				begin
					pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (cross[pointer_to_mask])
					begin
						color_out = `red;
					end
					else if (circle[pointer_to_mask])
					begin
						color_out = `red;
					end
					else if (ship_s[pointer_to_mask])
					begin
						color_out = `color_player_and_ia_hit;
					end
					else
					begin
						color_out = `back_ground;
					end
				end
				4'd5:
				begin
					//FIXME da rendere trasparente.
					color_out = `green;
					/*pointer_to_mask_1 =  ( current_row- (cell_x*`line_period));
					pointer_to_mask_2 =  (current_line- (cell_y*`row_period));
					pointer_to_mask =   (pointer_to_mask_1) + pointer_to_mask_2*`line_period;
					if (ship_s[pointer_to_mask])
					begin
						color_out = `blue;
					end
					else
					begin
						color_out = `back_ground;
					end*/ //DEBUG
				end
			endcase
			
			if (current_line <= ((12'd1*`row_period)+`row_dimension) && current_line > ((12'd1*`row_period)-`row_dimension)) // prima riga
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd2*`row_period)+`row_dimension)  && current_line > ((12'd2*`row_period)-`row_dimension)) //seconda riga 96
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd3*`row_period)+`row_dimension)  && current_line > ((12'd3*`row_period)-`row_dimension)) //terza riga 144
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd4*`row_period)+`row_dimension) && current_line > ((12'd4*`row_period)-`row_dimension)) //quarta riga: 192
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd5*`row_period)+`row_dimension) && current_line > ((12'd5*`row_period)-`row_dimension)) //quinta riga 240
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd6*`row_period)+`row_dimension) && current_line > ((12'd6*`row_period)-`row_dimension)) //sesta riga 288
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd7*`row_period)+`row_dimension) && current_line > ((12'd7*`row_period)-`row_dimension)) //settima riga 336
			begin
				color_out = `color_line;
			end
			/*else if (current_line <= ((12'd8*`row_period)+`row_dimension) && current_line > ((12'd8*`row_period)-`row_dimension)) //ottava riga 384
			begin
				color_out = `color_line;
			end
			else if (current_line <= ((12'd9*`row_period)+`row_dimension) && current_line > ((12'd9*`row_period)-`row_dimension)) //nona riga 432
			begin
				color_out = `color_line;
			end*/
			
			
			
			if (current_row <= ((12'd1*`line_period)+`line_dimension) && current_row> ((12'd1*`line_period)-`line_dimension)) // prima riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd2*`line_period)+`line_dimension) && current_row> ((12'd2*`line_period)-`line_dimension)) //seconda riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd3*`line_period)+`line_dimension) && current_row> ((12'd3*`line_period)-`line_dimension)) //terza riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd4*`line_period)+`line_dimension) && current_row> ((12'd4*`line_period)-`line_dimension)) //quarta riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd5*`line_period)+`line_dimension) && current_row> ((12'd5*`line_period)-`line_dimension)) //quinta riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd6*`line_period)+`line_dimension) && current_row> ((12'd6*`line_period)-`line_dimension)) //sesta riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd7*`line_period)+`line_dimension) && current_row> ((12'd7*`line_period)-`line_dimension)) //settima riga
			begin
				color_out = `color_row;
			end
			/*else if (current_row <= ((12'd8*`line_period)+`line_dimension) && current_row> ((12'd8*`line_period)-`line_dimension)) //ottava riga
			begin
				color_out = `color_row;
			end
			else if (current_row <= ((12'd9*`line_period)+`line_dimension) && current_row> ((12'd9*`line_period)-`line_dimension)) //nona riga
			begin
				color_out = `color_row;
			end */
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
		end
		else if (game_end == 2'd1)
		begin
			color_out = `blue;
		end
		else if (game_end == 2'd2)
		begin
			color_out = `red;
		end

		//qui disegno il punatore
		if(current_row <= (mouse_pos_x+`dimension) && current_line <= (mouse_pos_y + `dimension) &&
		current_row >= (mouse_pos_x-`dimension) && current_line >= (mouse_pos_y - `dimension) )
		begin
			color_out = `white;
		end
		
	end
	else
	begin
		color_out = `black;
	end
	prec_line = current_line;
end
endmodule
