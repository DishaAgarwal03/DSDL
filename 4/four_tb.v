`timescale 1ns/1ns
`include "four.v"

module four_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

four ex(cin, a, b, sum, cout);
initial
begin
	$dumpfile("four_tb.vcd");
	$dumpvars(0, four_tb);
	
	cin=1'b0; a=4'b0001; b=4'b0101; #20;
	cin=1'b0; a=4'b0010; b=4'b0110; #20;
	cin=1'b0; a=4'b0001; b=4'b0111; #20;
	cin=1'b0; a=4'b0100; b=4'b0000; #20;
	
	$display("Test complete");
end
endmodule
