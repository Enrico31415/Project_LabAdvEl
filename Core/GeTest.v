`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:03:58 05/25/2018
// Design Name:   GridEngine
// Module Name:   /media/Scratch/Project_LabAdvEl/Core/GeTest.v
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

module GeTest;

	// Inputs
	reg clk_25M_in;
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
	reg [9:0] pos_x;
	reg [9:0] pos_y;
	reg BTN_SOUTH;
	reg [1:0] mouse_click;

	// Outputs
	wire SONDA_1;
	wire SONDA_2;
	wire SONDA_3;
	wire [5:0] LED;
	wire [3:0] pointer_cell_read_status;

	// Instantiate the Unit Under Test (UUT)
	GridEngine uut (
		.clk_25M_in(clk_25M_in), 
		.clk_in(clk_in), 
		.mouse_pos_x(mouse_pos_x), 
		.mouse_pos_y(mouse_pos_y), 
		.pos_x(pos_x), 
		.pos_y(pos_y), 
		.BTN_SOUTH(BTN_SOUTH), 
		.SONDA_1(SONDA_1), 
		.SONDA_2(SONDA_2), 
		.SONDA_3(SONDA_3), 
		.LED(LED), 
		.mouse_click(mouse_click), 
		.pointer_cell_read_status(pointer_cell_read_status)
	);

	initial begin
		// Initialize Inputs
		clk_25M_in = 0;
		clk_in = 0;
		mouse_pos_x = 0;
		mouse_pos_y = 0;
		pos_x = 0;
		pos_y = 0;
		BTN_SOUTH = 1;
		mouse_click = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
      
endmodule

