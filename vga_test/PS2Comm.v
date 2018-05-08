`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:46:44 04/10/2018 
// Design Name: 
// Module Name:    PS2Comm 
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

module PS2Comm(
		qzt_clk,
		
		PS2C,
		PS2D,
		LED
    );
	 
input 	qzt_clk;
output	PS2C;
output	PS2D;
output	LED;

reg run;
reg send;
wire w_delay;

always @(posedge qzt_clk) begin
	run=1;
	if (w_delay) begin
		send=1;
	end
end

Module_Counter_8_bit_oneRun waitSeconds(
					.qzt_clk(qzt_clk),
					.clk_in(qzt_clk),
//					.limit(`delay),
					.run(run),

					//out,
					.carry(w_delay)
					);


PS2_send PS2_send(
	.qzt_clk(CLK_50M),
	.data(11'b11000000000),
	.send(send), 
	.PS2C(PS2C),
	.PS2D(PS2D),
   
	.status(LED)
//	.ok,
//	err
//	  ,errCode
	  );
//

endmodule
