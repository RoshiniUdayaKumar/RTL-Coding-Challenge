`timescale 1ns / 1ps

module D_FF(D,clk,reset,out);
  
input  D,clk,reset;
output reg  out;


always@(posedge clk)
begin 
if(reset)
out<=1'b0;
else
out<=D;
end 
endmodule

