`timescale 1ns / 1ps

module Mux_2X1(I0,I1,SL,Y);
input I0,I1,SL;
output reg Y;

//logic for 2X1 Mux
always @(I0,I1,SL) begin
if(SL==1'b0)
Y<=I0;
else
Y<=I1;
end
endmodule
