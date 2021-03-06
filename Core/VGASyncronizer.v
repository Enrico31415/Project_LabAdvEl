//parametri del counter in lunghezza (h)
`define		hmonitor_lenght 10'd800 //	800 lunghezza schermo
`define		hcursor_length	10'd640	//	lunghezza utilizzabile (dal cursore)
`define		hsync_length	10'd96 //	96 lunghezza dell'hsinc
`define		hbp_length		10'd48 //	48 lunghezza del bachporch
`define		hfp_length		10'd16 //	16 lunghezza del frontporch


//parametri del counter in altezza (verticale-v)
`define		vmonitor_lenght	10'd521 //	416800 larghezza schermo
`define		vcursor_length		10'd480 //	384000 totale orizontale
`define		vsync_length		10'd2 //	1600  lunghezza dell'hsinc
`define		vbp_length			10'd10 //	8000 lunghezza del bachporch
`define		vfp_length			10'd29 //	23200 lunghezza del frontporch


module	Module_VGASyncronizer	(	clk_in,

					out_hsync,
					out_vsync,
					write_enable,
					out_rows,
					out_lines
					);


input		clk_in;

reg [9:0] rows = 10'd0; 
reg [9:0] lines = 10'd0; 

output reg [9:0] out_rows = 10'b0000000000; 
output reg [9:0] out_lines = 10'b0000000000; 

output reg out_hsync = 1;
output reg out_vsync = 1;

output reg write_enable = 0;


reg [5:0] status = 4'b0;
reg [5:0] vstatus = 4'b0;
								


always @(posedge clk_in) begin

	if(out_rows > `hcursor_length -10'b0000000001 && out_rows != 10'b1111111111)
	begin
		out_rows = 0;
	end
	
	if(out_lines > `vcursor_length -10'b0000000001 && out_lines != 10'b1111111111)
	begin
		out_lines = 0;
	end


	// inizio facendo un contatore fino alla lugnhezza del monitor
	if(rows >  `hmonitor_lenght - 10'b0000000001) //serve a far tornar i conti //capolinea righe
	begin
		rows = 0;
		lines = lines +1;
		out_hsync = 1;
		out_vsync = 1;
		write_enable = 0;
		status = 5'b00000;
		vstatus = 5'b00000;
		if(lines >   `vmonitor_lenght - 10'b0000000001) //capolinea linee (gioco di parole)
		begin
			lines = 0;
			rows = 0;
			out_hsync = 1;
			out_vsync = 1;
			write_enable = 0;
		end		
	end
	if(rows >= 0 && rows < `hfp_length) //48 cicli o 1.92us FP
	begin
		status = 5'b00001;
		out_hsync = 1;
		out_vsync = 1;
		rows = rows +1;
		write_enable = 0;
	end	
	else if (rows >= `hfp_length && rows < (`hfp_length+`hsync_length)) //16 cicli o 640ns SYNCPULSE
	begin
		status = 5'b00010;
		out_hsync = 0;
		rows = rows + 1;
		write_enable = 0;
	end
	else if (rows >= (`hfp_length+`hsync_length) && rows < (`hfp_length + `hsync_length + `hbp_length)	)//16 cicli o 640ns BP
	begin
		status = 5'b00011;
		out_hsync = 1;
		rows = rows +1;
		write_enable = 0;
	end
	else if (rows >= (`hfp_length + `hsync_length + `hbp_length) && rows <  `hmonitor_lenght ) // sono nell'area visibile h
	begin 
		status = 5'b00100;
		out_hsync = 1;
		rows = rows +1;
		if (lines >= (`vfp_length + `vsync_length + `vbp_length) && lines < `vmonitor_lenght) //sono nel visibile
		begin
			vstatus = 5'b00100;
			out_vsync = 1;
			out_lines = lines - (`vfp_length + `vsync_length + `vbp_length) ; //aggiorna la posizione
			out_rows = rows - (`hfp_length + `hsync_length + `hbp_length); //aggiorna la posizione
			write_enable = 1;
		end
	end
	// Condizioni sulle linee
	if (lines >= 0 && lines < `vfp_length) //FP
	begin
		vstatus =  5'b00001;
		out_vsync = 1;
		//rows = rows +1;
		write_enable = 0;
	end
	else if (lines >= `vfp_length && lines < (`vfp_length + `vsync_length)) //PULSE
	begin
		vstatus = 5'b00010;
		out_vsync = 0;
		write_enable = 0;
	end
	else if (lines >= (`vfp_length + `vsync_length) && lines < (`vfp_length + `vsync_length + `vbp_length)) //BP
	begin
		vstatus = 5'b00011;
		out_vsync = 1;
		write_enable = 0;
	end
	else if (lines >= (`vfp_length + `vsync_length + `vbp_length) && lines < `vmonitor_lenght) //Se ho appena proiettao a schermo
	begin
		status = 5'b10000;
		vstatus = 5'b10000;
	end
	/*else 
	begin
		out_hsync = 1;
		out_vsync = 1;
		write_enable = 0;
		status = 5'b10000;
		vstatus = 5'b10000;
	end*/
		
		
end

endmodule
