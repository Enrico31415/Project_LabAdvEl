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
`define ST_IDLE 3'd0
`define ST_WAITAQ 3'd1
`define ST_WAITCLK 3'd2
`define ST_WAITREADLAST 3'd3
`define ST_WAITACK 3'd4
`define ST_ENDPACK 3'd5
`define ST_ENDCOMM 3'd6

module PS2_send(
		qzt_clk,
		data,
		send,

		PS2C,
		PS2D,
	  ok, err, status
	  );
//	  ,errCode
//

input qzt_clk;
input [10:0] data;
input send;

output PS2C;
output PS2D;

//reg	[8:0] data;
reg	send_old;
reg	reset;

reg 	runAcq;
reg	runData;
reg 	runEP;
reg	runEC;

output reg	[1:0] status;
output reg			err;
output reg			ok;

wire w_clk05uS;
wire w_acquire;
wire w_chData;
wire w_EP;
wire w_EC;

reg  PS2C;
reg  PS2D;
reg  PS2C_old;
reg  PS2D_old;

reg [10:0] dataReg;
integer nbits;

always @(posedge qzt_clk) begin
	case (status)
		`ST_IDLE: begin
			if (!send_old & send) begin
				runAcq=1; // start counter for acquiring channel
				reset=1;	// ?
				PS2C=0;	// force clock low
				PS2D=1;
				status=`ST_WAITAQ;
				dataReg=data;
				nbits=0;
				ok=0;
			end
		end
		`ST_WAITAQ: begin
			if (w_acquire) begin
				runAcq=0; // resetta aquire counter
				PS2C=1; 	 // release the clock
				PS2D=0;	 // force data low
				status=`ST_WAITCLK;
			end
		end
		`ST_WAITCLK: begin
			if (PS2C_old & !PS2C) begin
				PS2D=dataReg[0];
				dataReg=dataReg>>1;
				nbits=nbits+1;
				if (nbits>=11) begin
					status=`ST_WAITREADLAST;
				end
			end
		end
		`ST_WAITREADLAST: begin
			if (!PS2C_old & PS2C) begin
				runData=1;
			end
			if (w_chData) begin
				runData=0;
				status=`ST_WAITACK;
			end
		end
		`ST_WAITACK: begin
			if (PS2C_old & PS2C) begin
				err=PS2D?(1):(0);
				runEP=1;
				status=`ST_ENDPACK;
			end
		end
		`ST_ENDPACK: begin
			if (w_EP) begin
				runEP=0;
				status=`ST_ENDCOMM;
				runEC=1;
			end
		end
		`ST_ENDCOMM: begin
			if (w_EC & PS2C & PS2D) begin
				runEC=0;
				status=`ST_IDLE;
				ok=1;
			end
		end
		
		endcase
	
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
					.limit(8'd200),
					.run(runAcq),

					//out,
					.carry(w_acquire)
					);
					
Module_Counter_8_bit_oneRun transmissionTiming	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk05uS),
					.limit(8'd5),
					.run(runData),

					//out,
					.carry(w_chData)
					);
					
Module_Counter_8_bit_oneRun endPacket	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk05uS),
					.limit(8'd120), // 60 uS
					.run(runEP),

					//out,
					.carry(w_EP)
					);
					
Module_Counter_8_bit_oneRun endComm	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk05uS),
					.limit(8'd40), // 
					.run(runEC),

					//out,
					.carry(w_EC)
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

/*
		
		
		
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
	
*/


endmodule
