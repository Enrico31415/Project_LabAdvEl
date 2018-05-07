`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    17:42:06 04/11/2018 
// Module Name:    GridEngine 
//////////////////////////////////////////////////////////////////////////////////

`define frequency_div 	30'd1
//`define seed_1 		31'b1001010101101000100111111000001;
//`define seed_2		31'b1111000101010010000110101010111;

// turn legend : 3 bits:  

// x _ _	first bit 	0 fpga, 			1 player
// _ x _ second bit 	0     , 			1 
// _ _ x third bit 	0 initialize, 	1 check

`define turn_fpga_init		3'b000
`define turn_player_init	3'b100
`define turn_fpga_check 	3'b001
`define turn_player_check 	3'b101
// .... tbc

`define row_dimension	10'd2
`define line_dimension	10'd2
`define row_period	10'd48
`define line_period  10'd64

// CODIFICA DELLA CELLA DI MEMORIA: 5 bit
// 	_ 1 bit libero (?)	_ _ 2 bit per i colpi sparati 	_ _ 2 bit per la disposizione
//  
// bit per la disposizione: 
//		___00 acqua 			/ ___01 nave mia			/ ___10 nave sua 			/ ___11 entrambe
//
// bit per i colpi sparati: 
// 	_00__  non sparato 	/ _01__ sparato da me 	/ _10__ sparato da lui 	/ _11__ sparato da entrambi
//

//`define cs_name 						5'b _ _ _ _ _


//    ______    ___    _____   _____   _       _____   _____   _   _   _____  ______   _  
//    | ___ \  / _ \  |_   _| |_   _| | |     |  ___| /  ___| | | | | |_   _| | ___ \ | | 
//    | |_/ / / /_\ \   | |     | |   | |     | |__   \ `--.  | |_| |   | |   | |_/ / | | 
//    | ___ \ |  _  |   | |     | |   | |     |  __|   `--. \ |  _  |   | |   |  __/  | | 
//    | |_/ / | | | |   | |     | |   | |____ | |___  /\__/ / | | | |  _| |_  | |     |_| 
//    \____/  \_| |_/   \_/     \_/   \_____/ \____/  \____/  \_| |_/  \___/  \_|     (_) 
//                              
//                                


////////////////////////  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  /////////////////////////////////

module GridEngine(clk_in,
	//posizione del mouse.
	mouse_pos_x,
	mouse_pos_y,	
	// posizione attuale del pxcel a schermo
	pos_x,
	pos_y,	
	mouse_click, //evento del click del mouse	
	pointer_cell_read_status
    );
	 
				input clk_in;
				input mouse_click;	
				input [9:0] mouse_pos_x;
				input [9:0] mouse_pos_y;

				input [9:0] pos_x;
				input [9:0] pos_y;

				output [4:0] pointer_cell_read_status;
				


reg [2:0] turn_status = 3'b000; 	//flag che regola i momenti di gioco  
reg [4:0] ship_placement = 5'b00000;
reg [4:0] mouse_new_status;

reg reg_selector= 1'b1;						//flag che regola li switch tra logica fpga (0) e mouse (1)

reg [3:0]placement_time = 4'b0000; // ciclo per leggere i valori in uscita dalla memoria


//reg [30:0]seed_1 = 31'b1001010101101000100111111000001;
//reg [30:0]seed_2 = 31'b1111000101010010000110101010111;

reg set_random_gens=1'b1;	
reg fpga_write_enable=1'b0;		
reg mouse_write_enable =1'b0;	
reg[3:0] fpga_cell_x;
reg[3:0] fpga_cell_y;
reg [4:0] mouse_cell_new_status;
reg [4:0] fpga_cell_new_status;
wire[3:0] mouse_cell_x;
wire[3:0] mouse_cell_y;
wire[4:0] out_mem_cell_read_status; //stato attuale della cella letta (uscita dalla memoria)

//reg [3:0]flag_primo_if=4'd0;
//reg [3:0]flag_secondo_if=4'd0;
//reg [3:0]flag_secondo_else=4'd0;

//cavi dallo switch alla memoria
wire[3:0] cell_x_to_mem;
wire[3:0] cell_y_to_mem;
wire we_to_mem;
wire[4:0] new_value_to_mem;
wire[3:0] pointer_cell_x;
wire[3:0] pointer_cell_y;

// uscite del generatore di numeri random
wire [3:0] reg_to_nine_m1;
wire [3:0] reg_to_eight_m1;
									
wire [2:0] reg_to_seven_m1;									
wire [2:0] reg_to_six_m1;
wire reg_one_bit_1_m1;
wire reg_one_bit_2_m1;		

wire [3:0] reg_to_nine_m2;
wire [3:0] reg_to_eight_m2;									
wire [2:0] reg_to_seven_m2;									
wire [2:0] reg_to_six_m2;
wire reg_one_bit_1_m2;
wire reg_one_bit_2_m2;	



