module four(clk, reset, out);
	input clk,reset;
	output [3:0]out;
	TFF d0(1'b1,clk,reset,out[0]);
	and(f,out[0],1'b1);
	TFF d1(f,clk,reset,out[1]);
	and(g,out[1],f);
	TFF d2(g,clk,reset,out[2]);
	and(h,out[2],g);
	TFF d3(h,clk,reset,out[3]);
endmodule

module TFF(t,clk,reset,q);
	input t,clk,reset;
	output reg q;
	always@(negedge clk)
	begin
		if(!reset)
			q<=0;
		else
		begin  
			if(t)
				q<=~q;
			else
				q<=q;
		end
	end
endmodule
