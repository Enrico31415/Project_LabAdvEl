//`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:59 04/30/2018
// Design Name:   GridEngine
// Module Name:   Z:/Core/testGrid.v
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

module testGrid;

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
	clk_in=1'b0;
	forever #10 clk_in = ~clk_in;
end
      
endmodule

