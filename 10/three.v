module one(J,K,Clk,R,Q);
	input J,K,Clk,R;
	output reg Q;
	reg k;
	always @(posedge Clk)
	begin
	k=(J&~Q)|(~K&Q);
	if(R) Q<=0;
	else   Q<=k;
	end
endmodule
	
