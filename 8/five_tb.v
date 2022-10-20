`include "four.v"

module four_tb();
reg [3:0]W;
wire z;
wire [1:0]Y;

four ex(W, Y, z);
initial
begin
	$dumpfile("four_tb.vcd");
	$dumpvars(0,four_tb);
	
	W=4'b0001; #20;
	W=4'b0010; #20;
	W=4'b0011; #20;
	W=4'b0100; #20;
	W=4'b0101; #20;
	W=4'b0110; #20;
	W=4'b0111; #20;
	W=4'b1000; #20;
	W=4'b1001; #20;
	W=4'b1010; #20;
	W=4'b1011; #20;
	W=4'b1100; #20;
	W=4'b1101; #20;
	W=4'b1110; #20;
	W=4'b1111; #20;
	W=4'b0000; #20;
	
	$display("test Complete");
end
endmodule
