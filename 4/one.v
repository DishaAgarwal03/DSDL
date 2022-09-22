module one(cin, x, y, hx, hy, dcin, dx, dy, cout, s, hs, hc, dcout, ds);
	input cin, x, y, hx, hy, dcin, dx, dy;
	output cout, s, hs, hc, dcout, ds;
	fulladd FA(cin, x, y, s, cout);
	halfadd HA(hx, hy, hs, hc);
	d_fulladd DFA(dcin, dx, dy, ds, dcout);
endmodule

module fulladd(cin, x, y, s, cout);
	input cin, x, y;
	output cout, s;
	assign s = x^y^cin;
	assign cout = (x&y) | (x&cin) | (y&cin);
endmodule

module halfadd(hx, hy, hs, hc);
	input hx, hy;
	output hs, hc;
	assign hc = hx&hy;
	assign hs = hx^hy;
endmodule

module d_fulladd(dcin, dx, dy, ds, dcout);
	input dcin, dx, dy;
	output dcout, ds;
	halfadd ha1(dx, dy, s1, c1);
	halfadd ha2(dcin, s1, ds, c2);
	assign dcout = c1|c2;
endmodule

