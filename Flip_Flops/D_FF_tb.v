`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2024 10:02:46 PM
// Design Name: 
// Module Name: D_FF_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module D_FF_tb();
//port declaration
reg [3:0] D;
reg clk, reset;
wire [3:0] out;

//module instantiation 
D_FF dut(D,clk,reset, out);

initial begin 
clk=0;
forever #10 clk=~clk;
end 

initial begin 
reset=1; 
D<=4'b0000;
#100 reset=0;
D<=4'b0001;
#100 D<=4'b1110;
#100 D<=4'b1111;
#100 D<=4'b0110;
#100 reset=1;
D<=4'b0101;
end
endmodule
