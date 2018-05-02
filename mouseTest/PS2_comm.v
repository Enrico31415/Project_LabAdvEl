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
		
		altro
    );
// IN, OUT, INOUT /////////////////////////////////////////////////////////////
input qzt_clk;
input trigger;

inout PS2C;
inout PS2D;

output [7:0] altro;

// reg & wire /////////////////////////////////////////////////////////////////
reg trigger_old=0;
reg send=0;
wire [10:0] w_data;
wire w_ok;
wire w_send;
wire w_clk_50KHz;
wire w_clk_centoMilli;
wire w_clk_unMilli;
reg run_timer;
wire w_timer;
reg [7:0] status=0;
//reg [7:0] pck_sent=0;
reg w_ok_old;

`define NPACKETS_SEND 3
reg [0:10] data_array [`NPACKETS_SEND-1:0];
initial begin
	//data_array[0]=11'b01111111111;	// reset
	data_array[0]=11'b00100111101;	// give me the ID
	data_array[1]=11'b00101011101;	// stream
	data_array[2]=11'b00010111101;	// enable_data_reporting
end

integer pck_sent=0;
assign w_data = data_array[pck_sent];
// assign /////////////////////////////////////////////////////////////////////

//assign w_data=data;
assign altro={5'b00000,trigger,w_send,send,w_ok};

// always /////////////////////////////////////////////////////////////////////


`define ST_IDLE 8'd0
`define ST_SEND_SEND 8'd1
`define ST_SEND_WAIT 8'd2

always @(posedge qzt_clk) begin
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
		end
		`ST_SEND_WAIT: begin
			if (!w_ok_old & w_ok) begin
				run_timer<=1;
			end
			if (w_timer) begin
				run_timer<=0;
				pck_sent<=pck_sent+1;
				if (pck_sent >= `NPACKETS_SEND-1) status<=`ST_IDLE;
				else status<=`ST_SEND_SEND;
			end
		end
	endcase	
	trigger_old<=trigger;
	w_ok_old<=w_ok;
	//data=11'b01100110011;
end

PS2_send module_send(
		.qzt_clk(qzt_clk),
		.clk_50KHz(w_clk_50KHz),
		.data(w_data),
		.send(w_send),
		//btnS,
		
		.PS2C(PS2C),
		.PS2D(PS2D),
		.ok(w_ok)
		//err,
		//status,
		
		//PS2Creg,
		//PS2Dreg,
		//altro,
		//ortla
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

Module_FrequencyDivider	unMilli(
		.clk_in(qzt_clk),
		.period(30'd25_000),

		.clk_out(w_clk_unMilli)
		);

Module_Counter_8_bit_oneRun timer(
		.qzt_clk(qzt_clk),
		.clk_in(w_clk_unMilli),
		.limit(8'd10),
		.run(run_timer),

		//out,
		.carry(w_timer)
		);

pulse_on_change send_pulse(
		.qzt_clk(w_clk_50KHz),
		.trigger(send),
		
		.pulse(w_send)
    );

endmodule
