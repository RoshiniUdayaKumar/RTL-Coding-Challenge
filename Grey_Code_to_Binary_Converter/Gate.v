`timescale 1ns / 1ps
module Gate( A,B,C);

input A,B;
output reg C;

always @(A or B)
begin 
if(A==1'b0 && B==1'b0)
C=1'b0;
else if (A==1'b0 && B==1'b1)
C=1'b1;
else if (A==1'b1 && B==1'b0)
C=1'b1;
else 
C=1'b0;
end
endmodule
