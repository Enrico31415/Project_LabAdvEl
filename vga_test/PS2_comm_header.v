module PS2_comm(
		qzt_clk,
		trigger,
		
		PS2C,
		PS2D,
		
		data_tx,
		status_pck_1,
		xm_pck_2,
		ym_pck_3,
		
		altro
    );

input qzt_clk;
input trigger;

inout PS2C;
inout PS2D;

output [15:0] altro;

// mouse data
output data_tx;
output reg [7:0] status_pck_1;
output reg [7:0] xm_pck_2;
output reg [7:0] ym_pck_3;

endmodule
