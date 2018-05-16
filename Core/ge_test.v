`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:14:03 05/16/2018
// Design Name:   GridEngine
// Module Name:   /media/Scratch/projectel/Project_LabAdvEl/Core/ge_test.v
// Project Name:  new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GridEngine
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ge_test;

	// Inputs
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
	reg [9:0] pos_x;
	reg [9:0] pos_y;
	reg [1:0] mouse_click;
	reg [3:0] cell_status_free;
	reg [3:0] cell_status_player_occ;
	reg [3:0] cell_status_ia_occ;
	reg [3:0] cell_status_player_ia_occ;
	reg [3:0] cell_status_player_hitted;
	reg [3:0] cell_status_ia_hitted;
	reg [3:0] cell_status_player_and_ia_hitted;
	reg [3:0] cell_status_pre_occ;
	reg [3:0] cell_status_player_shoot;
	reg [3:0] cell_status_ia_shoot;
	reg [3:0] cell_status_position_na;
	reg [3:0] ship_size0;
	reg [3:0] ship_size1;
	reg [3:0] ship_size2;
	reg [3:0] ship_size3;
	reg [3:0] ship_size4;

	// Outputs
	wire [4:0] pointer_cell_read_status;

	// Instantiate the Unit Under Test (UUT)
	GridEngine uut (
		.clk_in(clk_in), 
		.mouse_pos_x(mouse_pos_x), 
		.mouse_pos_y(mouse_pos_y), 
		.pos_x(pos_x), 
		.pos_y(pos_y), 
		.mouse_click(mouse_click), 
		.cell_status_free(cell_status_free), 
		.cell_status_player_occ(cell_status_player_occ), 
		.cell_status_ia_occ(cell_status_ia_occ), 
		.cell_status_player_ia_occ(cell_status_player_ia_occ), 
		.cell_status_player_hitted(cell_status_player_hitted), 
		.cell_status_ia_hitted(cell_status_ia_hitted), 
		.cell_status_player_and_ia_hitted(cell_status_player_and_ia_hitted), 
		.cell_status_pre_occ(cell_status_pre_occ), 
		.cell_status_player_shoot(cell_status_player_shoot), 
		.cell_status_ia_shoot(cell_status_ia_shoot), 
		.cell_status_position_na(cell_status_position_na), 
		.ship_size0(ship_size0), 
		.ship_size1(ship_size1), 
		.ship_size2(ship_size2), 
		.ship_size3(ship_size3), 
		.ship_size4(ship_size4), 
		.pointer_cell_read_status(pointer_cell_read_status)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		mouse_pos_x = 0;
		mouse_pos_y = 0;
		pos_x = 0;
		pos_y = 0;
		mouse_click = 0;
		cell_status_free = 4'd0;
		cell_status_player_occ = 1;
		cell_status_ia_occ = 2;
		cell_status_player_ia_occ = 3;
		cell_status_player_hitted = 4;
		cell_status_ia_hitted = 5;
		cell_status_player_and_ia_hitted = 6;
		cell_status_pre_occ = 7;
		cell_status_player_shoot = 8;
		cell_status_ia_shoot = 9;
		cell_status_position_na = 10;
		ship_size0 = 4'd2;
		ship_size1 = 4'd2;
		ship_size2 = 4'd3;
		ship_size3 = 4'd3;
		ship_size4 = 4'd4;

		// Wait 100 ns for global reset to finish
		#100;
      forever #10 clk_in = !clk_in;  
		// Add stimulus here
		
	end
      
endmodule

