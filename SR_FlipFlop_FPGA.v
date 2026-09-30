module SR_FlipFlop_FPGA(S, R, CLK, Q, Qbar);
input S, R, CLK;
output reg Q;
output Qbar;

assign Qbar = ~Q;

always @(posedge CLK) begin
    if (S && !R)
        Q <= 1'b1;
    else if (!S && R)
        Q <= 1'b0;
    else
        Q <= Q;
end

endmodule
