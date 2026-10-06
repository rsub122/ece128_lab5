# ECE128 Lab 5

The purpose of this lab is to design and simulate common sequential logic circuits in Verilog. The designs include an SR latch, an SR flip-flop, positive-edge D flip-flops with synchronous and asynchronous reset, a T flip-flop, a 3-bit counter using T flip-flops, and a 25 MHz clock divider.

Each required design has its own testbench so the waveform can be simulated and analyzed separately. This repository is organized for the simulation work required for the Lab 5 report.

## Design and Testbench Files

- SR_Latch.v / SR_Latch_TB.v
- SR_FlipFlop.v / SR_FlipFlop_TB.v
- DFlipFlop_sync.v / DFlipFlop_sync_TB.v
- DFlipFlop_async.v / DFlipFlop_async_TB.v
- TFlipFlopCounter.v / TFlipFlopCounter_TB.v
- Counter3_TFlipFlop.v / Counter3_TB.v
- clockdivider.v / clockdivider_TB.v

The D and T flip-flop designs use the active-low reset `rstn` convention used in ECE 128.

## Vivado Simulation Instructions

1. Create a new Vivado RTL project.
2. Add the required Verilog design file under Design Sources.
3. Add its matching testbench under Simulation Sources.
4. Set the testbench as the simulation top.
5. Run Behavioral Simulation.
6. Verify the waveform against the truth table, expected flip-flop behavior, counter sequence, or clock-divider frequency.
7. Capture the waveform for the lab report.

## What to Verify

- **SR latch:** set, reset, hold, and invalid input behavior.
- **SR flip-flop:** state changes only when enabled, with the expected set/reset/hold behavior.
- **D flip-flop with synchronous reset:** reset is applied only on a positive clock edge.
- **D flip-flop with asynchronous reset:** reset immediately forces the output low without waiting for a clock edge.
- **T flip-flop:** the output holds when T = 0 and toggles on each positive clock edge when T = 1.
- **3-bit counter:** counts upward from 000 through 111 and wraps back to 000 when enabled.
- **25 MHz clock divider:** divides the 100 MHz input by four, producing a 25 MHz output.

The Lab 5 report contains the Level-0 diagrams, truth tables, waveform screenshots, analysis, conclusion, and contribution chart.
