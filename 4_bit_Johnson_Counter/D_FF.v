`timescale 1ns / 1ps
module D_FF(D, clk, reset,Q);
input [3:0] D;
input clk, reset;
output reg Q;

always@(posedge clk)
begin 
if(reset)
Q<=0;
else
Q<=D;
end 
endmodule
