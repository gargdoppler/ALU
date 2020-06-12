# IEEE floating-point single-precision (32-bit) ALU
ECN-104 Digital Logic Design Project

### Problem Statement:
Design an IEEE floating-point single-precision (32-bit) ALU that supports the arithmetic and logic operations: addition, subtraction, multiplication, division, AND, OR, NOT.


### Setup instructions:

Install Icarius verilog: http://iverilog.icarus.com/

- Generate testbench file: `python3 testbench_gen.py <OpCode> <no. of test cases>`
- Compile the testbench file: `iverilog -o alu alu_tb.v`
- Run the alu file: `vvp alu`

###### List of opcodes:
- ADD => 000
- DIV => 010
- SUB => 001
- MUL => 011
- AND => 100
- OR  => 101
- NOT => 110
