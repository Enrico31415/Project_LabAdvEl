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
wire [3:0] w_altro; ////////////////////////////////////
wire [3:0] w_ortla;

PS2_send PS2_send(
		.qzt_clk(CLK_50M),
		//.data(11'b01100111111),
		  .data(11'b01100110011),
		.send(w_buttonN),
		.btnS(w_buttonS),
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		//ok,
		//err,
		.status(w_status),
		.PS2Creg(w_ps2Creg),
		.PS2Dreg(w_ps2Dreg),
		.altro(w_altro),
		.ortla(w_ortla)
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

///////////////////////////////////////	
wire w_diosc;
Module_Counter_8_bit_oneRun diosc(
		.qzt_clk(CLK_50M),
		.clk_in(w_clk_second),
		.limit(8'd3),
		.run(SW[0])

		//out,
		//.carry(w_altro[2])
		);

assign J20_IO[3:0]={w_altro[1],w_altro[1],w_altro[1],w_altro[0]};
assign J18_IO[3:0]={w_altro[3],0,w_ortla[0],w_altro[2]};

assign LED[7] = 0;// w_altro;// PS2_CLK1; //(w_ps2Creg==1'bz)?1'b1:1'b0;
//assign J20_IO = w_altro;
assign LED[6] = PS2_DATA1; //(w_ps2Dreg==1'bz)?1'b1:1'b0;
assign LED[5] = w_buttonN;
assign LED[4] = w_clk_second;
assign LED[3:0] = ~w_status;

endmodule