/////////////////////////  MODULI  -  MODULI  -  MODULI  -  MODULI  /////////////////////////////


//dalla posizione del mouse, torna la posizione in celle.------------------------------
pos_to_quadrant mouse_to_cell(
	.clk_in(clk_in), 
	.pos_x(mouse_pos_x),
	.pos_y(mouse_pos_y),
	
	.cell_x(mouse_cell_x),
	.cell_y(mouse_cell_y)
);

//dalla posizione del pixel in scrittura, torna la posizione in celle.------------------
pos_to_quadrant pointer_to_cell(
	.clk_in(clk_in), 
	.pos_x(pos_x),
	.pos_y(pos_y),
	
	.cell_x(pointer_cell_x),
	.cell_y(pointer_cell_y)
);

// 	modulo che devia i dati in uscita della ------------------------------------------
swtch_mouse_fpga mouse_fpga(
//porta 1		se selector=0  -> fpga
		 .cell_x_1(fpga_cell_x), 
		 .cell_y_1(fpga_cell_y), 
		 .we_1(fpga_write_enable), 
		 .new_value_1(fpga_cell_new_status), 
//porta 2		se selector=1	-> mouse
		 .cell_x_2(mouse_cell_x),
		 .cell_y_2(mouse_cell_y),
		 .we_2(mouse_write_enable),
		 .new_value_2(mouse_cell_new_status),

		 .selector(reg_selector),

	 .cell_x_out(cell_x_to_mem), 			//cella x in uscita 
	 .cell_y_out(cell_y_to_mem), 			//cella y in uscita
	 .we_out(we_to_mem), 					//Write enable in uscita, se deve scrivere
	 .new_value_out(new_value_to_mem) 	//valore da scrivere, in uscita

		);


// data la posizione in x, ed y, ritorna lo stato della cella. ---------------------------
// punta alla posizione del mouse.

cell_io memory( //gestisce la memoria
	.clk_in(clk_in),
	.mouse_cell_x(cell_x_to_mem),
	.mouse_cell_y(cell_y_to_mem),
	.new_value(new_value_to_mem),
	.we(we_to_mem),
	.pointer_cell_x(pointer_cell_x), // spazzola lo schermo
	.pointer_cell_y(pointer_cell_y), // spazzola lo schermo
	
	.status(out_mem_cell_read_status),
	.status_pointed_cell(pointer_cell_read_status)
);


// da bits random genera una distribuzione uniforme tra 0 e 9

zero_to_nine_r_gen randomg_1( .qzt_clk(clk_in), 
										.set_reg(set_random_gens), 
										.seed(31'b1001010101101000100111111000001),

									.r_zero_to_nine(reg_to_nine_m1),
									.r_zero_to_eight(reg_to_eight_m1),									
									.r_zero_to_seven(reg_to_seven_m1),									
									.r_zero_to_six(reg_to_six_m1),
									.r_one_bit_1(reg_one_bit_1_m1),
									.r_one_bit_2(reg_one_bit_2_m1)						);	
									
zero_to_nine_r_gen randomg_2( .qzt_clk(clk_in), 
										.set_reg(set_random_gens), 
										.seed(31'b1111000101010010000110101011111),

									.r_zero_to_nine(reg_to_nine_m2),
									.r_zero_to_eight(reg_to_eight_m2),									
									.r_zero_to_seven(reg_to_seven_m2),									
									.r_zero_to_six(reg_to_six_m2),
									.r_one_bit_1(reg_one_bit_1_m2),
									.r_one_bit_2(reg_one_bit_2_m2)						);	
					

////////////////////////////  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  ///////////////////////////////////
always @ (posedge clk_in)
begin
	if (turn_status == `turn_fpga_init) // && ship_placement<= 5'd8 )
	begin
		
		reg_selector =1'b0; // switcha sull'fpga perchè sei in turn_fpga_init
		set_random_gens =1'b0; // blocca l'inizailizzazione del generatore random
		fpga_write_enable =1'b0; // non scrivere


		if (placement_time==4'd0) // tempo zero punta la cella di memoria.
		begin
				fpga_cell_x = reg_to_nine_m1;
				fpga_cell_y = reg_to_nine_m2;
				placement_time = 4'd1;
		end
		else if (placement_time==4'd1) // tempo zero punta la cella di memoria.
		begin
				if (out_mem_cell_read_status == 5'bXXXXX)
				begin
					placement_time=4'd0;			
				end
				else if(out_mem_cell_read_status == 5'b00000 && ship_placement<=5'd8) //&& ship_placement <= 5'd8)
				begin
					fpga_write_enable=1'b1;
					fpga_cell_new_status= 5'b00001;
					ship_placement= ship_placement+5'd1;
					placement_time=4'd0;
				end
				else if (out_mem_cell_read_status == 5'b00001)
				begin
					placement_time=4'd0;			
				end
				else begin
					placement_time=4'd0;			
				end
		end

	end

end





endmodule
