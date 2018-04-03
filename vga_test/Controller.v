module Controller(
			CLK_50M,
			
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC
    );
	 
input CLK_50M;
	 
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;





Module_Counter_10_bit position_counter  (.clk_in(CLK_50M),
	
	.test_color({VGA_R, VGA_G, VGA_B}),
	.out_hsync(VGA_HSYNC),
	.out_vsync(VGA_VSYNC));
	



endmodule
