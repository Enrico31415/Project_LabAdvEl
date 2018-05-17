`timescale 1ns / 1ps
`define start_const_1 31'b	1000100110101011010111110101011

// Module Name:    zero_to_nine_r_gen 
// da bits random genera una distribuzione uniforme tra 0 e 9

module zero_to_nine_r_gen( qzt_clk,
									set_reg,
									seed,

									r_zero_to_four,
									r_zero_to_five,									
									r_zero_to_seven,									
									r_zero_to_six,
									r_one_bit_1,
									r_one_bit_2						);		
															
// il valore delle uscite non è indipendente. sono pensate per essere usate in maniera esclusiva. 
//	le uscite del modulo corrispondono allo stesso valore riscalato.									
									
input 	qzt_clk;
input		set_reg;
input 	[30:0] seed;


output reg [2:0] r_zero_to_four;
output reg [2:0] r_zero_to_five;									
output reg [2:0] r_zero_to_seven;									
output reg [2:0] r_zero_to_six;
output reg r_one_bit_1;
output reg r_one_bit_2;

wire [30:0]random_gen_out;
wire [9:0]rand_num;
//reg set_reg = 1'b1 ;

random_gen generatore_1 ( 	.qzt_clk(qzt_clk),
									.seed(seed),
									.set_in(set_reg),

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

// blocco istruzioni per r_zero_to_four --------------------------------------------------------
// --------- valori limite ------------
// 0
// 204
// 409
// 613
// 818
// 1023

if (rand_num <= 10'd204 )
		begin
		r_zero_to_four= 3'd0;
		end
if (rand_num >  10'd204  &&  rand_num <= 10'd409 )
		begin
		r_zero_to_four= 3'd1;
		end
if (rand_num > 10'd409  && rand_num <= 10'd613 )
		begin
		r_zero_to_four= 3'd2;
		end
if (rand_num > 10'd613  && rand_num <= 10'd818 )
		begin
		r_zero_to_four= 3'd3;
		end
if (rand_num > 10'd808  )
		begin
		r_zero_to_four= 3'd4;
		end



// blocco istruzioni per r_zero_to_five --------------------------------------------------
// --------- valori limite ------------
//    170    341    511   682    852    1023  
 


if (rand_num <= 10'd170  )
		begin
		r_zero_to_five= 3'd0 ;
		end
if (rand_num > 10'd170   && rand_num <= 10'd341  )
		begin
		r_zero_to_five= 3'd1 ;
		end
if (rand_num > 10'd341   && rand_num <= 10'd511  )
		begin
		r_zero_to_five= 3'd2 ;
		end
if (rand_num > 10'd511   && rand_num <= 10'd682  )
		begin
		r_zero_to_five= 3'd3 ;
		end
if (rand_num > 10'd682   && rand_num <= 10'd852  )
		begin
		r_zero_to_five= 3'd4 ;
		end
if (rand_num > 10'd852 )
		begin
		r_zero_to_five= 3'd5 ;
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


