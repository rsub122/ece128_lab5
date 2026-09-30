module SR_FlipFlop(R, S, CLK, Q, Qbar);
input R, S, CLK;
output Q, Qbar;

wire S1, S2;

and A1(S1, R, CLK);
and A2(S2, S, CLK);
nor N1(Q, S1, Qbar);
nor N2(Qbar, S2, Q);

endmodule
