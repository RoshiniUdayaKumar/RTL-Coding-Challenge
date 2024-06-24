`timescale 1ns / 1ps

module BCD_Counter(
    input clk,
    input reset,
    output reg [3:0] out
    );
always @(posedge clk)// synchronous reset 
begin 
if(reset)
out<=4'b0000;
else if(out==4'b1001)
out<=4'b0000;
else
out<=out+1'b1;
end
endmodule
