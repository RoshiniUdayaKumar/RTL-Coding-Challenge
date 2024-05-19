`timescale 1ns / 1ps

module DeMux_1X2_tb();
//port declaration 
reg I,sel;
wire Y0,Y1;
//module instantiation 
DeMux_1X2 dut(I,sel,Y0,Y1);
//simulation 
initial begin 
sel=1'b0; I=1'b1; 
#2 sel=1'b1; I=1'b0;
end
endmodule
