8-bit ALU Using Verilog HDL

📌 Project Overview

This project implements an 8-bit Arithmetic Logic Unit (ALU) using Verilog HDL.

An ALU is a fundamental digital circuit used in processors and digital systems to perform arithmetic and logical operations.

This project supports 8 different operations, including addition, subtraction, AND, OR, XOR, NOT, increment, and decrement.

🎯 Objectives

- Design an 8-bit ALU using Verilog HDL.
- Implement arithmetic operations.
- Implement logical operations.
- Generate carry and zero flags.
- Verify the ALU using a Verilog testbench.
- Perform waveform simulation using GTKWave.

🛠️ Technologies Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Digital Electronics
- GitHub

📂 Project Structure

8-bit-ALU-Verilog/
│
├── README.md
├── alu_8bit.v
├── alu_8bit_tb.v
└── simulation/
    └── alu_waveform.png

⚙️ ALU Specifications

Parameter| Value
ALU Width| 8 bits
Input A| 8 bits
Input B| 8 bits
Opcode| 3 bits
Number of Operations| 8
Result| 8 bits
Carry Flag| 1 bit
Zero Flag| 1 bit

🔢 Operation Table

Opcode| Operation| Description
"000"| ADD| A + B
"001"| SUB| A - B
"010"| AND| A & B
"011"| OR| A | B
"100"| XOR| A ^ B
"101"| NOT| ~A
"110"| INC| A + 1
"111"| DEC| A - 1

🚩 Flags

Carry Flag

The "carry" output indicates a carry or borrow condition during arithmetic operations.

For example:

FFH + 01H = 100H

Since the ALU result is 8 bits:

Result = 00H
Carry  = 1

Zero Flag

The "zero" flag becomes "1" whenever the ALU result is zero.

Example:

FFH + 01H = 00H

Therefore:

Zero = 1

⚙️ Working Principle

The ALU receives two 8-bit inputs:

A[7:0]
B[7:0]

A 3-bit opcode selects the required operation.

                 ┌──────────────┐
A[7:0] ─────────→│              │
B[7:0] ─────────→│   8-bit ALU  │──→ Result[7:0]
Opcode[2:0] ────→│              │──→ Carry
                 │              │──→ Zero
                 └──────────────┘

🧪 Testbench

The testbench performs the following operations:

1. Sets input A to "15H".
2. Sets input B to "05H".
3. Tests all eight ALU operations.
4. Tests an addition that produces a carry.
5. Displays the results in the console.
6. Generates a VCD waveform file for simulation.

📊 Expected Results

For:

A = 15H
B = 05H

the expected results are:

ADD → 1AH
SUB → 10H
AND → 05H
OR  → 15H
XOR → 10H
NOT → EAH
INC → 16H
DEC → 14H

For the carry test:

A = FFH
B = 01H

the result is:

Result = 00H
Carry  = 1
Zero   = 1

▶️ Simulation Using Icarus Verilog

Step 1: Compile

iverilog -o alu_sim alu_8bit.v alu_8bit_tb.v

Step 2: Run Simulation

vvp alu_sim

Step 3: Open Waveform

gtkwave alu_8bit.vcd

Add the following signals:

A
B
opcode
result
carry
zero

🌐 Applications

ALUs are widely used in:

- Microprocessors
- Microcontrollers
- CPUs
- Digital signal processors
- Embedded systems
- FPGA designs
- Arithmetic circuits
- Digital computers

🧠 Key Concepts Learned

- Arithmetic operations
- Logic operations
- Combinational circuits
- Verilog "case" statement
- Carry generation
- Zero flag generation
- Testbench development
- Waveform simulation
- RTL design

✅ Conclusion

An 8-bit ALU was successfully designed and verified using Verilog HDL.

The ALU performs eight arithmetic and logical operations and generates carry and zero status flags. The testbench verifies the functionality, and GTKWave simulation can be used to observe the input, opcode, result, and flag signals.

👩‍💻 Author

JAINY INDHU

Electronics and Communication Engineering Student