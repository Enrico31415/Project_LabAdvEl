module	Module_FrequencyDivider	(
		clk_in,
		period,

		clk_out);

input		clk_in;
input	[29:0]	period;

output		clk_out;

reg		clk_out=1'b0;

reg	[29:0]	counter=30'd0;

always @(posedge clk_in) begin
	if (counter >= (period - 1)) begin
		counter = 0;
		clk_out = ~clk_out;
	end else
		counter = counter + 1;
end

endmodule
