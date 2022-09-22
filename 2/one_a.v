module one_a(A,B,C,D,f);
	input A,B,C,D;
	output f;
	
	assign f=(~B&C)|(C&D)|(~A&B)|(B&~C&~D);
endmodule
