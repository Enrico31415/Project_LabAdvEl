`define red 	12'b111100000000
`define green 	12'b000011110000
`define blue 	12'b000000001111
`define black 	12'b000000000000

`define dimension	10'd10

module ButtonToMonitor(
	clk_in,
	current_row,
	current_line,
	enable,
	x_pos,
	y_pos,
	
	color_out
    );
	 
input clk_in;
input enable;
input[9:0] current_row;
input[9:0] current_line;

input[9:0] x_pos;
input[9:0] y_pos;

output reg [11:0] color_out = `black;
	 
	 
always @(posedge clk_in) 
begin
	if (enable == 1) 
	begin
		//qui tutta la manfrina
		if(current_row <= (x_pos+`dimension) && current_line <= (y_pos + `dimension) &&
		current_row >= (x_pos-`dimension) && current_line >= (y_pos - `dimension) )
		begin
			color_out = `red;
		end
		else
		begin
			color_out = `blue;
		end
	end
	else
	begin
		color_out = `black;
	end
end




endmodule
