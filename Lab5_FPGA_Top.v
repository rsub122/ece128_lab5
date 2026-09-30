module Lab5_FPGA_Top(
    input clk,
    input btnC,
    input [4:0] sw,
    output reg [7:0] led,
    output clk25_out
    );

wire rstn;
wire slow_clk;

wire sr_latch_q;
wire sr_latch_qbar;

wire sr_ff_q;
wire sr_ff_qbar;

wire d_sync_q;
wire d_async_q;
wire t_q;

wire [2:0] counter_q;
wire clk25;

assign rstn = ~btnC;
assign clk25_out = clk25;

SlowClock demo_clock(
    .clk(clk),
    .rstn(rstn),
    .slow_clk(slow_clk)
);

SR_Latch sr_latch(
    .S(sw[0]),
    .R(sw[1]),
    .Q(sr_latch_q),
    .Qbar(sr_latch_qbar)
);

SR_FlipFlop sr_ff(
    .R(sw[1]),
    .S(sw[0]),
    .CLK(slow_clk),
    .Q(sr_ff_q),
    .Qbar(sr_ff_qbar)
);

DFlipFlop_sync dff_sync(
    .d(sw[0]),
    .rstn(rstn),
    .clk(slow_clk),
    .q(d_sync_q)
);

DFlipFlop_async dff_async(
    .d(sw[0]),
    .rstn(rstn),
    .clk(slow_clk),
    .q(d_async_q)
);

TFlipFlopCounter tff(
    .clk(slow_clk),
    .rstn(rstn),
    .t(sw[0]),
    .q(t_q)
);

Counter3_TFlipFlop counter3(
    .clk(slow_clk),
    .rstn(rstn),
    .en(sw[0]),
    .q(counter_q)
);

clockdivider divider25(
    .clock_in(clk),
    .clock_out(clk25)
);

always @(*) begin
    led = 8'b00000000;

    case (sw[4:2])
        3'b000: begin
            led[0] = sr_latch_q;
            led[1] = sr_latch_qbar;
        end

        3'b001: begin
            led[0] = sr_ff_q;
            led[1] = sr_ff_qbar;
        end

        3'b010: begin
            led[0] = d_sync_q;
        end

        3'b011: begin
            led[0] = d_async_q;
        end

        3'b100: begin
            led[0] = t_q;
        end

        3'b101: begin
            led[2:0] = counter_q;
        end

        3'b110: begin
            led[0] = clk25;
        end

        3'b111: begin
            led[0] = slow_clk;
        end
    endcase
end

endmodule
