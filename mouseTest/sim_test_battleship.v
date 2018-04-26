`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:26:30 04/20/2018 
// Design Name: 
// Module Name:    sim_test_battleship 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module sim_test_battleship(
		input forceClock,
		input btn,
		
		output reg clk40ns,
		inout cavoPS2_C,
		inout cavoPS2_D
		);

//reg clk40ns;
//reg mouse_clk;

initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

Module_FrequencyDivider t80uS(
		.clk_in(clk40ns),
		.period(30'd1000),

		.clk_out(mouse_clk));

wire w_PS2C;
wire w_PS2D;
assign cavoPS2_C=forceClock?mouse_clk:1'bz;

pullup(cavoPS2_C);
pullup(cavoPS2_D);
pulldown(btn);
pulldown(forceClock);

battleship btls(
		.CLK_50M(clk40ns),
		.BTN_NORTH(btn),

		//LED,
		.PS2_CLK1(cavoPS2_C),
		.PS2_DATA1(cavoPS2_D)		
		);

		

		
endmodule
