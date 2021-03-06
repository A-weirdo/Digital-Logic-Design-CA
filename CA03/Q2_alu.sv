`timescale 1ns/1ns
module myALU2 (input signed [15:0] inB, inA, input [2:0] opc , input inC,
 			   output zer,neg, output logic signed [15:0] w);
wire [15:0]temp1 , temp2 ;
assign neg = w[15];
assign zer = ~|w;

assign temp1 = (opc == 3'b000) ? inA : 
               (opc == 3'b001) ? inA<<<1 :
               (opc == 3'b011) ? inB>>>1 : 16'd1;



assign temp2 = inB + ((~|opc)&inC);


always @(inA,inB,inC,opc,temp2) begin
	w = 16'b0;
	case (opc)
		3'b000 : w = temp2;
		3'b001 : w = temp2;
		3'b010 : w = temp2;
		3'b011 : w = temp2>>>2;
		3'b100 : w = inA & inB;
		3'b101 : w = inA | inB;
		3'b110: w = ~inB;
		default : w = 16'b0;
endcase	
end

endmodule  




