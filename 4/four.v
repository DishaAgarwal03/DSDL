module four(cin, a, b, sum, cout);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output cout;
	wire m, n, p;
	wire [3:0]z;
	wire [3:0]h;
	adder4 st0(cin, a, b, z, m);
	assign p = (m | (z[3] & z[2]) | (z[3] & z[1]));
	assign h = {1'b0, p, p, 1'b0};
	adder4 st1(cin, z, h, sum, n);
	assign cout = n;
endmodule
	
module adder4(cin, a, b, sum, cout);
	input [3:0]a,b;
	input cin;
	output [3:0]sum;
	output cout;
	xor(b0,b[0],cin);
	fulladd fa0 (cin, a[0], b0, sum[0], c1);
	xor(b1,b[1],cin);
	fulladd fa1 (c1, a[1], b1, sum[1], c2);
	xor(b2,b[2],cin);
	fulladd fa2 (c2, a[2], b2, sum[2], c3);
	xor(b3,b[3],cin);
	fulladd fa3 (c3, a[3], b3, sum[3], cout);
endmodule


module fulladd(ci, x, y, s, co);
	input ci, x, y;
	output co, s;
	assign s = x^y^ci;
	assign co = (x&y) | (x&ci) | (y&ci);
endmodule

