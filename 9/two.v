module two(En, W, F, G, H);
	input [3:0]W;
	input En;
	output F,G,H;
	wire [0:15]Y;
	decoder4t16 D(En,W,Y);
	assign F=Y[3] | Y[6] | Y[7] | Y[10] | Y[11] | Y[14];
	assign G=Y[2] | Y[3] | Y[10] | Y[14];
	assign H=Y[0] | Y[1] | Y[3] | Y[7] | Y[14] | Y[15];
endmodule

module decoder4t16(En, W, Y);
	input [3:0]W;
	input En;
	wire [0:3]E;
	output [0:15]Y;
	decoder2t4 D(En, W[3:2],E[0:3]);
	decoder2t4 D0(E[0], W[1:0],Y[0:3]);
	decoder2t4 D1(E[1], W[1:0],Y[4:7]);
	decoder2t4 D2(E[2], W[1:0],Y[8:11]);
	decoder2t4 D3(E[3], W[1:0],Y[12:15]);
endmodule

module decoder2t4(En, W, Y);
	input [1:0]W;
	input En;
	output reg [0:3]Y; 
	always @(*)
	begin
		Y=4'b0000;
		if (En==1'b0);
		else 
			case(W)
				0: Y[0]=1'b1;
				1: Y[1]=1'b1;
				2: Y[2]=1'b1;
				3: Y[3]=1'b1;
			endcase   			 
	end
endmodule
