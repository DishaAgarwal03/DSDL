module two(En, W, Y);
	input [3:0]W;
	input En;
	output [0:15]Y;
	not(a,W[3]);
	and(e0,a,En);
	and(e1,W[3],En);
	decoder3t8 D0(e0, W[2:0],Y[0:7]);
	decoder3t8 D1(e1, W[2:0],Y[8:15]);
endmodule

module decoder3t8(En, W, Y);
	input [2:0]W;
	input En;
	output reg [0:7]Y; 
	integer k;
	always @(*)
	begin
		Y=8'b00000000;
		for (k = 0; k <= 7; k = k+1)
			if ((W == k) && (En == 1))
				Y[k] = 1;   			 
	end
endmodule
