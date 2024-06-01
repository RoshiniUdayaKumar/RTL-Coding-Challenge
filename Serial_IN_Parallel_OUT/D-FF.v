`timescale 1ns / 1ps

module D_FF(Din,clk,reset,Q);
  
input  Din,clk,reset;
output reg  Q;


always@(posedge clk)
begin 
if(reset)
Q<=1'b0;
else
Q<=Din;
end 
endmodule

