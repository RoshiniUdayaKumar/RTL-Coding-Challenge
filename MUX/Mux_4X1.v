`timescale 1ns / 1ps


module Mux_4X1(I0,I1,I2,I3,sel,Y);
input I0,I1,I2,I3;
input [1:0] sel;
output reg Y;

always @(I0 or I1 or I2 or I3 or sel) begin
case(sel)
2'b00: Y<=I0;
2'b01: Y<=I1;
2'b10: Y<=I2;
2'b11: Y<=I3;
endcase
end
endmodule
