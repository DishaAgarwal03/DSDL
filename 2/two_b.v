module two_b(A, B, C, D,f);
	input A, B, C, D;
	output f;
	
	assign f=(~A|B|~D)&(~A|B|~C)&(A|~B|D)&(~B|C|D);
endmodule
