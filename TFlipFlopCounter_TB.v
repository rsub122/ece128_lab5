`timescale 1ns / 1ps
module TFlipFlopCounter_TB();
reg clk, rstn, t;
wire q;
TFlipFlopCounter DUT(.clk(clk), .rstn(rstn), .t(t), .q(q));
initial begin
clk=0;
forever #5 clk=~clk;
end
initial begin
rstn=0; t=0;
#10 rstn=1;
#10 t=1;
#40 t=0;
#20 t=1;
#30 $finish;
end
endmodule
