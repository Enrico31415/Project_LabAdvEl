`define frequency_divider 	30'b000000000000000000000000000001
`define frequency_divider_umano 	30'd100000


// CODIFICA DELLA CELLA DI MEMORIA: 5 bit
// 	_ 1 bit libero (?)	_ _ 2 bit per i colpi sparati 	_ _ 2 bit per la disposizione
//  
// bit per la disposizione: 
//		00 acqua 			/ 01 nave mia			/ 10 nave sua 			/ 11 entrambe
//
// bit per i colpi sparati: 
// 	00 non sparato 	/ 01 sparato da me 	/ 10 sparato da lui 	/ 11 sparato da entrambi
//
//

`define cell_status_free 5'd0
`define cell_status_occ 5'd1
`define cell_status_player_hitted 5'd2
`define cell_status_ia_hitted 5'd3
`define cell_status_player_and_ia_hitted 5'd4

`define turn_ia_placing 2'd3
`define turn_player_placing 2'd0
`define turn_ia_shoot 2'd2
`define turn_player_shoot 2'd1



// dimensione delle navi
`define size_0 4'd2
`define size_1 4'd3
`define size_2 4'd3
`define size_3 4'd4
`define size_4 4'd5




module Controller(
			CLK_50M,
			BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH,
			SW, //Serve per simulare il click del mouse
			
			
			
			LED,
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC
    );
	 
input CLK_50M;

output [7:0] LED;

//Da testing, per simulare il mouse
input BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH;

input [1:0] SW;

wire w_25Mhz_clock;

//Serve per bloccare l'output quando non sono all'interno dello schermo (vedi UG e PORCH)
wire w_enable_write;

//Posizione dell'attuale pixel dello schermo
wire [9:0] position_to_controller_x;
wire [9:0] position_to_controller_y;


//Serve per connettere il clock lento all'aggiornamto della posizione del mouse 
wire clock_umano;

/*Controlla la posizione del mouse*/
wire [9:0] mouse_sym_counter_x;
wire [9:0] mouse_sym_counter_y;

/*Semplifica la posizione del mouse*/
wire [3:0] w_cell_x;
wire [3:0] w_cell_y;
wire [4:0] w_cell_status;
	 
	 
/*OUTPUT TIPICI PER LA VGA*/
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;


assign LED = {w_cell_status};

wire [11:0] w_color_out;

assign {{VGA_R, VGA_G, VGA_B}} = w_color_out;
//generatore di clock a 25Mhz, serve per tutta la sicronia, a partire dallo schermo. 
// il clock pi veloce utilizzato
Module_FrequencyDivider Mhz25ClockGenerator(
					.clk_in(CLK_50M),
					.period(`frequency_divider),

					.clk_out(w_25Mhz_clock));
					
					
//il clock viene utilizzato per aggiornare la posizione del mouse. Non posso farlo alla frequenza di refresh del monitor....
Module_FrequencyDivider ClockUmanoGenerator(
					.clk_in(CLK_50M),
					.period(`frequency_divider_umano),

					.clk_out(clock_umano));

//Driver principale: qui tutto quello che va stampato a schermo
Module_VGADriver driver (
	.clk_in(w_25Mhz_clock), 
	.current_row(position_to_controller_x), //posizione_x del pixcel in considerazione
	.current_line(position_to_controller_y), //posizione_y del pixcel in considerazione
	.enable(w_enable_write), //Serve per bloccare l'output quando non sono all'interno dello schermo (vedi UG e PORCH)
	.mouse_pos_x(mouse_sym_counter_x), //posizione del mouse_x
	.mouse_pos_y(mouse_sym_counter_y), //posizione del mouse_x
	
	// stati delle celle, sono in comune alla memoria, quindi per evitare mismatch meglio che li tengra il controller
	.cell_status_free(`cell_status_free),
	.cell_status_occ(`cell_status_occ),
	.cell_status_player_hitted(`cell_status_player_hitted),
	.cell_status_ia_hitted(`cell_status_ia_hitted),
	.cell_status_player_and_ia_hitted(`cell_status_player_and_ia_hitted),
	
	
	
	
	
	
	
	.cell_status(w_cell_status),
	
	
	.color_out(w_color_out) //colore prescelto
	);



//simula il movimento del puntatore con i bottoni
//TODO
//Un giorno sar rimosso, e vi andr il driver del mouse.
Module_MouseSimulator sim (
	.clk_in(w_25Mhz_clock),
	.BTN_EAST(BTN_EAST), 
	.BTN_WEST(BTN_WEST), 
	.BTN_NORTH(BTN_NORTH), 
	.BTN_SOUTH(BTN_SOUTH),
	.clk_in_umano(clock_umano),
	
	
	
	.x_pos(mouse_sym_counter_x),
	.y_pos(mouse_sym_counter_y));


	

	

GridEngine GE(.clk_in(w_25Mhz_clock),
	//TODO Implementazione della posizione del mouse.
	.mouse_pos_x(mouse_sym_counter_x),
	.mouse_pos_y(mouse_sym_counter_y),

	.mouse_click(SW[1:0]),
	
	.pos_x(position_to_controller_x),
	.pos_y(position_to_controller_y),
	
	
	// stati delle celle, sono in comune alla memoria, quindi per evitare mismatch meglio che li tengra il controller
	.cell_status_free(`cell_status_free),
	.cell_status_occ(`cell_status_occ),
	.cell_status_player_hitted(`cell_status_player_hitted),
	.cell_status_ia_hitted(`cell_status_ia_hitted),
	.cell_status_player_and_ia_hitted(`cell_status_player_and_ia_hitted),
	
	//dimensione delle navi
	.ship_size0(`size_0),
	.ship_size1(`size_1),
	.ship_size2(`size_2),
	.ship_size3(`size_3),
	.ship_size4(`size_4),
	
	.turn_ia_placing(`turn_ia_placing), 
	.turn_player_placing(`turn_player_placing), 
	.turn_ia_shoot(`turn_ia_shoot), 
	.turn_player_shoot(`turn_player_shoot),
	
	//TODO: cancellare, si utilizza solo per i led attualmente
	.pointer_cell_read_status(w_cell_status) //stato della cella in uso
    );
	 
	 
	 
	 
	 

//core della VGA: comanda gli inpulsi di sync da mandare allo schermo per definire la risoluzione
Module_VGASyncronizer VGASync  (
	.clk_in(w_25Mhz_clock),
	
	
	.out_rows(position_to_controller_x),
	.out_lines(position_to_controller_y),
	.write_enable(w_enable_write),
	.out_hsync(VGA_HSYNC),
	.out_vsync(VGA_VSYNC));

endmodule
