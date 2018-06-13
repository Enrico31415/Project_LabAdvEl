// per cambiare stato, da 0 a 1
//reg_finish_placement=1'b1;
//turn_status = 2'd1;
//fpga_vs_mouse = 1;

`timescale 1ns / 1ps

`define frequency_div 	30'd1
`define frequency_div_lento 	30'd2500000

`define sleep_pre_ia_shoot 	30'd7000 //conteggio prima di sparare

// momenti di [turn_fpga_init]
`define quiescent_time		4'b0000
`define init_guess 			4'b0001
`define eval_orient 			4'b0010
`define mem_point 			4'b0011
`define mem_read 				4'b0100
`define mem_write				4'b0111
`define count_check 			4'b0101  
`define sec_placement 		4'b0110

`define out_placement 		4'b1111

`define row_dimension	10'd2
`define line_dimension	10'd2

// tutti gli stati delle navi
`include "cellStatus.v"
 

module GridEngine(clk_25M_in,
	clk_in,
	//TODO Implementazione della posizione del mouse.
	mouse_pos_x,
	mouse_pos_y,
	
	// posizione attuale del pxcel a schermo
	pos_x,
	pos_y,
	
	BTN_SOUTH,
	BTN_RESET,
		
	SONDA_1,
	SONDA_2,
	SONDA_3,
	
	LED,
	mouse_click, //evento del click del mouse [0] right click, [1] left click	
	pointer_cell_read_status,
	
	game_end
    );
	 


// sono 5 navi, con profondit 3 bit (massimo 7 la lunghezza)

input BTN_RESET;
input clk_in;
input clk_25M_in;
input [1:0] mouse_click;	
input [9:0] mouse_pos_x;
input [9:0] mouse_pos_y;
input BTN_SOUTH;
input [9:0] pos_x;
input [9:0] pos_y;
output [3:0] pointer_cell_read_status;
output [6:0] LED;
output SONDA_1, SONDA_2, SONDA_3;
output reg [1:0] game_end = 2'd0;
reg [1:0] turn_status = 2'd0;  //determina la fase di gioco:
reg [3:0] cell_new_status = 4'd0;

reg mouse_right_enable = 1'b1;
reg mouse_left_enable = 1'b1;
reg write_enable =1'b0;
reg [10:0] count_sleep = 11'd0;

reg [6:0] player_click_count = 7'd0;

reg[4:0] flash_mem=5'b00000;
reg flash_mem_val; // valore momentaneo della memoria flash

wire [2:0] mouse_cell_x;
wire [2:0] mouse_cell_y;

wire [2:0] pointer_cell_x;
wire [2:0] pointer_cell_y;


reg [4:0] ships_number_count = 5'b00000; 	// contatore sul numero di navi piazzate
reg [3:0] placement_task = 4'b0000; 	// contatore sulle oprazioni piazzamento
reg fpga_vs_mouse= 1'b0;		// flag che regola li switch tra logica fpga (0) e mouse (1)
reg reg_finish_placement= 1'b0;		// flag fine dei piazzamenti
reg reg_final_else= 1'b0;

reg pleyer_click_flag = 0;

reg set_random_gens=1'b1;		// setta i generatori pseudorandom
reg fpga_write_enable=1'b0;		// pin che abilita la scrittura nella casella di memoria da parte dell'fpga
reg fpga_write_enable_del=1'b0;
wire mouse_write_enable;		// pin che abilita la scrittura nella casella di memoria da parte dell mouse
reg[2:0] fpga_cell_x;			// coordinate della cella di memoria a cui punta l'fpga
reg[2:0] fpga_cell_y;

reg[2:0] fpga_guess_x;			// valori di partenza durante l'operazione di piazzamento
reg[2:0] fpga_guess_y;
reg orient_guess=1'b1;			// orientamento della nave che si sta cercando di piazzare
reg who_write = 1'b0;

reg ia_placement_rejected = 0; // serve a far saltare il conteggio, di sleep dell'ia, se la posizione generata non 'e valida

reg  [4:0] player_hit_count = 5'd0; // quante navi ha colpito il giocatore
reg  [4:0] ia_hit_count = 5'd0; // quante navi ha colpito il'ia

reg[2:0] fpga_count_move_x;		// valore da aggiungere al punto di partenza per muoversi lungo la griglia
reg[2:0] fpga_count_move_y;
reg[3:0] fpga_target_ship_lenght;	// lunghezza target della nave da piazzare

reg [3:0] mouse_cell_new_status;		
reg [3:0] fpga_cell_new_status = 4'd5; 

