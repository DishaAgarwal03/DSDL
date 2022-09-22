`timescale 1ns/1ns
`include "second_i.v"
 
module second_i_tb();
reg a,b,c,d;
//Input
wire f,g;
//Output
second_i ex2(a, b, c, d, f, g); //Instantiation of the module
initial
begin
	$dumpfile("second_i_tb.vcd");
	$dumpvars(0, second_i_tb);
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
