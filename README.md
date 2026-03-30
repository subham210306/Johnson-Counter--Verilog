# 4-Bit Johnson Counter in Verilog

## Overview
This project implements a **4-bit Johnson Counter** using Verilog.
A Johnson counter is a modified ring counter in which the **inverted output of the last flip-flop is fed back to the first flip-flop**.

For an **n-bit Johnson counter**, the circuit generates **2n unique states** before repeating.

In this implementation:
 **Number of flip-flops:** 4
 **Total states generated:** 8
This design demonstrates a simple sequential digital circuit built using registers and clocked logic.



## State Sequence
The 4-bit Johnson counter generates the following sequence:

```
0000 → 1000 → 1100 → 1110 → 1111 → 0111 → 0011 → 0001 → repeat
```
After the eighth state, the sequence repeats continuously.

## Verilog Logic Used

The counter updates on the **positive edge of the clock**.
The **inverted least significant bit (LSB)** is fed back to the **most significant bit (MSB)** while the remaining bits shift.

```verilog
q <= {~q[0], q[3:1]};
```

This creates the characteristic **twisted feedback** used in Johnson counters.


## Features
* **4-bit Johnson Counter implementation**
* **Asynchronous reset support**
* **Synthesizable Verilog sequential logic**
* **Separate testbench for simulation**

## Simulation

The testbench performs the following tasks:
* Generates a **clock signal**
* Applies **reset initialization**
* Monitors the counter output during simulation

Example simulation output:

```
Time = 0   | Reset = 1 | Q = 0000
Time = 10  | Reset = 0 | Q = 1000
Time = 20  | Reset = 0 | Q = 1100
Time = 30  | Reset = 0 | Q = 1110
Time = 40  | Reset = 0 | Q = 1111
Time = 50  | Reset = 0 | Q = 0111
Time = 60  | Reset = 0 | Q = 0011
Time = 70  | Reset = 0 | Q = 0001
```


## Tool Used

This project is simulated using:
* Vivado Simulator


## Applications
Johnson counters are commonly used in:
1. Digital timing circuits
2. Sequence generators
3. Control signal generation
4. Frequency division circuits



## Author: Subham Sai Mohanty
B.Tech Electronics & Communication Engineering
Odisha University of Technology and Research
