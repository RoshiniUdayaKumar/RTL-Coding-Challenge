`timescale 1ns / 1ps

module Octal_to_Binary_tb();
reg D0,D1,D2,D3,D4,D5,D6,D7;
wire A,B,C;

//moudule instantiation 
Octal_to_Binary_Encoder dut(D0,D1,D2,D3,D4,D5,D6,D7,A,B,C);

initial begin
//input stimulus
D0=1'b1; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b1; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b1; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b1; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b1; D5=1'b0;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b1;D6=1'b0;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b1;D7=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b1;
end
endmodule
