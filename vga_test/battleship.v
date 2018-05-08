//`timescale 1ns / 1ps
`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6
`define mss 30'd5000

module battleship(
				CLK_50M,
				BTN_SOUTH,
				BTN_NORTH,
				SW,

				LED,
				PS2_CLK1,
				PS2_DATA1,
				J20_IO,
				J18_IO
				); 

input		BTN_NORTH;
input		BTN_SOUTH;
input		CLK_50M; //here decalrations, variable with 1 bit.
input		[3:0] SW;
output	[7:0]	LED;// so have low impedence. 8 digits. is a bus.
output	[3:0] J20_IO;
output	[3:0] J18_IO;
inout		PS2_CLK1;
inout		PS2_DATA1;

//////////////////////////////////////////////////////

wire [3:0]w_status;
wire w_clk_milli;
wire w_clk_second;
wire w_buttonN;
wire w_buttonS;

wire w_ps2Creg;
wire w_ps2Dreg;
wire [15:0] w_altro; ////////////////////////////////////

wire w_data_tx;
wire [7:0] w_status_pck_1;
wire [7:0] w_xm_pck_2;
wire [7:0] w_ym_pck_3;
///////////////////////////////////////////////////////////////////////////////

//assign J20_IO[3:0]={w_altro[3],w_altro[2],w_altro[1],w_altro[0]};
assign J20_IO[3:0]={4{w_data_tx}};
assign J18_IO[3:0]={w_buttonN,1'b0,1'b1,1'b0};

reg [7:0] r_LED=0;
assign LED = r_LED;
always @ (posedge CLK_50M) begin
	case(SW)
		4'd0: r_LED=w_status_pck_1;
		4'd1: r_LED=w_xm_pck_2;
		4'd2: r_LED=w_ym_pck_3;
		4'd3: r_LED=w_altro[7:0];
		default: r_LED={8{w_clk_second}};
	endcase
end

//assign LED = SW[0] ? w_altro[7:0] : {{5{w_clk_second}}, w_altro[10:8]};
///////////////////////////////////////////////////////////////////////////////

PS2_comm communication(
		.qzt_clk(CLK_50M),
		.trigger(w_buttonN),
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		
		.data_tx(w_data_tx),
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
	 
monostable_with_one_run antirimbalzoSouth(
		.trigger(BTN_SOUTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_milli),
		.limit(8'd200),
		
		.out(w_buttonS)
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
/*
for ( n=0 ; n <= 10 ; n=n+1 ) begin
		out[n] = in[10-n]; // Reverse video data buss bit order
	end
*/

endmodule
