`timescale 1ns/1ns
`include "three.v" 
module three_tb();
reg J,K, Clk, R; 
wire Q;

three ex(J, K, Clk, R, Q);
initial
begin
    $dumpfile("three_tb.vcd");
    $dumpvars(0, three_tb);
    Clk=0;
    forever #20 Clk = ~Clk;
end
initial 
begin
    J=0; K=0; R=1; #20;
    J=0; K=0; R=0; #20;
    J=0; K=1; R=0; #20;
    J=1; K=0; R=0; #20;
    J=0; K=1; R=0; #20;
    $display("Test complete");
end
endmodule
//ctrl Z to exit program in terminal
