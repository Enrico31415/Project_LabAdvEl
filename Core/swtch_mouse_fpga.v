`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date:    09:42:33 04/27/2018 
// Module Name:    swtch_mouse_fpga 
//////////////////////////////////////////////////////////////////////////////////


// modulo che direziona in uscita i dati della 
// -------------------------------------------
// porta 1 			se selector=0 
// porta 2 			se selector=1		

module swtch_mouse_fpga(

		 cell_x_1, 		//cella x 
		 cell_y_1, 		//cella y
		 we_1, 			//Write enable, se deve scrivere
		 new_value_1, 	//valore da scrivere

		 cell_x_2, 		//cella x 
		 cell_y_2, 		//cella y
		 we_2, 			//Write enable, se deve scrivere
		 new_value_2, 	//valore da scrivere

		 selector,

	 cell_x_out, 		//cella x 
	 cell_y_out, 		//cella y
	 we_out, 			//Write enable, se deve scrivere
	 new_value_out 	//valore da scrivere

		);

	input	 [3:0]cell_x_1; //cella x 
	input	 [3:0]cell_y_1; //cella y
	input	 we_1; //Write enable, se deve scrivere
	input	 [4:0]new_value_1; //valore da scrivere
	
	input	 [3:0]cell_x_2; //cella x 
	input	 [3:0]cell_y_2; //cella y
	input	 we_2; //Write enable, se deve scrivere
	input	 [4:0]new_value_2; //valore da scrivere
	
	input  selector;

output	 [3:0]cell_x_out; //cella x 
output	 [3:0]cell_y_out; //cella y
output	 we_out; //Write enable, se deve scrivere
output	 [4:0]new_value_out; //valore da scrivere

assign cell_x_out = selector ? cell_x_2 : cell_x_1;
assign cell_y_out = selector ? cell_y_2 : cell_y_1;
assign we_out = selector ? we_2 : we_1;
assign new_value_out = selector ? new_value_2 : new_value_1;

endmodule
