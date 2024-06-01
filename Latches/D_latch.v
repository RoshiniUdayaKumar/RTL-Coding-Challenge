`timescale 1ns / 1ps
module D_latch(D,en, out);
input [3:0] D;
input en;
output reg [3:0] out;

always@(en or D)
begin 
if(en)
out<=D;
else
out<=4'b0000;
end 
endmodule
