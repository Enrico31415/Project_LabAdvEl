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
wire w_data;
wire w_ok;
wire w_send;
reg data=11'b01100110011;

// assign /////////////////////////////////////////////////////////////////////

assign w_data=data;
assign altro={5'b00000,trigger,w_send,send,w_ok};

// always /////////////////////////////////////////////////////////////////////

always @(posedge qzt_clk) begin
	if (!trigger_old & trigger) begin
		send=~send;
	end
	trigger_old=trigger;
	data=11'b01100110011;
end

PS2_send module_send(
		.qzt_clk(qzt_clk),
		.data(data),
		.send(trigger),
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
	  
pulse_on_change pulse(
		.qzt_clk(qzt_clk),
		.trigger(send),
		
		.pulse(w_send)
    );

endmodule
