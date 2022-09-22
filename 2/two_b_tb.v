`timescale 1ns/1ns
`include "two_b.v"  //two_b in 2b
 
module two_b_tb();
reg A,B,C,D;
//Input
wire f;
//Output
two_b ex(A, B, C, D, f); //two_b in 2b
initial
begin
	$dumpfile("two_b_tb.vcd");
	$dumpvars(0, two_b_tb);
	A=1'b0; B=1'b0; C=1'b0; D=1'b0; 
	#20;
	A=1'b0; B=1'b0; C=1'b0; D=1'b1;
	#20; 
	A=1'b0; B=1'b0; C=1'b1; D=1'b0;
	#20;
	A=1'b0; B=1'b0; C=1'b1; D=1'b1;
	#20;
	A=1'b0; B=1'b1; C=1'b0; D=1'b0;
	#20;
	A=1'b0; B=1'b1; C=1'b0; D=1'b1;
	#20;
	A=1'b0; B=1'b1; C=1'b1; D=1'b0;
	#20;
	A=1'b0; B=1'b1; C=1'b1; D=1'b1;
	#20;
	A=1'b1; B=1'b0; C=1'b0; D=1'b0; 
	#20;
	A=1'b1; B=1'b0; C=1'b0; D=1'b1;
	#20;
	A=1'b1; B=1'b0; C=1'b1; D=1'b0;
	#20;
	A=1'b1; B=1'b0; C=1'b1; D=1'b1;
	#20;
	A=1'b1; B=1'b1; C=1'b0; D=1'b0;
	#20;
	A=1'b1; B=1'b1; C=1'b0; D=1'b1;
	#20;
	A=1'b1; B=1'b1; C=1'b1; D=1'b0;
	#20;
	A=1'b1; B=1'b1; C=1'b1; D=1'b1;
	#20;
	$display("Test complete");
end

endmodule