reg player_shoot_change_status = 0;

reg wait_mouse_reset;

wire[3:0] out_mem_cell_read_status; 
reg [4:0] inquiry=5'b11111;
//cavi dallo switch alla memoria
wire[2:0] cell_x_to_mem;
wire[2:0] cell_y_to_mem;
wire we_to_mem;
wire[3:0] new_value_to_mem;

reg bypass_Placecment = 0'd0;

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

reg player_flag_hit;



//variabili pe rlo sparo random dell'ia
	//input: 
 wire  [2:0] input_ia_shot_pos_x;
 wire  [2:0] input_ia_shot_pos_y; //input direttamente dal generatore random
//reg:
 reg [2:0] ia_shot_pos_x = 3'd0; //posizioni in cui sto sparando.
 reg [2:0] ia_shot_pos_y = 3'd0;
 reg [1:0] ia_shoot_status = 3'd0; //in che fase si trova lo sparo dell'ia.


reg [29:0] sleep_pre_ia_shoot_counter = 30'd0; //tiene conto di un delay per simulare lo sparo dell'IA


//assign LED[1:0] = turn_status;
assign LED[6:0] = player_click_count;
buf( SONDA_1 , player_flag_hit && mouse_write_enable);
buf( SONDA_2 , player_flag_hit && mouse_write_enable);
buf( SONDA_3 , player_flag_hit);
buf( mouse_write_enable , mouse_click[0] && mouse_left_enable);
//assign mouse_write_enable = mouse_click[0] & mouse_left_enable;
//dalla posizione del mouse, torna la posizione in celle.
pos_to_quadrant mouse_to_cell(
	.clk_in(clk_in), 
	.pos_x(mouse_pos_x),
	.pos_y(mouse_pos_y),
	
	.cell_x(mouse_cell_x),
	.cell_y(mouse_cell_y)

);

//dalla posizione del pixel in scrittura, torna la posizione in celle.
pos_to_quadrant pointer_to_cell(
	.clk_in(clk_25M_in), 
	.pos_x(pos_x),
	.pos_y(pos_y),
	
	.cell_x(pointer_cell_x),
	.cell_y(pointer_cell_y)

);


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




