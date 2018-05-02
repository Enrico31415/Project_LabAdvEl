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
		clk_50KHz,
		enable,
		PS2C,
		PS2D,
		
		data,
		done,
		err
	  );

input qzt_clk;
input clk_50KHz;
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
wire w_clk_50KHz_bis;
reg run_timer;
wire w_timer;

`define ST_IDLE 0;


always @ (posedge clk_50KHz) begin
	if (enable) begin
		case(status)
			`ST_IDLE: begin
				nbits<=0;
				err<=0;
				if (PS2C_old & !PS2C) begin
					data<={data, PS2D};
					status<=`ST_READ;
					nbits<=1;
				end
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
				if (w_timer) begin
					run_timer<=0;
					done_reg<=~done_reg;
					status<=`ST_IDLE;
				end
			end
		endcase
	end
end

pulse_on_change ok_pulse(
		.qzt_clk(clk_50KHz),
		.trigger(done_reg),
		
		.pulse(done)
    );
	 
Module_FrequencyDivider	cinquantaKHz_bis(
		.clk_in(qzt_clk),
		.period(30'd200),

		.clk_out(w_clk_50KHz_bis)
		);
	 
Module_Counter_8_bit_oneRun endComm(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_50KHz_bis),
					.limit(8'd6),
					.run(run_timer),

					//.out(),
					.carry(w_timer)
					);

endmodule
