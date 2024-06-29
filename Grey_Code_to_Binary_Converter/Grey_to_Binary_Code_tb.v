`timescale 1ns / 1ps
module Grey_to_Binary_Code_tb( );

//port declaration 
reg [2:0]G;
wire [2:0] B;

//module instantiation
Grey_to_Binary_Code dut (G,B);

//input stimulus
initial begin 
G[2:0]=3'b000;
#10 G[2:0]=3'b001;
#10 G[2:0]=3'b011;
#10 G[2:0]=3'b010;
#10 G[2:0]=3'b110;
#10 G[2:0]=3'b111;
#10 G[2:0]=3'b101;
#10 G[2:0]=3'b100;
#10 G[2:0]=3'b000;
end
endmodule
