`define red 	12'b111100000000
`define green 	12'b000011110000
`define blue 	12'b000000001111
`define black 	12'b000000000000
module	Module_Counter_10_bit	(	clk_in,
					hlimit,
					hsync,
					hbp,
					hfp,
					hlenght,
					vlimit,
					vsync,
					vbp,
					vfp,
					vlenght,
					

					out_vertical,
					out_horizontal,
					out_hsync,
					out_vsync,
					test_color,
					led);

input		clk_in;
input	[9:0]	vlimit;
input	[9:0]	vsync;
input	[9:0]	vbp;
input	[9:0]	vfp;
input	[9:0] vlenght;

input	[9:0]	hlimit;
input	[9:0]	hsync;
input	[9:0]	hbp;
input	[9:0]	hfp;
input	[9:0] hlenght;



output [7:0] led;
output out_vsync;
output out_hsync;
output [11:0] test_color;
output [9:0] out_vertical;
output [9:0] out_horizontal;


reg out_vsync;
reg out_hsync;
//reg [7:0] led;
reg	[9:0]	out_vertical;
reg	[9:0]	out_horizontal;
reg [11:0] test_color;


buf(led[7:0], out_vertical[9:1]);

always @(posedge clk_in) begin
	
		if (out_horizontal >= hlimit) begin //se ho sforato il limite orrizontale, torno a zero ed incremento il verticale
			out_horizontal = 0;
			out_vertical= out_vertical + 1;
			// per star tranquilli
			out_hsync = 1;
			out_vsync = 1;
			test_color = `black;
		end
		else begin
			out_horizontal = out_horizontal +1;
			// per star tranquilli
			out_hsync = 1;
			out_vsync = 1;
			test_color = `black;
		end
		if (out_vertical >= vlimit) begin
			out_vertical = 0;
			// per star tranquilli
			out_hsync = 1;
			out_vsync = 1;
			test_color = `black;
		end
		// faccio il controllo se devo mandare il sinc
		// orrizontale
		if (out_horizontal < hsync) begin
			out_hsync = 0;
			out_horizontal = out_horizontal +1;
			test_color = `black;
		end else	begin
			out_hsync = 1;
			out_horizontal = out_horizontal +1;
			test_color = `black;
		end
		// verticale
		if (out_vertical < vsync) begin
			out_vsync = 0;
			out_horizontal = out_horizontal +1;
			test_color = `black;
		end else	begin
			out_vsync = 1;
			out_horizontal = out_horizontal +1;
			test_color = `black;
		end
		
		
		//controllo se sono in Porch
		//verticale
		if ((out_vertical >= vsync && out_vertical < (vsync+vbp)) || //OR se sono nel back porch
			(out_vertical >= (vsync+vbp+vlenght) && out_vertical < (vsync+vbp+vlenght+vfp))) //se sono nel frot porch
			begin
				//inibisco l'output
				test_color = `black;
				out_horizontal = out_horizontal +1;
			end
		
		//controllo se sono in Porch
		//orrizontale
		if ((out_horizontal >= hsync && out_horizontal < (hsync+hbp)) || //OR se sono nel back porch
			(out_horizontal >= (hsync+hbp+hlenght) && out_horizontal < (hsync+hbp+hlenght+hfp))) //se sono nel frot porch
			begin
				//inibisco l'output
				test_color = `black;
				out_horizontal = out_horizontal +1;
			end
		//se sono nella parte buona
		if (out_vertical >= (vsync+vbp) && out_vertical < (vsync+vbp+vlenght) && // se il verticale e' nello schermo
		out_horizontal >= (hsync+hbp) && out_horizontal < (hsync+hbp+hlenght))
		begin
			test_color = `red;
			out_horizontal = out_horizontal +1;
		end
		
end

endmodule
