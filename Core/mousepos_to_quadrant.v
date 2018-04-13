module mouse_pos_to_quadrant(
clk_in,
mouse_pos_x,
mouse_pos_y,

cell_x,
cell_y
);
input clk_in;
input [7:0]mouse_pos_x;
input [7:0]mouse_pos_y;
output reg [3:0]cell_x;
output reg [3:0]cell_y;
always @ (posedge clk_in)
begin
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd0;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd1;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd2;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd3;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd4;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd5;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd6;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd7;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd8;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd64 && mouse_pos_y>= 8'd0)
begin
cell_y = 4'd9;
cell_x = 4'd0;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd0;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd1;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd2;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd3;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd4;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd5;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd6;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd7;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd8;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd128 && mouse_pos_y>= 8'd64)
begin
cell_y = 4'd9;
cell_x = 4'd1;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd0;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd1;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd2;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd3;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd4;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd5;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd6;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd7;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd8;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd192 && mouse_pos_y>= 8'd128)
begin
cell_y = 4'd9;
cell_x = 4'd2;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd0;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd1;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd2;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd3;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd4;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd5;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd6;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd7;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd8;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd256 && mouse_pos_y>= 8'd192)
begin
cell_y = 4'd9;
cell_x = 4'd3;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd0;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd1;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd2;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd3;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd4;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd5;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd6;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd7;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd8;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd320 && mouse_pos_y>= 8'd256)
begin
cell_y = 4'd9;
cell_x = 4'd4;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd0;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd1;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd2;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd3;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd4;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd5;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd6;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd7;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd8;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd384 && mouse_pos_y>= 8'd320)
begin
cell_y = 4'd9;
cell_x = 4'd5;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd0;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd1;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd2;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd3;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd4;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd5;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd6;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd7;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd8;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd448 && mouse_pos_y>= 8'd384)
begin
cell_y = 4'd9;
cell_x = 4'd6;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd0;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd1;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd2;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd3;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd4;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd5;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd6;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd7;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd8;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd512 && mouse_pos_y>= 8'd448)
begin
cell_y = 4'd9;
cell_x = 4'd7;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd0;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd1;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd2;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd3;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd4;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd5;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd6;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd7;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd8;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd576 && mouse_pos_y>= 8'd512)
begin
cell_y = 4'd9;
cell_x = 4'd8;
end
if (mouse_pos_x< 8'd48 && mouse_pos_x>= 8'd0 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd0;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd96 && mouse_pos_x>= 8'd48 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd1;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd144 && mouse_pos_x>= 8'd96 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd2;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd192 && mouse_pos_x>= 8'd144 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd3;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd240 && mouse_pos_x>= 8'd192 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd4;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd288 && mouse_pos_x>= 8'd240 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd5;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd336 && mouse_pos_x>= 8'd288 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd6;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd384 && mouse_pos_x>= 8'd336 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd7;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd432 && mouse_pos_x>= 8'd384 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd8;
cell_x = 4'd9;
end
if (mouse_pos_x< 8'd480 && mouse_pos_x>= 8'd432 &&  mouse_pos_y< 8'd640 && mouse_pos_y>= 8'd576)
begin
cell_y = 4'd9;
cell_x = 4'd9;
end
end
endmodule
