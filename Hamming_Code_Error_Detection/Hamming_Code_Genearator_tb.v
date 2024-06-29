`timescale 1ns / 1ps
module Hamming_Code_Genearator_tb( );

//port declaration 
reg [3:0] Data;
wire [6:0] Out;


//module instantiation 
Hamming_Code_Generation dut(Data,Out);

//input stimulus 
initial begin
Data = 4'b1011;
#50 Data=4'b0011;
end
endmodule
