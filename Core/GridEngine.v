`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    17:42:06 04/11/2018 
// Module Name:    GridEngine 
//////////////////////////////////////////////////////////////////////////////////

`define turn_inizialize	3'b000
`define frequency_div 	30'd1
`define turn_player 		3'b001
`define turn_IA 			3'b010

// CODIFICA DELLA CELLA DI MEMORIA: 5 bit
// 	_ 1 bit libero (?)	_ _ 2 bit per i colpi sparati 	_ _ 2 bit per la disposizione
//  
// bit per la disposizione: 
//		___00 acqua 			/ ___01 nave mia			/ ___10 nave sua 			/ ___11 entrambe
//
// bit per i colpi sparati: 
// 	_00__  non sparato 	/ _01__ sparato da me 	/ _10__ sparato da lui 	/ _11__ sparato da entrambi
//

`define cell_status_free 						5'b00000    // costanti da modificare /!\
`define cell_status_occ 						5'b00001    // costanti da modificare /!\
`define cell_status_player_hitted 			5'b00010    // costanti da modificare /!\
`define cell_status_ia_hitted 				5'b00011    // costanti da modificare /!\
`define cell_status_player_and_ia_hitted 	5'b00100    // costanti da modificare /!\

`define row_dimension	10'd2
`define line_dimension	10'd2

`define row_period	10'd48
`define line_period  10'd64

//    ______    ___    _____   _____   _       _____   _____   _   _   _____  ______   _  
//    | ___ \  / _ \  |_   _| |_   _| | |     |  ___| /  ___| | | | | |_   _| | ___ \ | | 
//    | |_/ / / /_\ \   | |     | |   | |     | |__   \ `--.  | |_| |   | |   | |_/ / | | 
//    | ___ \ |  _  |   | |     | |   | |     |  __|   `--. \ |  _  |   | |   |  __/  | | 
//    | |_/ / | | | |   | |     | |   | |____ | |___  /\__/ / | | | |  _| |_  | |     |_| 
//    \____/  \_| |_/   \_/     \_/   \_____/ \____/  \____/  \_| |_/  \___/  \_|     (_) 
//                              
//                                

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



////////////////////////  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  REGISTRI E CAVI  -  /////////////////////////////////

reg [2:0] turn_status = 3'b000; 	//flag che regola i momenti di gioco  
reg [4:0] fpga_new_status;			// 000 schieramento navi, 001 turno giocatore, 010 turno fpga, ....... (?)
reg [4:0] mouse_new_status;

reg reg_selector= 1'b1;						//flag che regola li switch tra logica fpga (0) e mouse (1)
reg mouse_enable = 1'b1; 			// (?) da capire a cosa serve, probabilmente da eliminare

reg fpga_write_enable =1'b0;		
reg mouse_write_enable =1'b0;	
wire[3:0] fpga_cell_x;
wire[3:0] fpga_cell_y;
wire[3:0] mouse_cell_x;
wire[3:0] mouse_cell_y;
wire[4:0] mouse_cell_read_status; //stato attuale della cella letta (uscita dalla memoria)

//cavi dallo switch alla memoria
wire[3:0] cell_x_to_mem;
wire[3:0] cell_y_to_mem;
wire we_to_mem;
wire[4:0] new_value_to_mem;
wire[3:0] pointer_cell_x;
wire[3:0] pointer_cell_y;

// uscite del generatore di numeri random
reg [:]reg_to_nine;
reg [:]reg_to_eight;									
reg [:]reg_to_seven;									
reg [:]reg_to_six;
reg reg_one_bit_1;
reg reg_one_bit_2;		




/////////////////////////  MODULI  -  MODULI  -  MODULI  -  MODULI  //////////////////////////////

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
// 	porta 1 			se selector=0 
// 	porta 2 			se selector=1		
// 	|| porta 1 (selector=0) -> fpga || porta 2 -> (selector=0) mouse || 

swtch_mouse_fpga mouse_fpga(

		 .cell_x_1(fpga_cell_x), 					//cella x 
		 .cell_y_1(fpga_cell_y), 					//cella y
		 .we_1(fpga_write_enable), 				//Write enable, se deve scrivere
		 .new_value_1(fpga_cell_new_status), 	//valore da scrivere

		 .cell_x_2(mouse_cell_x), 					//cella x 
		 .cell_y_2(mouse_cell_y), 					//cella y
		 .we_2(mouse_write_enable), 				//Write enable, se deve scrivere
		 .new_value_2(mouse_cell_new_status), 	//valore da scrivere

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
	
	.status(mouse_cell_read_status),
	.status_pointed_cell(pointer_cell_read_status)
);


// da bits random genera una distribuzione uniforme tra 0 e 9

zero_to_nine_r_gen randomg( .qzt_clk(clk_in),

									.r_zero_to_nine(reg_to_nine),
									.r_zero_to_eight(reg_to_eight),									
									.r_zero_to_seven(reg_to_seven),									
									.r_zero_to_six(reg_to_six),
									.r_one_bit_1(reg_one_bit_1),
									.r_one_bit_2(reg_one_bit_2)						);	


////////////////////////////  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  LOGICA  -  ///////////////////////////////////

always @ (posedge clk_in)
begin
	if (turn_status == `turn_inizialize)
	begin
	selector=0;
	fpga_cell_x=1;
	fpga_cell_y=1;
	fpga_write_enable;
	
	fpga_cell_new_status= 5'b00001;
	end
	
//		turn_status = turn_status + 1; //tocca al giocatore

	else if (turn_status == `turn_player)//se tocca al giocatore
	begin
		//TODO: 
		//aspetto qui finch non ha cliccato?
		if(mouse_click & mouse_enable) //se ho cliccato sulal cella => cambio lo stato
		begin
			mouse_write_enable = 1'b1;

			if (mouse_cell_read_status == `cell_status_free)
			begin
				mouse_new_status = `cell_status_occ;  						// _____________ 0->1 
			end
			else if (mouse_cell_read_status == `cell_status_occ) 
			begin
				mouse_new_status = `cell_status_player_hitted;   		// _____________ 1->2 
			end
			else if (mouse_cell_read_status == `cell_status_player_hitted) 
			begin
				mouse_new_status = `cell_status_ia_hitted;  				// _____________ 2->3 
			end
			else if (mouse_cell_read_status == `cell_status_ia_hitted) 
			begin
				mouse_new_status = `cell_status_player_and_ia_hitted; // _____________ 3->4
			end
			else if (mouse_cell_read_status == `cell_status_player_and_ia_hitted) 
			begin
				mouse_new_status = `cell_status_free;   					// _____________ 4->0
			end
		end	
		else
		begin
			mouse_write_enable = 1'b0;
		end
		mouse_enable = !mouse_click;
	end
	else if (turn_status == `turn_IA)//se tocca all'ia
	begin
		//TODO
		//genero random una posizione e verifico se  buona.
	end



end

endmodule
