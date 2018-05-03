`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:26:21 05/02/2018 
// Design Name: 
// Module Name:    PS2_read 
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
module PS2_read(
		qzt_clk,
		clk_main_loop,
		enable,
		PS2C,
		PS2D,
		
		data,
		done,
		err
	  );

input qzt_clk;
input clk_main_loop;
input enable;
input PS2C;
input PS2D;

output [10:0] data;
output done;
output err;

reg [7:0] status=0;
reg done_reg=0;
integer nbits=0;
reg PS2C_old=1;
wire w_clk_50KHz;
reg run_timer;
wire w_timer;

reg run_timeout;
wire w_timeout;
wire w_clk_100micro;
wire w_clk_1micro;

`define ST_IDLE	8'd0;
`define ST_READ 	8'd1;
`define ST_END	 	8'd2;
`define ST_START	8'd3;

always @ (posedge clk_main_loop) begin
	if (w_timeout) begin
		err<=1;
		status<=`ST_END;
		run_timeout<=0;
	end
	if (enable) begin
		case(status)
			`ST_IDLE: begin
				nbits<=0;
				run_timeout<=0;
				if (PS2C_old & !PS2C) begin
					status<=`ST_START;
				end
			end
			`ST_START: begin
				data<={data, PS2D};
				status<=`ST_READ;
				nbits<=1;
				run_timeout<=1;
			end
			`ST_READ:begin
				if (PS2C_old & !PS2C) begin
					data<={data, PS2D};
					nbits<=nbits+1;
				end
				if (nbits>=10) begin
					status<=`ST_END;
					run_timer<=1;
				end
			`ST_END:begin
				if (!(PS2C & PS2D)) begin
					run_timer<=0;
				end else begin
					run_timer<=1;
				end
				if (w_timer) begin
					run_timer<=0;
					status<=`ST_IDLE;
					done_reg<=~done_reg;
				end
			end
		endcase
	end
end

pulse_on_change ok_pulse(
		.qzt_clk(clk_main_loop),
		.trigger(done_reg),
		
		.pulse(done)
    );
	 
Module_FrequencyDivider	cinquantaKHz_bis(
		.clk_in(qzt_clk),
		.period(30'd200),

		.clk_out(w_clk_50KHz)
		);

Module_FrequencyDivider	centoMicro(
		.clk_in(qzt_clk),
		.period(30'd2500),

		.clk_out(w_clk_100micro)
		);

Module_FrequencyDivider	unMicro(
		.clk_in(qzt_clk),
		.period(30'd25),

		.clk_out(w_clk_1micro)
		);
	 
Module_Counter_8_bit_oneRun endComm(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(8'd100),
					.run(run_timer),

					//.out(),
					.carry(w_timer)
					);

Module_Counter_8_bit_oneRun timeout(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_100micro),
					.limit(8'd20),
					.run(run_timeout),

					//out,
					.carry(w_timeout)
					);

endmodule
