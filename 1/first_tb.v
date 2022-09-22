`timescale 1ns/1ns
`include "first.v"
 
module first_tb();
reg a,b,c,d;
//Input
wire f;
//Output
first ex2(a, b, c, d, f); //Instantiation of the module
initial
begin
	$dumpfile("first_tb.vcd");
	$dumpvars(0, first_tb);
	a=1'b0; b=1'b0; c=1'b0; d=1'b0; 
	#20;
	a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#20;
	a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#20;
	a=1'b0; b=1'b0; c=1'b1; d=1'b1;
	#20;
	a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#20;
	a=1'b0; b=1'b1; c=1'b0; d=1'b1;
	#20;
	a=1'b0; b=1'b1; c=1'b1; d=1'b0;
	#20;
	a=1'b0; b=1'b1; c=1'b1; d=1'b1;
	#20;
	a=1'b1; b=1'b0; c=1'b0; d=1'b0; 
	#20;
	a=1'b1; b=1'b0; c=1'b0; d=1'b1;
	#20;
	a=1'b1; b=1'b0; c=1'b1; d=1'b0;
	#20;
	a=1'b1; b=1'b0; c=1'b1; d=1'b1;
	#20;
	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
	#20;
	a=1'b1; b=1'b1; c=1'b0; d=1'b1;
	#20;
	a=1'b1; b=1'b1; c=1'b1; d=1'b0;
	#20;
	a=1'b1; b=1'b1; c=1'b1; d=1'b1;
	#20;
	$display("Test complete");
end

endmodule
