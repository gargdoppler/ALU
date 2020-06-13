`timescale 1 ns/100 ps
`include "alu.v"


module alu_tb ();
    reg clock;
    reg [31:0] a, b;
    reg [2:0] op;
    reg [31:0] correct;

    wire [31:0] out;
    wire [49:0] pro;

    alu U1 (
            .clk(clock),
            .A(a),
            .B(b),
            .OpCode(op),
            .O(out)
        );
    /* create a 10Mhz clock */
    always
    #100 clock = ~clock; // every 100 nanoseconds invert
    initial begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(0,clock, a, b, op, out);
        clock = 0;

    op = 3'b110;

		/* Display the operation */
		$display ("Opcode: 110, Operation: NOT");
		/* Test Cases!*/
		a = 32'b10000000110110100110001111101001;
		correct = 32'b01111111001001011001110000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001010011111001100111011000;
		correct = 32'b10010110101100000110011000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100000000111011010110100000;
		correct = 32'b10101011111111000100101001011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000111010010110000101101011;
		correct = 32'b00011111000101101001111010010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000110101011100010101001010;
		correct = 32'b11000111001010100011101010110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011010111010110101111001000;
		correct = 32'b10001100101000101001010000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100011000010011010011100011;
		correct = 32'b00101011100111101100101100011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101101110011100101101101001;
		correct = 32'b01111010010001100011010010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000111111100100011010010011;
		correct = 32'b11000111000000011011100101101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000110111100100000010110;
		correct = 32'b10100010111001000011011111101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010110001100100101010100010;
		correct = 32'b11010101001110011011010101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111000010011110001001010111;
		correct = 32'b10111000111101100001110110101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000101011011100101100110;
		correct = 32'b01111100111010100100011010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001011000011101111100110001;
		correct = 32'b00110110100111100010000011001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000101100011011101001111;
		correct = 32'b11010111111010011100100010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001111100001111100001100111;
		correct = 32'b11001110000011110000011110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101000010010010010100010;
		correct = 32'b11111111010111101101101101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110111101101011000000100111;
		correct = 32'b01100001000010010100111111011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111100101111101010010010001;
		correct = 32'b01000000011010000010101101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011011000111101101111011000;
		correct = 32'b00111100100111000010010000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111000100101001110010001110;
		correct = 32'b00111000111011010110001101110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000011101111000100011100;
		correct = 32'b11101100111100010000111011100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010101010011111011101000000;
		correct = 32'b10010101010101100000100010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001000101001100000111110;
		correct = 32'b10001110110111010110011111000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001110101101110110011010101;
		correct = 32'b10000110001010010001001100101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101010101011000000011110110;
		correct = 32'b00100010101010100111111100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111101000101010100111000;
		correct = 32'b01001010000010111010101011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011110101110110001000000101;
		correct = 32'b10100100001010001001110111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101100001110000011111110011;
		correct = 32'b11001010011110001111100000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000011000101111010100101100;
		correct = 32'b11110111100111010000101011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011101001110000110110010011;
		correct = 32'b11000100010110001111001001101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000001011101010111010100;
		correct = 32'b00110001111110100010101000101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011001011001011000000011010;
		correct = 32'b00100100110100110100111111100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001010100010010110000101011;
		correct = 32'b11100110101011101101001111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100100001101001100100101001;
		correct = 32'b00000011011110010110011011010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111010111010000011000100;
		correct = 32'b00100000000101000101111100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110111101100100100110010000;
		correct = 32'b11111001000010011011011001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000000000101110011011101110;
		correct = 32'b10000111111111010001100100010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011101001001011000000100011;
		correct = 32'b11010100010110110100111111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011000011010001111010010110;
		correct = 32'b10010100111100101110000101101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010100100000001001011111111;
		correct = 32'b10000101011011111110110100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100000001111010000100111000;
		correct = 32'b00110011111110000101111011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000011001101110011010101;
		correct = 32'b10110011111100110010001100101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111100011000101011001001010;
		correct = 32'b10100000011100111010100110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010001111100010010010011110;
		correct = 32'b00001101110000011101101101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110101010011011100100110;
		correct = 32'b11011010001010101100100011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100011101000110100001001101;
		correct = 32'b11010011100010111001011110110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011000011000100111011001000;
		correct = 32'b10000100111100111011000100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011010011111011111110111101;
		correct = 32'b11101100101100000100000001000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101001000101111111111001;
		correct = 32'b11011101010110111010000000000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011000010100111101100100100;
		correct = 32'b01001100111101011000010011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010011100100111010110101101;
		correct = 32'b00011101100011011000101001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011010011011110111101111000;
		correct = 32'b11001100101100100001000010000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001101110010000000101001011;
		correct = 32'b01100110010001101111111010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010010100111110010110001010;
		correct = 32'b00101101101011000001101001110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001111111110101110110100010;
		correct = 32'b11000110000000001010001001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000111100000101001011111001;
		correct = 32'b00111111000011111010110100000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111100000101010100111011;
		correct = 32'b00011010000011111010101011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110011001001101001111001101;
		correct = 32'b01011001100110110010110000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101101110000010000000100;
		correct = 32'b11111111010010001111101111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101110011000000101000000101;
		correct = 32'b00101010001100111111010111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000001101100100100111100;
		correct = 32'b11011000111110010011011011000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111000000001101111000100001;
		correct = 32'b11101000111111110010000111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101100100011011011100100;
		correct = 32'b11000111010011011100100100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000010001111010001011101001;
		correct = 32'b11011111101110000101110100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101110001000010000001111100;
		correct = 32'b00000010001110111101111110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000000000011001100001110000;
		correct = 32'b00001111111111100110011110001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001011011000101011000111101;
		correct = 32'b10101110100100111010100111000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100101000001000101100011001;
		correct = 32'b10011011010111110111010011100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100011111101011011000101001;
		correct = 32'b01100011100000010100100111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010000110010111100111011;
		correct = 32'b11100011101111001101000011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111100101101110001011000101;
		correct = 32'b10100000011010010001110100111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111100011001011011001010010;
		correct = 32'b01111000011100110100100110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011111111110010100010000111;
		correct = 32'b00110100000000001101011101111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111001111110001011101001001;
		correct = 32'b01101000110000001110100010110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010010101100111101001100010;
		correct = 32'b10110101101010011000010110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101110010111110001000010010;
		correct = 32'b11010010001101000001110111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101111001111010000101111;
		correct = 32'b11000010010000110000101111010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101001010011011000000001000;
		correct = 32'b00011010110101100100111111110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010111001111011001100011110;
		correct = 32'b11010101000110000100110011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110101110100100000000000;
		correct = 32'b00111110001010001011011111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111101111010110101110111111;
		correct = 32'b01001000010000101001010001000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001011100000001110011000110;
		correct = 32'b11010110100011111110001100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111100100101011101111000;
		correct = 32'b00100001000011011010100010000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001001000011000111111011;
		correct = 32'b01001110110110111100111000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000010000000010011100010;
		correct = 32'b10010010111101111111101100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100110000011110111101100011;
		correct = 32'b01111011001111100001000010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111111110011010001001110110;
		correct = 32'b00011000000001100101110110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100110111101101111011000100;
		correct = 32'b10111011001000010010000100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111000011111111010001010111;
		correct = 32'b10010000111100000000101110101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101001000010001010110101000;
		correct = 32'b11011010110111101110101001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011111010110101111011011011;
		correct = 32'b01101100000101001010000100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010001010010000000010110100;
		correct = 32'b01011101110101101111111101001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011011111010011000101011000;
		correct = 32'b10000100100000101100111010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000011111101100000100001;
		correct = 32'b01000001111100000010011111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001001110100100001011000;
		correct = 32'b01000101110110001011011110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010100001000110000001101010;
		correct = 32'b11101101011110111001111110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001010101110010001011111101;
		correct = 32'b00101110101010001101110100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110001100010101000001011;
		correct = 32'b11011010001110011101010111110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011110000110111101000001111;
		correct = 32'b11011100001111001000010111110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111110010111111010010011111;
		correct = 32'b11101000001101000000101101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110101000110001001000101;
		correct = 32'b11101010001010111001110110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001000001100000000110111000;
		correct = 32'b01111110111110011111111001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011011110101101001011000110;
		correct = 32'b10011100100001010010110100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001110101100000001000101001;
		correct = 32'b11001110001010011111110111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100001000000101011000100001;
		correct = 32'b00101011110111111010100111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001000001110000001110101011;
		correct = 32'b00111110111110001111110001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101000010100101010001101001;
		correct = 32'b11111010111101011010101110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011011101101001100110110;
		correct = 32'b11001010100100010010110011001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001011001101010110010011111;
		correct = 32'b00001110100110010101001101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000011110000101111000001010;
		correct = 32'b01000111100001111010000111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001110100110011001010111111;
		correct = 32'b00001110001011001100110101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011110111111001000001111011;
		correct = 32'b00011100001000000110111110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010111101100000100101001110;
		correct = 32'b00111101000010011111011010110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010010111000111101011110101;
		correct = 32'b10011101101000111000010100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101100011001010010000011;
		correct = 32'b11000010010011100110101101111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000110010111100110011010101;
		correct = 32'b11101111001101000011001100101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111111110111010101100000111;
		correct = 32'b01001000000001000101010011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000001100011111110110000;
		correct = 32'b11011110111110011100000001001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001000110001100001010101010;
		correct = 32'b11111110111001110011110101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011011001101110001101010111;
		correct = 32'b01011100100110010001110010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111111111111111010001001110;
		correct = 32'b11010000000000000000101110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001011011100100111101111011;
		correct = 32'b01100110100100011011000010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110101110100101101000001010;
		correct = 32'b11010001010001011010010111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011100000101010000101011110;
		correct = 32'b00100100011111010101111010100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001101111111101100011011;
		correct = 32'b01000101110010000000010011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010011111101110100101100011;
		correct = 32'b00110101100000010001011010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000010100000000001000001;
		correct = 32'b11110010111101011111111110111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100111111110101111101010000;
		correct = 32'b10010011000000001010000010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101000011010110111000111111;
		correct = 32'b11010010111100101001000111000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111100010101110101001100001;
		correct = 32'b10010000011101010001010110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011000101111011010100000010;
		correct = 32'b01101100111010000100101011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001100011000000001001010;
		correct = 32'b10001110110011100111111110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011111011100110010110000110;
		correct = 32'b01011100000100011001101001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101111100001101100001000100;
		correct = 32'b10001010000011110010011110111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011101010110101001101110010;
		correct = 32'b00001100010101001010110010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111001100110101101101000010;
		correct = 32'b01010000110011001010010010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111100000100100010111100110;
		correct = 32'b01110000011111011011101000011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111101010111100001000111100;
		correct = 32'b01110000010101000011110111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000111001110000110000101;
		correct = 32'b10100010111000110001111001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001001000110110001001011;
		correct = 32'b00110001110110111001001110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011001101001111101011001;
		correct = 32'b11001010100110010110000010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101000111010001010011110010;
		correct = 32'b01011010111000101110101100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010100010001111100110100001;
		correct = 32'b10000101011101110000011001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000010111001000010111101;
		correct = 32'b11110010111101000110111101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111010011000000101001101;
		correct = 32'b00110101000101100111111010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110000111000101010011101001;
		correct = 32'b00111001111000111010101100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111010001111100100100001100;
		correct = 32'b11010000101110000011011011110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110110010011100011101100110;
		correct = 32'b00001001001101100011100010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000100011111111101100110010;
		correct = 32'b00110111011100000000010011001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100011110000010110010101;
		correct = 32'b01101000011100001111101001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001001011010010110100011101;
		correct = 32'b11001110110100101101001011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100110101101000110100001;
		correct = 32'b00111110011001010010111001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111100010001101110110101000;
		correct = 32'b01100000011101110010001001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011001011101110010010010100;
		correct = 32'b11110100110100010001101101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101010010000110000010110101;
		correct = 32'b10110010101101111001111101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101111100000000000001000000;
		correct = 32'b11101010000011111111111110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101001110101111011000100011;
		correct = 32'b01110010110001010000100111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010101001111000010111110110;
		correct = 32'b01001101010110000111101000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011001101111100000111100;
		correct = 32'b11001111100110010000011111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000000101101110111010110101;
		correct = 32'b01100111111010010001000101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111010010011101001001010100;
		correct = 32'b00110000101101100010110110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101011111001010111010000;
		correct = 32'b01000011010100000110101000101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110001000100110010110010010;
		correct = 32'b01001001110111011001101001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010000011110000111110101101;
		correct = 32'b00011101111100001111000001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010101001110001010111110010;
		correct = 32'b01111101010110001110101000001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100011101111010001001110011;
		correct = 32'b00001011100010000101110110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100000110110101000100001000;
		correct = 32'b00001011111001001010111011110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100111111111101110010110;
		correct = 32'b10000111011000000000010001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110111000110011011101101;
		correct = 32'b10110010001000111001100100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110001101011000100011001000;
		correct = 32'b01011001110010100111011100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010010100010101000001111110;
		correct = 32'b11001101101011101010111110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101111111011110100010001011;
		correct = 32'b11011010000000100001011101110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010010111111111001001111;
		correct = 32'b10101001101101000000000110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010010101100100010110010110;
		correct = 32'b11000101101010011011101001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100001111100101101111010010;
		correct = 32'b11110011110000011010010000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011001011010000010000101110;
		correct = 32'b11100100110100101111101111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100110110000000111010011110;
		correct = 32'b01111011001001111111000101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011000001000000000010010100;
		correct = 32'b10000100111110111111111101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110100110111000100011100111;
		correct = 32'b11001001011001000111011100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001010011100011010000101001;
		correct = 32'b01110110101100011100101111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010101100010001010001101111;
		correct = 32'b00101101010011101110101110010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111010100111000100000011011;
		correct = 32'b10000000101011000111011111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100010001111101001001010;
		correct = 32'b10010001011101110000010110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111100010010001111110010101;
		correct = 32'b11101000011101101110000001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000000001000001010111110;
		correct = 32'b00010000111111110111110101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101001100000100001011101;
		correct = 32'b00000010010110011111011110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111110011110110010111000;
		correct = 32'b10101100000001100001001101000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001100101011001110011011010;
		correct = 32'b11010110011010100110001100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111110111101100011011000000;
		correct = 32'b11011000001000010011100100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011110011011000001001010001;
		correct = 32'b01100100001100100111110110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100100100000011101001101000;
		correct = 32'b00011011011011111100010110010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010110011110011011011111110;
		correct = 32'b11000101001100001100100100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111110101101010000010011;
		correct = 32'b10110010000001010010101111101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100110101001111100101010010;
		correct = 32'b00101011001010110000011010101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111110100011100011110110011;
		correct = 32'b10101000001011100011100001001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111001011110111110010110;
		correct = 32'b01110000000110100001000001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010100110100010010000100;
		correct = 32'b00111001101011001011101101111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110000010010100100011110011;
		correct = 32'b10101001111101101011011100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111000101111101110110111;
		correct = 32'b10100010000111010000010001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110010111101001101110110101;
		correct = 32'b11010001101000010110010001001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110111101000010001110111010;
		correct = 32'b10111001000010111101110001000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101110111110000000110000100;
		correct = 32'b00101010001000001111111001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011100111111000110001110110;
		correct = 32'b11001100011000000111001110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101100010011101100000111011;
		correct = 32'b00101010011101100010011111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110111000110010001010010010;
		correct = 32'b01110001000111001101110101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010111011100100011010100101;
		correct = 32'b10000101000100011011100101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001111100101000001000110000;
		correct = 32'b10100110000011010111110111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000111100000100011001001011;
		correct = 32'b00101111000011111011100110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100010001110111100111010111;
		correct = 32'b11110011101110001000011000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110001100010101101111111110;
		correct = 32'b00010001110011101010010000000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010000011001011011001000010;
		correct = 32'b10110101111100110100100110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010101100101001110011101;
		correct = 32'b11111100101010011010110001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010011010110011010011010;
		correct = 32'b00011110101100101001100101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001101010000001100000011;
		correct = 32'b00110100110010101111110011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111110100011101111110000;
		correct = 32'b10101101000001011100010000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010110100001010111010000;
		correct = 32'b01101100101001011110101000101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110011100010010101001001011;
		correct = 32'b01101001100011101101010110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100001000101111011100110101;
		correct = 32'b00111011110111010000100011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110011011001101010110111011;
		correct = 32'b10100001100100110010101001000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011001011010101011011000001;
		correct = 32'b00000100110100101010100100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000011011001011101101000001;
		correct = 32'b11100111100100110100010010111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011111110010011011101110;
		correct = 32'b11100001100000001101100100010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100001100111001001111110000;
		correct = 32'b00111011110011000110110000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111011110010100100001001111;
		correct = 32'b11111000100001101011011110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101010110011001000100011;
		correct = 32'b10100100010101001100110111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000101001001001101111001010;
		correct = 32'b01000111010110110110010000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111010010111011111111011;
		correct = 32'b01000011000101101000100000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010001100011110100000001000;
		correct = 32'b01001101110011100001011111110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110011011101011111100111011;
		correct = 32'b01100001100100010100000011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011010111100001001100001111;
		correct = 32'b11011100101000011110110011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110100000100010101101101001;
		correct = 32'b11111001011111011101010010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000001011001111011001010100;
		correct = 32'b10101111110100110000100110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011110110111011011110110011;
		correct = 32'b00100100001001000100100001001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011110100000110101001011;
		correct = 32'b10110110100001011111001010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110111000011001001010000001;
		correct = 32'b00110001000111100110110101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010010001001011011100100000;
		correct = 32'b01011101101110110100100011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100101000100101011110111100;
		correct = 32'b01100011010111011010100001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110111011111010001101001011;
		correct = 32'b00111001000100000101110010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111111100110101100111111;
		correct = 32'b10101011000000011001010011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000100000011001000101001111;
		correct = 32'b01111111011111100110111010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100111101011111010001100110;
		correct = 32'b10000011000010100000101110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110010111000101110100001101;
		correct = 32'b01010001101000111010001011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011111010001100000100000000;
		correct = 32'b00000100000101110011111011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100001001110110001100111101;
		correct = 32'b01101011110110001001110011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011001010110000100110010000;
		correct = 32'b11101100110101001111011001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000010100001110011111101110;
		correct = 32'b10111111101011110001100000010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000100010010000011001110011;
		correct = 32'b01000111011101101111100110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111001011100100111010001110;
		correct = 32'b00000000110100011011000101110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110101111011111001011001000;
		correct = 32'b10101001010000100000110100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000111110100001110111100111;
		correct = 32'b11111111000001011110001000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101001101101010110010100011;
		correct = 32'b11011010110010010101001101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101000111010101010101010011;
		correct = 32'b01011010111000101010101010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000101110001111001011110010;
		correct = 32'b10001111010001110000110100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011011101101001011100101110;
		correct = 32'b01010100100010010110100011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110111000000000100100010;
		correct = 32'b01000011001000111111111011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101111010001001110111101011;
		correct = 32'b01110010000101110110001000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111111001101110101110100001;
		correct = 32'b11110000000110010001010001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000000010000010100001100010;
		correct = 32'b00001111111101111101011110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111000100000111110101101011;
		correct = 32'b11010000111011111000001010010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100001101011100101001110100;
		correct = 32'b01001011110010100011010110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000000001111001001001010011;
		correct = 32'b10011111111110000110110110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001001110111101100000100001;
		correct = 32'b01110110110001000010011111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111100100001101101000100;
		correct = 32'b00101011000011011110010010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110001000010000100001001010;
		correct = 32'b01111001110111101111011110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100110111011100011111101010;
		correct = 32'b10110011001000100011100000010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110111000011100001010011000;
		correct = 32'b00010001000111100011110101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011010101101001000101001000;
		correct = 32'b01000100101010010110111010110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100100111101010100101110110;
		correct = 32'b00001011011000010101011010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110100100010001110011111;
		correct = 32'b10010100001011011101110001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011101011111111100000001111;
		correct = 32'b11101100010100000000011111110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101100100001011001101110100;
		correct = 32'b00011010011011110100110010001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111010110011011101110110;
		correct = 32'b00011010000101001100100010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111110111001110100010111;
		correct = 32'b01000011000001000110001011101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001100101000011001000001110;
		correct = 32'b01010110011010111100110111110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111011001001011110110010110;
		correct = 32'b10001000100110110100001001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011100001001000010111011101;
		correct = 32'b01110100011110110111101000100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110001111110000001000001100;
		correct = 32'b00101001110000001111110111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000101001111011010110000111;
		correct = 32'b01101111010110000100101001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111011011111101001110011111;
		correct = 32'b11101000100100000010110001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101001001111111101011110;
		correct = 32'b01000011010110110000000010100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100001011101000011110101101;
		correct = 32'b10110011110100010111100001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110000011011101011010111;
		correct = 32'b01101111001111100100010100101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010111001011100101011100;
		correct = 32'b11000001101000110100011010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000111111010100111000101;
		correct = 32'b10011101111000000101011000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000001110111001111111010010;
		correct = 32'b10001111110001000110000000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011010000001100010010101;
		correct = 32'b10110001100101111110011101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011110110110011100101101110;
		correct = 32'b10100100001001001100011010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011011001010011101101111001;
		correct = 32'b01000100100110101100010010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111001111100110000010100110;
		correct = 32'b10110000110000011001111101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011010001101110010110111110;
		correct = 32'b11000100101110010001101001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110100100110101001010110000;
		correct = 32'b10111001011011001010110101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101101101001101011101110;
		correct = 32'b01101100010010010110010100010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010010011111100111101010101;
		correct = 32'b10001101101100000011000010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100011000110011101010111010;
		correct = 32'b11100011100111001100010101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010001100111011111100001001;
		correct = 32'b00010101110011000100000011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110001000101110100101111010;
		correct = 32'b00010001110111010001011010000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110001111101000000001001100;
		correct = 32'b10100001110000010111111110110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110110000011011000010100111;
		correct = 32'b01010001001111100100111101011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110001011001111111110010;
		correct = 32'b10101001001110100110000000001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001110111110010110011000001;
		correct = 32'b10000110001000001101001100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000101110110001010111001101;
		correct = 32'b10101111010001001110101000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101110110111000101101000100;
		correct = 32'b11111010001001000111010010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111111000100111001011110;
		correct = 32'b10010000000000111011000110100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101110110110101100010110;
		correct = 32'b00101111010001001001010011101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110110000100100000110011;
		correct = 32'b00111010001001111011011111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111010001011100101010100101;
		correct = 32'b10011000101110100011010101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011001100100000000111010100;
		correct = 32'b11101100110011011111111000101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101001000001101011010100000;
		correct = 32'b10001010110111110010100101011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010001010010110011100011;
		correct = 32'b00010010101110101101001100011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000010110110001000100100;
		correct = 32'b00001101111101001001110111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110011110000100001010101;
		correct = 32'b01110000001100001111011110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001111111111100001011010001;
		correct = 32'b10111110000000000011110100101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010011000110001000000001;
		correct = 32'b00110110101100111001110111111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001111011110001001100000;
		correct = 32'b00100111110000100001110110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111010011000001111001100010;
		correct = 32'b01011000101100111110000110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001110111010111010101000;
		correct = 32'b01001110110001000101000101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100101110111100010101001100;
		correct = 32'b01100011010001000011101010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001100100000100110011011000;
		correct = 32'b11110110011011111011001100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011000110110111010111001;
		correct = 32'b00101110100111001001000101000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000011101010110110100101;
		correct = 32'b00101011111100010101001001011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111110111100000000011001;
		correct = 32'b11110111000001000011111111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011101011000010100100001001;
		correct = 32'b01011100010100111101011011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111010100100110101010001;
		correct = 32'b11111010000101011011001010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101010001001111000000101110;
		correct = 32'b01011010101110110000111111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100010101010100100010011110;
		correct = 32'b11111011101010101011011101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010110001110011100000101010;
		correct = 32'b11011101001110001100011111010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000110011001001110001101101;
		correct = 32'b01111111001100110110001110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001101110000011110011101011;
		correct = 32'b11000110010001111100001100010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100010111111100010000110111;
		correct = 32'b10001011101000000011101111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101000000011101110001011100;
		correct = 32'b00001010111111100010001110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111011001010111000100101011;
		correct = 32'b11000000100110101000111011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010111101110010000010011111;
		correct = 32'b10001101000010001101111101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101010111101000100100111101;
		correct = 32'b10110010101000010111011011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011011100000100100000010010;
		correct = 32'b00100100100011111011011111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100101011011000101010110101;
		correct = 32'b11111011010100100111010101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010101000011010000000001011;
		correct = 32'b01010101010111100101111111110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111100101001010111011110010;
		correct = 32'b00010000011010110101000100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100001111000010010100011000;
		correct = 32'b00001011110000111101101011100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000110000010100101010111010;
		correct = 32'b11001111001111101011010101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110011011010000000100101;
		correct = 32'b11011011001100100101111111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101100011110011111101110111;
		correct = 32'b00011010011100001100000010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010101000101100011000101000;
		correct = 32'b10111101010111010011100111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101100001110001001100000111;
		correct = 32'b10100010011110001110110011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110000000101011101001110001;
		correct = 32'b11001001111111010100010110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100111100011100000101011100;
		correct = 32'b00000011000011100011111010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010010001100101000100101100;
		correct = 32'b00011101101110011010111011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001110110111001010111011;
		correct = 32'b01111000110001001000110101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100110101001100010011001000;
		correct = 32'b11001011001010110011101100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011011111001000100001110100;
		correct = 32'b11000100100000110111011110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111000111111010101011011100;
		correct = 32'b10000000111000000101010100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100111000001001000110000001;
		correct = 32'b10110011000111110110111001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000010111011110000110000100;
		correct = 32'b01100111101000100001111001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100001001100111110111110100;
		correct = 32'b01001011110110011000001000001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101101100001110101111001010;
		correct = 32'b00001010010011110001010000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101011000000110011011101;
		correct = 32'b01101100010100111111001100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010100110100110100010000110;
		correct = 32'b00011101011001011001011101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100100000000110111000011100;
		correct = 32'b01011011011111111001000111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000110110111110101011001;
		correct = 32'b11011000111001001000001010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011011111011011111101101111;
		correct = 32'b11100100100000100100000010010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110111110000101010110110;
		correct = 32'b11011011001000001111010101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110000101100110101110001;
		correct = 32'b10111111001111010011001010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101101011010010000101011101;
		correct = 32'b10011010010100101101111010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001110010001011100000110;
		correct = 32'b10101101110001101110100011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001110100010110010001011110;
		correct = 32'b01110110001011101001101110100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010101111011100100011010111;
		correct = 32'b00111101010000100011011100101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010010101100010011111001110;
		correct = 32'b00111101101010011101100000110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010100001010010111110001010;
		correct = 32'b10011101011110101101000001110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101101001101000001001001110;
		correct = 32'b00101010010110010111110110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100110101001011110001001111;
		correct = 32'b00111011001010110100001110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001110110101101010010101110;
		correct = 32'b01010110001001010010101101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010010110110101101111011;
		correct = 32'b11110101101101001001010010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001000001110111010000100101;
		correct = 32'b10100110111110001000101111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111101110001010001110011111;
		correct = 32'b00111000010001110101110001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111010011001111101001000101;
		correct = 32'b00110000101100110000010110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111100110001010010101110011;
		correct = 32'b11111000011001110101101010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111100001010110001001011;
		correct = 32'b01011101000011110101001110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001100100111110010011001100;
		correct = 32'b10001110011011000001101100110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010001001101000110011001010;
		correct = 32'b11110101110110010111001100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011100100001001000111100;
		correct = 32'b11010001100011011110110111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001011000001111110010101110;
		correct = 32'b11011110100111110000001101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010110111100100001000000;
		correct = 32'b10000111101001000011011110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100011010110001011101101110;
		correct = 32'b01000011100101001110100010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110111100001011010011111010;
		correct = 32'b10010001000011110100101100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101011010100011101010000111;
		correct = 32'b10011010100101011100010101111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000000000011110011000101111;
		correct = 32'b00111111111111100001100111010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001011011110101011011001011;
		correct = 32'b10000110100100001010100100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001011101000101000111001110;
		correct = 32'b11010110100010111010111000110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100001001010010000100110;
		correct = 32'b00001001011110110101101111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101000010100010011100100101;
		correct = 32'b01001010111101011101100011011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010010111000001111011100111;
		correct = 32'b00010101101000111110000100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000101110000010011101100;
		correct = 32'b11011110111010001111101100010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000101101011101001011011000;
		correct = 32'b10011111010010100010110100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010101001111010001111110001;
		correct = 32'b11111101010110000101110000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001101101111101101001000011;
		correct = 32'b01011110010010000010010110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010000000010000000001111000;
		correct = 32'b01100101111111101111111110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010000001011100111111100101;
		correct = 32'b00010101111110100011000000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100000111110110101001110011;
		correct = 32'b00011011111000001001010110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110100010001111000011011001;
		correct = 32'b11110001011101110000111100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101100100000000110001100001;
		correct = 32'b01100010011011111111001110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100101011101101011001110110;
		correct = 32'b11011011010100010010100110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111000000001111110101100000;
		correct = 32'b00101000111111110000001010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101100111101101011011111010;
		correct = 32'b11011010011000010010100100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111101101100000111110010000;
		correct = 32'b00111000010010011111000001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001001010001000011111101;
		correct = 32'b01100000110110101110111100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111000100010001101111101;
		correct = 32'b00011100000111011101110010000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000001101100010000001000010;
		correct = 32'b00000111110010011101111110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011010010010000111010011110;
		correct = 32'b11011100101101101111000101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101000100110110110110111100;
		correct = 32'b00000010111011001001001001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110011010000101110101100110;
		correct = 32'b10000001100101111010001010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000000001000000100011110001;
		correct = 32'b00111111111110111111011100001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100011110111101011101000;
		correct = 32'b10111111011100001000010100010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010011001000001001011110110;
		correct = 32'b10110101100110111110110100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100101011101001100111011000;
		correct = 32'b01010011010100010110011000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100100010001010000100111010;
		correct = 32'b10100011011101110101111011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001101010110110100110010010;
		correct = 32'b10110110010101001001011001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000111110000001011000011100;
		correct = 32'b01010111000001111110100111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011101110011011101011011100;
		correct = 32'b01011100010001100100010100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101111001100100011101100001;
		correct = 32'b01101010000110011011100010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110000011001000110001101100;
		correct = 32'b11111001111100110111001110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000001001001000101110011000;
		correct = 32'b00111111110110110111010001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011111010100010101110110;
		correct = 32'b10011111100000101011101010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111010110101001111111011;
		correct = 32'b00000000000101001010110000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011001001111100110010010001;
		correct = 32'b10010100110110000011001101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111000111000101001000010;
		correct = 32'b11011100000111000111010110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000100000111011011011100;
		correct = 32'b11100101111011111000100100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010000111001010000111000010;
		correct = 32'b11010101111000110101111000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001111010100011001000101111;
		correct = 32'b00110110000101011100110111010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000001100000001110100111;
		correct = 32'b00010110111110011111110001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010111100011101011001010011;
		correct = 32'b10100101000011100010100110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100100000110010001110110000;
		correct = 32'b10010011011111001101110001001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100011010101000010001111;
		correct = 32'b11110011011100101010111101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101111110001110000110000100;
		correct = 32'b00010010000001110001111001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011111101100010100001101000;
		correct = 32'b11100100000010011101011110010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111101100101000110110110001;
		correct = 32'b01101000010011010111001001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111111111011000101110010;
		correct = 32'b00001101000000000100111010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000000010111101011011110100;
		correct = 32'b10011111111101000010100100001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101000100110000100100111101;
		correct = 32'b11011010111011001111011011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100100000111111111000111010;
		correct = 32'b11011011011111000000000111000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110001101000111110101000010;
		correct = 32'b11010001110010111000001010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101111101010000001001111110;
		correct = 32'b10001010000010101111110110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111111100010001001001000011;
		correct = 32'b10110000000011101110110110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101001111101011010011110100;
		correct = 32'b10111010110000010100101100001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100000001001111001000100;
		correct = 32'b10111011011111110110000110111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101000100110000100000010;
		correct = 32'b10111110010111011001111011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010100011011111100101010100;
		correct = 32'b10001101011100100000011010101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101000001001011000110100001;
		correct = 32'b01000010111110110100111001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100010100110010100111001010;
		correct = 32'b10010011101011001101011000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001101001101010011101010110;
		correct = 32'b11111110010110010101100010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111001110110001101110101011;
		correct = 32'b10100000110001001110010001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001111110110111001011000;
		correct = 32'b00100111110000001001000110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100000110111100100100110;
		correct = 32'b00101111011111001000011011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100111010000111100100000111;
		correct = 32'b11000011000101111000011011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000011011111101100011110;
		correct = 32'b01000001111100100000010011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000101011010001000101111010;
		correct = 32'b01101111010100101110111010000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110111101101110110001001;
		correct = 32'b10111010001000010010001001110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101000011101011110011010011;
		correct = 32'b10000010111100010100001100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001000010100111100010010100;
		correct = 32'b00110110111101011000011101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010111100101000111000100;
		correct = 32'b11100011101000011010111000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000110001010101000100110001;
		correct = 32'b00110111001110101010111011001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001111001001010011000011101;
		correct = 32'b10010110000110110101100111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001010001101010100111010010;
		correct = 32'b00001110101110010101011000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011111010011000001100001;
		correct = 32'b01001101100000101100111110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000110011011001100110111110;
		correct = 32'b11101111001100100110011001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111001101000110101110111001;
		correct = 32'b01110000110010111001010001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000010001001100011100011011;
		correct = 32'b11100111101110110011100011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111111010111011110100010;
		correct = 32'b01001010000000101000100001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110011100001011100101011100;
		correct = 32'b10101001100011110100011010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100100010111100110000110100;
		correct = 32'b11111011011101000011001111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011100111000111110001000;
		correct = 32'b01101000100011000111000001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100011011110111110111011110;
		correct = 32'b10001011100100001000001000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101100000101110010111011010;
		correct = 32'b11000010011111010001101000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110110010000010110001000010;
		correct = 32'b00100001001101111101001110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101100010100010011000110110;
		correct = 32'b01110010011101011101100111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110000011001010101001011101;
		correct = 32'b11101001111100110101010110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011010111010101010111111;
		correct = 32'b00000100100101000101010101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101111000011001010010001;
		correct = 32'b01000011010000111100110101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111000111010010001101011;
		correct = 32'b11100011000111000101101110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111010110011111001101111;
		correct = 32'b11011101000101001100000110010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101111011000000011001010100;
		correct = 32'b10111010000100111111100110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100100100111100111110001101;
		correct = 32'b10001011011011000011000001110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101000000100010001011010100;
		correct = 32'b01111010111111011101110100101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100110111001010010101001001;
		correct = 32'b01001011001000110101101010110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110100000111010110110011111;
		correct = 32'b10101001011111000101001001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100111100011011001100111110;
		correct = 32'b11010011000011100100110011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001111011100000011110011011;
		correct = 32'b10001110000100011111100001100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111001101111100111110110001;
		correct = 32'b00100000110010000011000001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100001011110001010101010111;
		correct = 32'b00110011110100001110101010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001100000110101010000011000;
		correct = 32'b00101110011111001010101111100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000101010000110101011011000;
		correct = 32'b10001111010101111001010100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010100110100011011010001001;
		correct = 32'b00001101011001011100100101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000101110111111001011101000;
		correct = 32'b11010111010001000000110100010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001001111010011101111111010;
		correct = 32'b00100110110000101100010000000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001010001101001010001110101;
		correct = 32'b11111110101110010110101110001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100000000010010111110000011;
		correct = 32'b00010011111111101101000001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010110010011101100100001;
		correct = 32'b00011100101001101100010011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110001100000001001111111100;
		correct = 32'b01011001110011111110110000000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110111000000010111001110010;
		correct = 32'b11000001000111111101000110001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011110100000101110101111110;
		correct = 32'b11111100001011111010001010000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111001000000010111101000011;
		correct = 32'b10010000110111111101000010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010011011110001100111000;
		correct = 32'b10100110101100100001110011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011010001011101111101000100;
		correct = 32'b01011100101110100010000010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000111110010101101000100100;
		correct = 32'b10100111000001101010010111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010100100011110100010101;
		correct = 32'b01000001101011011100001011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010101001110001101011100010;
		correct = 32'b11100101010110001110010100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010011111111111010110100;
		correct = 32'b11111100101100000000000101001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001001011011100111100111000;
		correct = 32'b11010110110100100011000011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010100001001100100111100;
		correct = 32'b01101100101011110110011011000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100110100101001001011100;
		correct = 32'b11100001011001011010110110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111110101100001001101110011;
		correct = 32'b00010000001010011110110010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001011100000011111101011010;
		correct = 32'b01101110100011111100000010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111110001110111110000111001;
		correct = 32'b11110000001110001000001111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110011101100111100000111111;
		correct = 32'b01110001100010011000011111000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111110110110001011110010101;
		correct = 32'b11100000001001001110100001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100101001100101101110011;
		correct = 32'b00011111011010110011010010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011100111101110001110101110;
		correct = 32'b00001100011000010001110001010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011101100001011011010001;
		correct = 32'b01010111100010011110100100101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011000000001110100110101;
		correct = 32'b01100111100111111110001011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101111110001110111111110;
		correct = 32'b00101111010000001110001000000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110010100001011000010100101;
		correct = 32'b11111001101011110100111101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100000110001011000110011001;
		correct = 32'b11011011111001110100111001100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001100111110011000001110011;
		correct = 32'b10110110011000001100111110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100011011101110011111000100;
		correct = 32'b10001011100100010001100000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011111101011101111011000001;
		correct = 32'b00110100000010100010000100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111011101110001001001110;
		correct = 32'b11100001000100010001110110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011101101100111101100100100;
		correct = 32'b00011100010010011000010011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001111100111001111011100;
		correct = 32'b01110001110000011000110000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100010000101110101100100011;
		correct = 32'b01001011101111010001010011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011001100011001111100100;
		correct = 32'b10111110100110011100110000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101010011101100010110101;
		correct = 32'b00110100010101100010011101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001101111111111111011110;
		correct = 32'b10100101110010000000000000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111001100010111000011101011;
		correct = 32'b00100000110011101000111100010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010101000001110011111000;
		correct = 32'b00010111101010111110001100000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100001111110111010100111011;
		correct = 32'b10100011110000001000101011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000001110101010110100001010;
		correct = 32'b11110111110001010101001011110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110001100000001000110000;
		correct = 32'b10111010001110011111110111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011101110000000011100100;
		correct = 32'b01100000100010001111111100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111001111110111100000100011;
		correct = 32'b10100000110000001000011111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001100000000000001010001;
		correct = 32'b00100001110011111111111110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111110000011110100011110;
		correct = 32'b11111010000001111100001011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000110000100001110010100110;
		correct = 32'b00110111001111011110001101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111000101101110101010100110;
		correct = 32'b01101000111010010001010101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001110110001110001010100110;
		correct = 32'b10001110001001110001110101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010111110111001101000011;
		correct = 32'b00110110101000001000110010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100101000000011011101111;
		correct = 32'b00110101011010111111100100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001000110000111101001111;
		correct = 32'b11100000110111001111000010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001011000000110110101000;
		correct = 32'b11011101110100111111001001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011100011101100110011001110;
		correct = 32'b11101100011100010011001100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111100110100101001000110100;
		correct = 32'b11101000011001011010110111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111001000110100111000101001;
		correct = 32'b01000000110111001011000111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101010101111000011111100011;
		correct = 32'b10001010101010000111100000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110101101010110101001100010;
		correct = 32'b00001001010010101001010110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100001011001100100101011;
		correct = 32'b10000111011110100110011011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000100000110011101010001;
		correct = 32'b11101100111011111001100010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011010000001111010010100100;
		correct = 32'b11110100101111110000101101011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001101011011101000000100111;
		correct = 32'b00000110010100100010111111011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100001101010100000110010010;
		correct = 32'b00000011110010101011111001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110111000010001111110111001;
		correct = 32'b10101001000111101110000001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111000011101100000000001;
		correct = 32'b10100010000111100010011111111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101000001010001001110011010;
		correct = 32'b11111010111110101110110001100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000111100101001100100100110;
		correct = 32'b00011111000011010110011011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111101100100110010010100011;
		correct = 32'b11011000010011011001101101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101000011010001001001000;
		correct = 32'b00000010010111100101110110110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111100011111010111100111;
		correct = 32'b01111001000011100000101000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101100111100101110101100011;
		correct = 32'b10001010011000011010001010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000111101111001100100101001;
		correct = 32'b00100111000010000110011011010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100000111100110001100001101;
		correct = 32'b01000011111000011001110011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111011110111000101000111011;
		correct = 32'b01111000100001000111010111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010010010110110000011111111;
		correct = 32'b10100101101101001001111100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010100010000110111010110000;
		correct = 32'b10001101011101111001000101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000110110011000100011011001;
		correct = 32'b10000111001001100111011100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000011101000000100100100111;
		correct = 32'b00000111100010111111011011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010001001110101111010100;
		correct = 32'b11111100101110110001010000101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110110000111001101001001110;
		correct = 32'b01101001001111000110010110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001101110011001000111100111;
		correct = 32'b11000110010001100110111000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001000101001001111110111000;
		correct = 32'b00111110111010110110000001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011100010001110111101011001;
		correct = 32'b00000100011101110001000010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001100101011100010111100111;
		correct = 32'b10010110011010100011101000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000101110101111000111110;
		correct = 32'b10111101111010001010000111000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011000011111001001101110000;
		correct = 32'b10011100111100000110110010001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100010001111000110000110011;
		correct = 32'b10011011101110000111001111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111111010111011011000000;
		correct = 32'b00000000000000101000100100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100011000110100110111001000;
		correct = 32'b01111011100111001011001000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111110101111101001011010110;
		correct = 32'b11010000001010000010110100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001000011010000111110011100;
		correct = 32'b11101110111100101111000001100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000101101001111100101000111;
		correct = 32'b01100111010010110000011010111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110110001101111001010111100;
		correct = 32'b00100001001110010000110101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101001111000011100010111110;
		correct = 32'b11111010110000111100011101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000000101011101110101000;
		correct = 32'b11010111111111010100010001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101001010010011001100110111;
		correct = 32'b11011010110101101100110011001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010101000001000000011010011;
		correct = 32'b01010101010111110111111100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001111111111011110010001;
		correct = 32'b11011101110000000000100001101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000011010010000101000100;
		correct = 32'b01001000111100101101111010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111010100001101101010100110;
		correct = 32'b10101000101011110010010101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001000000011100110010110;
		correct = 32'b11100000110111111100011001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010010001011111011011111110;
		correct = 32'b11001101101110100000100100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111011010110010101111100111;
		correct = 32'b11111000100101001101010000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011011010010111010101101;
		correct = 32'b11000111100100101101000101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000101111111101001010111111;
		correct = 32'b00011111010000000010110101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010001101100000110000011;
		correct = 32'b00000110101110010011111001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011001000111101111110110;
		correct = 32'b11101111100110111000010000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101010010000110111011111011;
		correct = 32'b11101010101101111001000100000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101101010001111000010100011;
		correct = 32'b10111010010101110000111101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001110101010000000001100001;
		correct = 32'b11000110001010101111111110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110000111011110001011000101;
		correct = 32'b10010001111000100001110100111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110101010110110011010001;
		correct = 32'b01000100001010101001001100101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001011000100001111011111101;
		correct = 32'b00010110100111011110000100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010110111100100011000110;
		correct = 32'b01011011101001000011011100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101110000001111110000010101;
		correct = 32'b00001010001111110000001111101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010000101101011101100000000;
		correct = 32'b00000101111010010100010011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011110011001001010011110100;
		correct = 32'b01101100001100110110101100001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000101010100010100010101;
		correct = 32'b00110100111010101011101011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101110011110011110101110;
		correct = 32'b01000110010001100001100001010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100010111110010110011111110;
		correct = 32'b10011011101000001101001100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101010101010001101001111001;
		correct = 32'b11011010101010101110010110000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101011010000111010011000010;
		correct = 32'b11110010100101111000101100111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111110111011011001111101001;
		correct = 32'b10011000001000100100110000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111100111010110110110011000;
		correct = 32'b00011000011000101001001001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111010111001010011011010110;
		correct = 32'b01000000101000110101100100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101000001001110001000101101;
		correct = 32'b11101010111110110001110111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111010100011101100101110;
		correct = 32'b10010000000101011100010011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000000100011001011001001111;
		correct = 32'b10111111111011100110100110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010101001100010111000011110;
		correct = 32'b11001101010110011101000111100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000011001110111111001001110;
		correct = 32'b11110111100110001000000110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101111000011010110001100011;
		correct = 32'b10111010000111100101001110011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010000100011011100100110011;
		correct = 32'b00011101111011100100011011001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001010001001110011111000100;
		correct = 32'b11110110101110110001100000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010001001110100101110000110;
		correct = 32'b01010101110110001011010001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110100010011100100010101100;
		correct = 32'b11010001011101100011011101010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000111101000001111000011010;
		correct = 32'b10011111000010111110000111100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100101101011111010111110001;
		correct = 32'b00111011010010100000101000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000111101000001010110001111;
		correct = 32'b00000111000010111110101001110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000100100011110001111011000;
		correct = 32'b11110111011011100001110000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111110011011001111110011000;
		correct = 32'b10110000001100100110000001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110100111101011001111101;
		correct = 32'b01000100001011000010100110000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100101111110111100000110010;
		correct = 32'b11110011010000001000011111001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011110011100111000111011000;
		correct = 32'b11100100001100011000111000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000011000000001000000101;
		correct = 32'b01000110111100111111110111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001111010011011011111011110;
		correct = 32'b00100110000101100100100000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101100001010010110010000001;
		correct = 32'b01010010011110101101001101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000111000100110101000101101;
		correct = 32'b00000111000111011001010111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011000111101001101110101111;
		correct = 32'b10000100111000010110010001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111101011010011111110011010;
		correct = 32'b01010000010100101100000001100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101010001110100111110111;
		correct = 32'b00111111010101110001011000001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100010111000010010000111011;
		correct = 32'b10001011101000111101101111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011110111100001110010010101;
		correct = 32'b11101100001000011110001101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111010010001101110100100000;
		correct = 32'b00110000101101110010001011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010100110101011001011010110;
		correct = 32'b01111101011001010100110100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010001000011110110011101;
		correct = 32'b11110101101110111100001001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011101001011111100101110100;
		correct = 32'b11101100010110100000011010001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001101111100100100100000;
		correct = 32'b10101011110010000011011011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111101010001011111100011;
		correct = 32'b10101000000010101110100000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110001011111000101000000;
		correct = 32'b01101111001110100000111010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101001100000001000111010111;
		correct = 32'b00011010110011111110111000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100011100011000000101010001;
		correct = 32'b00101011100011100111111010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110111110110001111000101;
		correct = 32'b00011001001000001001110000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001110010101010011110011;
		correct = 32'b10110111110001101010101100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101111111000000111000100100;
		correct = 32'b11010010000000111111000111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011000100111011011101000011;
		correct = 32'b10011100111011000100100010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101101111111110110100010011;
		correct = 32'b01010010010000000001001011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111111011000110000011000;
		correct = 32'b11011100000000100111001111100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011010101100011100001110011;
		correct = 32'b01010100101010011100011110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110001011100110010011011110;
		correct = 32'b01101001110100011001101100100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101001011011111010110001011;
		correct = 32'b00010010110100100000101001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100001011101011001011011;
		correct = 32'b00000111011110100010100110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010111110110110100001010001;
		correct = 32'b01000101000001001001011110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111111111011100000110011;
		correct = 32'b11010100000000000100011111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101010000101001101000100;
		correct = 32'b10001011010101111010110010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000010000101001100011111111;
		correct = 32'b11000111101111010110011100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111011100101000010110000;
		correct = 32'b00101011000100011010111101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101101101001100010010000110;
		correct = 32'b10111010010010110011101101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001111101010010010011001100;
		correct = 32'b00010110000010101101101100110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101100100110100011000001110;
		correct = 32'b01111010011011001011100111110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110100001101100100100010101;
		correct = 32'b11001001011110010011011011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100110100101101000100101011;
		correct = 32'b00001011001011010010111011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000000000010011011000010001;
		correct = 32'b00110111111111101100100111101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110111100000110000011010100;
		correct = 32'b00000001000011111001111100101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010110001011110110101000101;
		correct = 32'b10011101001110100001001010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100010101000111100010111;
		correct = 32'b11000011011101010111000011101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011011001110101101010010001;
		correct = 32'b01000100100110001010010101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010010011000100100010010010;
		correct = 32'b11011101101100111011011101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010111000100111001000110101;
		correct = 32'b01000101000111011000110111001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011001000110100101100000;
		correct = 32'b01010111100110111001011010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011100010011110110111100110;
		correct = 32'b10100100011101100001001000011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111110011011110110101110011;
		correct = 32'b11111000001100100001001010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000010010001010011011111101;
		correct = 32'b10001111101101110101100100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001111111100001000111101;
		correct = 32'b01000111110000000011110111000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001111010101000001101000100;
		correct = 32'b11001110000101010111110010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011001110101000100101001010;
		correct = 32'b11111100110001010111011010110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001110001101000001011011010;
		correct = 32'b01111110001110010111110100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011101001000111011001010000;
		correct = 32'b00101100010110111000100110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110111110011000000110000010;
		correct = 32'b00101001000001100111111001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000000011101001100101010;
		correct = 32'b00010000111111100010110011010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101011101111101111100000111;
		correct = 32'b11111010100010000010000011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011111110010000110101110110;
		correct = 32'b10001100000001101111001010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010110101000010111001100;
		correct = 32'b01000011101001010111101000110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100111101011100101110111110;
		correct = 32'b00111011000010100011010001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000111001100111001111110000;
		correct = 32'b10111111000110011000110000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000000101011100010100111;
		correct = 32'b11010111111111010100011101011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011011001100001100000111000;
		correct = 32'b01001100100110011110011111000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101001000011111110000101000;
		correct = 32'b10001010110111100000001111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000001101111000011000101110;
		correct = 32'b11101111110010000111100111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111010110000101100010110011;
		correct = 32'b00100000101001111010011101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000001011011011011100110;
		correct = 32'b01001001111110100100100100011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101100010110101110100010;
		correct = 32'b11000111010011101001010001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011001001100111001010111010;
		correct = 32'b11110100110110011000110101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110101111001110011100010;
		correct = 32'b11100101001010000110001100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111000011111011010111101;
		correct = 32'b01111010000111100000100101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111010101001011000001111;
		correct = 32'b11100011000101010110100111110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111101100111110111110001011;
		correct = 32'b10011000010011000001000001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100000010000010101000111011;
		correct = 32'b01000011111101111101010111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010101111110100001101110001;
		correct = 32'b11010101010000001011110010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001101011011011000100100111;
		correct = 32'b11100110010100100100111011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010010001101011100111010101;
		correct = 32'b11100101101110010100011000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101010100110001011101000100;
		correct = 32'b00101010101011001110100010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111100100011011111100111110;
		correct = 32'b10011000011011100100000011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100001010101010101000111001;
		correct = 32'b10100011110101010101010111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001100011110001011100110;
		correct = 32'b10010101110011100001110100011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111010011000100100010000001;
		correct = 32'b01010000101100111011011101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101000001010011110011100110;
		correct = 32'b01011010111110101100001100011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111000100000010101110110;
		correct = 32'b10101000000111011111101010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011111010011010110000001010;
		correct = 32'b00001100000101100101001111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011000100001101010011101;
		correct = 32'b11011010100111011110010101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111010000110000100011011011;
		correct = 32'b11000000101111001111011100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101010101101111010110110111;
		correct = 32'b10101010101010010000101001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011010001111100001001110;
		correct = 32'b01000101100101110000011110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100001110001100011000000011;
		correct = 32'b11110011110001110011100111111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000001010010000010010111111;
		correct = 32'b01101111110101101111101101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001100101101111011110110111;
		correct = 32'b10100110011010010000100001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111000101011001110110001000;
		correct = 32'b10110000111010100110001001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000100001011101010101100111;
		correct = 32'b10001111011110100010101010011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100000000000111000001011101;
		correct = 32'b10101011111111111000111110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111000000001001100110010110;
		correct = 32'b11110000111111110110011001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101100111001011001011110101;
		correct = 32'b00110010011000110100110100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001110111000011000100001101;
		correct = 32'b11000110001000111100111011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001110101111110001110011;
		correct = 32'b10011110110001010000001110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010100001110101000100110010;
		correct = 32'b01111101011110001010111011001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000100101010000101000010110;
		correct = 32'b11100111011010101111010111101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100110000010010000010001;
		correct = 32'b01100100011001111101101111101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111001001010100111001011;
		correct = 32'b10101011000110110101011000110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010101011001111111111111011;
		correct = 32'b11110101010100110000000000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111001111001100001000001100;
		correct = 32'b01010000110000110011110111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100111000001101111100101110;
		correct = 32'b01010011000111110010000011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011000110111111001011010;
		correct = 32'b00000100100111001000000110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100110010001001111111010011;
		correct = 32'b10011011001101110110000000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100011111010100000111010;
		correct = 32'b10010001011100000101011111000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101110101010010011011011;
		correct = 32'b11000111010001010101101100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110101001000000011100111101;
		correct = 32'b11110001010110111111100011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101111000011010110011101101;
		correct = 32'b01110010000111100101001100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100101001000101110011101101;
		correct = 32'b11011011010110111010001100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111101000110100101010011001;
		correct = 32'b01011000010111001011010101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001111001010011100011111110;
		correct = 32'b10011110000110101100011100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001110001100011111011000;
		correct = 32'b10000110110001110011100000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001101011101111011001111000;
		correct = 32'b10010110010100010000100110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000011100011011100101000;
		correct = 32'b11111111111100011100100011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100001100011111011000011101;
		correct = 32'b00001011110011100000100111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011000100010010001000000000;
		correct = 32'b11110100111011101101110111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000001010101111110111000;
		correct = 32'b10000110111110101010000001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110000010011111110001000011;
		correct = 32'b01110001111101100000001110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110010101110111000111110110;
		correct = 32'b11101001101010001000111000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110111110100100101000010;
		correct = 32'b00110100001000001011011010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111001001010011001001011100;
		correct = 32'b00001000110110101100110110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011111001110011110110100101;
		correct = 32'b10001100000110001100001001011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110010101101000111000010101;
		correct = 32'b01010001101010010111000111101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111110011110001001001111011;
		correct = 32'b11110000001100001110110110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001110000110001101000000100;
		correct = 32'b00010110001111001110010111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010100101011101110111000001;
		correct = 32'b11110101011010100010001000111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000101110101100111001100;
		correct = 32'b10111101111010001010011000110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000111011001011100011101;
		correct = 32'b01001110111000100110100011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001011111110000111001001;
		correct = 32'b10110111110100000001111000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000010001010111111100111111;
		correct = 32'b11110111101110101000000011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001001010111001110100011000;
		correct = 32'b10010110110101000110001011100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010000111110111111110011;
		correct = 32'b10100011101111000001000000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100011111001110100101101000;
		correct = 32'b00110011100000110001011010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110100010110100100111011010;
		correct = 32'b11010001011101001011011000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111010111111110101100011101;
		correct = 32'b10111000101000000001010011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001101011001000101011111100;
		correct = 32'b11000110010100110111010100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111110000011001000011011;
		correct = 32'b11011100000001111100110111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110111001111010011100000010;
		correct = 32'b01110001000110000101100011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011111100111101001101011101;
		correct = 32'b11001100000011000010110010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111000100001000000011001110;
		correct = 32'b11001000111011110111111100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100111111000011100101110101;
		correct = 32'b00110011000000111100011010001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101101111001001000000001010;
		correct = 32'b11110010010000110110111111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011111111100001010100000101;
		correct = 32'b11000100000000011110101011111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001011000111011101000111000;
		correct = 32'b11011110100111000100010111000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100010001000011010001011011;
		correct = 32'b10011011101110111100101110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000101010000011001100010011;
		correct = 32'b01010111010101111100110011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100111100001111011011101101;
		correct = 32'b10010011000011110000100100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101011101101001111111111;
		correct = 32'b00000010010100010010110000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110001101001111100001110110;
		correct = 32'b11110001110010110000011110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100101100000110001110010000;
		correct = 32'b00100011010011111001110001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010011110100111110010011111;
		correct = 32'b10110101100001011000001101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100001101011010101001111111;
		correct = 32'b10010011110010100101010110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110001110000110001100010001;
		correct = 32'b10001001110001111001110011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000101111000101110100010100;
		correct = 32'b00010111010000111010001011101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010111100110010111111100101;
		correct = 32'b00100101000011001101000000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000110111101000110001010;
		correct = 32'b11000011111001000010111001110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010111010010111101110101;
		correct = 32'b01101100101000101101000010001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000011001101010010001010;
		correct = 32'b01001110111100110010101101110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111011000101110001100001101;
		correct = 32'b10001000100111010001110011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100101010000110101011011010;
		correct = 32'b11101011010101111001010100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000101011101110000101011110;
		correct = 32'b01000111010100010001111010100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001100001100010000101000001;
		correct = 32'b01111110011110011101111010111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111100111010000010111101;
		correct = 32'b01001010000011000101111101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000000011001111001010010;
		correct = 32'b11011000111111100110000110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110101101111011111100100001;
		correct = 32'b11000001010010000100000011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111110010000100101010011;
		correct = 32'b01111010000001101111011010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000110000100101010110101111;
		correct = 32'b11101111001111011010101001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110111010111100110001100111;
		correct = 32'b01100001000101000011001110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110001011000100010010010110;
		correct = 32'b01100001110100111011101101101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110111011001000010001100;
		correct = 32'b01110100001000100110111101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000100111111111000101110111;
		correct = 32'b10001111011000000000111010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101000100101000110001101110;
		correct = 32'b01001010111011010111001110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100110000100000011001010;
		correct = 32'b00011001011001111011111100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110111111011010111110011101;
		correct = 32'b10100001000000100101000001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011000111111100001101110;
		correct = 32'b11011010100111000000011110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010011000111110001101010111;
		correct = 32'b00001101100111000001110010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100001101011110111010101011;
		correct = 32'b01001011110010100001000101010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111001101101110011100101011;
		correct = 32'b00011000110010010001100011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101111101010010001100100101;
		correct = 32'b11100010000010101101110011011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010111111000100011100100100;
		correct = 32'b10011101000000111011100011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101001101101000111100100110;
		correct = 32'b00111010110010010111000011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101101001011001000100010101;
		correct = 32'b10111010010110100110111011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011010100110000100000000101;
		correct = 32'b10001100101011001111011111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000000010111101100011110;
		correct = 32'b11110110111111101000010011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001110001100111010001010000;
		correct = 32'b10000110001110011000101110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100010011001100100110001100;
		correct = 32'b11111011101100110011011001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100100011000011101010111010;
		correct = 32'b00001011011100111100010101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101010011111100010000011101;
		correct = 32'b01111010101100000011101111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100000001000100011010000110;
		correct = 32'b01100011111110111011100101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110010101100011001000111111;
		correct = 32'b10100001101010011100110111000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011010110111011110100101;
		correct = 32'b10111110100101001000100001011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111100010110100001011011010;
		correct = 32'b10111000011101001011110100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001110000100101001011001001;
		correct = 32'b01001110001111011010110100110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110110001001111001101110001;
		correct = 32'b00010001001110110000110010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000100001100101011100111011;
		correct = 32'b11001111011110011010100011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000011011000101100001000101;
		correct = 32'b10000111100100111010011110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110001100011000100000011100;
		correct = 32'b01000001110011100111011111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100100001011101010101110;
		correct = 32'b10110100011011110100010101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010101010100000111111001111;
		correct = 32'b10111101010101011111000000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100101001101100010011001;
		correct = 32'b01001101011010110010011101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000001101111011101101101010;
		correct = 32'b11111111110010000100010010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000100101010010100110000;
		correct = 32'b00011100111011010101101011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010100010110010011101100;
		correct = 32'b11000011101011101001101100010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110101110011011000011001110;
		correct = 32'b10001001010001100100111100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011100010110110001110011111;
		correct = 32'b01111100011101001001110001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010101100001100110100010;
		correct = 32'b11000001101010011110011001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011101101001000010100110100;
		correct = 32'b01111100010010110111101011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000100101011011111100110101;
		correct = 32'b01101111011010100100000011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010001001001101110000101111;
		correct = 32'b11100101110110110010001111010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011011000100001111010011111;
		correct = 32'b00101100100111011110000101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000011001010101100110001110;
		correct = 32'b10010111100110101010011001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110101001110111001110011011;
		correct = 32'b10010001010110001000110001100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000110110110110110001000;
		correct = 32'b11110110111001001001001001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110101101000011110111010100;
		correct = 32'b11001001010010111100001000101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010101011101111100011110110;
		correct = 32'b10010101010100010000011100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100000000100001010101010110;
		correct = 32'b00110011111111011110101010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010101110101011101000111010;
		correct = 32'b00101101010001010100010111000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100010100101010111010000001;
		correct = 32'b00010011101011010101000101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111111001000100111010010000;
		correct = 32'b10000000000110111011000101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010100001011000011101000010;
		correct = 32'b10010101011110100111100010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001100001011011011100011101;
		correct = 32'b00001110011110100100100011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111110000111011010101101101;
		correct = 32'b10111000001111000100101010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110110010000100001100000110;
		correct = 32'b11110001001101111011110011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000010100001011100101000000;
		correct = 32'b00100111101011110100011010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001111001111101101101111011;
		correct = 32'b11101110000110000010010010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011001000101110000100110010;
		correct = 32'b11111100110111010001111011001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010010111001111101001000110;
		correct = 32'b01011101101000110000010110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001011001100000011011001010;
		correct = 32'b11001110100110011111100100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100000001100111110110001110;
		correct = 32'b10100011111110011000001001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001101100111110011101101;
		correct = 32'b00011110110010011000001100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110000010011101011000000;
		correct = 32'b10111111001111101100010100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011010010111010110011100100;
		correct = 32'b11110100101101000101001100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000101011000001101101000;
		correct = 32'b00001101111010100111110010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100100000110111100111001111;
		correct = 32'b10011011011111001000011000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100000010001000110001101;
		correct = 32'b01011010011111101110111001110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010110001101010011011010010;
		correct = 32'b00100101001110010101100100101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101100101010100011000010100;
		correct = 32'b00100010011010101011100111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010011010100001000111000101;
		correct = 32'b11111101100101011110111000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010101000101010110001011101;
		correct = 32'b10101101010111010101001110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001100100000110000010100000;
		correct = 32'b01101110011011111001111101011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100011110111011001001001011;
		correct = 32'b11110011100001000100110110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101010111010000110011100111;
		correct = 32'b10000010101000101111001100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101110000010010010011011110;
		correct = 32'b10100010001111101101101100100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011101010010111101110110;
		correct = 32'b10111110100010101101000010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101011001100011011000101100;
		correct = 32'b00110010100110011100100111010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011010010110000011000110000;
		correct = 32'b11011100101101001111100111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010011010001111100000001101;
		correct = 32'b00100101100101110000011111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100111001001111101000100101;
		correct = 32'b10111011000110110000010111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100100110011101101111001;
		correct = 32'b11101110011011001100010010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000010001001110001000010110;
		correct = 32'b11111111101110110001110111101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001100100100010111010000111;
		correct = 32'b01000110011011011101000101111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111000010000111000010110011;
		correct = 32'b01110000111101111000111101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001101110100111111011010010;
		correct = 32'b01100110010001011000000100101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011001001001010111011000111;
		correct = 32'b10010100110110110101000100111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000001110000100111100100;
		correct = 32'b11011100111110001111011000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111101010100011111010000010;
		correct = 32'b01110000010101011100000101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101010100011100110110000101;
		correct = 32'b10000010101011100011001001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011101100000111001010110;
		correct = 32'b01001101100010011111000110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000000010000010101011101110;
		correct = 32'b00110111111101111101010100010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111110000001010110111001101;
		correct = 32'b00111000001111110101001000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101100001010100100011110001;
		correct = 32'b10010010011110101011011100001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000000101111111011101100001;
		correct = 32'b10001111111010000000100010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111011111100010100000011;
		correct = 32'b01110000000100000011101011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100001100010001100100110101;
		correct = 32'b10110011110011101110011011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100110001110110000010011101;
		correct = 32'b11100011001110001001111101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000111110100100100110000;
		correct = 32'b10000110111000001011011011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110000100100110000010011100;
		correct = 32'b10011001111011011001111101100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000100100001010111110111010;
		correct = 32'b11010111011011110101000001000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100011011101001000000101100;
		correct = 32'b10000011100100010110111111010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110110010011100100111001;
		correct = 32'b11101010001001101100011011000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111100101110110010101000100;
		correct = 32'b10011000011010001001101010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100100000011100100011010001;
		correct = 32'b00101011011111100011011100101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101001110110001011000100;
		correct = 32'b01000000010110001001110100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011010011001111110100101000;
		correct = 32'b01111100101100110000001011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111000001111001010010101100;
		correct = 32'b01100000111110000110101101010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111110111000010101011100100;
		correct = 32'b01011000001000111101010100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100111011100110110011011;
		correct = 32'b11000000011000100011001001100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100111111100101011100001011;
		correct = 32'b10100011000000011010100011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100001111001011111110111101;
		correct = 32'b00010011110000110100000001000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000111011100111101000100;
		correct = 32'b01111001111000100011000010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010011100001010110001011100;
		correct = 32'b10100101100011110101001110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110101110101110100001101001;
		correct = 32'b01000001010001010001011110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101101101001000111101000011;
		correct = 32'b00010010010010110111000010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100100101011010100110101;
		correct = 32'b10100101011011010100101011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000100011101101000101000001;
		correct = 32'b10100111011100010010111010111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110101010111101001110001;
		correct = 32'b10101110001010101000010110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101110010011010101101101;
		correct = 32'b11000010010001101100101010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010110010011101110000000100;
		correct = 32'b10010101001101100010001111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110001011000001100011010111;
		correct = 32'b10010001110100111110011100101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011101101011111101010000101;
		correct = 32'b00100100010010100000010101111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010001110010010000100101;
		correct = 32'b00110110101110001101101111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001011001010111111111000110;
		correct = 32'b11011110100110101000000000111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111110110001110110001001;
		correct = 32'b11101011000001001110001001110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001011110011110110011011111;
		correct = 32'b00000110100001100001001100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110001001001100111100010111;
		correct = 32'b01010001110110110011000011101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111100111001000111000111001;
		correct = 32'b01111000011000110111000111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101000011010001010010100101;
		correct = 32'b00000010111100101110101101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111101111011000000100011001;
		correct = 32'b10001000010000100111111011100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000101001011001010001110001;
		correct = 32'b11001111010110100110101110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100100011100001011110001;
		correct = 32'b10111110011011100011110100001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100111001111001000110000110;
		correct = 32'b01110011000110000110111001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111101101000010010110101111;
		correct = 32'b10101000010010111101101001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101000110001010010111011;
		correct = 32'b10010100010111001110101101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101111100111001010100101;
		correct = 32'b01000011010000011000110101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000111000010010000010111111;
		correct = 32'b11001111000111101101111101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001010100100000001100111101;
		correct = 32'b10000110101011011111110011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100001010011001000101010110;
		correct = 32'b00010011110101100110111010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100011001001100101010101011;
		correct = 32'b11011011100110110011010101010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101110011010101000101010100;
		correct = 32'b10100010001100101010111010101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000001010110000010001011111;
		correct = 32'b00010111110101001111101110100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011011100110010100111000;
		correct = 32'b11011010100100011001101011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101010011101000100111111;
		correct = 32'b01101100010101100010111011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010001011001000100110001000;
		correct = 32'b01110101110100110111011001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001011001010000000100110;
		correct = 32'b11100000110100110101111111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010011100000100000001001;
		correct = 32'b01100100101100011111011111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000000100011000001010011010;
		correct = 32'b00000111111011100111110101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011111101110000011010100101;
		correct = 32'b10000100000010001111100101011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010011010100110010101101001;
		correct = 32'b00101101100101011001101010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000011100000010000000100110;
		correct = 32'b11110111100011111101111111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010011010010010111111000000;
		correct = 32'b11100101100101101101000000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011100111101111001110111000;
		correct = 32'b11011100011000010000110001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001101101111101001011110010;
		correct = 32'b01100110010010000010110100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011000000010111010000111;
		correct = 32'b01110111100111111101000101111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110010001111000000101101110;
		correct = 32'b10010001101110000111111010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000000110101011011011111100;
		correct = 32'b11000111111001010100100100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101001100000110101111101110;
		correct = 32'b11110010110011111001010000010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000110001011101101111110100;
		correct = 32'b10001111001110100010010000001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000101101100011101100111111;
		correct = 32'b00011111010010011100010011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001110001011010110100101000;
		correct = 32'b11111110001110100101001011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000010010001000111010001001;
		correct = 32'b11110111101101110111000101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100100111101001001111010000;
		correct = 32'b00111011011000010110110000101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001101110111001011011010000;
		correct = 32'b11010110010001000110100100101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101010101111100111100100010;
		correct = 32'b10111010101010000011000011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011011110010000100001101001;
		correct = 32'b01111100100001101111011110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100101001101111000011001;
		correct = 32'b01001000011010110010000111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100001100100011101111010111;
		correct = 32'b00011011110011011100010000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111000111001001110001101;
		correct = 32'b11010100000111000110110001110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001101010000110011000000100;
		correct = 32'b10101110010101111001100111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001010001011001101010000110;
		correct = 32'b11110110101110100110010101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011111100001010110101101001;
		correct = 32'b11100100000011110101001010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110011111010010100010110011;
		correct = 32'b11111001100000101101011101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100000111100011100010011110;
		correct = 32'b11101011111000011100011101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111000000101101100001101001;
		correct = 32'b00100000111111010010011110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100101110010110000101000011;
		correct = 32'b11001011010001101001111010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101011101010000101100111100;
		correct = 32'b10100010100010101111010011000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001101010111101100100001111;
		correct = 32'b00100110010101000010011011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010111011111111010101100000;
		correct = 32'b11101101000100000000101010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110000111101100100011111;
		correct = 32'b00111010001111000010011011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010000011000011001001100000;
		correct = 32'b11111101111100111100110110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011100100010010011101101010;
		correct = 32'b10101100011011101101100010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111011000011001010101011101;
		correct = 32'b00110000100111100110101010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010101100011100011111111;
		correct = 32'b00011100101010011100011100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010011110100001101101100;
		correct = 32'b01000011101100001011110010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000010110111010011000000101;
		correct = 32'b00101111101001000101100111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111000010011000011110010;
		correct = 32'b11100110000111101100111100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111001011000011100001010001;
		correct = 32'b00100000110100111100011110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001100111011110001010000001;
		correct = 32'b01111110011000100001110101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101000000001001111001011110;
		correct = 32'b01100010111111110110000110100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010011001001010010001001;
		correct = 32'b10101001101100110110101101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		$display ("Done.");
		$finish;
	end

endmodule