module three(clk, reset, out);
	input clk,reset;
	output [3:0]out;
	TFF d0(1'b1,clk,reset,out[0]);
	TFF d1(1'b1,out[0],reset,out[1]);
	TFF d2(1'b1,out[1],reset,out[2]);
	TFF d3(1'b1,out[2],reset,out[3]);
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
