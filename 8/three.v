module three(En, W, Y);
	input [3:0]W;
	input En;
	wire [0:15]X;
	input [0:3]E;
	output [0:15]Y;
	decoder2t4 D(En, W[3:2],E[0:3]);
	decoder2t4 D0(E[0], W[1:0],X[0:3]);
	decoder2t4 D1(E[1], W[1:0],X[4:7]);
	decoder2t4 D2(E[2], W[1:0],X[8:11]);
	decoder2t4 D3(E[3], W[1:0],X[12:15]);
	assign Y= ~X;
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
