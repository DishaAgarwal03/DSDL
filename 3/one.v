module one(A,B,C,D,f);
	input A,B,C,D;
	output f;
	
	nand(a,A,A);
	nand(c,C,C);
	nand(l,a,c);
	nand(m,a,D);
	nand(n,B,c);
	nand(o,B,D);
	nand(f,l,m,n,o);
	
endmodule
