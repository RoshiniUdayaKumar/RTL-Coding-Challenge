`timescale 1ns / 1ps
module logic_gate_tb();
reg A,B;
wire C;

//module instantiation 
logic_gates dut(A,B,C);

initial begin 
A=0; B=0;
#10 
A=0; B=1;
#10
A=1; B=0;
#10
A=1; B=1;
end 
endmodule