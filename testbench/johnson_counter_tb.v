`timescale 1ns/1ps
module johnson_counter_tb;
reg clk;
reg reset;
wire [3:0] q;
johnson_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);
always #5 clk = ~clk;
initial
begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #100 $finish;
end
initial
begin
    $monitor("Time = %0t | Reset = %b | Q = %b", $time, reset, q);
end
endmodule
