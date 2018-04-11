`define		defaultPeriod	30'b000001011111010111100001000000	//	25 10^6
`define		defaultPeriodveloce	30'b000000000011010111100001000000	//	25 10^6
module nyquist	(	CLK_50M,
				SW,
				ADC_OUT,

				DAC_CS,
				DAC_CLR,
				SPI_SCK,
				AMP_CS,
				SPI_MOSI,
				LED,
				AD_CONV);

input		CLK_50M;
input		[3:0]SW;
input		ADC_OUT;

output		DAC_CS;
output		DAC_CLR;
output		SPI_SCK;
output		SPI_MOSI;
output		AMP_CS;
output		AD_CONV;
output		[7:0] LED;

wire		w_SPI_MOSI_preAmp;
wire		w_SPI_MOSI_DAC;
wire		w_dacNumber;
wire		w_carry;
wire		w_clock;

wire	[13:0]	wb_Va;
wire	[13:0]	wb_Vb;
wire	[15:0]	wb_V_sega;
wire	[11:0]	w_test;
wire  [13:0]	wb_der;
wire 	[30:0] 	w_feed;
wire  [11:0]	w_noise;

buf(SPI_MOSI, ((AMP_CS & w_SPI_MOSI_DAC)|(!AMP_CS & w_SPI_MOSI_preAmp)));
								
Module_FrequencyDivider		clock_1_Hz_generator(	.clk_in(CLK_50M),           //is another 'chip'
								.period(`defaultPeriodveloce),

								.clk_out(w_clock_1_Hz));
								
// all inizio si setta un valore abbassando lo switch 0. poi si alza 
Module_Shift_reg_31bit shiftreg(	.qzt_clk(CLK_50M),
						.clk_in(w_clock_1_Hz),
						.serial_in(SW[0]?(w_feed[4]~^w_feed[1]):SW[1]),
						.closed_loop(SW[0]),
						.set(!SW[0]),
						.reset(0),
						.presetValue(31'b1001001011011010111100101000100),
						.out(w_feed));
						
assign w_noise={w_feed[15],w_feed[12],w_feed[28], w_feed[7], w_feed[17],
						w_feed[21], w_feed[4],  w_feed[6], w_feed[10], w_feed[21], w_feed[30]
							, w_feed[1]};
							
assign LED=w_noise[7:0];


Module_Counter_8_bit		SPI_SCK_generator	(	.clk_in(CLK_50M),
								.limit(30'd4),		// 4x20 ns = 80 ns <===> 50/4 MHz = 12.5 MHz

								.carry(SPI_SCK));

ADC_Driver		ADC_Driver		(	.qzt_clk(CLK_50M),
							.SPI_SCK(SPI_SCK),
							.enable(1),
							.ADC_OUT(ADC_OUT),
							.gainLabel(0),
							.waitTime({SW,4'b0000}),

							.AD_CONV(AD_CONV),
							.Va_Vb({wb_Va, wb_Vb}),
							.AMP_CS(AMP_CS),
							.SPI_MOSI(w_SPI_MOSI_preAmp));


Module_SynchroCounter_8_bit_SR count1	(	.qzt_clk(CLK_50M),
						.clk_in(w_clock),
						.set(1'b0),
						.reset(1'b0),
						.presetValue(8'b00000000),
						.limit(9'b100000000),

						.out(wb_V_sega[7:0]),
						.carry(w_carry));
						
Module_SynchroCounter_8_bit_SR count2	(	.qzt_clk(CLK_50M),
						.clk_in(w_carry),
						.set(1'b0),
						.reset(1'b0),
						.presetValue(8'b00000000),
						.limit(8'b00010000),

						.out(wb_V_sega[15:8]));
						
Module_FrequencyDivider frdiv	(	.clk_in(w_dacNumber),
					.period({27'b000000000000000000000000000, SW[2:0]}+1),

					.clk_out(w_clock));

DAC_Driver		DAC_Driver		(	.CLK_50M(CLK_50M),
							.SPI_SCK(SPI_SCK),
							.Va( w_noise), // {!wb_Va[13], wb_Va[12:2]}
							.Vb({w_clock_1_Hz, 11'b00000000000}),
							.startEnable(AD_CONV),
							.SPI_MOSI(w_SPI_MOSI_DAC),
							.DAC_CS(DAC_CS),
							.DAC_CLR(DAC_CLR),
							.dacNumber(w_dacNumber));

endmodule
