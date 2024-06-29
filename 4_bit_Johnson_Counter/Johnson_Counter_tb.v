`timescale 1ns / 1ps
module Johnson_Counter_tb ();
reg [3:0] D;
reg clk,reset;
wire [3:0] Q;

//module instantiation 
Johnson_Counter dut (D,clk,reset,Q);

//generating clock 
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end 

//input stimulus 
initial begin
reset=1'b1;
#20 reset=1'b0;
end

endmodule