module Counter3_TFlipFlop(clk, rstn, en, q);
input clk, rstn, en;
output [2:0] q;
wire t0, t1, t2;
assign t0 = en;
assign t1 = en & q[0];
assign t2 = en & q[0] & q[1];
TFlipFlopCounter u0(.clk(clk), .rstn(rstn), .t(t0), .q(q[0]));
TFlipFlopCounter u1(.clk(clk), .rstn(rstn), .t(t1), .q(q[1]));
TFlipFlopCounter u2(.clk(clk), .rstn(rstn), .t(t2), .q(q[2]));
endmodule
