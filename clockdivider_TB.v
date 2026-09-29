`timescale 1ns / 1ps
module clockdivider_TB();
reg clock_in;
wire clock_out;
clockdivider DUT(.clock_in(clock_in), .clock_out(clock_out));
initial begin
clock_in=0;
forever #5 clock_in=~clock_in;
end
initial begin
#200;
$finish;
end
endmodule
