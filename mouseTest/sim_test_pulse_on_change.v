module sim_test_pulse_on_change(
		input btn,
		
		output out
    );

reg clk20ns;


initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

pulse_on_change pulse_gen(
		.qzt_clk(clk20ns),
		.trigger(btn),
		
		.pulse(out)
    );

pulldown(btn);

endmodule
