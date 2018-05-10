`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:25:13 05/02/2018 
// Design Name: 
// Module Name:    PS2_comm 
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
// stati //////////////////////////////////////////////////////////////////////

// modulo 
module PS2_comm(
		qzt_clk,
		trigger,
		
		PS2C,
		PS2D,
		
		data_tx,
		status_pck_1,
		xm_pck_2,
		ym_pck_3,
		
		altro
    );
/* *********************** IN, OUT, INOUT ********************************** */
input qzt_clk;
input trigger;

inout PS2C;
inout PS2D;

output [15:0] altro;

// mouse data
output data_tx;
output reg [7:0] status_pck_1=0;
output reg [7:0] xm_pck_2=0;
output reg [7:0] ym_pck_3=0;

reg [7:0] status_pck_1_r=0;
reg [7:0] xm_pck_2_r=0;
reg [7:0] ym_pck_3_r=0;

/* ************************** REG & WIRES ********************************** */
// module COMMUNICATION (THIS) ////////
reg trigger_old=0;
reg [7:0] status=0;
reg [7:0] phase=0;
reg data_tx_pulse_var=0;
	// clocks
wire w_clk_50KHz;
wire w_clk_centoMilli;
wire w_clk_unMilli;
wire w_clk_100micro;
	// timer
reg run_timer=0;
wire w_timer;
reg [7:0] limit_timer=0;
	// phase listen
reg [1:0] pck_received=0;
reg [10:0] data_received [2:0];
reg [10:0] data_received_el=0;
reg [1:0] i_pck=0;

// module SEND ////////////////////////
`define NPACKETS_SEND 8'd3
reg w_done_send_old=0;
wire [10:0] w_data_send;
wire w_done_send;
wire w_send;
reg send=0;
reg [0:10] data_send_array [`NPACKETS_SEND-1:0];
integer pck_sent=0;
// err
wire w_err_send;
wire [7:0] w_errcode_send;

// module READ ////////////////////////
reg enable_read=0;
wire [10:0]w_data_read;
wire w_done_read;
reg done_read_old=0;
wire w_reading;
reg [10:0]data_read_last=0;
// err
wire w_err_read;
wire [7:0] w_errcode_read;

/* **************** array of data ****************************************** */
initial begin
	//data_send_array[0]=11'b01111111111;	// reset
	data_send_array[0]=11'b00100111101;	// give me the ID
	data_send_array[1]=11'b00101011101;	// stream
	data_send_array[2]=11'b00010111101;	// enable_data_reporting
end

`define PCK_RESEND 11'b00111111101
assign w_data_send = phase ? `PCK_RESEND : data_send_array[pck_sent];

initial begin
	data_received[0]=11'd0;
	data_received[1]=11'd0;
	data_received[2]=11'd0;
end

/* ******************************* Other *********************************** */
assign altro=status;

/* ******************************* states ********************************** */
// phases
`define PH_INIT 8'd0
`define PH_LISTEN 8'd1

// states INIT
`define ST_IDLE 8'd0
`define ST_SEND_SEND 8'd1
`define ST_SEND_WAIT 8'd2

`define ST_WAIT_ACK 8'd3
`define ST_TRY_TO_READ 8'd4
`define ST_LIFE_DECISIONS 8'd5
`define ST_HAS_READ 8'd6

// states LISTEN
`define ST_READ3PCK 8'd20
`define ST_TREAT_DATA 8'd21
`define ST_ASSIGN1 8'd22
`define ST_ASSIGN2 8'd23
`define ST_LISTEN_RESEND 8'd24

/* ***************************** other constants *************************** */
`define ERR_TIMEOUT 8'd1 			// for both modules
`define ERR_MOUSE_ACK 8'd2			// for send only
`define ERR_STATE_MACHINE 8'd3	// for send only

/* ***************************** function ********************************** */
function [1:0] checkPck;
	input [10:0] pck;
	if (pck[10] | !pck[0]) checkPck=1;
	else if (! (^pck[9:1])) checkPck=2;
	else checkPck=0;
endfunction

/* ************************** reverse vectors ****************************** */
integer i;
always @(posedge qzt_clk) begin
	for (i=0;i<=7;i=i+1) begin
		status_pck_1[i]<=status_pck_1_r[7-i];
		xm_pck_2[i]<=xm_pck_2_r[7-i];
		ym_pck_3[i]<=ym_pck_3_r[7-i];
	end
end

/* ******************************* always ********************************** */
always @(posedge qzt_clk) begin
	case (phase)
		`PH_INIT: begin
			case(status)
				`ST_IDLE: begin
					if (!trigger_old & trigger) begin
						status<=`ST_SEND_SEND;
						pck_sent<=0;
					end
				end
				`ST_SEND_SEND: begin
					send<=~send;
					status<=`ST_SEND_WAIT;
					limit_timer<=8'd1; // STUDY_MOUSE_TIMES
				end
				`ST_SEND_WAIT: begin
					if (!w_done_send_old & w_done_send) begin
						run_timer<=1;
					end
					if (w_timer) begin
						run_timer<=0;
						pck_sent<=pck_sent+1;
						status<=`ST_WAIT_ACK;
					end
				end
				`ST_WAIT_ACK: begin
					enable_read<=1;
					limit_timer<=8'd70; // time over for receiving data, after proceed with send
					run_timer<=1;
					status<=`ST_TRY_TO_READ;
				end
				`ST_TRY_TO_READ: begin
					if (w_timer) begin
						run_timer<=0;
						status<=`ST_LIFE_DECISIONS;
					end
					if (w_reading) begin
						run_timer<=0;
						status<=`ST_HAS_READ;
					end
				end
				`ST_LIFE_DECISIONS: begin
					if (w_timer) begin
						run_timer<=0;
						if (pck_sent >= `NPACKETS_SEND) begin
							status<=`ST_IDLE;
							phase<=`PH_LISTEN;
							enable_read<=1;
						end
						else status<=`ST_SEND_SEND;
					end
				end
				`ST_HAS_READ: begin
					if (!done_read_old & w_done_read) begin
						data_read_last<=w_data_read;
						status<=`ST_LIFE_DECISIONS;
						enable_read<=0;
						run_timer<=1;
						limit_timer<=20;
					end
				end
			endcase
		end
		`PH_LISTEN: begin
			//timer
			if (w_timer) begin
				run_timer<=0;
				status<=`ST_IDLE;
				//err<=1;
				//errcode<=`ERR_TIMER;
			end
			case(status)
				`ST_IDLE: begin
					pck_received<=0;
					i_pck<=0;
					limit_timer<=8'd100; //timer
					if (w_reading) begin
						run_timer<=1; //timer
						status<=`ST_READ3PCK;
					end
				end
				`ST_READ3PCK: begin
					if (!done_read_old & w_done_read) begin
						pck_received<=pck_received+1;
						data_received[pck_received]<=w_data_read;
						if (pck_received>=2) begin
							status<=`ST_TREAT_DATA;
						end
					end
				end
				`ST_TREAT_DATA: begin
					if (checkPck(data_received[0])==0 && checkPck(data_received[1])==0 && checkPck(data_received[2])==0) begin
						status<=`ST_ASSIGN1;
					end else begin
						status<=`ST_LISTEN_RESEND;
						send<=~send;
					end
				end
				`ST_ASSIGN1: begin
					data_received_el<=data_received[i_pck];
					status<=`ST_ASSIGN2;
				end
				`ST_ASSIGN2: begin
					case(i_pck)
						2'd0: status_pck_1_r<=data_received_el[9:2];
						2'd1: xm_pck_2_r<=data_received_el[9:2];
						2'd2: ym_pck_3_r<=data_received_el[9:2];
					endcase
					i_pck<=i_pck+1;
					if(i_pck>=2'd2) begin
						data_tx_pulse_var=~data_tx_pulse_var;
						status<=`ST_IDLE;
					end else begin
						status<=`ST_ASSIGN1;
					end
				end
				`ST_LISTEN_RESEND: begin
					if (!w_done_send_old & w_done_send) begin
						status<=`ST_IDLE;
					end
				end
			endcase
		end
	endcase // phase case
	trigger_old<=trigger;
	w_done_send_old<=w_done_send;
	done_read_old<=w_done_read;
end

PS2_send send_module(
		.qzt_clk(qzt_clk),
		.clk_main_loop(w_clk_50KHz),
		.data(w_data_send),
		.send(w_send),
		//btnS,
		
		.PS2C(PS2C),
		.PS2D(PS2D),
		.ok(w_done_send),
		.err(w_err_send)
//		.errcode(w_errcode_send)
		//status,
		
		//PS2Creg,
		//PS2Dreg,
		//altro,
		//ortla
	  );

PS2_read read_module(
		.qzt_clk(qzt_clk),
		.clk_main_loop(w_clk_50KHz),
		.enable(enable_read),
		.PS2C(PS2C),
		.PS2D(PS2D),
		
		.reading(w_reading),
		.data(w_data_read),
		.done(w_done_read),
		.err(w_err_read)
//		.errcode(w_errcode_read)
	  );

Module_FrequencyDivider	cinquantaKHz(
		.clk_in(qzt_clk),
		.period(30'd200),

		.clk_out(w_clk_50KHz)
		);

Module_FrequencyDivider	centoMilli(
		.clk_in(qzt_clk),
		.period(30'd2_500_000),

		.clk_out(w_clk_centoMilli)
		);
		
Module_FrequencyDivider	centoMicro(
		.clk_in(qzt_clk),
		.period(30'd2500),

		.clk_out(w_clk_100micro)
		);

Module_FrequencyDivider	unMilli(
		.clk_in(qzt_clk),
		.period(30'd25_000),

		.clk_out(w_clk_unMilli)
		);

Module_Counter_8_bit_oneRun timer(
		.qzt_clk(qzt_clk),
		.clk_in(w_clk_100micro),
		.limit(limit_timer),
		.run(run_timer),

		//out,
		.carry(w_timer)
		);

pulse_on_change send_pulse(
		.qzt_clk(w_clk_50KHz),
		.trigger(send),
		
		.pulse(w_send)
    );

pulse_on_change tx_output_pulse(
		.qzt_clk(w_clk_50KHz),
		.trigger(data_tx_pulse_var),
		
		.pulse(data_tx)
    );

endmodule
