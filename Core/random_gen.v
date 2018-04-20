`timescale 1ns / 1ps
`define start_const 31'b	1000100110101011010111110101011

// ----> how to
// feeding-back the serial input (i.e. the 0 th bit) with the XOR of the 30 th and
// the 27 th bit

module random_gen( clk_in,
    );
	 
	 
reg set_r=0;
// reg serial_in_r=0;

wire [30:0] out_w;
wire serial_out_w;
wire xorvalue;

assign 	xorvalue=  (out_w[30] ^ out_w[27])^out_w[5];
	 

	 shift_2 test_sh(	.qzt_clk(clk_in),
							.serial_in( xorvalue ),
							.set(set_r),
							.presetValue(`start_const),
						
							.out(out_w),
							.serial_out(serial_out_w)
							);
	 
	 
	 
	 
	 

input clk_in;



endmodule
