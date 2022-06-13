`timescale 1ns/1ns
module DRflipflop_tb();
logic D = 0, R= 0 , clc = 1;
wire Q, Qb;
Dfilpflop cut(clc, D, R, Q, Qb); 
always # 74 clc = ~clc;
initial begin
repeat (20) # 155 D = ~ D;
# 200 R = 1;
repeat (20) # 150 D = ~D;

# 200 R = 0;
repeat (20) # 155 D = ~ D;
# 300 $stop;
end
endmodule
