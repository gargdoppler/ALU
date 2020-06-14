import struct
import sys
import numpy as np
import os
np.seterr(all='raise')
fail = 0


def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))


def bitwiseAND(a, b):
    A = binary(a)
    B = binary(b)
    C = ''
    for i in range(32):
        if(int(A[i]) and int(B[i])):
            C += '1'
        else:
            C += '0'
    return C


def bitwiseOR(a, b):
    A = binary(a)
    B = binary(b)
    C = ''
    for i in range(32):
        if(int(A[i]) or int(B[i])):
            C += '1'
        else:
            C += '0'
    return C


def bitwiseNOT(a):
    A = binary(a)
    B = ''
    for i in range(32):
        if(int(A[i])):
            B += '0'
        else:
            B += '1'
    return B


f = open("alu_tb.v", 'w')
op = str(sys.argv[1])
numTests = int(sys.argv[2])


def changeModule(mod_name):
    f.write(
        '`timescale 0.01 ns/1 ps\n\
    `include "alu.v"\n\n\n\
    module '+mod_name+'_tb ();\n\
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
    operation = "ADD"
    os.rename(r'alu_tb.v', r'add_tb.v')
    changeModule("add")
    f.write("000")
elif(op == "001"):
    operation = "SUB"
    os.rename(r'alu_tb.v', r'sub_tb.v')
    changeModule("sub")
    f.write("001")
elif(op == "010"):
    operation = "DIV"
    os.rename(r'alu_tb.v', r'mul_tb.v')
    changeModule("div")
    f.write("010")
elif(op == "011"):
    operation = "MUL"
    os.rename(r'alu_tb.v', r'div_tb.v')
    changeModule("mul")
    f.write("011")
elif(op == "100"):
    operation = "AND"
    os.rename(r'alu_tb.v', r'and_tb.v')
    changeModule("and")
    f.write("100")
elif(op == "101"):
    operation = "OR"
    os.rename(r'alu_tb.v', r'or_tb.v')
    changeModule("or")
    f.write("101")
elif(op == "110"):
    operation = "NOT"
    os.rename(r'alu_tb.v', r'not_tb.v')
    changeModule("not")
    f.write("110")

f.write(
    f';\n\n\t\t/* Display the operation */\n\
\t\t$display ("Opcode: {op}, Operation: {operation}");\n\
\t\t/* Test Cases!*/\n')


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
            result = bitwiseAND(a, b)
        elif(op == "101"):
            result = bitwiseOR(a, b)
        elif(op == "110"):
            result = bitwiseNOT(a)

        if(not(op == "110")):
            f.write("\t\ta = 32'b" + binary(a) + ";\n")
            f.write("\t\tb = 32'b" + binary(b) + ";\n")

            if(str(type(result)) == "<class 'str'>"):
                f.write("\t\tcorrect = 32'b" + result + ";\n")
            else:
                f.write("\t\tcorrect = 32'b" + binary(result) + ";\n")
                f.write("\t\t#400 //" + str(a[0]) + " * " +
                        str(b[0]) + " = " + str(result[0]) + "\n\t\t")

            f.write("\t\t\tbegin\n")
            f.write(
                "\t\t\t$display (\"A      : %b %b %b\", a[31], a[30:23], a[22:0]);\n")
            f.write(
                "\t\t\t$display (\"B      : %b %b %b\", b[31], b[30:23], b[22:0]);\n")
            f.write(
                "\t\t\t$display (\"Output : %b %b %b\", correct[31], correct[30:23], correct[22:0]);\n")
            # f.write(
            #     "\t\t\t$display (\"Correct: %b %b %b\", correct[31], correct[30:23], correct[22:0]); $display();\n\t\tend\n\n")
        else:
            f.write("\t\ta = 32'b" + binary(a) + ";\n")
            if(str(type(result)) == "<class 'str'>"):
                f.write("\t\tcorrect = 32'b" + result + ";\n")
            else:
                f.write("\t\tcorrect = 32'b" + binary(result) + ";\n")
                f.write("\t\t#400 //" + str(a[0]) + " * " +
                        str(b[0]) + " = " + str(result[0]) + "\n\t\t")

            f.write("\t\t\tbegin\n")
            f.write(
                "\t\t\t$display (\"A      : %b %b %b\", a[31], a[30:23], a[22:0]);\n")
            f.write(
                "\t\t\t$display (\"Output : %b %b %b\", correct[31], correct[30:23], correct[22:0]);\n")
            # f.write(
            #     "\t\t\t$display (\"Correct: %b %b %b\", correct[31], correct[30:23], correct[22:0]); $display();\n\t\tend\n\n")
    except:
        fail += 1
        n -= 1
print("Total cases:        " + str(numTests))
print("Total cases passed: " + str(numTests-fail))
print("Total cases failed: " + str(fail))
f.write("\t\t$display (\"Done.\");\n\t\t$finish;\n\tend\n\nendmodule")
