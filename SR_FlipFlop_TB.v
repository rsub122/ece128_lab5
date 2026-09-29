`timescale 1ns / 1ps
module SR_FlipFlop_TB();
reg S, R, CLK;
wire Q, Qbar;
SR_FlipFlop DUT(.Q(Q), .Qbar(Qbar), .S(S), .R(R), .CLK(CLK));
initial begin
CLK=0;
forever #10 CLK=~CLK;
end
initial begin
S=1; R=0;
#100 S=0; R=1;
#100 S=0; R=0;
#100 S=1; R=1;
#100 $finish;
end
endmodule
