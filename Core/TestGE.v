`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:11:56 05/14/2018
// Design Name:   GridEngine
// Module Name:   Z:/Core/Project_LabAdvEl/Core/TestGE.v
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

module TestGE;

	// Inputs
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
	reg [9:0] pos_x;
	reg [9:0] pos_y;
	reg [1:0] mouse_click;
	reg [4:0] cell_status_free;
	reg [4:0] cell_status_occ;
	reg [4:0] cell_status_player_hitted;
	reg [4:0] cell_status_ia_hitted;
	reg [4:0] cell_status_player_and_ia_hitted;
	reg [3:0] ship_size0;
	reg [3:0] ship_size1;
	reg [3:0] ship_size2;
	reg [3:0] ship_size3;
	reg [3:0] ship_size4;
	reg [1:0] turn_ia_placing;
	reg [1:0] turn_player_placing;
	reg [1:0] turn_ia_shoot;
	reg [1:0] turn_player_shoot;

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
		.cell_status_occ(cell_status_occ), 
		.cell_status_player_hitted(cell_status_player_hitted), 
		.cell_status_ia_hitted(cell_status_ia_hitted), 
		.cell_status_player_and_ia_hitted(cell_status_player_and_ia_hitted), 
		.ship_size0(ship_size0), 
		.ship_size1(ship_size1), 
		.ship_size2(ship_size2), 
		.ship_size3(ship_size3), 
		.ship_size4(ship_size4), 
		.turn_ia_placing(turn_ia_placing), 
		.turn_player_placing(turn_player_placing), 
		.turn_ia_shoot(turn_ia_shoot), 
		.turn_player_shoot(turn_player_shoot), 
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
		cell_status_free = 5'd0;
		cell_status_occ = 5'd1;
		cell_status_player_hitted = 5'd2;
		cell_status_ia_hitted = 5'd3;
		cell_status_player_and_ia_hitted = 5'd4;
		ship_size0 = 5'd2;
		ship_size1 = 5'd3;
		ship_size2 = 5'd3;
		ship_size3 = 5'd4;
		ship_size4 = 5'd5;
		turn_ia_placing = 2'd0;
		turn_player_placing = 2'd1;
		turn_ia_shoot = 2'd3;
		turn_player_shoot = 2'd2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #5 begin
			clk_in = !clk_in;
		end

	end
      
endmodule

