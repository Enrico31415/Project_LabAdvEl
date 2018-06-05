`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:18:13 06/05/2018
// Design Name:   GridEngine
// Module Name:   Z:/Core/Project_LabAdvEl/Core/GeTest.v
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
	reg BTN_RESET;
	reg [1:0] mouse_click;

	// Outputs
	wire SONDA_1;
	wire SONDA_2;
	wire SONDA_3;
	wire [5:0] LED;
	wire [3:0] pointer_cell_read_status;
	wire [1:0] game_end;

	// Instantiate the Unit Under Test (UUT)
	GridEngine uut (
		.clk_25M_in(clk_25M_in), 
		.clk_in(clk_in), 
		.mouse_pos_x(mouse_pos_x), 
		.mouse_pos_y(mouse_pos_y), 
		.pos_x(pos_x), 
		.pos_y(pos_y), 
		.BTN_SOUTH(BTN_SOUTH), 
		.BTN_RESET(BTN_RESET), 
		.SONDA_1(SONDA_1), 
		.SONDA_2(SONDA_2), 
		.SONDA_3(SONDA_3), 
		.LED(LED), 
		.mouse_click(mouse_click), 
		.pointer_cell_read_status(pointer_cell_read_status), 
		.game_end(game_end)
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
		BTN_RESET = 0;
		mouse_click = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		forever #1
		begin
			clk_25M_in = !clk_25M_in;
			clk_in = !clk_in;
		end
	end
      
endmodule

