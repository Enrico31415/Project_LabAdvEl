`define frequency_divider 	30'b000000000000000000000000000001
`define frequency_divider_umano 	30'd100000



module Controller(
			CLK_50M,
			BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH,
			PS2_CLK1, PS2_DATA1,
			SW,
			
			LED,
			VGA_R, VGA_G, VGA_B,
			VGA_HSYNC, VGA_VSYNC
    );
	 
input CLK_50M;
input [3:0] SW;

input BTN_EAST, BTN_WEST, BTN_NORTH, BTN_SOUTH;
inout PS2_CLK1, PS2_DATA1;

wire w_25Mhz_clock;

wire w_enable_write;

wire [9:0] position_to_controller_x;
wire [9:0] position_to_controller_y;

wire clock_umano;

wire [9:0] mouse_sym_counter_x;//=10'd300;
wire [9:0] mouse_sym_counter_y;//=10'd300;
	 
output	[3:0]	VGA_R;
output	[3:0]	VGA_G;
output	[3:0]	VGA_B;
output VGA_HSYNC, VGA_VSYNC;
output reg [7:0] LED;

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

/****************************************************/
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

/****************************************************/


/*
mouse_symulator sim (
	.clk_in(w_25Mhz_clock),
	.BTN_EAST(BTN_EAST), 
	.BTN_WEST(BTN_WEST), 
	.BTN_NORTH(BTN_NORTH), 
	.BTN_SOUTH(BTN_SOUTH),
	.clk_in_umano(clock_umano),
	
	.x_pos(mouse_sym_counter_x),
	.y_pos(mouse_sym_counter_y));
*/


Module_Counter_10_bit position_counter  (
	.clk_in(w_25Mhz_clock),
	
	
	.out_rows(position_to_controller_x),
	.out_lines(position_to_controller_y),
	.write_enable(w_enable_write),
	.out_hsync(VGA_HSYNC),
	.out_vsync(VGA_VSYNC));
	



endmodule
