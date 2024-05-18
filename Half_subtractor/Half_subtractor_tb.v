`timescale 1ns / 1ps

module Half_subtractor_tb( );

reg A,B;
wire Diff, Bout;

//moudle instantiation 
Half_subtractor dut(A,B,Diff,Bout);
initial begin
//input stimulus 
A=0;B=0;
#10 A=0;B=1;
#10 A=1;B=0;
#10 A=1; B=1; 
end
endmodule

