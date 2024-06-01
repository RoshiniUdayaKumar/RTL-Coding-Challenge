`timescale 1ns / 1ps

module JK_FF(clk,reset,J,K,Q);
input clk,reset,J,K;
output reg Q;

always@(posedge clk) //synchronous reset
begin 
if(reset)
Q<=0;
else
case({J,K})
2'b00:Q<=Q;
2'b01:Q<=1'b0;
2'b10:Q<=1'b1;
2'b11:Q<=~Q;
endcase
end
endmodule
