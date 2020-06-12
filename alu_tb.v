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
 clock = 0;op = 2'b00;
a = 32'b01101111100010000110001101111111;
b = 32'b00000101100101010010111000110001;
correct = 32'b01101111100010000110001101111111;
#400 //8.442049e+28 * 1.402886e-35 = 8.442049e+28
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10000111001011100010000101111110;
b = 32'b00111110001001011001101000110101;
correct = 32'b00111110001001011001101000110101;
#400 //-1.3100148e-34 * 0.16172107 = 0.16172107
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01100001111110101110100000101010;
b = 32'b11011111010000110101011111011110;
correct = 32'b01100001111101001100110101101011;
#400 //5.785519e+20 * -1.4075963e+19 = 5.6447593e+20
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00000001011111010110010011100001;
b = 32'b00110111110011101011001011010010;
correct = 32'b00110111110011101011001011010010;
#400 //4.6541138e-38 * 2.4640383e-05 = 2.4640383e-05
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10001100010000100100110000101111;
b = 32'b00000101010000111000001011100100;
correct = 32'b10001100010000100100100100100001;
#400 //-1.4968142e-31 * 9.192897e-36 = -1.4967223e-31
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b00101111011110101001011111001000;
b = 32'b00111000111100000110110010100100;
correct = 32'b00111000111100000110110011000011;
#400 //2.2791291e-10 * 0.00011464328 = 0.0001146435
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b11011111010011000011111011010101;
b = 32'b11001111011010100011101000101111;
correct = 32'b11011111010011000011111011010101;
#400 //-1.4717435e+19 * -3929681700.0 = -1.4717435e+19
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10010100100110101001011010001110;
b = 32'b01110001011110011110111000010011;
correct = 32'b01110001011110011110111000010011;
#400 //-1.560941e-26 * 1.2375933e+30 = 1.2375933e+30
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b10010101011111111000101010001010;
b = 32'b10110111101010001111101111100100;
correct = 32'b10110111101010001111101111100100;
#400 //-5.1606128e-26 * -2.0144456e-05 = -2.0144456e-05
begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();end
a = 32'b01001001110001100110110101001000;
b = 32'b01000111000110011100111110100111;
correct = 32'b01001001110010110011101111000101;
#400 //1625513.0 * 39375.652 = 1664888.6
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