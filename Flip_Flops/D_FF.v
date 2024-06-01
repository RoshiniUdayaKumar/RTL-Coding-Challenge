`timescale 1ns / 1ps
module D_FF(D, clk, reset,out);
input [3:0] D;
input clk, reset;
output reg [3:0] out;

always@(posedge clk)
begin 
if(reset)
out<=4'b0000;
else
out<=D;
end 
endmodule
