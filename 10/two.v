module two(T,Clk,R,Q);
	input T,Clk,R;
	output reg Q;
	reg k;
	always @(negedge Clk or negedge R)
	begin
	k=(T&(~Q))|(~T&Q);
	if(!R) Q<=0;
	else   Q<=k;
	end
endmodule
	
