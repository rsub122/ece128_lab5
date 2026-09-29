ECE128-FPGA-LAB5

The purpose of this lab was to design and test common sequential logic circuits in Verilog. The designs include an SR latch, SR flip-flop, positive-edge D flip-flops with synchronous and asynchronous reset, a T flip-flop, a 3-bit counter built from T flip-flops, and a 25 MHz clock divider. A testbench is included to simulate the circuits. A constraint file is also included to map the Basys3 100 MHz clock, switches, center push button, and LEDs for FPGA implementation.

Run Instructions,
Create a new project, selecting the Basys3 board
Add the design files under the design folder: SR_Latch, SR_FF, DFF_Sync, DFF_Async, TFF, Counter3Bit, ClockDivider, Lab5_Top
Add tb_lab5 under the simulation folder
Add Basys-3-Master.xdc under the constraint folder
Run Simulation
Run Synthesis
Run Implementation
Run Generate Bitstream
Find the device and program

Board Mapping,
SW0 = first input
SW1 = second input
BTNC = reset
LED0-LED3 = outputs used by Lab5_Top

Lab5_Top is currently set up to demonstrate the SR latch. To demonstrate a different design on the board, replace the instantiated circuit in Lab5_Top with the desired Lab 5 module and map its output to the LEDs.
