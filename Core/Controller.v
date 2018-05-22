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






module Controller(
			CLK_50M,
			BTN_NORTH, BTN_SOUTH,
			PS2_CLK1, PS2_DATA1,
			
			
			
			LED,
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC
    );
	 
input CLK_50M;

output [5:0] LED;
inout PS2_CLK1;
inout PS2_DATA1;
//inizializza il mouse
input  BTN_NORTH, BTN_SOUTH;


wire w_25Mhz_clock;

//Serve per bloccare l'output quando non sono all'interno dello schermo (vedi UG e PORCH)
wire w_enable_write;

//Posizione dell'attuale pixel dello schermo
wire [9:0] position_to_controller_x;
wire [9:0] position_to_controller_y;


/*Controlla la posizione del mouse*/
wire [9:0] mouse_sym_counter_x;
wire [9:0] mouse_sym_counter_y;

/*Semplifica la posizione del mouse*/
wire [2:0] w_cell_x;
wire [2:0] w_cell_y;
wire [3:0] w_cell_status;

wire [11:0] w_color_out;
	 
/*OUTPUT TIPICI PER LA VGA*/
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;


assign {{VGA_R, VGA_G, VGA_B}} = w_color_out;
//generatore di clock a 25Mhz, serve per tutta la sicronia, a partire dallo schermo. 
// il clock pi veloce utilizzato
Module_FrequencyDivider Mhz25ClockGenerator(
					.clk_in(CLK_50M),
					.period(`frequency_divider),

					.clk_out(w_25Mhz_clock));
					

//Driver principale: qui tutto quello che va stampato a schermo
Module_VGADriver driver (
	.clk_in(w_25Mhz_clock), 
	.current_row(position_to_controller_x), //posizione_x del pixcel in considerazione
	.current_line(position_to_controller_y), //posizione_y del pixcel in considerazione
	.enable(w_enable_write), //Serve per bloccare l'output quando non sono all'interno dello schermo (vedi UG e PORCH)
	.mouse_pos_x(mouse_sym_counter_x), //posizione del mouse_x
	.mouse_pos_y(mouse_sym_counter_y), //posizione del mouse_x
		
	
	
	
	
	
	.cell_status(w_cell_status),
	
	
	.color_out(w_color_out) //colore prescelto
	);



//simula il movimento del puntatore con i bottoni
//TODO
//Un giorno sar rimosso, e vi andr il driver del mouse.
/* ************************************************************************* */ 
wire [7:0] w_status_pck_1;
wire [7:0] w_xm_pck_2;
wire [7:0] w_ym_pck_3;
wire w_clk_milli;
wire w_buttonN;
wire w_clk_second;
wire [7:0] w_altro;
wire [2:0] w_clicks;

PS2_comm PS2_comm(
		.qzt_clk(CLK_50M),
		.trigger(w_buttonN), /////////////////
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		
		.data_tx(w_data_mouse),
		.status_pck_1(w_status_pck_1),
		.xm_pck_2(w_xm_pck_2),
		.ym_pck_3(w_ym_pck_3),
		
		.altro(w_altro)
    );

monostable_with_one_run antirimbalzoNorth(
		.trigger(BTN_NORTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_milli),
		.limit(8'd200),
		
		.out(w_buttonN)
    );

Module_FrequencyDivider	milli(
		.clk_in(CLK_50M),
		.period(30'd25_000),

		.clk_out(w_clk_milli)
		);
		
Module_FrequencyDivider	second(
		.clk_in(CLK_50M),
		.period(30'd25_000_000),

		.clk_out(w_clk_second)
		);

	
mouse_data_management mdm(
		.qzt_clk(CLK_50M),
		.status(w_status_pck_1),
		.deltaX(w_xm_pck_2),
		.deltaY(w_ym_pck_3),
		.tx(w_data_mouse),
		
		.posX(mouse_sym_counter_x),
		.posY(mouse_sym_counter_y),
		.clicks(w_clicks)
    );

/*
always @ (posedge CLK_50M) begin
	case(SW)
	4'd0: LED<=w_status_pck_1;
	4'd1: LED<=w_xm_pck_2;
	4'd2: LED<=w_ym_pck_3;
	4'd3: LED<=w_altro;
	
	4'd5: LED<=mouse_sym_counter_x[9:2];
	4'd4: LED<=mouse_sym_counter_x[7:0];
	
	4'd7: LED<=mouse_sym_counter_y[9:2];
	4'd6: LED<=mouse_sym_counter_y[7:0];
	default: LED<={8{w_clk_second}};
	endcase
end
*/

/* ************************************************************************* */

/*
Module_MouseSimulator sim (
	.clk_in(w_25Mhz_clock),
	.BTN_EAST(BTN_EAST), 
	.BTN_WEST(BTN_WEST), 
	.BTN_NORTH(BTN_NORTH), 
	.BTN_SOUTH(BTN_SOUTH),
	.clk_in_umano(clock_umano),
	
	
	
	.x_pos(mouse_sym_counter_x),
	.y_pos(mouse_sym_counter_y));
*/

	

	

GridEngine GE(.clk_in(w_25Mhz_clock),
	//TODO Implementazione della posizione del mouse.
	.mouse_pos_x(mouse_sym_counter_x),
	.mouse_pos_y(mouse_sym_counter_y),

	.mouse_click({w_clicks[0],w_clicks[2]}),
	
	.pos_x(position_to_controller_x),
	.pos_y(position_to_controller_y),
	.BTN_SOUTH(BTN_SOUTH),
	
	.LED(LED),
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
