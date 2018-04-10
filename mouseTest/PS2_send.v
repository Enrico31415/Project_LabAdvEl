`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:42:21 03/27/2018 
// Design Name: 
// Module Name:    PS2_send 
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
`define ST_IDLE 2'd0
`define ST_WAITAQ 2'd1
`define ST_WAITCLK 2'd2



module PS2_send(
		qzt_clk,
		data,
		send,
		

		PS2C,
		PS2D,
	  ok, err, status
//	  ,errCode
	  );
//

input qzt_clk;
input [8:0] data;
input send;

output ok;
output err;
output PS2C;
output PS2D;

//reg	[8:0] data;
reg	send_old;
reg	reset;
reg 	runAcq;
reg	runData;
output reg   [1:0] status;
reg	counter; // bits send

wire w_clk05uS;
wire w_acquire;
wire w_chData;

reg  PS2C;
reg  PS2D;
reg  PS2C_old;
reg  PS2D_old;


always @(posedge qzt_clk) begin
	case (status)
		`ST_IDLE: begin
			if (!send_old & send) begin
				runAcq=1; // start counter for acquiring channel
				reset=1;	// ?
				PS2C=0;	// force clock low
				PS2D=1;
				status=`ST_WAITAQ;
			end
		end
		`ST_WAITAQ: begin
			if (w_acquire) begin
				runAcq=0; // resetta aquire counter
				PS2C=1; 	 // release the clock
				PS2D=0;	 // force data low
				status=`ST_WAITCLK
			end
		`ST_WAITCLK: begin
			
		
		end
		end
	// send request: make both counters start and take clock low.
	if (counter>=9) begin
		status=3;
		ok=1;
	end
	if (!send_old & send & status==0) begin
		reset=1;
		runAcq=1;
		PS2C=0;
		PS2D=1;
	end
	// channel acquired, now release the clock and put data low
	if (w_acquire & status==0) begin
		status=1;
		reset=0;
		runAcq=0;
		PS2C=1;
		PS2D=0;
	end
	// device has acquired clock!
	if (status==1 & PS2C==0) begin
		status=2;
	end
	if (status==2 & PS2C_old & !PS2C) begin
		runData=1;
	end
	if (status==2 & w_chData) begin
		runData=0;
		PS2D=data[0];
		data>>1;
		counter=counter+1;
	end
	
	
	PS2C_old=PS2C;
	PS2D_old=PS2D;
	send_old=send;
	
end	

Module_SynchroCounter_8_bit_SR	 conta05uS(	
						.qzt_clk(qzt_clk),
						.clk_in(qzt_clk),
						.reset(reset),
						//set,
						//presetValue,
						.limit(8'd25),

						//out,
						.carry(w_clk05uS));

//Module_FrequencyDivider 


Module_Counter_8_bit_oneRun acquireChannel	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk05uS),
					.limit(0'd200),
					.run(runAcq),

					//out,
					.carry(w_acquire)
					);
					
Module_Counter_8_bit_oneRun transmissionTiming	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk05uS),
					.limit(0'd5),
					.run(runData),

					//out,
					.carry(w_chData)
					);
/*	
	if (out >= (limit - 8'b00000001)) begin
		out = 0;
		carry = 1;
	end else if (out == 0) begin
		out = 1;
		carry = 0;
	end else
		out = out + 1;
end
// */


endmodule
