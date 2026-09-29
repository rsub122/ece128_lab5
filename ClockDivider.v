module ClockDivider(
    input clk,
    input reset,
    output clk25
    );

    reg [1:0] count;

    always @(posedge clk) begin
        if (reset)
            count <= 2'b00;
        else
            count <= count + 1'b1;
    end

    assign clk25 = count[1];

endmodule
