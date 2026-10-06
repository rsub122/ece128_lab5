# ECE128-FPGA-LAB5

The purpose of this lab was to design and simulate several sequential logic circuits in Verilog. These designs included an SR latch, an SR flip-flop, positive-edge D flip-flops with synchronous and asynchronous reset, a T flip-flop, a 3-bit counter using T flip-flops, and a clock divider that produces a 25 MHz output from a 100 MHz input clock. Separate testbenches were used to simulate each design and verify the expected waveform behavior. The simulations were used to check set, reset, hold, toggle, edge-triggered operation, the 3-bit counter sequence, and the divided clock output.

Run Instructions,

1) Create a new Vivado project
2) Add the design file you want to test under the design folder
3) Add its matching testbench under the simulation folder
4) Set the testbench as the simulation top
5) Run Behavioral Simulation
6) Verify the waveform against the expected truth table or state behavior
7) Repeat for each Lab 5 design
