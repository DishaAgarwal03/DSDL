module second_i(a,b,c,d,f,g);
	input a,b,c,d;
	output f,g;
	nand(e,a,b);
	xor(f,c,d,e);
	nor(g,b,c,d);
	

endmodule
