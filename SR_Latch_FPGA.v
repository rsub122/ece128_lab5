module SR_Latch_FPGA(S, R, Q, Qbar);
input S, R;
output reg Q;
output Qbar;

assign Qbar = ~Q;

always @(*) begin
    if (S && !R)
        Q = 1'b1;
    else if (!S && R)
        Q = 1'b0;
end

endmodule
