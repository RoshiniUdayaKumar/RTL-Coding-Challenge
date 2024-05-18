`timescale 1ns / 1ps

module Mux_8X1_tb();
//port declaration 
reg [3:0] I0,I1,I2,I3,I4,I5,I6,I7;
reg [2:0] sel;
wire [3:0] Y;
//module instantiation 
Mux_8X1 dut(I0,I1,I2,I3,I4,I5,I6,I7,sel,Y);
//simulation 
initial begin 
sel=3'b000; I0=4'b0000; I1=4'b0000;I2=4'b0000;I3=4'b0000;I4=4'b0000;I5=4'b0000;I6=4'b0000;I7=4'b0000;  //it should select I0
#2 sel=3'b001; I0=4'b0101; I1=4'b1010;I2=4'b1100;I3=4'b1101;I4=4'b0011;I5=4'b1101;I6=4'b1100;I7=4'b1101; //it should select I1
#2 sel=3'b010; I0=4'b1100; I1=4'b1101;I2=4'b1101;I3=4'b1111;I4=4'b1100;I5=4'b0000;I6=4'b0011;I7=4'b1100; //it should select I2
#2 sel=3'b011; I0=4'b0101; I1=4'b0011;I2=4'b1100;I3=4'b0011;I4=4'b0011;I5=4'b0011;I6=4'b1100;I7=4'b0011; //it should select I3
#2 sel=3'b100; I0=4'b1100; I1=4'b1101;I2=4'b0011;I3=4'b0000;I4=4'b1100;I5=4'b1101;I6=4'b0111;I7=4'b1101; //it should select I4
#2 sel=3'b101; I0=4'b0101; I1=4'b0011;I2=4'b1100;I3=4'b1101;I4=4'b0011;I5=4'b1111;I6=4'b0011;I7=4'b1100; //it should select I5
#2 sel=3'b110; I0=4'b1100; I1=4'b1111;I2=4'b1101;I3=4'b0011;I4=4'b1100;I5=4'b0011;I6=4'b0011;I7=4'b1111; //it should select I6
#2 sel=3'b111; I0=4'b0101; I1=4'b0110;I2=4'b1100;I3=4'b1101;I4=4'b1100;I5=4'b1101;I6=4'b1100;I7=4'b1101; //it should select I7   
end
endmodule
