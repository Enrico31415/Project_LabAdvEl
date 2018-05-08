`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:07:57 04/24/2018 
// Design Name: 
// Module Name:    sim_test_one_run 
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
module sim_test_one_run(
		input btn,
		
		output out,
		output [7:0] count
    );

reg clk40ns;
wire w_clk_out;

initial begin
	clk40ns=1'b0;
	forever #20 clk40ns = ~clk40ns;
end



Module_Counter_8_bit_oneRun counter(
		.qzt_clk(clk40ns),
		.clk_in(w_clk_out),
		.limit(8'd5),
		.run(btn),

		.out(count),
		.carry(out)
		);
		
Module_FrequencyDivider two(
		.clk_in(clk40ns),
		.period(30'd1),

		.clk_out(w_clk_out)
		);
pulldown(btn);

endmodule
