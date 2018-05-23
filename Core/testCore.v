`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:22:43 05/23/2018
// Design Name:   Controller
// Module Name:   /media/Scratch/peadv/Project_LabAdvEl/Core/testCore.v
// Project Name:  new
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testCore;

	// Inputs
	reg CLK_50M;
	reg BTN_NORTH;
	reg BTN_SOUTH;

	// Outputs
	wire [5:0] LED;
	wire [3:0] VGA_R;
	wire [3:0] VGA_G;
	wire [3:0] VGA_B;
	wire VGA_HSYNC;
	wire VGA_VSYNC;

	// Bidirs
	wire PS2_CLK1;
	wire PS2_DATA1;

	// Instantiate the Unit Under Test (UUT)
	Controller uut (
		.CLK_50M(CLK_50M), 
		.BTN_NORTH(BTN_NORTH), 
		.BTN_SOUTH(BTN_SOUTH), 
		.PS2_CLK1(PS2_CLK1), 
		.PS2_DATA1(PS2_DATA1), 
		.LED(LED), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B), 
		.VGA_HSYNC(VGA_HSYNC), 
		.VGA_VSYNC(VGA_VSYNC)
	);

	initial begin
		// Initialize Inputs
		CLK_50M = 0;
		BTN_NORTH = 0;
		BTN_SOUTH = 0;

		// Wait 100 ns for global reset to finish
		#100;
        

	end
      
endmodule

