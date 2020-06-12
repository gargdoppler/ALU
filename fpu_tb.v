//-----------------------------------------------------------
// File: fpu_tb.v
// FPU Test Bench
//-----------------------------------------------------------
`timescale 1 ns/100 ps
module fpu_tb ();
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
 fpu U1 (
          .clk(clock),
          .A(a),
          .B(b),
          .opcode(op),
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
 $dumpfile("fpu_tb.vcd");
 $dumpvars(0,clock, a, b, op, out);
 clock = 0;op = 2'b00;
a = 32'b01011101100111101100110110100010;
b = 32'b01110111110010111001001100001100;
correct = 32'b01110111110010111001001100001100;
#400 //1.4303725e+18 * 8.257959e+33 = 8.257959e+33
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b11101010000111010010111010010110;
b = 32'b01101111000011001111110100010010;
correct = 32'b01101111000011001101010111000110;
#400 //-4.7505337e+25 * 4.3633845e+28 = 4.3586338e+28
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00111000101001110011000110001000;
b = 32'b01000110010100101100110001010000;
correct = 32'b01000110010100101100110001010000;
#400 //7.9724065e-05 * 13491.078 = 13491.078
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10100101000001111100011011000111;
b = 32'b10011010111110010110010101010111;
correct = 32'b10100101000001111100011011001111;
#400 //-1.1776732e-16 * -1.0314771e-22 = -1.1776742e-16
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01010111111100001101000110011100;
b = 32'b11110001101000000110010001010101;
correct = 32'b11110001101000000110010001010101;
#400 //529566100000000.0 * -1.5884447e+30 = -1.5884447e+30
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b11101001011110110101111101010101;
b = 32'b00010110111000011110011010011110;
correct = 32'b11101001011110110101111101010101;
#400 //-1.8993161e+25 * 3.649625e-25 = -1.8993161e+25
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00010000100110011010110000111110;
b = 32'b01001001111100110100000111011110;
correct = 32'b01001001111100110100000111011110;
#400 //6.061324e-29 * 1992763.8 = 1992763.8
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01101101111001001100101110111110;
b = 32'b01110000001010010111011010010110;
correct = 32'b01110000001100001001110011110100;
#400 //8.8511114e+27 * 2.0978531e+29 = 2.1863643e+29
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01001000101000011001001000111100;
b = 32'b10011111011000110110001110100011;
correct = 32'b01001000101000011001001000111100;
#400 //330897.88 * -4.8151537e-20 = 330897.88
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b11111011000110101011001100100111;
b = 32'b10011000111001111001110001010011;
correct = 32'b11111011000110101011001100100111;
#400 //-8.0324736e+35 * -5.9869948e-24 = -8.0324736e+35
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