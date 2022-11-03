module one(D,Clk,R,Q);
	input D,Clk,R;
	output reg Q;
	always @(posedge Clk or posedge R)
	if(R) Q<=0;
	else   Q<=D;
endmodule
	
