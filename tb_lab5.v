`timescale 1ns / 1ps

module tb_lab5();

    reg S, R;
    reg D;
    reg T;
    reg clk;
    reg reset;

    wire Q_latch;
    wire Qbar_latch;
    wire Q_srff;
    wire Q_sync;
    wire Q_async;
    wire Q_t;
    wire Q0, Q1, Q2;
    wire clk25;

    SR_Latch U1(.S(S), .R(R), .Q(Q_latch), .Qbar(Qbar_latch));
    SR_FF U2(.S(S), .R(R), .clk(clk), .Q(Q_srff));
    DFF_Sync U3(.D(D), .clk(clk), .reset(reset), .Q(Q_sync));
    DFF_Async U4(.D(D), .clk(clk), .reset(reset), .Q(Q_async));
    TFF U5(.T(T), .clk(clk), .reset(reset), .Q(Q_t));
    Counter3Bit U6(.clk(clk), .reset(reset), .Q0(Q0), .Q1(Q1), .Q2(Q2));
    ClockDivider U7(.clk(clk), .reset(reset), .clk25(clk25));

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        S = 1'b0;
        R = 1'b1;
        D = 1'b0;
        T = 1'b0;
        reset = 1'b1;
        #10;

        reset = 1'b0;

        S = 1'b0; R = 1'b0; #10;
        S = 1'b1; R = 1'b0; #10;
        S = 1'b0; R = 1'b0; #10;
        S = 1'b0; R = 1'b1; #10;

        D = 1'b1; #10;
        D = 1'b0; #10;

        T = 1'b1; #40;
        T = 1'b0; #10;

        reset = 1'b1; #10;
        reset = 1'b0; #80;

        $stop;
    end

endmodule
