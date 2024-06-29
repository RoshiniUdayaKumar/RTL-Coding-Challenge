`timescale 1ns / 1ps
module Binary_to_Grey_Code_tb();

//port declaration 
reg [2:0] B;
wire [2:0] G;

//module instantiation 
Binary_to_Grey_Code dut(B,G);

//input stimulus 
initial begin 
B[2:0]=3'b000;
#10 B[2:0]=3'b001;
#10 B[2:0]=3'b010;
#10 B[2:0]=3'b011;
#10 B[2:0]=3'b100;
#10 B[2:0]=3'b101;
#10 B[2:0]=3'b110;
#10 B[2:0]=3'b111;
#10 B[2:0]=3'b000;
end
endmodule
