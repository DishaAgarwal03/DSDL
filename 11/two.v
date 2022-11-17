module two(clk, reset, set, out);
	input clk,reset,set;
	output [4:0]out;
	DFF d0(~out[0],clk,reset,set,out[4]);
	DFF d1(out[4],clk,reset,~set,out[3]);
	DFF d2(out[3],clk,reset,~set,out[2]);
	DFF d3(out[2],clk,reset,~set,out[1]);
	DFF d4(out[1],clk,reset,~set,out[0]);
endmodule

module DFF(d,clk,reset,set,q);
	input d,clk,reset,set;
	output q;
	reg q;
	always@(posedge clk)
	begin
		if(!reset && set)
			q<=1;
		else if(!reset && !set)
			q<=0;
		else
			q<=d;
	end
endmodule
