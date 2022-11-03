`timescale 1ns/1ns
`include "two.v" 
module two_tb();
reg T, Clk, R; 
wire Q;

two ex(T, Clk, R, Q);
initial
begin
    $dumpfile("two_tb.vcd");
    $dumpvars(0, two_tb);
    Clk=0;
    forever #20 Clk = ~Clk;
end
initial 
begin
    T=1; R=0; #20;
    T=0; R=1; #20;
    T=0; R=1; #20;
    T=1; R=1; #20;
    T=1; R=1; #20;
    $display("Test complete");
end
endmodule
//ctrl Z to exit program in terminal
