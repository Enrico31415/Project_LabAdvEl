`timescale 1ns / 1ps
`define start_const_1 31'b	0010110110100011000111111101010

// Module Name:    zero_to_nine_r_gen 
// da bits random genera una distribuzione uniforme tra 0 e 9

module zero_to_nine_r_gen ( qzt_clk,

									r_zero_to_nine,
									r_zero_to_eight,									
									r_zero_to_seven,									
									r_zero_to_six,
									r_one_bit_1,
									r_one_bit_2						);		
															
// il valore delle uscite non è indipendente. sono pensate per essere usate in maniera esclusiva. 
//	le uscite del modulo corrispondono allo stesso valore riscalato.									
									
input qzt_clk;
output reg [3:0] r_zero_to_nine;
output reg [3:0] r_zero_to_eight;									
output reg [2:0] r_zero_to_seven;									
output reg [2:0] r_zero_to_six;
output reg r_one_bit_1;
output reg r_one_bit_2;

wire [30:0]random_gen_out;
wire [9:0]rand_num;
//reg set_reg=0;

random_gen generatore_1 ( 	.qzt_clk(qzt_clk),
									.seed(`start_const_1),
//									.set_r(set_reg),

									.out_w(random_gen_out)
								);

assign 	rand_num =       {	random_gen_out[20]^random_gen_out[11],
										random_gen_out[4]^random_gen_out[14],
	 									random_gen_out[10]^random_gen_out[9],
										random_gen_out[12]^random_gen_out[5],
										random_gen_out[21]^random_gen_out[1],
										random_gen_out[7]^random_gen_out[29],
										random_gen_out[22]^random_gen_out[21],
										random_gen_out[0]^random_gen_out[24],
										random_gen_out[12]^random_gen_out[17],
 										random_gen_out[6]^random_gen_out[19] 	};	

always @(posedge qzt_clk) begin

//rand_num va da 0000000000 (d_0) a 1111111111 (d_1023). implrmento le divisioni.

// blocco istruzioni per r_zero_to_nine --------------------------------------------------------
// --------- valori limite ------------
//
// 102
// 204
// 307
// 409
// 511
// 614
// 716 
// 818
// 921

if (rand_num <= 10'd102 )
		begin
		r_zero_to_nine= 4'd0;
		end
if (rand_num >  10'd102  &&  rand_num <= 10'd204 )
		begin
		r_zero_to_nine= 4'd1;
		end
if (rand_num > 10'd204  && rand_num <= 10'd307 )
		begin
		r_zero_to_nine= 4'd2;
		end
if (rand_num > 10'd307  && rand_num <= 10'd409 )
		begin
		r_zero_to_nine= 4'd3;
		end
if (rand_num > 10'd409  && rand_num <= 10'd511 )
		begin
		r_zero_to_nine= 4'd4;
		end
if (rand_num > 10'd511  && rand_num <= 10'd614 )
		begin
		r_zero_to_nine= 4'd5;
		end
if (rand_num > 10'd614  && rand_num <= 10'd716 )
		begin
		r_zero_to_nine= 4'd6;
		end
if (rand_num > 10'd716  && rand_num <= 10'd818 )
		begin
		r_zero_to_nine= 4'd7;
		end
if (rand_num > 10'd818  && rand_num <= 10'd921 )
		begin
		r_zero_to_nine= 4'd8;
		end
if (rand_num > 10'd921 )
		begin
		r_zero_to_nine= 4'd9;
		end

// blocco istruzioni per r_zero_to_eight --------------------------------------------------
// --------- valori limite ------------
//    114    227    341   455    568    682    796    909  
 


if (rand_num <= 10'd114  )
		begin
		r_zero_to_eight= 4'd0 ;
		end
if (rand_num > 10'd114   && rand_num <= 10'd227  )
		begin
		r_zero_to_eight= 4'd1 ;
		end
if (rand_num > 10'd227   && rand_num <= 10'd341  )
		begin
		r_zero_to_eight= 4'd2 ;
		end
if (rand_num > 10'd341   && rand_num <= 10'd455  )
		begin
		r_zero_to_eight= 4'd3 ;
		end
if (rand_num > 10'd455   && rand_num <= 10'd568  )
		begin
		r_zero_to_eight= 4'd4 ;
		end
if (rand_num > 10'd568   && rand_num <= 10'd682  )
		begin
		r_zero_to_eight= 4'd5 ;
		end
if (rand_num > 10'd682   && rand_num <= 10'd796  )
		begin
		r_zero_to_eight= 4'd6 ;
		end
if (rand_num > 10'd796   && rand_num <= 10'd909  )
		begin
		r_zero_to_eight= 4'd7 ;
		end
if (rand_num > 10'd909   )
		begin
		r_zero_to_eight= 4'd8 ;
		end
// blocco istruzioni per r_zero_to_seven --------------------------------------------------------

r_zero_to_seven= rand_num[3:1] ;

// blocco istruzioni per r_zero_to_six --------------------------------------------------
// --------- valori limite ------------
//
//     146    292    438    585    731    877 


if (rand_num <= 10'd146 )
		begin
		r_zero_to_six= 3'd0;
		end
if (rand_num > 10'd146  && rand_num <= 10'd292 )
		begin
		r_zero_to_six= 3'd1;
		end
if (rand_num > 10'd292  && rand_num <= 10'd438 )
		begin
		r_zero_to_six= 3'd2;
		end
if (rand_num > 10'd438  && rand_num <= 10'd585 )
		begin
		r_zero_to_six= 3'd3;
		end
if (rand_num > 10'd585  && rand_num <= 10'd731 )
		begin
		r_zero_to_six= 3'd4;
		end
if (rand_num > 10'd731  && rand_num <= 10'd877 )
		begin
		r_zero_to_six= 3'd5;
		end
if (rand_num > 10'd877  )
		begin
		r_zero_to_six= 3'd6;
		end


// blocco istruzioni per r_one_bit --------------------------------------------------
r_one_bit_1= rand_num[1] ;
r_one_bit_2= rand_num[5];



end

endmodule


