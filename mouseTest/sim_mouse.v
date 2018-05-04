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
integer nbits=0;
reg [10:0] data_received=0;
reg [0:10] data_to_send=0;
reg reg_azzera=0;
reg PS2C_old=0;

reg [7:0] limit_principal=0;
reg run_principal=0;
wire w_principal;
reg run_host_acq=0;
reg clk_enable=0;
wire w_host_acq;
wire w_my_clk_sync_data;
reg respond=0;
reg flag_finish_send=0;

reg my_clk_sync_data_old=0;
wire w_my_clk;
reg my_clk_old=0;

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

`define ST_SEND_BEGIN 8'd7
`define ST_SEND_PRE_START 8'd8
`define ST_SEND_START 8'd9
`define ST_SEND_SEND 8'd10

`define PCK_ACK 11'b00101111111


always @(posedge clk20ns) begin		
	case (status)
		`ST_IDLE: begin
			nbits<=0;
			run_principal<=0;
			if (!PS2C) begin
				status<=`ST_HOST_ACQ;
				run_host_acq<=1;
			end
			if (respond) begin
				status<=`ST_SEND_BEGIN;
				data_to_send<=`PCK_ACK;
			end
		end
		`ST_HOST_ACQ: begin
			data_received<=0;
			if (w_host_acq) begin
				run_host_acq<=0;
				status<=`ST_HOST_COMM;
				data_received<=0;
			end
		end
		`ST_HOST_COMM: begin
			clk_enable<=1;
			if (!PS2C_old & PS2C) begin
				nbits<=nbits+1;
				data_received<={data_received,PS2D};
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
			respond<=1;
		end
		`ST_PRE_END_COMM: begin
			//PS2D_reg<=1;
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
		// send part
		`ST_SEND_BEGIN: begin
			respond<=0;
			run_principal<=1;
			limit_principal<=8'd200;
			status<=`ST_SEND_PRE_START;
		end
		`ST_SEND_PRE_START: begin
			if (w_principal) begin
				run_principal<=0;
				status<=`ST_SEND_START;
			end
		end
		`ST_SEND_START: begin
			if (my_clk_sync_data_old & !w_my_clk_sync_data) begin
				clk_enable<=1;
				status<=`ST_SEND_SEND;
				PS2D_reg<=data_to_send[0];
				nbits<=0;
			end
		end
		`ST_SEND_SEND: begin
			if (my_clk_old & !w_my_clk) begin
				data_to_send<=data_to_send<<1;
				nbits<=nbits+1;
				if (nbits>=32'd10) begin
					flag_finish_send<=1;
				end
			end
			if (my_clk_sync_data_old & !w_my_clk_sync_data) begin
				if (flag_finish_send) begin
					flag_finish_send<=0;
					status<=`ST_PRE_END_COMM;
				end else begin
					PS2D_reg<=data_to_send[0];
				end
			end
		end
	endcase
	PS2C_old<=PS2C;
	my_clk_old<=w_my_clk;
	my_clk_sync_data_old<=w_my_clk_sync_data;
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
	 
delay_clk delay_my_clk_for_sync_data(
		.qzt_clk(clk20ns),
		.clk_in(w_my_clk),
		.clk_counter(w_clk_1micro),
		.limit(8'd70),
		
		.clk_out(w_my_clk_sync_data)
    );

pullup (PS2C);
pullup (PS2D);
assign PS2C = clk_enable ? (w_my_clk ? 1'bz : 1'b0) : 1'bz;
assign PS2D = PS2D_reg ? 1'bz : 1'b0;

endmodule