cell_io memory( //gestisce la memoria
	.clk_in(clk_in),
	.clk_25M_in(clk_25M_in),
	.mouse_cell_x(cell_x_to_mem),
	.mouse_cell_y(cell_y_to_mem),
	.new_value(new_value_to_mem),
	.we(we_to_mem),
	.pointer_cell_x(pointer_cell_x), // spazzola lo schermo
	.pointer_cell_y(pointer_cell_y), // spazzola lo schermo
	.reset(BTN_RESET),
	
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


always @ (posedge clk_in)
begin
	if (turn_status == 2'd0)
	begin
		set_random_gens =1'b0; // blocca l'inizailizzazione del generatore random

		if (placement_task == `quiescent_time) begin 
			if ( (BTN_SOUTH == 1'b1 || bypass_Placecment) && BTN_RESET==1'b0) begin
				placement_task = `init_guess;
				player_hit_count = 5'd0;
				flash_mem=5'b00000;
				ships_number_count = 5'b00000;
				fpga_vs_mouse= 1'b0;
				reg_finish_placement= 1'b0;
				fpga_write_enable=1'b0;
				who_write = 1'b0;
				fpga_write_enable =1'b0; 
				fpga_write_enable_del =1'b0; 
			end
		end
		
		else if (placement_task == `init_guess) begin // tempo zero inizializzazione guess

				fpga_write_enable =1'b0; 	// non scrivere mentre esplori tutte le caselle (primo giro)
				fpga_write_enable_del =1'b0; 
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
//				placement_task = `out_placement;	
			end
		end

		else if (placement_task==`mem_point) begin // tempo `mem_point. passa i valori alla memoria eventualmente incrementati
			fpga_cell_x = fpga_guess_x + fpga_count_move_x;
			fpga_cell_y = fpga_guess_y + fpga_count_move_y;
			fpga_write_enable= fpga_write_enable_del;
			placement_task = `mem_read;

		end
		else if (placement_task==`mem_read) begin // tempo `mem_read. leggi il valore della cella e decidi cosa fare. RICORDA al primo giro fpga_write_enable sta a zero (!)

				if (out_mem_cell_read_status == 5'bXXXXX) begin // se lo stato è indefinito riprova ad inizializzare ( accade appena accesa l'fpga? primi cicli)
					placement_task=`init_guess;			
				end
	
				else begin
					if(fpga_write_enable==1'b0) begin
						flash_mem_val=1'b0;
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd0) begin
							if( out_mem_cell_read_status == 4'd0 ) begin
							flash_mem[0]= 1'b0;
							end
							else if( out_mem_cell_read_status == 4'd5 ) begin
							flash_mem[0]= 1'b1;
							end
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd1) begin
							if( out_mem_cell_read_status == 4'd0 ) begin
							flash_mem[1]= 1'b0;
							end
							else if( out_mem_cell_read_status == 4'd5 ) begin
							flash_mem[1]= 1'b1;
							end
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd2) begin
							if( out_mem_cell_read_status == 4'd0 ) begin
							flash_mem[2]= 1'b0;
							end
							else if( out_mem_cell_read_status == 4'd5 ) begin
							flash_mem[2]= 1'b1;
							end
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd3) begin
							if( out_mem_cell_read_status == 4'd0 ) begin
							flash_mem[3]= 1'b0;
							end
							else if( out_mem_cell_read_status == 4'd5 ) begin
							flash_mem[3]= 1'b1;
							end
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd4) begin
							if( out_mem_cell_read_status == 4'd0 ) begin
							flash_mem[4]= 1'b0;
							end
							else if( out_mem_cell_read_status == 4'd5 ) begin
							flash_mem[4]= 1'b1;
							end
						end									
					end
					
					else if(fpga_write_enable==1'b1) begin
					
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd0) begin
							flash_mem_val=flash_mem[0];
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd1) begin
							flash_mem_val=flash_mem[1];
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd2) begin
							flash_mem_val=flash_mem[2];
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd3) begin
							flash_mem_val=flash_mem[3];
						end
						if( (fpga_count_move_x+fpga_count_move_y) == 4'd4) begin
							flash_mem_val=flash_mem[4];
						end										
					end				
				
				end 

					placement_task=`mem_write;	// vai a controllare lo stato dei contatori
				end

//-------------------------------------------------------------------		
		
		else if (placement_task==`mem_write) begin 

			if(who_write == 1'b0) begin
				if(fpga_write_enable==1'b0)begin
					if(out_mem_cell_read_status==`free) begin
					placement_task=`count_check; // go on
					end
					else if(out_mem_cell_read_status==`In) begin
					placement_task=`init_guess; // <------------- exit
					end
					//else if(out_mem_cell_read_status==`Pn) begin
					//not defined
					//end
					//else if(out_mem_cell_read_status==`PnIn) begin
					//not defined
					//end
					else begin // istruzione di uscita nei casi indeterminati
					placement_task=`init_guess; // <------------- exit
					end
				end 

				else if(fpga_write_enable==1'b1) begin
					fpga_cell_new_status= `In;
					placement_task=`count_check;	//go on
				end

			end
			else if(who_write == 1'b1) begin
				if(fpga_write_enable==1'b0)begin
					if(out_mem_cell_read_status==`free) begin
					placement_task=`count_check; // go on
					end
					else if(out_mem_cell_read_status==`In) begin
					placement_task=`count_check; // go on
					end
					else if(out_mem_cell_read_status==`Pn) begin
					placement_task=`init_guess; // <------------- exit
					end
					else if(out_mem_cell_read_status==`PnIn) begin
					placement_task=`init_guess; // <------------- exit
					end else begin // istruzione di uscita nei casi indeterminati
					placement_task=`init_guess; // <------------- exit
					end
					
				end 

				else if(fpga_write_enable==1'b1) begin
				// condizioni dipendenti dai valori della memoria flash
					if(flash_mem_val==1'b1)begin
					fpga_cell_new_status= `PnIn;
					end
					else if(flash_mem_val==1'b0) begin
					fpga_cell_new_status= `Pn;
					end

					placement_task=`count_check;
				end


			end

			if(orient_guess== 1'b0)					// incrementa la direzione di movimento
			begin fpga_count_move_x=fpga_count_move_x+ 4'b0001;
			end
			else if(orient_guess== 1'b1)				// incrementa la direzione di movimento
			begin fpga_count_move_y=fpga_count_move_y+ 4'b0001;
			end

		end

//----------------------------------------------

		else if (placement_task==`count_check) begin // tempo `count_check. prima di puntare la memoria controlla di non essere alla fine del conteggio sulla lunghezza
// controllare i valori di fpga_target_ship_lenght
			if( (fpga_count_move_x == fpga_target_ship_lenght || fpga_count_move_y == fpga_target_ship_lenght ) && fpga_write_enable == 0 ) begin
				fpga_write_enable_del = 1'b1;
				fpga_count_move_x = 4'b0000;
				fpga_count_move_y = 4'b0000;
				placement_task=`mem_point; // ricomincia il giro
			end
			else if( (fpga_count_move_x == fpga_target_ship_lenght || fpga_count_move_y == fpga_target_ship_lenght ) && fpga_write_enable == 1 ) begin
				fpga_write_enable_del = 1'b0;
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
			turn_status = 2'd1;
			fpga_vs_mouse = 1;
		end
		else begin 
			reg_final_else=1'b1;
		end
	end
	else if (turn_status == 2'd1)
	begin
		if (BTN_RESET)
		begin
			turn_status = 2'd0;
			bypass_Placecment = 1;
			placement_task = `quiescent_time;
			player_hit_count = 5'd0;
			ia_hit_count = 5'd0;
			game_end = 2'd0;
			sleep_pre_ia_shoot_counter = 0;
			player_click_count = 7'd0;
		end
		else
			begin
			if (mouse_click[0] == 1'b1 && count_sleep < 11'd1 && !wait_mouse_reset) //se: devo contare, il mouse  cliccato, e non sto aspettando perch il mouse  ancora alto
			begin //cos salta 1 cicli di clock. E cosi' deve restare o si rompe il conteggio delle navi colpite
				count_sleep = count_sleep + 11'd1;
				mouse_left_enable = 1;
				if (player_flag_hit)
					player_hit_count = player_hit_count +1;
				if (pleyer_click_flag)
					player_click_count = player_click_count + 1;
				if(player_shoot_change_status) //se ho cambiato lo stato
					turn_status = 2'd2; //passo al turno dell'IA
					sleep_pre_ia_shoot_counter = 30'd0;
			end
			else if (wait_mouse_reset) // aspetta finch il mouse non  stato rilasciato
			begin
				wait_mouse_reset = mouse_click[0];
			end
			else
			begin
				case(out_mem_cell_read_status)
					`Ps:
					begin 
						mouse_cell_new_status = `Ps;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`PsIs:
					begin
						mouse_cell_new_status = `PsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`free:
					begin 
						mouse_cell_new_status = `Ps;
						player_flag_hit = 0;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`Is:
					begin
						mouse_cell_new_status = `PsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`Pn:
					begin
						mouse_cell_new_status = `PnPs;
						player_flag_hit = 0;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`In:
					begin
						mouse_cell_new_status = `InPs;
						player_flag_hit = 1;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
						end
					`InPs:
					begin
						mouse_cell_new_status = `InPs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`PnIn:
					begin
						mouse_cell_new_status = `PnInPs;
						player_flag_hit = 1;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`PnIs:
					begin
						mouse_cell_new_status = `PnPsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`PnPs:
					begin
						mouse_cell_new_status = `PnPs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`InIs:
					begin
						mouse_cell_new_status = `InPsIs;
						player_flag_hit = 1;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`PnInIs:
					begin
						mouse_cell_new_status = `PnInPsIs;
						player_flag_hit = 1;
						player_shoot_change_status = 1;
						pleyer_click_flag = 1;
					end
					`PnInPs:
					begin
						mouse_cell_new_status = `PnInPs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`PnPsIs:
					begin
						mouse_cell_new_status = `PnPsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`InPsIs:
					begin
						mouse_cell_new_status = `InPsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
					`PnInPsIs:
					begin
						mouse_cell_new_status = `PnInPsIs;
						player_flag_hit = 0;
						player_shoot_change_status = 0;
						pleyer_click_flag = 0;
					end
				endcase
				count_sleep = 4'd0;
				mouse_left_enable = !mouse_click[0];
				wait_mouse_reset = mouse_click[0]; //se ho cliccato	
			end
			if(player_hit_count >= 5'd18)
			begin
				game_end = 2'b01;
			end
		end//end del reset: if(reset) else begin END
	end //end
	else if (turn_status == 2'd2)
	begin
		if (sleep_pre_ia_shoot_counter <=	`sleep_pre_ia_shoot  && ia_placement_rejected == 0)
		begin
			sleep_pre_ia_shoot_counter = sleep_pre_ia_shoot_counter +30'd1;
		end
		else
		
		//input: 
		// [2:0] wire input_ia_shot_pos_x
		// [2:0] wire input_ia_shot_pos_y //input direttamente dal generatore random
		//reg:
		// reg [2:0] ia_shot_pos_x; //posizioni in cui sto sparando.
		// reg [2:0] ia_shot_pos_y;
		// reg [1:0] ia_shoot_status; //in che fase si trova lo sparo dell'ia.
		begin
			fpga_vs_mouse = 0; //passo al controllo della memoria
			case (ia_shoot_status)
				2'd0: // inizializzazione del random
				begin
					// se becca valori buoni, metti i flag a 1
					ia_shot_pos_x = reg_to_seven_m1; // lo salvo
					ia_shot_pos_y = reg_to_seven_m2; // lo salvo
					ia_shoot_status = ia_shoot_status +1;
				end
				2'd1: //controllo della cella di memoria puntata
				begin
					//leggo la memoria in questione,
					fpga_cell_x = ia_shot_pos_x;
					fpga_cell_y = ia_shot_pos_y;
					ia_shoot_status = ia_shoot_status +1;
				end
				2'd2:
				begin
					case(out_mem_cell_read_status)
						0: begin
							//se  valido, passo allo stato successivo: la scrittura
						  ia_shoot_status = ia_shoot_status + 1;
						  fpga_cell_new_status=`Is;
						  ia_placement_rejected = 0;
						end
						`Ps: begin
							ia_shoot_status = ia_shoot_status + 1;
							fpga_cell_new_status=`PsIs;
							ia_placement_rejected = 0;
						end
						`Is: begin //se non  valido, torno allo stato di generazione random.
							ia_shoot_status = 2'd0;
							ia_placement_rejected = 1;
						end
						`PsIs: begin //fix
							ia_shoot_status = 2'd0;
							ia_placement_rejected = 1;
						end
						 `Pn: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`PnIs;
							  ia_placement_rejected = 0;
							  ia_hit_count = ia_hit_count + 1 ;
						 end
						 `In: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`InIs;
							  ia_placement_rejected = 0;
						 end
						 `PnIn: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`PnInIs;
							  ia_placement_rejected = 0;
							  ia_hit_count = ia_hit_count + 1 ;
						 end
						 `PnIs: begin //fix
							  ia_shoot_status = 2'd0;
							  ia_placement_rejected = 1;
						 end
						 `InIs: begin //fix
							  ia_shoot_status = 2'd0;
							  ia_placement_rejected = 1;
						 end
						 `PnPs: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`PnPsIs;
							  ia_placement_rejected = 0;
							  ia_hit_count = ia_hit_count + 1 ;
						 end
						 `InPs: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`InPsIs;
							  ia_placement_rejected = 0;
						 end
						 `PnInPs: begin
							  ia_shoot_status = ia_shoot_status + 1;
							  fpga_cell_new_status=`PnInPsIs;
							  ia_placement_rejected = 0;
							  ia_hit_count = ia_hit_count + 1 ;
						 end
						`PnInIs: begin
								ia_shoot_status = 2'd0;
								ia_placement_rejected = 1;
						end
						`PnPsIs: begin
								ia_shoot_status = 2'd0;
								ia_placement_rejected = 1;
						end
						`InPsIs: begin
								ia_shoot_status = 2'd0;
								ia_placement_rejected = 1;
						end
						`PnInPsIs: begin
								ia_shoot_status = 2'd0;
								ia_placement_rejected = 1;
						end
					endcase
				end
				2'd3: //fase finale, scrittura:
				begin
					if (fpga_write_enable == 0) //se ho il we a zero, quindi sono caduto in uno stato, che devo scrivere
					begin 
						fpga_write_enable = 1;
					end
					else //se ho scritto, 
					begin
						fpga_write_enable = 0;
						ia_shoot_status = 2'd0;
						turn_status = 2'd1; //torna 
						fpga_vs_mouse = 1;
						//resetto e passo al giocatore.
					end
					sleep_pre_ia_shoot_counter = 30'd0;
				end
			endcase //case stati
	end //if del conteggio
	/* CODICE PER IL RESET */
	if(ia_hit_count >= 5'd17)
	begin
		game_end = 2'b10;
	end
	if (BTN_RESET)
	begin
		turn_status = 2'd0;
		bypass_Placecment = 1;
		placement_task = `quiescent_time;
		player_hit_count = 5'd0;
		ia_hit_count = 5'd0;
		game_end = 2'd0;
		sleep_pre_ia_shoot_counter = 0;
		player_click_count = 7'd0;
	end 
		//turn_status = 2'd3;
	end
	else if (turn_status == 2'd3)
	begin
		turn_status = 2'd1;
	end
	
end//always


endmodule