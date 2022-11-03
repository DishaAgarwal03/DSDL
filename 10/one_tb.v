`timescale 1ns/1ns
`include "one.v" 
module one_tb();
reg D, Clk, R; 
wire Q;

one ex(D, Clk, R, Q);
initial
begin
    $dumpfile("one_tb.vcd");
    $dumpvars(0, one_tb);
    Clk=0;
    forever #20 Clk = ~Clk;
end
initial 
begin
    D=1; R=1; #20;
    D=1; R=0; #20;
    D=1; R=0; #20;
    D=1; R=0; #20;
    $display("Test complete");
end
endmodule
//ctrl Z to exit program in terminal
