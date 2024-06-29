`timescale 1ns / 1ps

module Right_Shift(
    input clk,
    input reset,
    output [3:0] Q
    );
 reg [3:0] tmp;
 
always @(posedge clk)
begin
if(reset)
tmp<=4'b1000;
else 
tmp<= {tmp[0],tmp[3:1]};           //right shifitng operation
end
assign Q=tmp;
endmodule
