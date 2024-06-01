`timescale 1ns / 1ps

module clock_divide_by_2_tb();
reg clk,reset;
wire Q;

//module instantiation
clock_divide_by_2 dut(clk,reset,Q);

//clock generation 
initial begin
clk=0;
forever #10 clk=~clk;
end

//input stimulus 
initial begin 
reset=1'b1;
#15 reset=1'b0;
#200 $finish;
end
endmodule
