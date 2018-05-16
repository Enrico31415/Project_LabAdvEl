`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:18:03 05/16/2018
// Design Name:   cell_io
// Module Name:   /media/Scratch/projectel/Project_LabAdvEl/Core/meory_tes.v
// Project Name:  new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cell_io
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module meory_tes;

	// Inputs
	reg clk_in;
	reg [3:0] mouse_cell_x;
	reg [3:0] mouse_cell_y;
	reg [3:0] pointer_cell_x;
	reg [3:0] pointer_cell_y;
	reg we;
	reg [4:0] new_value;
	reg [1:0] play_status;
	reg direction;
	reg [3:0] dimension;
	reg [1:0] turn_ia_placing;
	reg [1:0] turn_player_placing;
	reg [1:0] turn_ia_shoot;
	reg [1:0] turn_player_shoot;

	// Outputs
	wire [4:0] status;
	wire [4:0] status_pointed_cell;
	wire ship_placed;

	// Instantiate the Unit Under Test (UUT)
	cell_io uut (
		.clk_in(clk_in), 
		.mouse_cell_x(mouse_cell_x), 
		.mouse_cell_y(mouse_cell_y), 
		.pointer_cell_x(pointer_cell_x), 
		.pointer_cell_y(pointer_cell_y), 
		.we(we), 
		.new_value(new_value), 
		.play_status(play_status), 
		.direction(direction), 
		.dimension(dimension), 
		.turn_ia_placing(turn_ia_placing), 
		.turn_player_placing(turn_player_placing), 
		.turn_ia_shoot(turn_ia_shoot), 
		.turn_player_shoot(turn_player_shoot), 
		.status(status), 
		.status_pointed_cell(status_pointed_cell), 
		.ship_placed(ship_placed)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		mouse_cell_x = 10'd10;
		mouse_cell_y = 10'd10;
		pointer_cell_x = 10'd10;
		pointer_cell_y = 10'd10;
		we = 0;
		new_value = 0;
		play_status = 0;
		direction = 0;
		dimension = 4'd2;
		turn_ia_placing = 2'd1;
		turn_player_placing = 2'd0;
		turn_ia_shoot = 2'd3;
		turn_player_shoot = 2'd4;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #10 
		begin
		clk_in = !clk_in;
		end
	end
      
endmodule

