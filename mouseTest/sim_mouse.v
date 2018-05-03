`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:59:28 05/02/2018 
// Design Name: 
// Module Name:    sim_mouse 
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
module sim_mouse(
	inout PS2C,
	inout PS2D
    );

reg PS2D_reg=1'b1;
reg [7:0] status=0;
reg clk20ns=0;
wire w_clk_1micro;
wire w_clk_100micro;
wire w_my_clk;
integer nbits=0;
reg [10:0] data=0;
reg reg_azzera=0;
reg PS2C_old=0;

reg [7:0] limit_principal=0;
reg run_principal=0;
wire w_principal;
reg run_host_acq=0;
reg clk_enable=0;
wire w_host_acq;

initial begin
	clk20ns=1'b0;
	forever #10 clk20ns = ~clk20ns;
end

`define ST_IDLE 8'd0
`define ST_HOST_ACQ 8'd1
`define ST_HOST_COMM 8'd2
`define ST_SEND_ACK 8'd3
`define ST_STOP_ACK 8'd4
`define ST_PRE_END_COMM 8'd5
`define ST_END_COMM 8'd6

always @(posedge clk20ns) begin		
	case (status)
		`ST_IDLE: begin
			nbits<=0;
			run_principal<=0;
			if (!PS2C) begin
				status<=`ST_HOST_ACQ;
				run_host_acq<=1;
			end
		end
		`ST_HOST_ACQ: begin
			data<=0;
			if (w_host_acq) begin
				run_host_acq<=0;
				status<=`ST_HOST_COMM;
				data<=0;
			end
		end
		`ST_HOST_COMM: begin
			clk_enable<=1;
			if (!PS2C_old & PS2C) begin
				nbits<=nbits+1;
				data<={data,PS2D};
			end
			if (nbits>=11) begin
				status<=`ST_SEND_ACK;
				limit_principal<=8'd10;
				run_principal<=1;
			end
		end
		`ST_SEND_ACK: begin
			if (w_principal) begin
				run_principal<=0;
				PS2D_reg<=1'b0;
				limit_principal<=8'd40;
				status<=`ST_STOP_ACK;
			end
		end
		`ST_STOP_ACK: begin
			run_principal<=1;
			if (w_principal) begin
				PS2D_reg<=1'b1;
				status<=`ST_PRE_END_COMM;
			end
		end
		`ST_PRE_END_COMM: begin
			run_principal<=0;
			limit_principal<=8'd100;
			status<=`ST_END_COMM;
			clk_enable<=0;
			end
		`ST_END_COMM: begin
			run_principal<=~w_azzera;
			if (!(PS2C & PS2D)) begin
				reg_azzera<=~reg_azzera;
			end
			if (w_principal) begin
				status<=`ST_IDLE;
			end
		end
	endcase
	PS2C_old<=PS2C;
end

Module_FrequencyDivider	mezzoMicro(
		.clk_in(clk20ns),
		.period(30'd25),

		.clk_out(w_clk_1micro)
		);

Module_FrequencyDivider	centoMicro(
		.clk_in(clk20ns),
		.period(30'd2500),

		.clk_out(w_clk_100micro)
		);

Module_FrequencyDivider	my_clk(
		.clk_in(clk20ns),
		.period(30'd2_000),

		.clk_out(w_my_clk)
		);
		
Module_Counter_8_bit_oneRun principal(
					.qzt_clk(clk20ns),
					.clk_in(w_clk_1micro),
					.limit(limit_principal),
					.run(run_principal),

					//.out(),
					.carry(w_principal)
					);
					
Module_Counter_8_bit_oneRun acquire(
					.qzt_clk(clk20ns),
					.clk_in(w_clk_1micro),
					.limit(8'd100),
					.run(run_host_acq),

					//.out(),
					.carry(w_host_acq)
					);

pulse_on_change azz_pulse(
		.qzt_clk(w_clk_1micro),
		.trigger(reg_azzera),
		
		.pulse(w_azzera)
    );

pullup (PS2C);
pullup (PS2D);
assign PS2C = clk_enable ? (w_my_clk ? 1'bz : 1'b0) : 1'bz;
assign PS2D = PS2D_reg ? 1'bz : 1'b0;

endmodule
