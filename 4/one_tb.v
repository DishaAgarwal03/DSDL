`timescale 1ns/1ns
`include "one.v"

module one_tb();
reg cin, x, y, hx, hy, dcin, dx, dy;
wire cout, s, hs, hc, dcout, ds;

one ex(cin, x, y, hx, hy, dcin, dx, dy, cout, s, hs, hc, dcout, ds);
initial
begin
	$dumpfile("one_tb.vcd");
	$dumpvars(0, one_tb);
	
	cin=1'b0; x=1'b0; y=1'b0; 
	hx=1'b0; hy=1'b1; 
	dcin=1'b1; dx=1'b0; dy=1'b0; 
	#20;
	
	cin=1'b0; x=1'b0; y=1'b1; 
	hx=1'b1; hy=1'b0; 
	dcin=1'b0; dx=1'b1; dy=1'b1; 
	#20;
	
	cin=1'b1; x=1'b0; y=1'b1; 
	hx=1'b1; hy=1'b1; 
	dcin=1'b1; dx=1'b1; dy=1'b1; 
	#20;
	
	$display("Test complete");
end
endmodule
