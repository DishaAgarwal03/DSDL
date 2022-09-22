`timescale 1ns/1ns
`include "two.v"

module two_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

two ex(cin, a, b, sum, cout);
initial
begin
	$dumpfile("two_tb.vcd");
	$dumpvars(0, two_tb);
	
	cin=1'b0; a=4'b0001; b=4'b0000; #20;
	cin=1'b0; a=4'b0011; b=4'b0011; #20;
	cin=1'b0; a=4'b1001; b=4'b0110; #20;
	cin=1'b1; a=4'b0001; b=4'b0000; #20;
	cin=1'b1; a=4'b0011; b=4'b0011; #20;
	cin=1'b1; a=4'b0011; b=4'b0000; #20;
	
	$display("Test complete");
end
endmodule
