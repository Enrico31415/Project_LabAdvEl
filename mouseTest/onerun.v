`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////


// modulo che accetta un impulso e lo ritarda di un numero di cicli

module onerun( CLK, limit, start_count,
					
					countend );
					
	input CLK;	
	input [7:0] limit; // numero cicli ritardo
	input start_count; // input che riceve un impulso. durante il conteggio è insensibile

	output reg countend; // impulso del conteggio finito


reg [7:0] count=8'b00000000 ;
reg run= 0 ;
reg counting= 0 ;

///////////////////////////////////////////////////////////

always@(posedge CLK ) begin



if(start_count)  run= 1 ;



if ( count >= limit-8'b00000001) begin
	count = 8'b00000000;
	countend= 1;
	counting= 0 ;
	end
else if(run && !counting)begin
	count= count+ 8'd1;
	countend= 0;
	counting= 1;
	end
else if(counting)begin
	count= count+ 8'd1;
	countend= 0;
	run= 0 ;
	end
else 	countend= 0;

end


endmodule
