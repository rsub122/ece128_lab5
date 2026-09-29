module SR_Latch(S, R, Q, Qbar);
input S, R;
output Q, Qbar;
nor #1 N1(Q, R, Qbar);
nor #1 N2(Qbar, S, Q);
endmodule
