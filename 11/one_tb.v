`timescale 1ns/1ns
`include "one.v" 
module one_tb();
reg clk, reset, set; 
wire [3:0]out;
one ex(clk, reset, set, out);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0, one_tb);
	clk=0;
	forever #20 clk = ~clk;
end
initial 
begin
	reset=0; set=1; #40;
	reset=1; #320;
	$display("Test complete");
end
endmodule
