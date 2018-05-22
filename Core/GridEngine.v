`include "stati.v"

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    17:42:06 04/11/2018 
// Module Name:    GridEngine 
//////////////////////////////////////////////////////////////////////////////////

`define frequency_div 	30'd1

// turn legend : 3 bits:  
// x _ _	first bit 	0 fpga, 			1 player
// _ x _ second bit 	0     , 			1 
// _ _ x third bit 	0 initialize, 	1 check

`define turn_fpga_init		3'b000
`define turn_player_init	3'b100
`define turn_fpga_check 	3'b001
`define turn_player_check 	3'b101

`define cell_fpga_placed 	5'b00001
`define cell_ia_placed 		5'b00010
`define cell_double_plac 	5'b00001

//......

`define row_dimension	10'd2
`define line_dimension	10'd2
`define row_period		10'd48
`define line_period  	10'd64

// momenti di [turn_fpga_init]
`define quiescent_time	4'b0000
`define init_guess 		4'b0001
`define eval_orient 		4'b0010
`define mem_point 		4'b0011
`define mem_read 			4'b0100
`define count_check 		4'b0101
`define sec_placement 	4'b0110
//`define wait_plz		 	4'b0111
`define incrementa		 	4'b0111

`define out_placement 	4'b1111


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
                            


////////////////////////  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  /////////////////////////////////

module GridEngine(clk_in,
	//posizione del mouse.
	mouse_pos_x,
	mouse_pos_y,
	BTN_NORTH, 	
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
				
				input BTN_NORTH;

				input [9:0] pos_x;
				input [9:0] pos_y;

				output [4:0] pointer_cell_read_status;
				


reg [2:0] turn_status = 3'b000; 	// flag che regola i momenti di gioco  
reg [4:0] ships_number_count = 5'b00000; 	// contatore sul numero di navi piazzate
reg [3:0] placement_task = 4'b0000; 	// contatore sulle oprazioni piazzamento
reg fpga_vs_mouse= 1'b0;		// flag che regola li switch tra logica fpga (0) e mouse (1)
reg reg_finish_placement= 1'b0;		// flag fine dei piazzamenti
reg reg_final_else= 1'b0;

reg set_random_gens=1'b1;		// setta i generatori pseudorandom
reg fpga_write_enable=1'b0;		// pin che abilita la scrittura nella casella di memoria da parte dell'fpga
reg mouse_write_enable =1'b0;		// pin che abilita la scrittura nella casella di memoria da parte dell mouse
reg[3:0] fpga_cell_x;			// coordinate della cella di memoria a cui punta l'fpga
reg[3:0] fpga_cell_y;

reg[3:0] fpga_guess_x;			// valori di partenza durante l'operazione di piazzamento
reg[3:0] fpga_guess_y;
reg orient_guess=1'b1;			// orientamento della nave che si sta cercando di piazzare
reg who_write = 1'b0;

reg[3:0] fpga_count_move_x;		// valore da aggiungere al punto di partenza per muoversi lungo la griglia
reg[3:0] fpga_count_move_y;
reg[3:0] fpga_target_ship_lenght;	// lunghezza target della nave da piazzare

reg [4:0] mouse_cell_new_status;		
reg [4:0] fpga_cell_new_status; 	// nuovo valore che l'fpga vuole scrivere in memoria
wire[3:0] mouse_cell_x;			// coordinate della cella di memoria a cui punta il mouse
wire[3:0] mouse_cell_y;
wire[4:0] out_mem_cell_read_status; 	// stato attuale della cella letta (uscita dalla memoria)

reg [4:0] inquiry=5'b11111;
reg [4:0] mem_ram=5'b00000; // memoria salva dati provvisoria

//cavi dallo switch alla memoria
wire[3:0] cell_x_to_mem;
wire[3:0] cell_y_to_mem;
wire we_to_mem;
wire[4:0] new_value_to_mem;

wire[3:0] pointer_cell_x;
wire[3:0] pointer_cell_y;

// uscite del generatore di numeri random
wire [2:0] reg_to_four_m1;
wire [2:0] reg_to_five_m1;									
wire [2:0] reg_to_seven_m1;									
wire [2:0] reg_to_six_m1;
wire reg_one_bit_1_m1;
wire reg_one_bit_2_m1;		

wire [2:0] reg_to_four_m2;
wire [2:0] reg_to_five_m2;									
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
//porta 1		se selector=1'b0  -> fpga
		 .cell_x_1(fpga_cell_x), 
		 .cell_y_1(fpga_cell_y), 
		 .we_1(fpga_write_enable), 
		 .new_value_1(fpga_cell_new_status), 
//porta 2		se selector=1	-> mouse
		 .cell_x_2(mouse_cell_x),
		 .cell_y_2(mouse_cell_y),
		 .we_2(mouse_write_enable),
		 .new_value_2(mouse_cell_new_status),

		 .selector(fpga_vs_mouse),

	 .cell_x_out(cell_x_to_mem), 			//cella x in uscita 
	 .cell_y_out(cell_y_to_mem), 			//cella y in uscita
	 .we_out(we_to_mem), 				//Write enable in uscita, se deve scrivere
	 .new_value_out(new_value_to_mem) 		//valore da scrivere, in uscita

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

									.r_zero_to_four(reg_to_four_m1),
									.r_zero_to_five(reg_to_five_m1),									
									.r_zero_to_seven(reg_to_seven_m1),									
									.r_zero_to_six(reg_to_six_m1),
									.r_one_bit_1(reg_one_bit_1_m1),
									.r_one_bit_2(reg_one_bit_2_m1)						);	
									
