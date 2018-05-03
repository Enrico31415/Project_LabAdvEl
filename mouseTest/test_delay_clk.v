module test_delay_clk(
		output clk,
		output clk_delayed
    );

reg clk20ns;
wire w_clk_1micro;

initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

Module_FrequencyDivider	clk_12500Hz(
		.clk_in(clk20ns),
		.period(30'd2_000),

		.clk_out(clk)
		);
		
Module_FrequencyDivider	clk_1micro(
		.clk_in(clk20ns),
		.period(30'd25),

		.clk_out(w_clk_1micro)
		);

delay_clk delay_clk(
		.qzt_clk(clk20ns),
		.clk_in(clk),
		.clk_counter(w_clk_1micro),
		.limit(8'd10),
		
		.clk_out(clk_delayed)
    );

endmodule
