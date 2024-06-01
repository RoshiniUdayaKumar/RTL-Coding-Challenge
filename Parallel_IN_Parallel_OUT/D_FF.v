`timescale 1ns / 1ps

module D_FF(D,clk,reset,Q);
  
input  D,clk,reset;
output reg  Q;


always@(posedge clk)
begin 
if(reset)
Q<=1'b0;
else
Q<=D;
end 
endmodule

