`timescale 1ns / 1ps

module JK_latch(en,J,K,Q);
input en,J,K;
output reg Q;

always@(en or J or K) begin
if(en)
case({J,K})
2'b00:Q<=Q;
2'b01:Q<=1'b0;
2'b10:Q<=1'b1;
2'b11:Q<=~Q;
endcase
else
Q<=1'b0;
end
endmodule
