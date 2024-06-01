`timescale 1ns / 1ps

module Decimal_to_BCD_Encoder_tb();
reg D0,D1,D2,D3,D4,D5,D6,D7,D8,D9;
wire A,B,C,D;

//moudule instantiation 
Decimal_to_BCD_Encoder dut(D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,A,B,C,D);

initial begin
//input stimulus
D0=1'b1; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b1; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b1; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b1; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b1; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b1;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b1;D7=1'b0;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b1;D8=1'b0; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b1; D9=1'b0;
#10 D0=1'b0; D1=1'b0; D2=1'b0; D3=1'b0; D4=1'b0; D5=1'b0;D6=1'b0;D7=1'b0;D8=1'b0; D9=1'b1;
end
endmodule
