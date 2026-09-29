`timescale 1ns / 1ps
module Counter3_TB();
reg clk, rstn, en;
wire [2:0] q;
Counter3_TFlipFlop DUT(.clk(clk), .rstn(rstn), .en(en), .q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rstn=0; en=0;
repeat(2) @(posedge clk);
rstn=1; en=1;
repeat(10) @(posedge clk);
en=0;
repeat(3) @(posedge clk);
en=1;
repeat(6) @(posedge clk);
$finish;
end
endmodule
