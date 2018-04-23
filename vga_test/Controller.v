`define frequency_divider 	30'b000000000000000000000000000001
`define frequency_divider_umano 	30'd100000



module Controller(
			CLK_50M,
			BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH,
			
			
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC
    );
	 
input CLK_50M;

input BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH;

wire w_25Mhz_clock;

wire w_enable_write;

wire [9:0] position_to_controller_x;
wire [9:0] position_to_controller_y;

wire clock_umano;

wire [9:0] mouse_sym_counter_x;
wire [9:0] mouse_sym_counter_y;
	 
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;

Module_FrequencyDivider Mhz25ClockGenerator(
					.clk_in(CLK_50M),
					.period(`frequency_divider),

					.clk_out(w_25Mhz_clock));
					
					

Module_FrequencyDivider ClockUmanoGenerator(
					.clk_in(CLK_50M),
					.period(`frequency_divider_umano),

					.clk_out(clock_umano));


ButtonToMonitor controller_tasti (
	.clk_in(w_25Mhz_clock),
	.current_row(position_to_controller_x),
	.current_line(position_to_controller_y),
	.enable(w_enable_write),
	.x_pos(mouse_sym_counter_x),
	.y_pos(mouse_sym_counter_y),
	
	
	.color_out({VGA_R, VGA_G, VGA_B})
	);


mouse_symulator sim (
	.clk_in(w_25Mhz_clock),
	.BTN_EAST(BTN_EAST), 
	.BTN_WEST(BTN_WEST), 
	.BTN_NORTH(BTN_NORTH), 
	.BTN_SOUTH(BTN_SOUTH),
	.clk_in_umano(clock_umano),
	
	.x_pos(mouse_sym_counter_x),
	.y_pos(mouse_sym_counter_y));



Module_Counter_10_bit position_counter  (
	.clk_in(w_25Mhz_clock),
	
	
	.out_rows(position_to_controller_x),
	.out_lines(position_to_controller_y),
	.write_enable(w_enable_write),
	.out_hsync(VGA_HSYNC),
	.out_vsync(VGA_VSYNC));
	



endmodule
