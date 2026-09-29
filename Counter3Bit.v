module Counter3Bit(
    input clk,
    input reset,
    output Q0,
    output Q1,
    output Q2
    );

    wire T1;
    wire T2;

    assign T1 = Q0;
    assign T2 = Q1 & Q0;

    TFF FF0(.T(1'b1), .clk(clk), .reset(reset), .Q(Q0));
    TFF FF1(.T(T1), .clk(clk), .reset(reset), .Q(Q1));
    TFF FF2(.T(T2), .clk(clk), .reset(reset), .Q(Q2));

endmodule
