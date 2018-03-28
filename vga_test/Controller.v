//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:57 03/27/2018 
// Design Name: 
// Module Name:    Controller 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Semplice implementazione della porta vga per vedere se ho capito come funziona:
// vorrebbe usare due contatori separati per refreshare uno schermo: uno conta le righe
// uno le colonne. Se tutto va bene, poi implemento i colori
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
// serve per dimezzare la frequenza
`define		defaultPeriod	30'b000000000000000000000000000010	//	2

// freqeuza di testing
//`define		defaultPeriod	30'b000000000000000000001011111010	//	25 10^6

//parametri del counter in lunghezza (h)
`define		hmonitor_lenght 10'b1010000000	//	640 lunghezza schermo
`define		hcursor_length	10'b1100100000	//	800 totale orizontale
`define		hsync_length	10'b0001011100	//	96 lunghezza dell'hsinc
`define		hbp_length		10'b0000110000	//	48 lunghezza del bachporch
`define		hfp_length		10'b0000010000	//	16 lunghezza del frontporch


//parametri del counter in altezza (verticale-v)
`define		vmonitor_lenght	10'b0111100000	//	480 larghezza schermo
`define		vcursor_length	10'b1000001001	//	521 totale orizontale
`define		vsync_length	10'b0000000010	//	2 lunghezza dell'hsinc
`define		vbp_length		10'b0000011101	//	29 lunghezza del bachporch
`define		vfp_length		10'b0000001010	//	10 lunghezza del frontporch


module Controller(
			CLK_50M,
			
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC, LED
    );
	 
input CLK_50M;
	 
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;

output [7:0]LED;


wire w_clock_25Mhz;

// divido la frequenza a 25Mhz, frequenza dipica per un monitor a 60hz
Module_FrequencyDivider		clock_1_Hz_generator	(	.clk_in(CLK_50M),
	.period(`defaultPeriod),

	.clk_out(w_clock_25Mhz));


//wire clock_height; //serve per sincronizzare il verticale con l'orizontale

Module_Counter_10_bit position_counter  (.clk_in(w_clock_25Mhz),
	.hlimit(`hcursor_length),
	.hsync(`hsync_length),
	.hbp(`hbp_length),
	.hfp(`hfp_length),
	.hlenght(`hmonitor_lenght),
	.vlimit(`vcursor_length),
	.vsync(`vsync_length),
	.vbp(`vbp_length),
	.vfp(`vfp_length),
	.vlenght(`vmonitor_lenght),
	
	.led(LED),
	.test_color({VGA_R, VGA_G, VGA_B}),
	.out_hsync(VGA_HSYNC),
	.out_vsync(VGA_VSYNC));
	











endmodule
