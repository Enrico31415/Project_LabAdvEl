//`timescale 1ns / 1ps
`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6
`define mss 30'd5000

module battleship(
				CLK_50M,
				BTN_SOUTH,
				BTN_NORTH,

				LED,
				PS2_CLK1,
				PS2_DATA1
				
				);

input		BTN_NORTH;
input		BTN_SOUTH;
input		CLK_50M; //here decalrations, variable with 1 bit.
output	[7:0]	LED;// so have low impedence. 8 digits. is a bus.
inout		PS2_CLK1;
inout		PS2_DATA1;

//////////////////////////////////////////////////////

wire w_status;
wire w_clk_milli;
wire w_buttonN;

wire w_ps2Creg;
wire w_ps2Dreg;
assign LED[7] = (w_ps2Creg==1'bz)?1'b1:1'b0;
assign LED[6] = (w_ps2Dreg==1'bz)?1'b1:1'b0;

PS2_send PS2_send(
		.qzt_clk(CLK_50M),
		.data(11'b01110011111),
		.send(w_buttonN),
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		//ok,
		//err,
		.status(w_status),
		.PS2Creg(w_ps2Creg),
		.PS2Dreg(w_ps2Dreg)
	  );

monostable_with_one_run antirimbalzo(
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

assign LED[3:0] = ~w_status;

assign LED[4] = w_buttonN;
Module_FrequencyDivider	second(
		.clk_in(CLK_50M),
		.period(30'd25_000_000),

		.clk_out(LED[5])
		);

/*
wire w_clk_1micro;
wire w_PS2CLK;
wire w_toggleData;
wire w_clk_milli;
wire w_PS2DATA;

Module_FrequencyDivider	unmicro(
		.clk_in(CLK_50M),
		.period(30'd25),

		.clk_out(w_clk_1micro)
		);

Module_FrequencyDivider	milli(
		.clk_in(CLK_50M),
		.period(30'd25_000),

		.clk_out(w_clk_milli)
		);

monostable_with_one_run clockDown(
		.trigger(BTN_NORTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_1micro),
		.limit(8'd100),
		
		.out(w_PS2CLK)
    );

monostable_with_one_run waitForDataDown(
		.trigger(w_PS2CLK),
		.qzt_clk(CLK_50M),
		.clk(w_clk_1micro),
		.limit(8'd2),
		
		.out(w_toggleData)
    );

monostable_with_one_run dataLow(
		.trigger(~w_toggleData),
		.qzt_clk(CLK_50M),
		.clk(w_clk_milli),
		.limit(8'd5),
		
		.out(w_PS2DATA)
    );

assign PS2_CLK1 = ~w_PS2CLK ? 1'bz : 0;
assign PS2_DATA1 = ~w_PS2DATA ? 1'bz : 0;
assign LED=8'b10101010;
*/

/*
wire w_delay;
wire send;
reg run;
reg btn_old;
*/
//assign send = BTN_SOUTH;


/*
onerun centomicro( 
		.CLK(CLK_50M),
		.limit(`centomicro),
		.start_count(BTN_NORTH),
		
		.countend(w_end)
		);
		*/
		
	/*	
reg regPS2_CLK1;
assign PS2_CLK1=regPS2_CLK1;
always @(posedge CLK_50M) begin
	if (BTN_NORTH) begin regPS2_CLK1=0; end
	if (w_end) begin regPS2_CLK1=1'bz; end
end
*/
/*
`define mezzoMicro 31'd25//_000_000
wire w_clk_mezzo_micro;
wire w_clk_10_micro;
wire w_out_mono;
wire w_clk_lungo;


assign PS2_CLK1 = w_out_mono?0:1'bz;

monostable_with_one_run monoCLKdown(
		.trigger(BTN_NORTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_mezzo_micro),
		.limit(8'd100),
		
		.out(w_out_mono)
    );

assign LED[6:0]=8'b10101010;


Module_FrequencyDivider mezzo_micro(	
		.clk_in(CLK_50M),
		.period(`mezzoMicro),

		.clk_out(w_clk_mezzo_micro)
		);

Module_FrequencyDivider dieci_micro(	
		.clk_in(CLK_50M),
		.period(8'd250),

		.clk_out(w_clk_10_micro)
		);
		
Module_FrequencyDivider dieci_micro(	
		.clk_in(w_clk_10_micro),
		.period(8'd100),

		.clk_out(w_clk_lungo)
		);

wire w_toggle;
wire w_PS2data;

Toggle toggle(
		.qzt(CLK_50M),
		.in(w_toggle),
		
		.out(w_PS2data)
    );

assign LED[7]=w_PS2data;

monostable_with_one_run antirmibalzo(
		.trigger(BTN_SOUTH),
		.qzt_clk(CLK_50M),
		.clk(w_clk_10_micro),
		.limit(8'd20),
		
		.out(w_toggle)
    );

reg PS2CLK_old;
always @ (posedge CLK_50M) begin
	if (PS2CLK_old & ~PS2_CLK1) begin
		
	end
	PS2CLK_old=PS2_CLK1;
end
*/

/*
//assign PS2_CLK1=BTN_NORTH?0:1'bz;
assign PS2_DATA1=BTN_SOUTH?0:1'bz;
assign LED[6:4]=PS2_CLK1;
assign LED[3:0]=PS2_DATA1;
*/
/*
always @(posedge CLK_50M) begin
	if (BTN_SOUTH) begin
		run=1;
	end
	if (w_delay) begin
		send=1;
		run=0;
	end else begin
		send=0;
	end
	btn_old=BTN_SOUTH;
	//PS2_DATA1=run
end

// here wires, modules, ecc.
*/

/*
wire w_tmp;
PS2_send PS2_send(
		.qzt_clk(CLK_50M),
		.data(11'b11000000000),
		.send(send),


		//.PS2C(PS2_CLK1),
		//.PS2D(PS2_DATA1),
		.status(w_tmp)
	  );
assign LED[6:0] = ~w_tmp;
*/
/*
Module_Counter_8_bit_oneRun waitSeconds(
					.qzt_clk(CLK_50M),
					.clk_in(CLK_50M),
					.limit(`delay),
					.run(run),

					//out,
					.carry(w_delay)
					);
					
*/
/*
wire w_tmp;	
Module_FrequencyDivider divider	(	.clk_in(CLK_50M),
					.period(30'd50000),

					.clk_out(w_tmp));
					
assign PS2_DATA1 = w_tmp? 1'bz : 1'b0; 
*/
/*
Module_FrequencyDivider		clock_10_kHz_generator(	.clk_in(CLK_50M),           //is another 'chip'
								.period(`mss),

						.clk_out(PS2_DATA1));
*/						
/*
module PS2Comm(
		.qzt_clk(CLK_50M),
		
		.PS2C(PS2_CLK1),
		.PS2D(PS2_DATA1),
		.LED(LED)
    );
*/

// assign LED=8'b10101010;

endmodule
