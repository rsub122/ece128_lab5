module SR_Latch(
    input S,
    input R,
    output Q,
    output Qbar
    );

    nor N1(Q, R, Qbar);
    nor N2(Qbar, S, Q);

endmodule