zero_to_nine_r_gen randomg_2( .qzt_clk(clk_in), 
										.set_reg(set_random_gens), 
										.seed(31'b1111000101010010000110101011111),

									.r_zero_to_four(reg_to_four_m2),
									.r_zero_to_five(reg_to_five_m2),									
									.r_zero_to_seven(reg_to_seven_m2),									
									.r_zero_to_six(reg_to_six_m2),
									.r_one_bit_1(reg_one_bit_1_m2),
									.r_one_bit_2(reg_one_bit_2_m2)						);	
	

////////////////////////////  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  ///////////////////////////////////
initial fpga_cell_new_status= 5'b00001;

always @ (posedge clk_in)
begin
	if (turn_status == `turn_fpga_init) begin // && ships_number_count<= 5'd8 )	
		set_random_gens =1'b0; // blocca l'inizailizzazione del generatore random

		if (placement_task == `quiescent_time) begin 
			if (BTN_NORTH == 1'b1) begin
				placement_task = `init_guess;
			end
		end
		
		else if (placement_task == `init_guess) begin // tempo zero inizializzazione guess

				fpga_write_enable =1'b0; 	// non scrivere mentre esplori tutte le caselle (primo giro)
				fpga_count_move_x = 4'b0000;			// valori di prova durante l'operazione di piazzamento. questo valore va sommato alla coordinata x 
				fpga_count_move_y = 4'b0000;			// potersi muovere lungo x o y
				orient_guess = reg_one_bit_2_m2; // guess orientazione (0=orizzontale 1= verticale)
//				orient_guess = orient_guess + 1'b1; // decommentare e commentare sopra per cambiare metodo

				// ship placement mi dice a che punto sono del piazzamento. ne deduco la lunghezza della nave0,1= navi da 4. 2,3= navi da 4. 4,5= navi da 4.
				// e quindi che numero random mi serve e dove assegnarlo in funzione dell'orientazione (orient_guess = reg_one_bit_2_m2)

				// a seconda della lunghezza della nave e dell'orientazione parti da una coppia di valori random per la coordinata
			placement_task = `eval_orient;
		end
		else if (placement_task == `eval_orient) begin

				if (ships_number_count <= 5'd1) begin  // a seconda di quante navi ho già disposto so la lunghezza

					if(orient_guess==1'b0) begin					// a seconda dell'orientazione
					fpga_guess_x=reg_to_four_m1;  						// inizializzo le coordinate
					fpga_guess_y=reg_to_seven_m2;						// di partenza x e y
					inquiry=5'd0;
					end			

					else if(orient_guess==1'b1) begin
					fpga_guess_x=reg_to_seven_m2;
					fpga_guess_y=reg_to_four_m1;
					inquiry=5'd1;
					end
					
					fpga_target_ship_lenght= 4'b0100;  					// inizializzo la lunghezza della nave
				end 
				else if (ships_number_count == 5'd2 || ships_number_count == 5'd3 ) begin

					if(orient_guess==1'b0) begin
					fpga_guess_x=reg_to_five_m1;
					fpga_guess_y=reg_to_seven_m2;
					inquiry=5'd2;
					end			

					else if(orient_guess==1'b1) begin
					fpga_guess_x=reg_to_seven_m2;
					fpga_guess_y=reg_to_five_m1;
					inquiry=5'd3;
					end
					
					fpga_target_ship_lenght= 4'b0011;
				end 
				else if (ships_number_count == 5'd4 || ships_number_count == 5'd5) begin

					if(orient_guess==1'b0) begin
					fpga_guess_x=reg_to_six_m1;
					fpga_guess_y=reg_to_seven_m2;
					inquiry=5'd4;
					end			

					else if(orient_guess==1'b1) begin
					fpga_guess_x=reg_to_seven_m2;
					fpga_guess_y=reg_to_six_m1;
					inquiry=5'd5;
					end
					
					fpga_target_ship_lenght= 4'b0010;
				end 				


			if (ships_number_count <= 5'd5) begin 		// se il conteggio delle navi piazzate è maggioreuguale di 5
				placement_task = `mem_point;		// punta la memoria del primo guess
				end
			else begin					 // altrimenti...
				placement_task = `sec_placement;	 // vai allo stato finale di uscita 
				end
		end

		else if (placement_task==`mem_point) begin // tempo `mem_point. passa i valori alla memoria eventualmente incrementati
			fpga_cell_x = fpga_guess_x + fpga_count_move_x;
			fpga_cell_y = fpga_guess_y + fpga_count_move_y;
			placement_task = `mem_read;


		end
		

		else if (placement_task==`mem_read) begin // tempo `mem_read. leggi il valore della cella e decidi cosa fare. RICORDA al primo giro fpga_write_enable sta a zero (!)

				if (fpga_write_enable==1'b0) begin
					if (out_mem_cell_read_status == 5'b00000) begin		
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0000 )begin
						mem_ram[0]=1'b0;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0001)begin
						mem_ram[1]=1'b0;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0010)begin
						mem_ram[2]=1'b0;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0011)begin
						mem_ram[3]=1'b0;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0100) begin
						mem_ram[4]=1'b0;
						end						
					end
					if (out_mem_cell_read_status == 5'b00001) begin		
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0000 )begin
						mem_ram[0]=1'b1;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0001)begin
						mem_ram[1]=1'b1;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0010)begin
						mem_ram[2]=1'b1;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0011)begin
						mem_ram[3]=1'b1;
						end
						if((fpga_count_move_x + fpga_count_move_y) == 4'b0100) begin
						mem_ram[4]=1'b1;
						end						
					end				
				end
				
				if (out_mem_cell_read_status == 5'bXXXXX) begin // se lo stato è indefinito riprova ad inizializzare ( accade appena accesa l'fpga? primi cicli)
					placement_task=`init_guess;			
				end
				else if ( (out_mem_cell_read_status == 5'b00000 && who_write== 1'b0) ||  (out_mem_cell_read_status == 5'b00000 || out_mem_cell_read_status == 5'b00001) && who_write== 1'b1 || fpga_write_enable==1'b1) 
				begin 
					if (who_write== 1'b0 ) begin
					fpga_cell_new_status= 5'b00001;
					end
					else if (who_write== 1'b1) begin			
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0000 )begin
							if(mem_ram[0]==1'b0) begin
							fpga_cell_new_status= 5'b00010;
							end else if(mem_ram[0]==1'b1) begin
							fpga_cell_new_status= 5'b00011;						
							end
						end
						
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0001 )begin
							if(mem_ram[1]==1'b0) begin
							fpga_cell_new_status= 5'b00010;
							end
							end else if(mem_ram[1]==1'b1) begin
							fpga_cell_new_status= 5'b00011;						
							end							
						end

						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0010 )begin
							if(mem_ram[2]==1'b0) begin
							fpga_cell_new_status= 5'b00010;
							end else if(mem_ram[2]==1'b1) begin
							fpga_cell_new_status= 5'b00011;						
							end
						end
						
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0011 )begin
							if(mem_ram[3]==1'b0) begin
							fpga_cell_new_status= 5'b00010;
							end else if(mem_ram[3]==1'b1) begin
							fpga_cell_new_status= 5'b00011;						
							end
						end
						
						if( (fpga_count_move_x + fpga_count_move_y) == 4'b0100 )begin
							if(mem_ram[4]==1'b0) begin
							fpga_cell_new_status= 5'b00010;
							end else if(mem_ram[4]==1'b1) begin
							fpga_cell_new_status= 5'b00011;						
							end			
						end

					end

					placement_task=`incrementa;	// vai a controllare lo stato dei contatori
				end
		else if (placement_task == `incrementa) begin // tempo zero punta la cella di memoria.
					if(orient_guess== 1'b0)	begin 				// incrementa la direzione di movimento
					fpga_count_move_x=fpga_count_move_x+ 4'b0001;
					end
					else if(orient_guess== 1'b1) begin 				// incrementa la direzione di movimento
					fpga_count_move_y=fpga_count_move_y+ 4'b0001;
					end
					placement_task=`count_check;
		end


	
//----------------------------------------------
				else begin
					placement_task=`init_guess;	// risetta i valori iniziali = RESET		
				end
		end

		else if (placement_task==`count_check) begin // tempo `count_check. prima di puntare la memoria controlla di non essere alla fine del conteggio sulla lunghezza
// controllare i valori di fpga_target_ship_lenght
			if( (fpga_count_move_x == fpga_target_ship_lenght || fpga_count_move_y == fpga_target_ship_lenght ) && fpga_write_enable == 0 ) begin
				fpga_write_enable = 1'b1;
				fpga_count_move_x = 4'b0000;
				fpga_count_move_y = 4'b0000;
				placement_task=`mem_point; // ricomincia il giro
			end
			else if( (fpga_count_move_x == fpga_target_ship_lenght || fpga_count_move_y == fpga_target_ship_lenght ) && fpga_write_enable == 1 ) begin
				fpga_write_enable = 1'b0;
				fpga_count_move_x = 4'b0000;
				fpga_count_move_y = 4'b0000;
				ships_number_count=ships_number_count+5'b00001;
				placement_task=`init_guess;
			end
			else begin
				placement_task=`mem_point;			
			end

		end

		else if (placement_task == `sec_placement) begin // tempo zero punta la cella di memoria.
			if (who_write == 1'b0) begin
			who_write = 1'b1;
			ships_number_count= 5'b00000;
			placement_task=`init_guess;
			end
			else begin
			placement_task=`out_placement;
			end 
		end
		
		
		
		else if (placement_task == `out_placement) begin // tempo zero punta la cella di memoria.
		reg_finish_placement=1'b1;
		end
		else begin 
		reg_final_else=1'b1;
		end

//	end

end


endmodule


