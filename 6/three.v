module three(W, S, f);
	input [15:0]W;
	input [3:0]S;
	output f;
	mux8to1 M0(W[7:0], S[2:0], k);
	mux8to1 M1(W[15:8], S[2:0], l);
	mux2to1 M2(k, l, S[3], f);
endmodule

module mux8to1(W, S, f);
	input [7:0]W;
	input [2:0]S;
	output reg f;
	
	always @(W or S)
	begin
		case(S)
			3'b000: begin
				f=W[0];
				end
			3'b001: begin
				f=W[1];
			        end
			3'b010: begin
				f=W[2];
				end
			3'b011: begin
				f=W[3];
				end
			3'b100: begin
				f=W[4];
				end
			3'b101: begin
				f=W[5];
				end
			3'b110: begin
				f=W[6];
				end
			3'b111: begin
				f=W[7];
				end
		endcase
	end
endmodule

module mux2to1(w0, w1, s, f);
	input w0, w1, s;
	output reg f;
	
	always @(w0 or w1 or s)
	begin
		f = s? w1 : w0;
	end
endmodule
