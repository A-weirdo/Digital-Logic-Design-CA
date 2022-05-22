`timescale 1ns/1ns
module ca2_tb3c();
logic [15:0]aa;
logic [15:0]bb;
logic ee=1, ll=0,gg=0;
wire EE1,LL1,GG1;
hex_comparator CUT_112(.a(aa),.b(bb),.e(ee),.l(ll),.g(gg),.E(EE1),.L(LL1),.G(GG1));

initial begin
#1 ee=1;ll=0;gg=0;
#1000 aa=16'b0000000000000000; bb=16'b0000000000000000;
#1000 aa=16'b1000000000000000; bb=16'b0000000000000000;
#1000 aa=16'b1000000000000000; bb=16'b1000000000000000;
#1000 aa=16'b0000000000000000; bb=16'b1000000000000000;
#1000 aa=16'b1111111111111111; bb=16'b1111111111111111;
#1000 aa=16'b1111111111111110; bb=16'b1111111111111111;
#1000 aa=16'b1111111111111111; bb=16'b1111111111111110;
#1000 aa=16'b1111111111111111; bb=16'b1111111111111111;
#1000 aa=16'b1111111111111111; bb=16'b1111111111111110;
#1000 aa=16'b1111111111111111; bb=16'b1111111111111111;
#1000 aa=16'b1111111111111110; bb=16'b1111111111111111;
#220 $stop;
end
endmodule
