`timescale 1ns / 1ps

module SR_FF(clk,reset,S,R,Q);
input clk,reset, S,R;
output reg Q;

always @(posedge clk)//synchronous reset
begin
if(reset)
Q<=0;
else 
case({S,R})
2'b00:Q<=Q;
2'b01:Q<=1'b0;
2'b10:Q<=1'b1;
2'b11:Q<=1'bx;
endcase
end
endmodule
