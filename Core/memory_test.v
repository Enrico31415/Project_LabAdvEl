`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:33:00 05/14/2018
// Design Name:   cell_io
// Module Name:   Z:/Core/Project_LabAdvEl/Core/memory_test.v
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

module memory_test;

	// Inputs
	reg clk_in;
	reg [3:0] mouse_cell_x;
	reg [3:0] mouse_cell_y;
	reg [3:0] pointer_cell_x;
	reg [3:0] pointer_cell_y;
	reg we;
	reg [4:0] new_value;
	reg [3:0] ship_length;
	reg direction;
	reg [1:0] game_status;
	reg player_placing;
	reg player_shoot;
	reg [4:0] cell_status_free;
	reg [4:0] cell_status_player_occ;
	reg [4:0] cell_status_ia_occ;
	reg [4:0] cell_status_player_hitted;
	reg [4:0] cell_status_ia_hitted;
	reg [4:0] cell_status_player_and_ia_hitted;
	reg [4:0] cell_status_pre_occupied;

	// Outputs
	wire ship_placed;
	wire [4:0] status;
	wire [4:0] status_pointed_cell;

	// Instantiate the Unit Under Test (UUT)
	cell_io uut (
		.clk_in(clk_in), 
		.mouse_cell_x(mouse_cell_x), 
		.mouse_cell_y(mouse_cell_y), 
		.pointer_cell_x(pointer_cell_x), 
		.pointer_cell_y(pointer_cell_y), 
		.we(we), 
		.new_value(new_value), 
		.ship_length(ship_length), 
		.direction(direction), 
		.game_status(game_status), 
		.player_placing(player_placing), 
		.player_shoot(player_shoot), 
		.cell_status_free(cell_status_free), 
		.cell_status_player_occ(cell_status_player_occ), 
		.cell_status_ia_occ(cell_status_ia_occ), 
		.cell_status_player_hitted(cell_status_player_hitted), 
		.cell_status_ia_hitted(cell_status_ia_hitted), 
		.cell_status_player_and_ia_hitted(cell_status_player_and_ia_hitted), 
		.cell_status_pre_occupied(cell_status_pre_occupied), 
		.ship_placed(ship_placed), 
		.status(status), 
		.status_pointed_cell(status_pointed_cell)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		mouse_cell_x = 0;
		mouse_cell_y = 0;
		pointer_cell_x = 0;
		pointer_cell_y = 0;
		we = 0;
		new_value = 0;
		ship_length = 0;
		direction = 0;
		game_status = 0;
		player_placing = 0;
		player_shoot = 0;
		cell_status_free = 0;
		cell_status_player_occ = 0;
		cell_status_ia_occ = 0;
		cell_status_player_hitted = 0;
		cell_status_ia_hitted = 0;
		cell_status_player_and_ia_hitted = 0;
		cell_status_pre_occupied = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever # 10 clk_in = !clk_in;

	end
      
endmodule

