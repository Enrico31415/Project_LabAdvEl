`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:48 04/24/2018 
// Design Name: 
// Module Name:    pulse_on_change 
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
module pulse_on_change(
		qzt_clk,
		trigger,
		
		pulse
    );

input qzt_clk;
input trigger;
output reg pulse=0;

reg trigger_old=0;

always @(posedge qzt_clk) begin
	pulse<=trigger^trigger_old;
	trigger_old<=trigger;
end

endmodule
