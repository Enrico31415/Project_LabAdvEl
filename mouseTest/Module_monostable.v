`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:02 10/11/2017 
// Design Name: 
// Module Name:    Module_monostable 
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
module Module_monostable(tr, qzt,limit, reset,out
    );
input		tr; //trigger, fa attivare luscita
input		qzt;// quarzo
input		[29:0]	limit;// limitwe di conteggio in bit
input		reset;	//resetta il contatore e loutput a 0

output	[7:0] out;

reg		otr; //old trigger
reg		[7:0] out;
reg		[29:0] counter; //serve a memorizzare il conteggio

always @(posedge qzt) begin

	if (reset) begin // condizione di reset
		counter=0;
		
		otr=0;
		out[0]=0;
	end 
	if (out[0]) begin
		counter=counter+1;
	end 
	if (!otr & tr) begin //condizione di conteggio
		out[0]=1;
	end 
	if (counter>=limit) begin
		out[0]=0;
		counter=0;
	end 
	otr=tr; //manda il valore del tasto in memoria
	
end

endmodule
