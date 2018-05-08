`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:55:48 05/07/2018 
// Design Name: 
// Module Name:    sim_test_parity 
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
module sim_test_parity(
	input  [10:0] in,
	output [1:0] check
    );
/*
function calc_parity;
	input [10:0] pck;
	begin
	calc_parity = ^pck;
	end
endfunction

assign parity = calc_parity(in);
*/

function [1:0] checkPck;
	input [10:0] pck;
	if (pck[10] | !pck[0]) checkPck=1;
	else if (! (^pck[9:1])) checkPck=2;
	else checkPck=0;
endfunction

assign check = checkPck(in);

endmodule
