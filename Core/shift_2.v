`timescale 1ns / 1ps

module	shift_2(	qzt_clk,
						serial_in,
						set,
						presetValue,
						out,
						serial_out);

input		qzt_clk;
input		serial_in;
input		set;
input		[30:0]	presetValue;

output	[30:0]	out;
output	serial_out;

reg	[30:0]out;
reg	serial_out=0;



always @(posedge qzt_clk) begin

	if (set) begin
		out= presetValue;
		serial_out=out[0];
	end 
	else 
		begin
			serial_out=out[0];
			out[30:0]= (out>>1);
			out[30]=serial_in;
		end
end

endmodule

