`timescale 1ns / 1ps

module clock_divide_by_2(clk,reset,Q);
input clk,reset;
output reg Q;
always @(posedge clk) //synchronous reset 
begin
if(reset)
Q<=1'b0;
else
Q<=~Q;
end
endmodule
