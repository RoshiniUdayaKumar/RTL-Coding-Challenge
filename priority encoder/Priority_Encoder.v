`timescale 1ns / 1ps

module Priority_Encoder(
    input [7:0] in,
    output reg[2:0] out
    );
always @(in)
begin 
casex(in)
//considering in[7] has the highest priority
//and i[0] has the lowest priority
8'b00000001: out<=3'b000;
8'b0000001x: out<=3'b001;
8'b000001xx: out<=3'b010;
8'b00001xxx: out<=3'b011;
8'b0001xxxx: out<=3'b100;
8'b001xxxxx: out<=3'b101;
8'b01xxxxxx: out<=3'b110;
8'b1xxxxxxx: out<=3'b111;
default: out<=3'bxxx;
endcase
end
endmodule
