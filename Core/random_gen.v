`timescale 1ns / 1ps

// ----> how to
// feeding-back the serial input (i.e. the 0 th bit) with the XOR of the 30 th and
// the 27 th bit

module random_gen( 	qzt_clk,
							seed,
//							set_r,

							out_w
						);
	 


	input 		qzt_clk;
	input 		[30:0] seed;
//	input			set_r;
	output 		[30:0] out_w;	 
	 

	wire [30:0] seed;
	wire [30:0] out_w;
	wire serial_out_w;
	wire xorvalue;

assign 	xorvalue=  (out_w[30] ^ out_w[27])^out_w[5];
	 
	 
shift_2 test_sh(	.qzt_clk(qzt_clk),
						.serial_in( xorvalue ),
//						.set(set_r),
//						.presetValue(seed),
					
						.out(out_w),
						.serial_out(serial_out_w)
						);


endmodule
