//-----------------------------------------------------------
// File: alu_tb.v
// alu Test Bench
//-----------------------------------------------------------
`timescale 1 ns/100 ps
`include "alu.v"
module alu_tb ();
 //----------------------------------------------------------
 // inputs to the DUT are reg type
 reg clock;
 reg [31:0] a, b;
 reg [1:0] op;
 reg [31:0] correct;
 //----------------------------------------------------------
 // outputs from the DUT are wire type
 wire [31:0] out;
 wire [49:0] pro;
 //----------------------------------------------------------
 // instantiate the Device Under Test (DUT)
 // using named instantiation
 alu U1 (
          .clk(clock),
          .A(a),
          .B(b),
          .OpCode(op),
          .O(out)
        );
 //----------------------------------------------------------
 // create a 10Mhz clock
 always
 #100 clock = ~clock; // every 100 nanoseconds invert
 //----------------------------------------------------------
 // initial blocks are sequential and start at time 0
 initial
 begin
 $dumpfile("alu_tb.vcd");
 $dumpvars(0,clock, a, b, op, out);
 clock = 0;op = 2'b01;
a = 32'b00000111111000101011110100011001;
b = 32'b11000001001111101011001110000000;
correct = 32'b01000001001111101011001110000000;
#400 //3.4115842e-34 * -11.918823 = 11.918823
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01001101100111100110111000111111;
b = 32'b10010000110011111101110000111010;
correct = 32'b01001101100111100110111000111111;
#400 //332253150.0 * -8.1986416e-29 = 332253150.0
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00010010000010110001000000011000;
b = 32'b10000101110100000011100101111101;
correct = 32'b00010010000010110001000000011000;
#400 //4.3880503e-28 * -1.9581344e-35 = 4.3880503e-28
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b11000100010110111011111101110010;
b = 32'b10101011011110110111010000010011;
correct = 32'b11000100010110111011111101110010;
#400 //-878.99133 * -8.93342e-13 = -878.99133
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01010110011010000010001011110000;
b = 32'b10101100010011110110110101101010;
correct = 32'b01010110011010000010001011110000;
#400 //63809190000000.0 * -2.9477206e-12 = 63809190000000.0
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10101010100111011010010000011100;
b = 32'b00110001000111010001111011011001;
correct = 32'b10110001000111010010001111000110;
#400 //-2.8002676e-13 * 2.2864042e-09 = -2.2866842e-09
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01101110010101000101001000011100;
b = 32'b10100100000101001011100001100111;
correct = 32'b01101110010101000101001000011100;
#400 //1.6427522e+28 * -3.224858e-17 = 1.6427522e+28
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00001110100100010010010011001001;
b = 32'b01000100101011010001101111111000;
correct = 32'b11000100101011010001101111111000;
#400 //3.5780683e-30 * 1384.874 = -1384.874
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01100011010111111010100100000100;
b = 32'b10010011100111100110101011111110;
correct = 32'b01100011010111111010100100000100;
#400 //4.1258028e+21 * -3.999031e-27 = 4.1258028e+21
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01100110011101101001010110000100;
b = 32'b00101011010001111011101000110000;
correct = 32'b01100110011101101001010110000100;
#400 //2.9111506e+23 * 7.095739e-13 = 2.9111506e+23
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
$display ("Done.");
$finish;
 // stop the simulation
 end

endmodule