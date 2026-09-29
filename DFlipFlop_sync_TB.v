`timescale 1ns / 1ps
module DFlipFlop_sync_TB();
reg clk, d, rstn;
wire q;
DFlipFlop_sync DUT(.d(d), .rstn(rstn), .clk(clk), .q(q));
initial begin
clk=0;
forever #10 clk=~clk;
end
initial begin
d=0; rstn=0;
@(posedge clk); rstn=1; d=1;
@(posedge clk); d=0;
@(posedge clk); d=1;
@(negedge clk); rstn=0;
@(posedge clk); rstn=1;
#20 $finish;
end
endmodule
