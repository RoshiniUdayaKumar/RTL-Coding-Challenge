`timescale 1ns / 1ps
module MOD_N_Counter(clk,reset,out);
input clk,reset;
output reg [2:0] out;

always @(negedge clk)// synchronous reset
begin 
if(reset)
out<=3'b000;
else if(out==3'b101)
out<=3'b000;
else
out<=out+1'b1;
end

endmodule