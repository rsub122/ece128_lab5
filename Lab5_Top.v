module Lab5_Top(
    input clk,
    input btnC,
    input [1:0] sw,
    output [3:0] led
    );

    wire Q;
    wire Qbar;

    SR_Latch uut(
        .S(sw[0]),
        .R(sw[1]),
        .Q(Q),
        .Qbar(Qbar)
    );

    assign led[0] = Q;
    assign led[1] = Qbar;
    assign led[2] = 1'b0;
    assign led[3] = 1'b0;

endmodule
