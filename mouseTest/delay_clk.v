module delay_clk(
		input qzt_clk,
		input clk_in,
		input clk_counter,
		input [7:0] limit,
		
		output reg clk_out
    );

reg run_counter=0;
wire w_counter;
initial begin
	clk_out=0;
end

always @ (clk_in) begin
	run_counter<=1;
end

always @ (qzt_clk) begin
	if (w_counter) begin
		run_counter<=0;
		clk_out=~clk_out;
	end
end

Module_Counter_8_bit_oneRun counter(
		.qzt_clk(qzt_clk),
		.clk_in(clk_counter),
		.limit(limit),
		.run(run_counter),

		//out,
		.carry(w_counter)
		);

endmodule
