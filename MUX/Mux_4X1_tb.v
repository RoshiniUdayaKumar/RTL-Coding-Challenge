`timescale 1ns / 1ps

module Mux_4X1_tb();
//port declaration 
reg I0,I1,I2,I3;
reg [1:0] sel;
wire Y;
//module instantiation 
Mux_4X1 dut(I0,I1,I2,I3,sel,Y);
//simulation
initial begin 
sel=2'b00; I0=1'b0; I1=1'b1; I2=1'b1; I3=1'b0;
#2 sel=2'b01; I0=1'b1; I1=1'b0; I2=1'b1; I3=1'b1;
#2 sel=2'b11; I0=1'b1; I1=1'b1; I2=1'b1; I3=1'b0;
#2 sel=2'b10; I0=1'b0; I1=1'b0; I2=1'b1; I3=1'b1;
end
endmodule
