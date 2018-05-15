`timescale 1ns / 1ps
/*
Simulation of the system FPGA + Mouse.
*/
module sim_test_battleship(
		input btn,
		
		output reg clk20ns,
		inout cavoPS2_C,
		inout cavoPS2_D
		);

//reg mouse_clk;

initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

pulldown(btn);

battleship btls(
		.CLK_50M(clk20ns),
		.BTN_NORTH(btn),

		//LED,
		.PS2_CLK1(cavoPS2_C),
		.PS2_DATA1(cavoPS2_D)		
		);

sim_mouse mouse(
		.PS2C(cavoPS2_C),
		.PS2D(cavoPS2_D)
    );
		

		
endmodule
