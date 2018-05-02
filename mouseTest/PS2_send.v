/*
********************************************************************************
This module has to send data through the PS2 port. data will be provided from a 
top module and will be an array of 11 bits. The top module has to care about
parity and start and stop bit. The send signal is a positive edge one and start
the procedure of sending the data. The alghorithm is organized as a state 
machine.

INPUTS:
	- qzt_clk
	- data: data to send, comprised of parity, start and stop.
	- send: signal that starts the send procedure when on a positive edge.

OUTPUTS:
	- PS2C & PS2D: the ports
	- ok: signal to the top module the end of the sending
	- err: signal errors
	- status: status is used internally to keep the status but is also sended
			out for inspection

MODULES:
	- Module_Counter_8_bit_oneRun: Is a module which make only one run each time
			when it started. When the input run has a positive edge, it starts the
			counter. When run is put low the counter is resetted and stopped, 
			waiting for another run.
			I use this for timing purposes.
	- Module_SynchroCounter_8_bit_SR: I use this for generate a clock with 
			T=0.5uS, which goes in the others counters.
			
REG:
	- r/run\w+/: variable used to initialize the one-run counters
	- r/w_\w+/: wires which take the clock signal from the respective counter
	- r/\w+_old/: used to implement edge triggered behavior
	- dataReg: copy of the data input. Since it is a reg i can change it, which
			i cannot do with input port
	- nbits: counts the number of bits sended
	
TODO:
	- I can use only one oneRun Module if i change limit in the state machine!
	- Data to send is more naturally descriped using register with MSB last bit?
*/

`timescale 1ns / 1ps

// Defining constants for enumerate states
`define ST_IDLE 8'd0
`define ST_WAITAQ 8'd1
`define ST_WAITCLK_WAIT 8'd2
`define ST_WAITREADLAST 8'd3
`define ST_WAITACK 8'd4
`define ST_ENDPACK 8'd5
`define ST_PRE_ENDCOMM 8'd6
`define ST_SENDCMD 8'd7
`define ST_ENDCOMM 8'd8
`define ST_PRE_WAITREADLAST 8'd9
`define ST_WAITCLK_SEND 8'd10

