`timescale 1ns/1ns
`include "three.v"  
 
module three_tb();
reg A,B,C,D;
//Input
wire f;
//Output
three ex(A, B, C, D, f); 
initial
begin
	$dumpfile("three_tb.vcd");
	$dumpvars(0, three_tb);
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
