module SR_FF(
    input S,
    input R,
    input clk,
    output reg Q
    );

    always @(posedge clk) begin
        if (S == 1'b0 && R == 1'b0)
            Q <= Q;
        else if (S == 1'b0 && R == 1'b1)
            Q <= 1'b0;
        else if (S == 1'b1 && R == 1'b0)
            Q <= 1'b1;
    end

endmodule
