module SlowClock(clk, rstn, slow_clk);
input clk, rstn;
output reg slow_clk;

reg [24:0] count;

always @(posedge clk) begin
    if (!rstn) begin
        count <= 0;
        slow_clk <= 0;
    end
    else if (count == 25'd24999999) begin
        count <= 0;
        slow_clk <= ~slow_clk;
    end
    else
        count <= count + 1'b1;
end

endmodule
