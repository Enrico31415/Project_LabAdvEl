`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:44:59 04/30/2018
// Design Name:   GridEngine
// Module Name:   Z:/Core/sim/Sim_GridEngine.v
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

module Sim_GridEngine;

	// Inputs
	reg clk_in;
	reg [9:0] mouse_pos_x;
	reg [9:0] mouse_pos_y;
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
		pos_x = 0;
		pos_y = 0;
		mouse_click = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		forever
		begin
			#10 clk_in = !clk_in;
		end
		#5000;
      force mouse_click = 1;
		#500;
		force mouse_click = 0;
	end
	

always @(posedge clk_in)
	begin
		if (pos_x >= 10'd640)
		begin
			if (pos_y >= 10'd480)
			begin
				pos_y = 0;
				mouse_click = ! mouse_click;
			end
			pos_y = pos_y+1;
			pos_x = 0;
		end
		pos_x = pos_x+1;
	end
endmodule

