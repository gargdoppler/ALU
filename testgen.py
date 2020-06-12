import struct
import sys
import numpy as np

np.seterr(all='raise')


def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))


f = open("alu_tb.v", 'w')
op = str(sys.argv[1])
numTests = int(sys.argv[2])


f.write(
'`timescale 1 ns/100 ps\n\
`include "alu.v"\n\n\n\
module alu_tb ();\n\
    reg clock;\n\
    reg [31:0] a, b;\n\
    reg [2:0] op;\n\
    reg [31:0] correct;\n\n\
    wire [31:0] out;\n\
    wire [49:0] pro;\n\n\
    alu U1 (\n\
            .clk(clock),\n\
            .A(a),\n\
            .B(b),\n\
            .OpCode(op),\n\
            .O(out)\n\
        );\n\
    /* create a 10Mhz clock */\n\
    always\n\
    #100 clock = ~clock; // every 100 nanoseconds invert\n\
    initial begin\n\
        $dumpfile(\"alu_tb.vcd\");\n\
        $dumpvars(0,clock, a, b, op, out);\n\
        clock = 0;\n\n    op = 3\'b')


# Map input opcodes to the Test bench file

if(op == "000"):
    # ADD
    f.write("000")
elif(op == "001"):
    # SUB
    f.write("001")
elif(op == "010"):
    # DIV
    f.write("010")
elif(op == "011"):
    # MUL
    f.write("011")
elif(op == "100"):
    # AND
    f.write("100")
elif(op == "101"):
    # OR
    f.write("101")
elif(op == "110"):
    # NOT
    f.write("110")


f.write(";\n\n    /* Test Cases!*/\n\n")

# Generate test cases
for n in range(0, numTests):
    # If we get a FloatingPointError: invalid value encountered in add
    # then decrement n and try again
    try:
        byte = np.random.bytes(4)
        a = np.frombuffer(byte, dtype=np.float32)
        byte = np.random.bytes(4)
        b = np.frombuffer(byte, dtype=np.float32)
        
        if(op == "000"):
            result = a + b
        elif(op == "001"):
            result = a - b
        elif(op == "010"):
            result = a / b
        elif(op == "011"):
            result = a * b
        elif(op == "100"):
            result = a & b
        elif(op == "101"):
            result = a | b
        elif(op == "110"):
            result = not a

        f.write("\t\ta = 32'b" + binary(a) + ";\n")
        f.write("\t\tb = 32'b" + binary(b) + ";\n")
        f.write("\t\tcorrect = 32'b" + binary(result) + ";\n")
        f.write("\t\t#400 //" + str(a[0]) + " * " +
                str(b[0]) + " = " + str(result[0]) + "\n\t\t")
        if(op == "000"):
            f.write("begin\n")
        elif(op == "001"):
            f.write("begin\n")
        elif(op == "010"):
            f.write("begin\n")
        elif(op == "011"):
            f.write("begin\n")
        f.write(
            "\t\t\t$display (\"A      : %b %b %b\", a[31], a[30:23], a[22:0]);\n")
        f.write(
            "\t\t\t$display (\"B      : %b %b %b\", b[31], b[30:23], b[22:0]);\n")
        f.write(
            "\t\t\t$display (\"Output : %b %b %b\", correct[31], correct[30:23], correct[22:0]);\n")
        f.write(
            "\t\t\t$display (\"Correct: %b %b %b\", correct[31], correct[30:23], correct[22:0]); $display();\n\t\tend\n\n")
    except:
        n -= 1

f.write("\t\t$display (\"Done.\");\n\t\t$finish;\n\tend\n\nendmodule")
