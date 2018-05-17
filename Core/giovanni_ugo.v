`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:58:14 05/16/2018
// Design Name:   GridEngine
// Module Name:   /home/user/git/core/Core/giovanni_ugo.v
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

module giovanni_ugo;

	// Inputs
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
	reg BTN_NORTH;
	reg [9:0] pos_x;
	reg [9:0] pos_y;
	reg mouse_click;

	// Outputs
	wire [4:0] pointer_cell_read_status;

	// Instantiate the Unit Under Test (UUT)
	GridEngine uut (
		.clk_in(clk_in), 
		.mouse_pos_x(mouse_pos_x), 
		.mouse_pos_y(mouse_pos_y), 
		.BTN_NORTH(BTN_NORTH), 
		.pos_x(pos_x), 
		.pos_y(pos_y), 
		.mouse_click(mouse_click), 
		.pointer_cell_read_status(pointer_cell_read_status)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		mouse_pos_x = 0;
		mouse_pos_y = 0;
		BTN_NORTH = 0;
		pos_x = 0;
		pos_y = 0;
		mouse_click = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

