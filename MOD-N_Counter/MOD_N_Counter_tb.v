`timescale 1ns / 1ps

module MOD_N_Counter_tb( );
reg clk,reset;
wire [2:0] out; 

//module instantiation 
MOD_N_Counter dut(clk,reset,out);

//clock generation 
initial begin 
clk=1'b0;
forever #5 clk=~clk;
end

//input stimulus 
initial begin
clk=1'b0; reset=1'b1;
#10 reset=1'b0;
end

endmodule