`define uno 1'bz

module PS2_send(
		qzt_clk,
		clk_50KHz,
		data,
		send,
		btnS,
		
		PS2C,
		PS2D,
		ok,
		err,
		status,
		
		PS2Creg,
		PS2Dreg,
		altro,
		ortla
	  );
//	  ,errCode
//

input qzt_clk;
input clk_50KHz;
input [0:10] data;
input send;
input btnS;

inout PS2C;
inout PS2D;

//reg	[8:0] data;
output reg	[7:0] status=8'd0;
output reg			err=1'b0;
output 				ok;
reg					reg_ok=1'b0;

reg  send_old=1'b0;
reg  PS2C_old=1'b1;
reg  PS2D_old=1'b1;

wire w_clk_1micro;
wire w_clk_100micro;

reg run_principal=0;
reg run_auxiliary=0;
reg run_timeout=0;
reg [7:0] limit_principal=0;
reg [7:0] limit_auxiliary=0;
wire w_principal;
wire w_auxiliary;
wire w_timeout;

output reg  PS2Creg=1'b1;
output reg  PS2Dreg=1'b1;
assign PS2C=PS2Creg?1'bz:1'b0;
assign PS2D=PS2Dreg?1'bz:1'b0;

reg [0:10] dataReg=11'd0;
integer nbits=0;

//////////////////////////////////////////////
output [3:0] altro;
output [3:0] ortla;
reg to_count_bits=0;
pulse_on_change pulse_bit(
		.qzt_clk(qzt_clk),
		.trigger(to_count_bits),
		
		.pulse(altro[0])
    );
//assign altro=PS2D;//
assign altro[3]=(w_timeout | w_principal);
//assign altro[0]=w_clk_100micro;
assign altro[1]=run_principal;
assign altro[2]=run_auxiliary;
//assign altro[2]=

assign ortla[0]=0;
////////////////////////////////////////////////////

always @(posedge clk_50KHz) begin
	if (w_timeout) begin
		status=`ST_IDLE;
		reg_ok=~reg_ok;
		err=1'b1;
	end
	/*if (btnS) begin
		status=`ST_IDLE;
	end*/
	case (status)
		// IDLE state, just wait for trigger on send
		`ST_IDLE: begin
			PS2Creg=1'b1;
			PS2Dreg=1'b1;
			run_timeout=0;
			limit_principal=8'd120;
			limit_auxiliary=8'd60;
			run_principal=0;
			run_auxiliary=0;
			if (!send_old & send) begin
				status=`ST_SENDCMD;
			end
		end
		`ST_SENDCMD: begin
			run_timeout=1;
			run_principal=1; // start counter for acquiring channel
			run_auxiliary=1;
			PS2Creg=0;	// force clock low
			PS2Dreg=1;	// and data high. Clock has to go low before data
			status=`ST_WAITAQ;
			dataReg=data; // make a copy of data
			nbits=0;
			err=0;
		end
		// In here waits for the 100uS
		`ST_WAITAQ: begin
			if (w_principal) begin
				run_principal=0; // reset aquire counter
				PS2Creg=1; 	 // release the clock 
				status=`ST_WAITCLK_WAIT;
			end
			if (w_auxiliary) begin
				run_auxiliary=0;
				PS2Dreg=0;	// force data low
			end
		end
		// in this state waits for falling edge of device clock in order to send
		// the data. data is readed by the device on rising edge and so it is
		// changed by host on falling edge
		`ST_WAITCLK_WAIT: begin
			if (PS2C_old & !PS2C) begin
				dataReg=dataReg<<1;
				status=`ST_WAITCLK_SEND;
			end
		end
		`ST_WAITCLK_SEND:begin
			PS2Dreg=dataReg[0];
			nbits=nbits+1;
			/////////////////////////////////
			to_count_bits=~to_count_bits;
			/////////////////////////////////
			if (nbits>=10) begin
				status=`ST_PRE_WAITREADLAST;
			end else begin
				status=`ST_WAITCLK_WAIT;
			end
		end
		// Ack bit is sended by the device and readed on falling edge, so wait
		// for the last bit of data to be sent and then change status to WAITACK
		`ST_PRE_WAITREADLAST: begin
			if (!PS2C_old & PS2C) begin
				run_principal=1;
				limit_principal=8'd10;
				status=`ST_WAITREADLAST;
			end
		end
		`ST_WAITREADLAST: begin
			if (w_principal) begin
				run_principal=0;
				PS2Dreg=1'b1; // release data
				status=`ST_WAITACK;
			end
		end
		// read the ack and signal error if is not 0
		`ST_WAITACK: begin
			if (PS2C_old & !PS2C) begin
				err=PS2D?(1):(0);
				
				limit_principal=8'd60;
				run_principal=1;

				status=`ST_ENDPACK;
			end
		end

		// In ENDPACK I simply wait some time before end the communication. This
		// because the device may transimt some more clock cycles after Ack bit
		`ST_ENDPACK: begin
			if (w_principal) begin
				run_principal=0;
				status=`ST_PRE_ENDCOMM;
				limit_principal=8'd20;
			end
		end

		// Here I check for The line to be released, so Clock and Data High.
		`ST_PRE_ENDCOMM: begin
			run_principal=1;
			status=`ST_ENDCOMM;
		end
		`ST_ENDCOMM: begin
			if (w_principal & PS2C & PS2D) begin
				run_principal=0;
				status=`ST_IDLE;
				reg_ok=~reg_ok;
				err=1'b0;
			end /*else begin
				run_principal=0;
				status=`ST_IDLE;
				ok=1;
			end*/
		end
		default: begin
			status=`ST_IDLE;
			reg_ok=~reg_ok;
			err=1'b1;
		end
		endcase
		 
	// update old values
	PS2C_old=PS2C;
	//PS2D_old=PS2D;
	send_old=send;
end	

Module_FrequencyDivider	mezzoMicro(
		.clk_in(qzt_clk),
		.period(30'd25),

		.clk_out(w_clk_1micro)
		);
		
Module_FrequencyDivider	centoMicro(
		.clk_in(qzt_clk),
		.period(30'd2500),

		.clk_out(w_clk_100micro)
		);

Module_Counter_8_bit_oneRun principal(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(limit_principal),
					.run(run_principal),

					//.out(),
					.carry(w_principal)
					);
Module_Counter_8_bit_oneRun auxiliary(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(limit_auxiliary),
					.run(run_auxiliary),

					//out,
					.carry(w_auxiliary)
					);

Module_Counter_8_bit_oneRun timeout(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_100micro),
					.limit(8'd20),
					.run(run_timeout),

					//out,
					.carry(w_timeout)
					);

pulse_on_change ok_pulse(
		.qzt_clk(clk_50KHz),
		.trigger(reg_ok),
		
		.pulse(ok)
    );

/*
Module_Counter_8_bit_oneRun acquireChannel	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(8'd120),
					.run(runAcq),

					//out,
					.carry(w_acquire)
					);
					
Module_Counter_8_bit_oneRun transmissionTiming	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(8'd3),
					.run(runData),

					//out,
					.carry(w_chData)
					);
					
Module_Counter_8_bit_oneRun endPacket	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(8'd60), // 60 uS
					.run(runEP),

					//out,
					.carry(w_EP)
					);
					
Module_Counter_8_bit_oneRun endComm	(
					.qzt_clk(qzt_clk),
					.clk_in(w_clk_1micro),
					.limit(8'd20), // 
					.run(runEC),

					//out,
					.carry(w_EC)
					);
*/

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
