module sim_data_out(
		input btn,
		
		output reg data_line=0
    );

reg clk20ns;
reg [0:10] data;
wire w_clk_out;
wire w_enable_data_tr;

initial begin
	data=11'b01100111111;
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

pulldown(btn);

Module_FrequencyDivider div(
		.clk_in(clk20ns),
		.period(30'd4),

		.clk_out(w_clk_out)
		);

Toggle toggle(
		.qzt(clk20ns),
		.in(btn),
		
		.out(w_enable_data_tr)
    );

always @(posedge w_clk_out) begin
	if (w_enable_data_tr) begin
		data_line=data[0];
		data=data<<1;
	end
end

endmodule
