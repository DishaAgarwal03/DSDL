`timescale 1ns/1ns
`include "three.v" 
module three_tb();
reg clk, reset; 
wire [3:0]out;
three ex(clk, reset, out);
initial
begin
	$dumpfile("three_tb.vcd");
	$dumpvars(0, three_tb);
	clk=0; 
	forever #20 clk = ~clk;
end
initial
begin
	reset=0;#40;
	reset=1;
	$display("Test complete");
end
endmodule
