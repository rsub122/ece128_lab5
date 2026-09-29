# ECE128 Lab 5

The purpose of this lab is to design and simulate common sequential logic circuits in Verilog. The designs include an SR latch, SR flip-flop, positive-edge D flip-flops with synchronous and asynchronous reset, a T flip-flop, a 3-bit counter using T flip-flops, and a 25 MHz clock divider.

Each design has its own testbench so the waveform can be simulated and analyzed separately.

## Files
- SR_Latch.v / SR_Latch_TB.v
- SR_FlipFlop.v / SR_FlipFlop_TB.v
- DFlipFlop_sync.v / DFlipFlop_sync_TB.v
- DFlipFlop_async.v / DFlipFlop_async_TB.v
- TFlipFlopCounter.v / TFlipFlopCounter_TB.v
- Counter3_TFlipFlop.v / Counter3_TB.v
- clockdivider.v / clockdivider_TB.v

## Run Instructions
1. Create a new Vivado project.
2. Add the desired design file under Design Sources.
3. Add its matching testbench under Simulation Sources.
4. Set the testbench as the simulation top.
5. Run Behavioral Simulation.
6. Check the waveform and verify the expected output.

The D and T flip-flop designs use the active-low reset rstn used in the ECE 128 lecture.
