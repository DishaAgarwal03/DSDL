`timescale 1ns/1ns
`include "first.v"

module first_tb();
reg a,b,c;
wire f1,f2;

first ex(a,b,c,f1,f2);
initial
begin
	
	$dumpfile("first_tb.vcd");
	$dumpvars(0, first_tb);
	
	a=1'b0;b=1'b0;c=1'b0;
	#20;
	
	a=1'b0;b=1'b0;c=1'b1;
	#20;
	
	a=1'b0;b=1'b1;c=1'b0;
	#20;
	
	a=1'b0;b=1'b1;c=1'b1;
	#20;
	
	a=1'b1;b=1'b0;c=1'b0;
	#20;
	
	a=1'b1;b=1'b0;c=1'b1;
	#20;
	
	a=1'b1;b=1'b1;c=1'b0;
	#20;
	
	a=1'b1;b=1'b1;c=1'b1;
	#20;
	
	$display("Test complete");
end

endmodule
	
