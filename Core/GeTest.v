`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:35:35 05/22/2018
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
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
	reg [9:0] pos_x;
	reg [9:0] pos_y;
	reg BTN_SOUTH;
	reg [1:0] mouse_click;

	// Outputs
	wire [1:0] LED;
	wire [3:0] pointer_cell_read_status;

	// Instantiate the Unit Under Test (UUT)
	GridEngine uut (
		.clk_in(clk_in), 
		.mouse_pos_x(mouse_pos_x), 
		.mouse_pos_y(mouse_pos_y), 
		.pos_x(pos_x), 
		.pos_y(pos_y), 
		.BTN_SOUTH(BTN_SOUTH), 
		.LED(LED), 
		.mouse_click(mouse_click), 
		.pointer_cell_read_status(pointer_cell_read_status)
	);

	initial begin
		// Initialize Inputs
		clk_in = 0;
		mouse_pos_x = 0;
		mouse_pos_y = 0;
		pos_x = 0;
		pos_y = 0;
		BTN_SOUTH = 1;
		mouse_click = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		
		
		forever begin 
			#10 clk_in = !clk_in;
		end
		// Add stimulus here

      


	end

endmodule

