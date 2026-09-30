module SR_Latch(S, R, Q, Qbar);
input S, R;
output Q, Qbar;

nor N1(Q, R, Qbar);
nor N2(Qbar, S, Q);

endmodule
