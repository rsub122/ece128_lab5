`timescale 1ns / 1ps
module SR_Latch_TB();
reg S, R;
wire Q, Qbar;
SR_Latch DUT(.S(S), .R(R), .Q(Q), .Qbar(Qbar));
initial begin
R=0; S=0;
#5 S=1;
#5 S=0;
#5 R=1;
#5 R=0; S=1;
#5 S=0; R=1;
#5 R=0;
#5 R=1; S=1;
#5 $finish;
end
endmodule
