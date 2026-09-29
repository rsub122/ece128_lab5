`timescale 1ns / 1ps
module DFlipFlop_async_TB();
reg clk, d, rstn;
wire q;
DFlipFlop_async DUT(.d(d), .rstn(rstn), .clk(clk), .q(q));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
d=0; rstn=0;
#15 rstn=1; d=1;
@(posedge clk); d=0;
@(posedge clk); d=1;
#5 rstn=0;
#10 rstn=1;
#30 $finish;
end
endmodule
