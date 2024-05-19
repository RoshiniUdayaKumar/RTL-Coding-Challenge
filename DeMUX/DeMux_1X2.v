`timescale 1ns / 1ps

module DeMux_1X2(I,sel,Y0,Y1);
input I,sel;
output Y0,Y1;

//using conditional operator 
assign {Y0,Y1}= sel?{1'b0,I}:{I,1'b0};
endmodule
