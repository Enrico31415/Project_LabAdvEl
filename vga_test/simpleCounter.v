`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6


module simpleCounter	(	CLK_50M,

				LED); //here define the chip with ports

input		CLK_50M; //here decalrations, variable with 1 bit.

output	[7:0]	LED;// so have low impedence. 8 digits. is a bus. 

/*
wire		w_clock_1_Hz; // it is not a register. call it with the w
wire		w_carry;
*/
/*

Module_FrequencyDivider		clock_1_Hz_generator(	.clk_in(CLK_50M),           //is another 'chip'
								.period(`defaultPeriod),

								.clk_out(w_clock_1_Hz));

Module_Counter_8_bit		counter1			(	.clk_in(w_clock_1_Hz),
								.limit(8'b00001010),

								.out(LED[3:0]), .carry(w_carry));
								
Module_Counter_8_bit		counter2			(	.clk_in(w_carry),
								.limit(8'b00001010),

								.out(LED[7:4]));
*/

endmodule
