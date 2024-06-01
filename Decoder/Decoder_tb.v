`timescale 1ns / 1ps

module Decoder_tb();

reg A,B,C;
wire [7:0]out;

//module instantiation 
Decoder dut(A,B,C,out);

initial begin 
A=1'b0; B=1'b0; C=1'b0;
#10 A=1'b0; B=1'b0; C=1'b01;
#10 A=1'b0; B=1'b1; C=1'b0;
#10 A=1'b0; B=1'b1; C=1'b1;
#10 A=1'b1; B=1'b0; C=1'b0;
#10 A=1'b1; B=1'b0; C=1'b1;
#10 A=1'b1; B=1'b1; C=1'b0;
#10 A=1'b1; B=1'b1; C=1'b1;

end 
endmodule
