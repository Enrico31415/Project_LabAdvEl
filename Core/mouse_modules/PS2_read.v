`timescale 1ns / 1ps

/* ******************************** MODULE ********************************* **
	The module has to read a packet from the mouse. To avoid confusion the top
module decide when the reading is enable. When it has done his job it send a 
pulse to the parent. the output reading signals to parent that module is in a
state that's not `ST_IDLE` so, dangerous to interrupt.
	Also here the clk used is not the 50MHz, due to the fact that sample at high
frequency is likely to loos edges. That's strange(*) but i've tested with OSC.
	`data` puts data in output.
	
(*) one would expect more edges than real due to strange things in the TTL?
	instead there are missing. 
*/

module PS2_read(
		qzt_clk,
		clk_main_loop,
		enable,
		PS2C,
		PS2D,
		
		reading,
		data,
		done,
		err,
		errcode
	  );

input qzt_clk;
input clk_main_loop;
input enable;
//input PS2C;
//input PS2D;
input PS2C;
input PS2D;

output reg reading=0;
output reg [10:0] data=0;
output done;
output reg err=0;
output reg [7:0] errcode=0;

reg [7:0] status=0;
reg done_reg=0;
integer nbits=0;
reg PS2C_old=1;
wire w_clk_50KHz;
reg run_timer=0;
wire w_timer;
reg enable_old=0;

reg run_timeout=0;
wire w_timeout;
wire w_clk_100micro;
wire w_clk_1micro;

`define ST_IDLE	8'd0
`define ST_READ 	8'd1
`define ST_END	 	8'd2
`define ST_START	8'd3

`define ERR_TIMEOUT 8'd1

always @ (posedge clk_main_loop) begin
	reading = status ? 1'b1 : 1'b0;
	if (!enable_old & enable) begin
		status<=`ST_IDLE;
	end
	if (enable_old) begin
		if (w_timeout) begin
			err<=1;
			errcode<=`ERR_TIMEOUT;
			status<=`ST_END;
			run_timeout<=0;
		end
		case(status)
			`ST_IDLE: begin
				nbits<=0;
				run_timeout<=0;
				if (PS2C_old & !PS2C) begin
					status<=`ST_START;
					data<=0;
					err<=0;
					errcode<=8'd0;
				end
			end
			`ST_START: begin
				data<={data, PS2D};
				status<=`ST_READ;
				nbits<=1;
				run_timeout<=1;
			end
			`ST_READ: begin
				if (PS2C_old & !PS2C) begin
					data<={data, PS2D};
					nbits<=nbits+1;
				end
				if (nbits>=11) begin
					status<=`ST_END;
					run_timer<=1;
				end
			end
			`ST_END: begin
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
	PS2C_old<=PS2C;
	enable_old<=enable;
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
