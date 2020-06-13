`timescale 1 ns/1 ps
    `include "alu.v"


    module not_tb ();
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
		a = 32'b00001101010111010010111100001011;
		correct = 32'b11110010101000101101000011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110010001000010000110010110;
		correct = 32'b00001001101110111101111001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000011110101100101101101000;
		correct = 32'b10000111100001010011010010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001000100101100011110000101;
		correct = 32'b10100110111011010011100001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010010110101111110111001;
		correct = 32'b00110110101101001010000001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101011110001001101000000;
		correct = 32'b10010100010100001110110010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000100100001000110011110;
		correct = 32'b11111111111011011110111001100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011011100101001111111010;
		correct = 32'b01100000100100011010110000000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100001010001111001110010001;
		correct = 32'b00101011110101110000110001101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110001001000001010001010000;
		correct = 32'b01011001110110111110101110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100010011101111011110101100;
		correct = 32'b10101011101100010000100001010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001111010011001100010010010;
		correct = 32'b00011110000101100110011101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110111010011111011001000110;
		correct = 32'b00000001000101100000100110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100100011100100001001110110;
		correct = 32'b10000011011100011011110110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111010110000100011110000;
		correct = 32'b01001001000101001111011100001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101111111100010101100111011;
		correct = 32'b00000010000000011101010011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101101111001001001101110001;
		correct = 32'b01001010010000110110110010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011111001101001010110000;
		correct = 32'b11001111100000110010110101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010011100101101001000111010;
		correct = 32'b01111101100011010010110111000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010110001100100010001000011;
		correct = 32'b00010101001110011011101110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111101000010100100101011101;
		correct = 32'b11100000010111101011011010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010011011010111100001001001;
		correct = 32'b01100101100100101000011110110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001011000101011000000010;
		correct = 32'b00110001110100111010100111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001011001010111100110001100;
		correct = 32'b11111110100110101000011001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110010100011011000001000000;
		correct = 32'b00110001101011100100111110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011001101011001100100101;
		correct = 32'b00011110100110010100110011011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000000011101000011011011111;
		correct = 32'b11001111111100010111100100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011011010010110100101011000;
		correct = 32'b01010100100101101001011010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001011101001001010110001111;
		correct = 32'b01111110100010110110101001110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011101010100110001100110000;
		correct = 32'b00111100010101011001110011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010110100000001111111001111;
		correct = 32'b11010101001011111110000000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011011001001100010110000000;
		correct = 32'b11100100100110110011101001111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100011100001100000110110;
		correct = 32'b10001000011100011110011111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011010001001011010000011;
		correct = 32'b11010001100101110110100101111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011000010100111111100100111;
		correct = 32'b00000100111101011000000011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111000000111011110010010100;
		correct = 32'b01011000111111000100001101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101110110010110011001101101;
		correct = 32'b10011010001001101001100110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101010000111100110011001011;
		correct = 32'b10001010101111000011001100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000111100001101001000010010;
		correct = 32'b10011111000011110010110111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011011110111001011101010011;
		correct = 32'b00010100100001000110100010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111001111011111110101000010;
		correct = 32'b01000000110000100000001010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100010101000110011101111001;
		correct = 32'b10000011101010111001100010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010110001111111010111110001;
		correct = 32'b11110101001110000000101000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011011010001101110111101;
		correct = 32'b01001111100100101110010001000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111101101000011110110011101;
		correct = 32'b00011000010010111100001001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101001001000011101100011101;
		correct = 32'b10011010110110111100010011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011000110111111000000110011;
		correct = 32'b10101100111001000000111111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100000100100111101011011110;
		correct = 32'b01000011111011011000010100100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111110100011110111001010010;
		correct = 32'b11100000001011100001000110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001100110111010100001101100;
		correct = 32'b10100110011001000101011110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100111010010010111111101000;
		correct = 32'b11000011000101101101000000010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000000011110000000011011101;
		correct = 32'b10001111111100001111111100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111110111101110000100001001;
		correct = 32'b00010000001000010001111011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010001011000110100110000;
		correct = 32'b01000011101110100111001011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001101111001010101101101;
		correct = 32'b01100000110010000110101010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100011000101111001101100000;
		correct = 32'b01000011100111010000110010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000000111100010010110011;
		correct = 32'b00010110111111000011101101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010010111000100101101010001;
		correct = 32'b11111101101000111011010010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011110000111001011010100000;
		correct = 32'b00010100001111000110100101011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111111001011000010000110011;
		correct = 32'b11100000000110100111101111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101000000010000110000110101;
		correct = 32'b10110010111111101111001111001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001110100111000101111101001;
		correct = 32'b10010110001011000111010000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001111000111011001011011;
		correct = 32'b10001110110000111000100110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000001110000000100101011;
		correct = 32'b11101100111110001111111011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011110011101001000010001000;
		correct = 32'b11100100001100010110111101110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111000111010100001111101111;
		correct = 32'b11111000111000101011110000010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010000001011101100111011110;
		correct = 32'b11001101111110100010011000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101011001001011001101110001;
		correct = 32'b10111010100110110100110010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001001100100000000111101;
		correct = 32'b01110001110110011011111111000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101110001101110010001111100;
		correct = 32'b01100010001110010001101110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011100011101010111110010011;
		correct = 32'b01111100011100010101000001101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001101010001011100001110011;
		correct = 32'b00000110010101110100011110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001001010011110100011010110;
		correct = 32'b10111110110101100001011100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001001001100111011001011100;
		correct = 32'b01101110110110011000100110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000011011010100111010101011;
		correct = 32'b01011111100100101011000101010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001110110101110111100001;
		correct = 32'b01110001110001001010001000011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110001000011011111110100001;
		correct = 32'b01011001110111100100000001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100000100011100001001001010;
		correct = 32'b01100011111011100011110110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110001111110011101111101100;
		correct = 32'b11011001110000001100010000010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000000111011001111011011111;
		correct = 32'b11100111111000100110000100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101100011111011010111110001;
		correct = 32'b11100010011100000100101000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101101000001110111001101;
		correct = 32'b01011001010010111110001000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111100001010010011110011;
		correct = 32'b10111101000011110101101100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100011101010000010001010110;
		correct = 32'b01001011100010101111101110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110111111100011011111110001;
		correct = 32'b00010001000000011100100000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101000000100001011110000100;
		correct = 32'b11001010111111011110100001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010001001011001101111010011;
		correct = 32'b10110101110110100110010000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001010001000000010100000010;
		correct = 32'b10111110101110111111101011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101010011110010100100110001;
		correct = 32'b01111010101100001101011011001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111001110101101011010101101;
		correct = 32'b10101000110001010010100101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110011010011100110001001001;
		correct = 32'b00011001100101100011001110110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100000111110100101011100111;
		correct = 32'b01011011111000001011010100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010000100111101100001101111;
		correct = 32'b10001101111011000010011110010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010111011010011010001010110;
		correct = 32'b11111101000100101100101110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101000011100010110111101111;
		correct = 32'b10101010111100011101001000010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110010010010111111111000001;
		correct = 32'b10100001101101101000000000111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000100111000100110100111;
		correct = 32'b10000110111011000111011001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111100110001100111010011010;
		correct = 32'b00100000011001110011000101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111100001011010001011100001;
		correct = 32'b11110000011110100101110100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110000000010101010101000;
		correct = 32'b01110011001111111101010101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010101110010010011011011;
		correct = 32'b01011011101010001101101100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001001011100111010010100001;
		correct = 32'b10010110110100011000101101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111111110100111001001011001;
		correct = 32'b01011000000001011000110110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010111100011010001010001;
		correct = 32'b11001000101000011100101110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100111011001011001000100011;
		correct = 32'b01111011000100110100110111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011000111101100010001110011;
		correct = 32'b10001100111000010011101110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101111100010111011001011000;
		correct = 32'b00101010000011101000100110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101010101001000000011101111;
		correct = 32'b00001010101010110111111100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111110101101000101001011011;
		correct = 32'b10010000001010010111010110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001110101111110100000001110;
		correct = 32'b01111110001010000001011111110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110111010101101111110100111;
		correct = 32'b01011001000101010010000001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011110111010100001101110;
		correct = 32'b10011001100001000101011110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110111000001010110011100;
		correct = 32'b01110100001000111110101001100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011100101100101001111101;
		correct = 32'b11001111100011010011010110000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001001001100000000101101;
		correct = 32'b00011110110110110011111111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100110101000010011100101000;
		correct = 32'b11111011001010111101100011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010010101011100001001101100;
		correct = 32'b10011101101010100011110110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100110010110001000110100100;
		correct = 32'b10000011001101001110111001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111001100000011111101001011;
		correct = 32'b11001000110011111100000010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101100010101111101010011010;
		correct = 32'b10110010011101010000010101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100101101111111000101100110;
		correct = 32'b11111011010010000000111010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111011011001111110001010;
		correct = 32'b11011100000100100110000001110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110000110010110101100011111;
		correct = 32'b00001001111001101001010011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110111010111100111111010100;
		correct = 32'b11000001000101000011000000101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001111111101001101100011;
		correct = 32'b01111000110000000010110010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001100001101001011011110100;
		correct = 32'b11000110011110010110100100001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100110100111101010110011111;
		correct = 32'b00011011001011000010101001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100110100000000010100001;
		correct = 32'b01000001011001011111111101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000101111111100011010111100;
		correct = 32'b00011111010000000011100101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101000011100000000101000100;
		correct = 32'b10110010111100011111111010111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110000011100110110110000101;
		correct = 32'b01110001111100011001001001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011010011011010000101010000;
		correct = 32'b11010100101100100101111010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010010100111010001011000011;
		correct = 32'b00110101101011000101110100111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101011101101000111011011101;
		correct = 32'b10010010100010010111000100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100010110110010011001011000;
		correct = 32'b01110011101001001101100110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100010101011000101000100110;
		correct = 32'b11010011101010100111010111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111010001011101000000110;
		correct = 32'b11110010000101110100010111111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001101100001110000010001101;
		correct = 32'b11010110010011110001111101110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100100110110001100000000100;
		correct = 32'b00000011011001001110011111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101000111100001001010110011;
		correct = 32'b00100010111000011110110101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100010100100110000001100;
		correct = 32'b01010101011101011011001111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101000101001001001101100;
		correct = 32'b11111100010111010110110110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111001110110001111000011010;
		correct = 32'b11000000110001001110000111100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101000011100101000010000101;
		correct = 32'b00011010111100011010111101111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110001100100110100101101111;
		correct = 32'b11110001110011011001011010010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001011000010000010111110100;
		correct = 32'b00110110100111101111101000001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100100111011101110011000100;
		correct = 32'b01000011011000100010001100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010010111011111001111010101;
		correct = 32'b11000101101000100000110000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011100100000000100100100100;
		correct = 32'b01011100011011111111011011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001011100110011101011110011;
		correct = 32'b01111110100011001100010100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010100100011011001001110001;
		correct = 32'b01101101011011100100110110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010000110000110111011111;
		correct = 32'b00011000101111001111001000100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110100101110011000001010100;
		correct = 32'b10001001011010001100111110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000111101111101011001101011;
		correct = 32'b01011111000010000010100110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100011001010100001010110011;
		correct = 32'b00000011100110101011110101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000111110000111111101111001;
		correct = 32'b10111111000001111000000010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101101001110100111111010111;
		correct = 32'b01110010010110001011000000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101011011111010110001010001;
		correct = 32'b00011010100100000101001110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010001111011011000011011011;
		correct = 32'b11000101110000100100111100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101001100001110010110001111;
		correct = 32'b00000010110011110001101001110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110111010111100011010111101;
		correct = 32'b10010001000101000011100101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011001111101011011101011000;
		correct = 32'b01001100110000010100100010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101111011000000110111011;
		correct = 32'b00001101010000100111111001000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110011111101010001001011;
		correct = 32'b00000101001100000010101110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100011010000000110001001;
		correct = 32'b00100101011100101111111001110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000101110100001110100100000;
		correct = 32'b00011111010001011110001011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110001001111101111011100101;
		correct = 32'b00101001110110000010000100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001011110011011011011111;
		correct = 32'b10100101110100001100100100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010010010111110011001011000;
		correct = 32'b01011101101101000001100110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111010000101101000100100000;
		correct = 32'b00111000101111010010111011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110011101000010001011111111;
		correct = 32'b10111001100010111101110100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101000001101010100100100011;
		correct = 32'b01001010111110010101011011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011001111111111101111011010;
		correct = 32'b10100100110000000000010000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100100000000001110001100001;
		correct = 32'b11011011011111111110001110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111001110011100000011110;
		correct = 32'b11110010000110001100011111100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001100011001001010011001101;
		correct = 32'b10011110011100110110101100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101000101111110110000111;
		correct = 32'b10110000010111010000001001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110101001101000111000010;
		correct = 32'b10111111001010110010111000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010010100100110110110111000;
		correct = 32'b00110101101011011001001001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100001001010000110000001;
		correct = 32'b00101111011110110101111001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011011001011001111101010110;
		correct = 32'b01111100100110100110000010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111111101001110010110111;
		correct = 32'b10101100000000010110001101001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010101100101000101000011011;
		correct = 32'b10100101010011010111010111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100110010001000110111111000;
		correct = 32'b01101011001101110111001000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111101101111000111000100011;
		correct = 32'b11010000010010000111000111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100101111001001110010100111;
		correct = 32'b10010011010000110110001101011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101101011001000000010011001;
		correct = 32'b01011010010100110111111101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111110101000100101110010;
		correct = 32'b10110010000001010111011010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101000001101110000111000100;
		correct = 32'b10001010111110010001111000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110001011111000111100101;
		correct = 32'b10010100001110100000111000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001001000101010010011010011;
		correct = 32'b11000110110111010101101100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000111110000010111111110;
		correct = 32'b01001000111000001111101000000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010111100101010100011001;
		correct = 32'b11000011101000011010101011100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111001010111000010100000010;
		correct = 32'b01101000110101000111101011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011100010010001100011011000;
		correct = 32'b11001100011101101110011100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011100010101001100101000101;
		correct = 32'b00110100011101010110011010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000101001011011100111010010;
		correct = 32'b00001111010110100100011000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111100000110010100011111;
		correct = 32'b10001011000011111001101011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011000101100101010000110110;
		correct = 32'b10000100111010011010101111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101011111101010010101110001;
		correct = 32'b01111010100000010101101010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111001100001111000010010011;
		correct = 32'b10101000110011110000111101101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010110101001001000011001110;
		correct = 32'b00011101001010110110111100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111100011110110000101011010;
		correct = 32'b01010000011100001001111010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101101000000111110101011100;
		correct = 32'b10111010010111111000001010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011001101011001011011111;
		correct = 32'b01001111100110010100110100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101001000010111110001010010;
		correct = 32'b00110010110111101000001110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001110001111010101001101100;
		correct = 32'b00100110001110000101010110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010001111110011001010111010;
		correct = 32'b11010101110000001100110101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010010010000001100100010011;
		correct = 32'b11111101101101111110011011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111010000010011101011010;
		correct = 32'b00011010000101111101100010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011011000111111110011001;
		correct = 32'b00001000100100111000000001100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101001111101101010111011000;
		correct = 32'b00001010110000010010101000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110011100111111100100101101;
		correct = 32'b10101001100011000000011011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001111010011000010110110001;
		correct = 32'b10010110000101100111101001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100110100100101000111000111;
		correct = 32'b10000011001011011010111000111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000000100101100001100000000;
		correct = 32'b00001111111011010011110011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010011011010101100010111100;
		correct = 32'b10110101100100101010011101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100000000011110111001000;
		correct = 32'b01011010011111111100001000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001000010110011011110110101;
		correct = 32'b10010110111101001100100001001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101000100011010101011110000;
		correct = 32'b01001010111011100101010100001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111100101011011001111000;
		correct = 32'b01000011000011010100100110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001111100100111100010000001;
		correct = 32'b01110110000011011000011101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100011010100001010110101;
		correct = 32'b00011111011100101011110101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100011111010000110000111011;
		correct = 32'b11011011100000101111001111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010111111010001010101000;
		correct = 32'b11111100101000000101110101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110001001010110010111100101;
		correct = 32'b10111001110110101001101000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110001001110110011100100111;
		correct = 32'b10011001110110001001100011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111101011010010101011010111;
		correct = 32'b01011000010100101101010100101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101110111001011101001111110;
		correct = 32'b01010010001000110100010110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010000011010001101101101101;
		correct = 32'b00010101111100101110010010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110011000110111011111000010;
		correct = 32'b00100001100111001000100000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001011111101111011010010001;
		correct = 32'b10010110100000010000100101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000110101011100000001100011;
		correct = 32'b11110111001010100011111110011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010011100011110100100111101;
		correct = 32'b11010101100011100001011011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000001001101101110010001000;
		correct = 32'b01110111110110010010001101110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110000010100000001000011100;
		correct = 32'b11001001111101011111110111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001011110101100111110001011;
		correct = 32'b11100110100001010011000001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100010100111001000010100110;
		correct = 32'b00101011101011000110111101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001111101100001110110100101;
		correct = 32'b11001110000010011110001001011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011110000000001010100011110;
		correct = 32'b11111100001111111110101011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111101111101000010111111000;
		correct = 32'b10011000010000010111101000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100110111000101000111001;
		correct = 32'b11110011011001000111010111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111000000001010011000011;
		correct = 32'b11100011000111111110101100111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110000000010010110010110001;
		correct = 32'b10110001111111101101001101001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111010101110000100101110;
		correct = 32'b11110110000101010001111011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010010101111011111101001111;
		correct = 32'b11000101101010000100000010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000110111101001111100110;
		correct = 32'b10111100111001000010110000011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010000100011001011100111001;
		correct = 32'b10001101111011100110100011000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111001110100011110001110;
		correct = 32'b00001000000110001011100001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010110100101011111001010;
		correct = 32'b10100011101001011010100000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000010011010001001010100;
		correct = 32'b11011110111101100101110110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000010010101111011100000111;
		correct = 32'b11101111101101010000100011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001011110100000101010100011;
		correct = 32'b11111110100001011111010101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001000000100100010100110;
		correct = 32'b00100001110111111011011101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011001010100011101011000101;
		correct = 32'b10101100110101011100010100111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100111111100011011100000;
		correct = 32'b11010011011000000011100100011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000011001100000101001101;
		correct = 32'b00110100111100110011111010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110101001011001110111010010;
		correct = 32'b01101001010110100110001000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110000001101000001000100;
		correct = 32'b01011001001111110010111110111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100110000001110000000001;
		correct = 32'b10111010011001111110001111111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011101100110110011110110;
		correct = 32'b00100110100010011001001100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010000111101110010111010;
		correct = 32'b01010111101111000010001101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011010101001100100110100000;
		correct = 32'b01001100101010110011011001011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110000101110111001011111010;
		correct = 32'b10000001111010001000110100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011011001001010000001001;
		correct = 32'b11101011100100110110101111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001100101000010001101011100;
		correct = 32'b01100110011010111101110010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100011111100001011110010000;
		correct = 32'b00100011100000011110100001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011000111000101110101001111;
		correct = 32'b00111100111000111010001010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111100110000001101110000;
		correct = 32'b11110110000011001111110010001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011101100000000000111010111;
		correct = 32'b10101100010011111111111000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100000110001110101010100001;
		correct = 32'b11011011111001110001010101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100111001110110000111000111;
		correct = 32'b00000011000110001001111000111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011000110010001100111000101;
		correct = 32'b11110100111001101110011000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001010111000111111100110011;
		correct = 32'b10010110101000111000000011001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001011001100100011010100110;
		correct = 32'b11101110100110011011100101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001000001000100011010010;
		correct = 32'b10100101110111110111011100101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010100101111110001001111011;
		correct = 32'b01011101011010000001110110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011001011001000011110101;
		correct = 32'b01010111100110100110111100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100001011100010010111011;
		correct = 32'b11010011011110100011101101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011111101101011010101100;
		correct = 32'b01010001100000010010100101010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010110010000110110001001001;
		correct = 32'b00010101001101111001001110110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011101110100100010101110001;
		correct = 32'b11011100010001011011101010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010010101001100101100011110;
		correct = 32'b11010101101010110011010011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100101011110111010001100010;
		correct = 32'b00101011010100001000101110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110000010110101001111111;
		correct = 32'b11001001001111101001010110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010101101000100111010010;
		correct = 32'b11100011101010010111011000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110011011101100100100010011;
		correct = 32'b11111001100100010011011011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001001100011110001011000000;
		correct = 32'b01111110110011100001110100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101101010100101110110010100;
		correct = 32'b11001010010101011010001001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010110010010011101100111011;
		correct = 32'b01011101001101101100010011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011101000001100101011100101;
		correct = 32'b10001100010111110011010100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101001011110010011101001;
		correct = 32'b10011101010110100001101100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010011001101110001011100010;
		correct = 32'b00101101100110010001110100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101101110000001001101100;
		correct = 32'b11111100010010001111110110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101100111110001010111101110;
		correct = 32'b10001010011000001110101000010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111010010001011000010111010;
		correct = 32'b11110000101101110100111101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101100111011011001010101;
		correct = 32'b10111011010011000100100110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011000111111100011111100;
		correct = 32'b11001010100111000000011100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011010001001110011010001100;
		correct = 32'b11010100101110110001100101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000001101110010011011010000;
		correct = 32'b01111111110010001101100100101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001010011000001010100111001;
		correct = 32'b01000110101100111110101011000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111001000011100110111101101;
		correct = 32'b10100000110111100011001000010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100101011100101110110010011;
		correct = 32'b10000011010100011010001001101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111001001110010111011100;
		correct = 32'b11110111000110110001101000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100011001011111111110010110;
		correct = 32'b00011011100110100000000001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100101010110001010000001101;
		correct = 32'b11011011010101001110101111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100011011110001000110000010;
		correct = 32'b10101011100100001110111001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100001000010100001100000110;
		correct = 32'b10110011110111101011110011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110001111000010101000100001;
		correct = 32'b01001001110000111101010111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110110011111011000100100101;
		correct = 32'b01110001001100000100111011011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010110100011000111010000100;
		correct = 32'b00110101001011100111000101111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011100101111110110000010100;
		correct = 32'b01000100011010000001001111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010010011110101011100010101;
		correct = 32'b10110101101100001010100011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000001000110010000101010000;
		correct = 32'b01011111110111001101111010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010111001101001010001100;
		correct = 32'b00000101101000110010110101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010000001010111011011100111;
		correct = 32'b00011101111110101000100100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111100111101010101110010010;
		correct = 32'b11111000011000010101010001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000100101011101110100010101;
		correct = 32'b00010111011010100010001011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111000011101100010101111;
		correct = 32'b11110111000111100010011101010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001101101101000011100010100;
		correct = 32'b00010110010010010111100011101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110010010101010001000100;
		correct = 32'b01101111001101101010101110111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011110100000101111000010111;
		correct = 32'b11110100001011111010000111101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100001000000000111110111011;
		correct = 32'b11111011110111111111000001000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101000011000110001011001111;
		correct = 32'b10111010111100111001110100110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010010101000011011100111010;
		correct = 32'b01100101101010111100100011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011100110101110100011000110;
		correct = 32'b11011100011001010001011100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010000011000110011110100010;
		correct = 32'b11011101111100111001100001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110110110111100011101110;
		correct = 32'b01011001001001001000011100010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000010100100010000100000101;
		correct = 32'b00000111101011011101111011111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001001111010100111100001111;
		correct = 32'b10110110110000101011000011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101100011111011011111110110;
		correct = 32'b11100010011100000100100000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101010101000100110010110;
		correct = 32'b10010100010101010111011001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010111111010000101010000011;
		correct = 32'b01111101000000101111010101111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001001010000111010111100000;
		correct = 32'b10111110110101111000101000011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010100111101010000001011001;
		correct = 32'b10101101011000010101111110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010010100011100100100010010;
		correct = 32'b11011101101011100011011011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010111100011110010101010101;
		correct = 32'b11110101000011100001101010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011101001010001111011000;
		correct = 32'b11000111100010110101110000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010000010101000110010101001;
		correct = 32'b01110101111101010111001101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011001100110100110011000010;
		correct = 32'b01110100110011001011001100111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010001100010011101101011100;
		correct = 32'b01100101110011101100010010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111110111000100000010001101;
		correct = 32'b00001000001000111011111101110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111011101010000000000000110;
		correct = 32'b11101000100010101111111111111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000001001100111000111111011;
		correct = 32'b10010111110110011000111000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110110111100000110000000000;
		correct = 32'b11100001001000011111001111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001110100010000110101100011;
		correct = 32'b11001110001011101111001010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101100011111111010110001;
		correct = 32'b00110100010011100000000101001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010000011110101011010010001;
		correct = 32'b01010101111100001010100101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011001111100100100101000;
		correct = 32'b11100000100110000011011011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011001010100001100100111;
		correct = 32'b10110110100110101011110011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100001101011010110000111;
		correct = 32'b10000100011110010100101001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101100010001100001110100;
		correct = 32'b00101111010011101110011110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000110000110110110101101;
		correct = 32'b10000110111001111001001001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010101011101000100100001;
		correct = 32'b10000111101010100010111011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100010010101010111111001110;
		correct = 32'b11101011101101010101000000110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100100101101001011110101000;
		correct = 32'b10110011011010010110100001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000111001001011001101000011;
		correct = 32'b11000111000110110100110010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000110101001010100000100;
		correct = 32'b01111101111001010110101011111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010101110110110110111110;
		correct = 32'b11001000101010001001001001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000101011010011000001000101;
		correct = 32'b01001111010100101100111110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111011011010010101100100110;
		correct = 32'b00010000100100101101010011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000010111011000110111101010;
		correct = 32'b11001111101000100111001000010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101001110110100010110100110;
		correct = 32'b11000010110001001011101001011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010010010000110010101110;
		correct = 32'b10011111101101101111001101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011110101111111011111010011;
		correct = 32'b00010100001010000000100000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100000101011111110010101001;
		correct = 32'b11101011111010100000001101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001110010101001101111101000;
		correct = 32'b01010110001101010110010000010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001001001000011111001010011;
		correct = 32'b01101110110110111100000110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001001101101111100001000110;
		correct = 32'b11011110110010010000011110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100100010010100101001100000;
		correct = 32'b00100011011101101011010110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101010111011100110001111110;
		correct = 32'b01011010101000100011001110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101001110011011101101011111;
		correct = 32'b11001010110001100100010010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000100001001100111100100;
		correct = 32'b01111100111011110110011000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110010101100111001011001011;
		correct = 32'b00001001101010011000110100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000111110011100001110110101;
		correct = 32'b01010111000001100011110001001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000101110110110101010101101;
		correct = 32'b11010111010001001001010101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100000010111000010110000100;
		correct = 32'b11110011111101000111101001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010011111101101011001000101;
		correct = 32'b10011101100000010010100110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010101111111000010010000;
		correct = 32'b10110011101010000000111101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000111010111111011010001;
		correct = 32'b00011100111000101000000100101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110111001100011000001011101;
		correct = 32'b00001001000110011100111110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111110101110010110111110;
		correct = 32'b00101011000001010001101001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110110101001001001101100100;
		correct = 32'b11111001001010110110110010011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011000111111001010010110111;
		correct = 32'b10011100111000000110101101001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101101011101111101101101110;
		correct = 32'b11110010010100010000010010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000110011001101001001000001;
		correct = 32'b10101111001100110010110110111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101010110110011110011000011;
		correct = 32'b00110010101001001100001100111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101101001111011111111101101;
		correct = 32'b11011010010110000100000000010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001010011111000000100111101;
		correct = 32'b01110110101100000111111011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101001101000111111100000;
		correct = 32'b00110100010110010111000000011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010101101001000010101100;
		correct = 32'b01101100101010010110111101010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111100100111000101010110111;
		correct = 32'b00010000011011000111010101001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010111011100100010010010110;
		correct = 32'b10100101000100011011101101101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101100100100111101100001011;
		correct = 32'b10001010011011011000010011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001000001101100110001000;
		correct = 32'b01000110110111110010011001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000011010101100000101011000;
		correct = 32'b11110111100101010011111010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011000101100000101100010;
		correct = 32'b11000111100111010011111010011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000101011001110011010001001;
		correct = 32'b11110111010100110001100101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000110011100101000001110111;
		correct = 32'b11000111001100011010111110001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111011011010101110100111000;
		correct = 32'b10011000100100101010001011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000011110101100001011001111;
		correct = 32'b01011111100001010011110100110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100000010000010001100111010;
		correct = 32'b11001011111101111101110011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111110000011100011110010010;
		correct = 32'b01111000001111100011100001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101100001101100110010100010;
		correct = 32'b00111010011110010011001101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101100100110100101010101;
		correct = 32'b01000000010011011001011010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011100001110110001011000111;
		correct = 32'b10100100011110001001110100111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110001110111000110000011;
		correct = 32'b11100101001110001000111001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000111001010010101101110001;
		correct = 32'b01001111000110101101010010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010110001010101000111100;
		correct = 32'b01010111101001110101010111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111011100001010110000110111;
		correct = 32'b00010000100011110101001111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101111000101011000011100101;
		correct = 32'b11010010000111010100111100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011001110100010010001110;
		correct = 32'b01100000100110001011101101110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000111111001110110011001101;
		correct = 32'b00011111000000110001001100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001000000011100100011001010;
		correct = 32'b00111110111111100011011100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010001001000000000011100000;
		correct = 32'b11000101110110111111111100011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110010101011000110111000;
		correct = 32'b00110100001101010100111001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011110000111101111101101100;
		correct = 32'b11000100001111000010000010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101001110011100000110101111;
		correct = 32'b11011010110001100011111001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111010101111101001000010;
		correct = 32'b01000011000101010000010110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010001010111000100100110;
		correct = 32'b01000011101110101000111011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111100110111101001011110011;
		correct = 32'b11001000011001000010110100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111100100111101001000111110;
		correct = 32'b11010000011011000010110111000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001010011001110001011111010;
		correct = 32'b01101110101100110001110100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101111110000110101010110011;
		correct = 32'b01101010000001111001010101001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101100100010111010000111110;
		correct = 32'b10100010011011101000101111000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101000000000101101100001111;
		correct = 32'b10000010111111111010010011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000001011110001101011111;
		correct = 32'b00010000111110100001110010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011001001001010110001100;
		correct = 32'b01001111100110110110101001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010000001111111001101100;
		correct = 32'b00000110101111110000000110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111001010111010011111000100;
		correct = 32'b01010000110101000101100000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100010111001110101101000010;
		correct = 32'b00001011101000110001010010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000101000100001011100110100;
		correct = 32'b01111111010111011110100011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110001010000000010100010;
		correct = 32'b10101001001110101111111101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011001010011111100111000101;
		correct = 32'b10110100110101100000011000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101100111110000111010010001;
		correct = 32'b10010010011000001111000101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000110000101010010001001;
		correct = 32'b11010111111001111010101101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111110101110100001101101111;
		correct = 32'b10000000001010001011110010010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010001011100000010101011101;
		correct = 32'b11101101110100011111101010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110111100110000011111110011;
		correct = 32'b00101001000011001111100000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101011111010001010101001;
		correct = 32'b10111011010100000101110101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010011010101100001010001001;
		correct = 32'b01010101100101010011110101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100100001110000001011100;
		correct = 32'b10010001011011110001111110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000101011000111000111000110;
		correct = 32'b00001111010100111000111000111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101110100100101100101110111;
		correct = 32'b01110010001011011010011010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111000001111000101000110;
		correct = 32'b10110110000111110000111010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101100100110101000111110000;
		correct = 32'b00010010011011001010111000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101100111111000011110101010;
		correct = 32'b00100010011000000111100001010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110101111101011101000010110;
		correct = 32'b11101001010000010100010111101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101100001010010001000010;
		correct = 32'b10111110010011110101101110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010110000101100001110011;
		correct = 32'b11100001101001111010011110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010111110110011100010010;
		correct = 32'b10110011101000001001100011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111101100110001110111001000;
		correct = 32'b00001000010011001110001000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111001101100101011010010010;
		correct = 32'b10010000110010011010100101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101100111010111110101101100;
		correct = 32'b10011010011000101000001010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011011100111001100000111001;
		correct = 32'b11010100100011000110011111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101011001010001101110110001;
		correct = 32'b11111010100110101110010001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001010101010101000111011000;
		correct = 32'b10110110101010101010111000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111101011010011100100100;
		correct = 32'b01111001000010100101100011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101100011011101010000100;
		correct = 32'b11000111010011100100010101111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110100111010000111101111001;
		correct = 32'b11001001011000101111000010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001011110111101011110011101;
		correct = 32'b01000110100001000010100001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001011010111111111010000;
		correct = 32'b11010100110100101000000000101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010010101101100100010010010;
		correct = 32'b11101101101010010011011101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101110100001000110101011;
		correct = 32'b10011101010001011110111001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110111110110111101111001000;
		correct = 32'b11001001000001001000010000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100110001010011010011011111;
		correct = 32'b11010011001110101100101100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001100010110011000001110010;
		correct = 32'b10100110011101001100111110001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000000001101110110100001011;
		correct = 32'b11000111111110010001001011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011000010001101111100100010;
		correct = 32'b11110100111101110010000011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000111001111010010101010;
		correct = 32'b01001110111000110000101101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000000110000011001111000;
		correct = 32'b11110110111111001111100110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010001011001110111110000011;
		correct = 32'b01001101110100110001000001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111100011101110111111010001;
		correct = 32'b10101000011100010001000000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000100011010101110000001;
		correct = 32'b01001110111011100101010001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110001101001010010001111;
		correct = 32'b00111010001110010110101101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111010001101101100111111000;
		correct = 32'b01001000101110010010011000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100100100111000011110011;
		correct = 32'b00101111011011011000111100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110100001100000000101101010;
		correct = 32'b00111001011110011111111010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101010010110011011110000010;
		correct = 32'b01100010101101001100100001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010010100001101101000110101;
		correct = 32'b00110101101011110010010111001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000110111111110101011001001;
		correct = 32'b10011111001000000001010100110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011001001110010010110010101;
		correct = 32'b11101100110110001101101001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110111100101011101011110011;
		correct = 32'b01101001000011010100010100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010101111101000011001011;
		correct = 32'b11100001101010000010111100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000011110110001011011011;
		correct = 32'b10000110111100001001110100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101001110110011001101000101;
		correct = 32'b00111010110001001100110010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101110001111011011101000110;
		correct = 32'b10000010001110000100100010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101111111110011100111100;
		correct = 32'b01100010010000000001100011000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111100111111111011000001001;
		correct = 32'b11111000011000000000100111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110001000111001011110101100;
		correct = 32'b10010001110111000110100001010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000111010110001011001111010;
		correct = 32'b11010111000101001110100110000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100111111110100101110100111;
		correct = 32'b11110011000000001011010001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101000110100111011110010;
		correct = 32'b11000011010111001011000100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001011010011011000100100000;
		correct = 32'b00000110100101100100111011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011001111011011100000111101;
		correct = 32'b10110100110000100100011111000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001000100101101001101010010;
		correct = 32'b10111110111011010010110010101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001000011010001101001111011;
		correct = 32'b01010110111100101110010110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001100100101001101011000010;
		correct = 32'b01100110011011010110010100111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100111000110111110100110001;
		correct = 32'b00010011000111001000001011001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100110010100100100000011001;
		correct = 32'b11111011001101011011011111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111110100011101110100110010;
		correct = 32'b10010000001011100010001011001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101010100111111100111100001;
		correct = 32'b10011010101011000000011000011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111001110110001100101001011;
		correct = 32'b00000000110001001110011010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010011011011000111101111100;
		correct = 32'b01100101100100100111000010000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010011100110101000101010001;
		correct = 32'b00110101100011001010111010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001011100001010010111111000;
		correct = 32'b01111110100011110101101000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000110010011111111000110100;
		correct = 32'b00001111001101100000000111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110001011000110000101101011;
		correct = 32'b00111001110100111001111010010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001010111100110000000101001;
		correct = 32'b01011110101000011001111111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101110000011101010110111;
		correct = 32'b01000011010001111100010101001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000101101101000010001100110;
		correct = 32'b10011111010010010111101110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000001110000001010101101000;
		correct = 32'b00111111110001111110101010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111101001111101001010011;
		correct = 32'b00101011000010110000010110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101001110011101100101111111;
		correct = 32'b00000010110001100010011010000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010100000000110111101110101;
		correct = 32'b10010101011111111001000010001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010100100111100011110101010;
		correct = 32'b11100101011011000011100001010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000111001100000011111100110;
		correct = 32'b01001111000110011111100000011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111100111000010110111101001;
		correct = 32'b00011000011000111101001000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100011110000011010111101100;
		correct = 32'b10111011100001111100101000010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101011011010010001101110000;
		correct = 32'b10010010100100101101110010001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000001100010110110011100000;
		correct = 32'b00010111110011101001001100011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111000000011010110110110011;
		correct = 32'b00011000111111100101001001001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110000111011011010110100100;
		correct = 32'b00011001111000100100101001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001100101100000100100101100;
		correct = 32'b01101110011010011111011011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101010110000100000101100010;
		correct = 32'b10111010101001111011111010011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011011001010100100001011101;
		correct = 32'b11001100100110101011011110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001100011100101100101011000;
		correct = 32'b01001110011100011010011010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111011010100101110110000010;
		correct = 32'b01001000100101011010001001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101101100010101100101101110;
		correct = 32'b10011010010011101010011010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110000010110110011100000;
		correct = 32'b01000100001111101001001100011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001111010101011101000110110;
		correct = 32'b11011110000101010100010111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001010000001001010001000110;
		correct = 32'b11011110101111110110101110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010101001101010110010100;
		correct = 32'b00011100101010110010101001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110100011100110011111110011;
		correct = 32'b11011001011100011001100000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101011011011100000011100;
		correct = 32'b11000011010100100100011111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111011011110010001010101001;
		correct = 32'b10111000100100001101110101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110000100110010011100100;
		correct = 32'b11011010001111011001101100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001111101111111100100001;
		correct = 32'b01000101110000010000000011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101001110110010000110000010;
		correct = 32'b10000010110001001101111001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110011111100110100111100010;
		correct = 32'b00011001100000011001011000011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010010010101000010111101100;
		correct = 32'b00011101101101010111101000010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010000100111011011011010011;
		correct = 32'b01000101111011000100100100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110100001110100101101100001;
		correct = 32'b10000001011110001011010010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101101010011110001101101100;
		correct = 32'b10010010010101100001110010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101011101110100111100001;
		correct = 32'b01011001010100010001011000011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001111110101001011101001110;
		correct = 32'b01001110000001010110100010110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101000000001010001101001100;
		correct = 32'b01101010111111110101110010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010001000111010111011011000;
		correct = 32'b01111101110111000101000100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111001001110100010011000101;
		correct = 32'b11010000110110001011101100111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010101001011110110101000010;
		correct = 32'b00101101010110100001001010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000011011011111011011101111;
		correct = 32'b01000111100100100000100100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010101100001111110101110;
		correct = 32'b11000110101010011110000001010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000100110100010010001011100;
		correct = 32'b01111111011001011101101110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110000010100110001001100011;
		correct = 32'b01011001111101011001110110011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000100110111100100101011010;
		correct = 32'b10011111011001000011011010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100010001111011000001010100;
		correct = 32'b00000011101110000100111110101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110011010101100011110100100;
		correct = 32'b11000001100101010011100001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100011110011101101111001100;
		correct = 32'b11011011100001100010010000110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001010111101101101011110010;
		correct = 32'b11111110101000010010010100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000110010100011100011011101;
		correct = 32'b01001111001101011100011100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101110001101000001000100100;
		correct = 32'b11001010001110010111110111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010011010111011101000101;
		correct = 32'b01110101101100101000100010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100110001110000010110101001;
		correct = 32'b10110011001110001111101001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001111011011110100000001010;
		correct = 32'b11011110000100100001011111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100001101011000111111000000;
		correct = 32'b11111011110010100111000000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101101110100011100000010;
		correct = 32'b01000011010010001011100011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100011000000000100111110001;
		correct = 32'b10101011100111111111011000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010000011110000001000110011;
		correct = 32'b11010101111100001111110111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100001011000101100101100001;
		correct = 32'b11011011110100111010011010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000000101110101011101100000;
		correct = 32'b10001111111010001010100010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010001111100101101011011111;
		correct = 32'b00010101110000011010010100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100011110110110010010111101;
		correct = 32'b00001011100001001001101101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101010001100011100000001100;
		correct = 32'b10101010101110011100011111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100001100001011100001100100;
		correct = 32'b10100011110011110100011110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001000101001110001111110001;
		correct = 32'b00001110111010110001110000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111111000100101100110101;
		correct = 32'b10110110000000111011010011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110010000011100111111010011;
		correct = 32'b10010001101111100011000000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110001111000001010110011111;
		correct = 32'b10011001110000111110101001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111010010000111111001111111;
		correct = 32'b01011000101101111000000110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111101010001111110101101011;
		correct = 32'b10010000010101110000001010010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110100110010010001111010101;
		correct = 32'b01101001011001101101110000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010110100100101000001010101;
		correct = 32'b01101101001011011010111110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110110100111010011110010001;
		correct = 32'b00101001001011000101100001101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100100101111100001000100110;
		correct = 32'b11111011011010000011110111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011110101101000000001111111;
		correct = 32'b11101100001010010111111110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000001000110100001101011000;
		correct = 32'b01011111110111001011110010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001000111001000000010101000;
		correct = 32'b01101110111000110111111101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011000101101010010010110100;
		correct = 32'b11100100111010010101101101001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110000011001100011110001001;
		correct = 32'b10101001111100110011100001110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000110010100110111110111001;
		correct = 32'b11011111001101011001000001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101110100000111001001110;
		correct = 32'b10001011010001011111000110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111011001101110010110000111;
		correct = 32'b11011000100110010001101001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010000111000110001111100010;
		correct = 32'b01000101111000111001110000011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110111011111001011110010100;
		correct = 32'b00010001000100000110100001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001010101101000010011000110;
		correct = 32'b01111110101010010111101100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101010110001000010001100101;
		correct = 32'b11110010101001110111101110011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001000111011001011100111000;
		correct = 32'b10011110111000100110100011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110000111000010101001101100;
		correct = 32'b01101001111000111101010110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101101010110010001100110100;
		correct = 32'b00110010010101001101110011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101001011010111001111011;
		correct = 32'b00001011010110100101000110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001010000001010110100010100;
		correct = 32'b01000110101111110101001011101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100101110011000001001101011;
		correct = 32'b11111011010001100111110110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000000010011110000100100;
		correct = 32'b01111101111111101100001111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111011010100010001011001010;
		correct = 32'b11101000100101011101110100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010000010110000111000001101;
		correct = 32'b00010101111101001111000111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010110001111010111111101;
		correct = 32'b11100100101001110000101000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011000011011100011011011101;
		correct = 32'b01100100111100100011100100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011011101111101110010100;
		correct = 32'b11010001100100010000010001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100011011010100100111001111;
		correct = 32'b01100011100100101011011000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111100011110010010110101101;
		correct = 32'b10111000011100001101101001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100101100001011010000110010;
		correct = 32'b10000011010011110100101111001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101000000100101111111000010;
		correct = 32'b00100010111111011010000000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110010001000111100100011100;
		correct = 32'b10001001101110111000011011100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000110001011110100011101100;
		correct = 32'b10101111001110100001011100010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100110000110001011111010011;
		correct = 32'b01100011001111001110100000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110110100110101010111011101;
		correct = 32'b10100001001011001010101000100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100010110000111101011000001;
		correct = 32'b10000011101001111000010100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010000000110101010010110000;
		correct = 32'b10010101111111001010101101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100010101011000000101011000;
		correct = 32'b10101011101010100111111010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101000101101011000000110;
		correct = 32'b01000000010111010010100111111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100100000110110111001001;
		correct = 32'b11110011011011111001001000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110010011000011010000001100;
		correct = 32'b01101001101100111100101111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001100111101110000110011111;
		correct = 32'b01000110011000010001111001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100110101110101101001011000;
		correct = 32'b10001011001010001010010110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000000100100110110101110;
		correct = 32'b01111001111111011011001001010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010100001100100001000010101;
		correct = 32'b01101101011110011011110111101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011010110111101111001100101;
		correct = 32'b01000100101001000010000110011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011010011100001111011000;
		correct = 32'b01100111100101100011110000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001010001011011110010001110;
		correct = 32'b10000110101110100100001101110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001110111111110010110010111;
		correct = 32'b10000110001000000001101001101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110000110010110001101101101;
		correct = 32'b11110001111001101001110010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001101100001100001100011010;
		correct = 32'b01110110010011110011110011100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000110010100010101111101111;
		correct = 32'b10001111001101011101010000010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001001110010011001101011110;
		correct = 32'b00111110110001101100110010100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001000000111110001111010;
		correct = 32'b10110111110111111000001110000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111110100011010001001000101;
		correct = 32'b11011000001011100101110110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111111001010001110000101110;
		correct = 32'b11010000000110101110001111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101011110101110101001110101;
		correct = 32'b11110010100001010001010110001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011000100101000110110011;
		correct = 32'b00011110100111011010111001001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101100001101000001111101;
		correct = 32'b00110100010011110010111110000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001010110011010101100011110;
		correct = 32'b00111110101001100101010011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010001111111101001100000110;
		correct = 32'b00101101110000000010110011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111010100000000011010001111;
		correct = 32'b10100000101011111111100101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010001010100101000100110110;
		correct = 32'b10000101110101011010111011001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001111011111010110010000011;
		correct = 32'b00000110000100000101001101111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001010010110001001000100001;
		correct = 32'b11010110101101001110110111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101010001011110100100110011;
		correct = 32'b01010010101110100001011011001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001110011101110111011011010;
		correct = 32'b11100110001100010001000100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110011011101101111110011110;
		correct = 32'b01100001100100010010000001100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100110110011110011000101000;
		correct = 32'b11111011001001100001100111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111001100100101110011100001;
		correct = 32'b11110000110011011010001100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100011011111011000001111100;
		correct = 32'b01011011100100000100111110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011011010111111101011001110;
		correct = 32'b01100100100101000000010100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000100001010010011110001000;
		correct = 32'b01001111011110101101100001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001100010010000011101001000;
		correct = 32'b10011110011101101111100010110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101100100011001100000001101;
		correct = 32'b10010010011011100110011111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110011011011101001001011110;
		correct = 32'b00101001100100100010110110100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110101000001010001110100100;
		correct = 32'b01101001010111110101110001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100011011100010001101010010;
		correct = 32'b00110011100100011101110010101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010010110100000010001010;
		correct = 32'b11100100101101001011111101110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010010111001001100111111;
		correct = 32'b10101001101101000110110011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101111111100101101001001011;
		correct = 32'b01011010000000011010010110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110110010011000001000110111;
		correct = 32'b01110001001101100111110111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011101000111100001001101;
		correct = 32'b11101111100010111000011110110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011111110111110111000110011;
		correct = 32'b00111100000001000001000111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001111001110000111100000010;
		correct = 32'b10010110000110001111000011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111000000111100101010011;
		correct = 32'b11100011000111111000011010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100011111111101000101100;
		correct = 32'b10111011011100000000010111010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010100110110111110111001011;
		correct = 32'b11001101011001001000001000110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110010011010101011001011;
		correct = 32'b11011010001101100101010100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100110011000100000110100010;
		correct = 32'b00100011001100111011111001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111001101110001111100110111;
		correct = 32'b11011000110010001110000011001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000111111000111100011001101;
		correct = 32'b01100111000000111000011100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011100111111101001000011110;
		correct = 32'b01011100011000000010110111100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111000001011010001001001111;
		correct = 32'b10011000111110100101110110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010101011011100111010010111;
		correct = 32'b11111101010100100011000101101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111111100001010111111111000;
		correct = 32'b11001000000011110101000000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110100111101000010010100111;
		correct = 32'b10110001011000010111101101011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011000011010010101100010;
		correct = 32'b00111010100111100101101010011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001111000100101000001011111;
		correct = 32'b00010110000111011010111110100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000010111011001101010101;
		correct = 32'b11010111111101000100110010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110011110111001011100100110;
		correct = 32'b00011001100001000110100011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000100101101110010001110110;
		correct = 32'b11010111011010010001101110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001110011010101011101001010;
		correct = 32'b11101110001100101010100010110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110111100110010100010000110;
		correct = 32'b10110001000011001101011101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110000010110010110110000;
		correct = 32'b11100111001111101001101001001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111011001000100101110011001;
		correct = 32'b10110000100110111011010001100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010010000110001101111101101;
		correct = 32'b11101101101111001110010000010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110110110101010110001101110;
		correct = 32'b10001001001001010101001110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111101011110011100101001;
		correct = 32'b11100001000010100001100011010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110100001111101000111001010;
		correct = 32'b01010001011110000010111000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011001110100001111111111000;
		correct = 32'b00001100110001011110000000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011000101010010101011001000;
		correct = 32'b01101100111010101101010100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111000100101111001010000;
		correct = 32'b11110010000111011010000110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010000001000011001111001001;
		correct = 32'b01011101111110111100110000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000001000011011001110000110;
		correct = 32'b11100111110111100100110001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101101100100100100111000000;
		correct = 32'b10001010010011011011011000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110101100111100010101110001;
		correct = 32'b11000001010011000011101010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101100110010110001110011100;
		correct = 32'b01010010011001101001110001100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101110110111001110001000011;
		correct = 32'b11001010001001000110001110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100110111000001001010100001;
		correct = 32'b01001011001000111110110101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110001101001000001010011;
		correct = 32'b01110000001110010110111110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100011001100101000101001111;
		correct = 32'b10101011100110011010111010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011011100111011101001100;
		correct = 32'b11100000100100011000100010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111101111001110100101110101;
		correct = 32'b11111000010000110001011010001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001101011110011011111000001;
		correct = 32'b10000110010100001100100000111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110101111011111110111010001;
		correct = 32'b10111001010000100000001000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001111000001010100010010101;
		correct = 32'b10011110000111110101011101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000111000111100100010011100;
		correct = 32'b00010111000111000011011101100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010100011011001111100010111;
		correct = 32'b01000101011100100110000011101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101100010011011100001111;
		correct = 32'b00110110010011101100100011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001100111010101110001100;
		correct = 32'b10101011110011000101010001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011011100000101110011001011;
		correct = 32'b00101100100011111010001100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100101001100101010010101110;
		correct = 32'b10011011010110011010101101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101100111100010101001100001;
		correct = 32'b00001010011000011101010110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001111010000001011110001110;
		correct = 32'b10111110000101111110100001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100010101000010000111001;
		correct = 32'b10000100011101010111101111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101001101000100011000100110;
		correct = 32'b10101010110010111011100111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111101010011011111110100010;
		correct = 32'b00101000010101100100000001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000101100111111111000101110;
		correct = 32'b10010111010011000000000111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000101010010010100001101;
		correct = 32'b10011101111010101101101011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100110110001101110110000100;
		correct = 32'b10000011001001110010001001111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100111000001001001011100101;
		correct = 32'b10000011000111110110110100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111111000111111010011001;
		correct = 32'b11110010000000111000000101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011000001110100110011011101;
		correct = 32'b01010100111110001011001100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001101110111000001111100111;
		correct = 32'b11100110010001000111110000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110110011011010001000011101;
		correct = 32'b00000001001100100101110111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010101001000010011101001101;
		correct = 32'b10001101010110111101100010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110100011111001010100111011;
		correct = 32'b11111001011100000110101011000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111011100110110111010011;
		correct = 32'b11111010000100011001001000101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011111100101101110011011000;
		correct = 32'b10100100000011010010001100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101000001111010010000111;
		correct = 32'b01100010010111110000101101111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000010101101010110111100;
		correct = 32'b00010000111101010010101001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111100101100100110011101;
		correct = 32'b00101011000011010011011001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110011101110111101001001000;
		correct = 32'b10111001100010001000010110110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100101111111010000101000;
		correct = 32'b01101000011010000000101111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000011111010000110101110111;
		correct = 32'b00001111100000101111001010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111110000100001100000001111;
		correct = 32'b00101000001111011110011111110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010101010101001110011101;
		correct = 32'b01011011101010101010110001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011110111111101110000000111;
		correct = 32'b01100100001000000010001111111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100010010001101101100101011;
		correct = 32'b00110011101101110010010011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001000111101111001100010011;
		correct = 32'b11010110111000010000110011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100101101000011110011100;
		correct = 32'b01010101011010010111100001100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010110001110101100010111000;
		correct = 32'b10101101001110001010011101000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011011010001111101101001;
		correct = 32'b01001101100100101110000010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110101001101110100001000;
		correct = 32'b00010111001010110010001011110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011100100111011000100110000;
		correct = 32'b01110100011011000100111011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100001101110100011111100111;
		correct = 32'b01110011110010001011100000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111000000011000000000011011;
		correct = 32'b00000000111111100111111111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010010001001101010110010;
		correct = 32'b00011000101101110110010101001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010100010101111101101000011;
		correct = 32'b11011101011101010000010010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011111001010110101110101101;
		correct = 32'b10001100000110101001010001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111010101000000000001011101;
		correct = 32'b11000000101010111111111110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011111010111100100010100100;
		correct = 32'b00101100000101000011011101011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101010000111010011110010;
		correct = 32'b01000110010101111000101100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000011010100110000110100;
		correct = 32'b01010111111100101011001111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111010101111011111001010;
		correct = 32'b10111101000101010000100000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000001011100010101110011;
		correct = 32'b00011100111110100011101010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011110010100010010111000001;
		correct = 32'b11000100001101011101101000111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001110001000001011001101111;
		correct = 32'b10100110001110111110100110010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001100011010110010100000110;
		correct = 32'b00000110011100101001101011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110011010000111110001100;
		correct = 32'b00111010001100101111000001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011001000011001010111011;
		correct = 32'b11101011100110111100110101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010000100001111001101011111;
		correct = 32'b10001101111011110000110010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001101111001010000011001101;
		correct = 32'b10010110010000110101111100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100101010100101010110001;
		correct = 32'b00001001011010101011010101001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000001000000001111001101;
		correct = 32'b11011000111110111111110000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111011010001110101110000;
		correct = 32'b00101011000100101110001010001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110000000011011100001110101;
		correct = 32'b00011001111111100100011110001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001001001111011000100011000;
		correct = 32'b11001110110110000100111011100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111101001100100011111110110;
		correct = 32'b10101000010110011011100000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111000010101010000001010101;
		correct = 32'b01100000111101010101111110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101100000010001101010010010;
		correct = 32'b00110010011111101110010101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110100000111011100101101;
		correct = 32'b10100101001011111000100011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010101001000111110100110;
		correct = 32'b11001000101010110111000001011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000001111000000001010111011;
		correct = 32'b10000111110000111111110101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111001001100110001011111110;
		correct = 32'b10110000110110011001110100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000100111001101101100010100;
		correct = 32'b10110111011000110010010011101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110111011100001100101010101;
		correct = 32'b11011001000100011110011010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000110100001101000100101000;
		correct = 32'b10011111001011110010111011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110011100010001000011011011;
		correct = 32'b01101001100011101110111100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100100101011100000101001;
		correct = 32'b10000111011011010100011111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010011001001001011011100001;
		correct = 32'b01111101100110110110100100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010101000111001000001011010;
		correct = 32'b01111101010111000110111110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010011001000111110001101010;
		correct = 32'b10111101100110111000001110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011010101111110011111010001;
		correct = 32'b11010100101010000001100000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111111011101011111000011;
		correct = 32'b00101011000000100010100000111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101011111110101000110001001;
		correct = 32'b11100010100000001010111001110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110010111011100101101001011;
		correct = 32'b11110001101000100011010010110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110101100000010101101000010;
		correct = 32'b11011001010011111101010010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010010001111111111110110;
		correct = 32'b10101001101101110000000000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101101001000000111110110;
		correct = 32'b01100010010010110111111000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101010000001111111110000;
		correct = 32'b10011101010101111110000000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000101000010001011110110100;
		correct = 32'b11011111010111101110100001001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111000011001001010001101011;
		correct = 32'b00001000111100110110101110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011011100111000111010011010;
		correct = 32'b00110100100011000111000101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100111110101110001111001111;
		correct = 32'b00100011000001010001110000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000101010011010010001100111;
		correct = 32'b10111111010101100101101110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010101010110100101010100;
		correct = 32'b11100001101010101001011010101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000101101111101010010000010;
		correct = 32'b10100111010010000010101101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000000001010001101010011001;
		correct = 32'b11011111111110101110010101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111101100110011110111011010;
		correct = 32'b01111000010011001100001000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100100010001110000101011;
		correct = 32'b01000001011011101110001111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000110100011110101111111101;
		correct = 32'b11101111001011100001010000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010100110000111001011101101;
		correct = 32'b11011101011001111000110100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100001110101010001101100;
		correct = 32'b01011010011110001010101110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101011100101010111101000010;
		correct = 32'b01001010100011010101000010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000011101001110001100111;
		correct = 32'b01111101111100010110001110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000001101000110100110100011;
		correct = 32'b00110111110010111001011001011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010100011011000001011111010;
		correct = 32'b00011101011100100111110100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101011010111110001111011010;
		correct = 32'b11100010100101000001110000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011011000110111010110110111;
		correct = 32'b10101100100111001000101001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111100100011000101001110001;
		correct = 32'b10011000011011100111010110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111011011011110111001010110;
		correct = 32'b00011000100100100001000110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101010101010010011111100;
		correct = 32'b10010100010101010101101100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100100011110100001101101;
		correct = 32'b01001000011011100001011110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010100010011110100110110110;
		correct = 32'b01011101011101100001011001001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111111110100011100010001;
		correct = 32'b10110110000000001011100011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110110001111000110010001011;
		correct = 32'b11101001001110000111001101110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101010000011100111010001;
		correct = 32'b10100100010101111100011000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010101001101110100100000011;
		correct = 32'b10101101010110010001011011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111101110100001000001001100;
		correct = 32'b01010000010001011110111110110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001111101001000101011101000;
		correct = 32'b01110110000010110111010100010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100010001100011100110110100;
		correct = 32'b11110011101110011100011001001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000110010101000010000000011;
		correct = 32'b00011111001101010111101111111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100110001001101011101001100;
		correct = 32'b10011011001110110010100010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011111100000011111100001110;
		correct = 32'b00010100000011111100000011110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001101101101110011010101;
		correct = 32'b00100001110010010010001100101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001000000111101101001101110;
		correct = 32'b11100110111111000010010110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101000000111111110000110;
		correct = 32'b11011101010111111000000001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010110001100010010110001100;
		correct = 32'b11000101001110011101101001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110101000100001110101100111;
		correct = 32'b01000001010111011110001010011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000101111000100000111000101;
		correct = 32'b01111111010000111011111000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111001101010001100110100111;
		correct = 32'b00110000110010101110011001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001110111010001000010011001;
		correct = 32'b11110110001000101110111101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000101110100001010010100;
		correct = 32'b11111111111010001011110101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001011010110011000011000110;
		correct = 32'b01110110100101001100111100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110010000101001110001011011;
		correct = 32'b00110001101111010110001110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000010100010000111011111010;
		correct = 32'b10100111101011101111000100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110010001101010101111011;
		correct = 32'b01001100001101110010101010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100110111110101101100100100;
		correct = 32'b00011011001000001010010011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011110111010010011000100;
		correct = 32'b11100001100001000101101100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111101101111110011111000100;
		correct = 32'b11011000010010000001100000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011110111001110101000111000;
		correct = 32'b00001100001000110001010111000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011111101000011110111001;
		correct = 32'b11011010100000010111100001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111100101001000111001000100;
		correct = 32'b10110000011010110111000110111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011100011110000001111101001;
		correct = 32'b00101100011100001111110000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111011100001000010101001;
		correct = 32'b10101000000100011110111101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011001000001001010101001100;
		correct = 32'b10011100110111110110101010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110001110000110100110010100;
		correct = 32'b01001001110001111001011001101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010011010100100100101110001;
		correct = 32'b10011101100101011011011010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101010010011011011101010111;
		correct = 32'b01010010101101100100100010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101001100010111000001100111;
		correct = 32'b11101010110011101000111110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110011111010100101110010;
		correct = 32'b10111111001100000101011010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010011010010100101000110;
		correct = 32'b01001110101100101101011010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011011010100010010100111101;
		correct = 32'b00010100100101011101101011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110001010011010011100001111;
		correct = 32'b01010001110101100101100011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001101000000010100111100111;
		correct = 32'b01001110010111111101011000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001100011001111011111110010;
		correct = 32'b10100110011100110000100000001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111001111001000100100001110;
		correct = 32'b10010000110000110111011011110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001111000100011011101001101;
		correct = 32'b11010110000111011100100010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001001111110010101000000010;
		correct = 32'b10100110110000001101010111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101010010111010010111010001;
		correct = 32'b10000010101101000101101000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011100111001001010101011100;
		correct = 32'b00110100011000110110101010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011010010010000110111010111;
		correct = 32'b10111100101101101111001000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000001101010110001010000;
		correct = 32'b10011101111110010101001110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111101011000000011111011111;
		correct = 32'b00001000010100111111100000100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011110011110011101101110;
		correct = 32'b11011010100001100001100010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101111010001110110011001100;
		correct = 32'b00111010000101110001001100110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101110101001010101011100110;
		correct = 32'b11010010001010110101010100011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010000011101110010101011101;
		correct = 32'b11101101111100010001101010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010001011011000001111001;
		correct = 32'b00111001101110100100111110000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110000100111010100110100;
		correct = 32'b00000110001111011000101011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101100011111000110101100000;
		correct = 32'b00001010011100000111001010011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000111111001101001001110011;
		correct = 32'b11101111000000110010110110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011001101110001110000011110;
		correct = 32'b00111100110010001110001111100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100110010010011100101001010;
		correct = 32'b11000011001101101100011010110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001111011111011000010111100;
		correct = 32'b00111110000100000100111101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000101101100001110011111111;
		correct = 32'b01001111010010011110001100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000101100001110001100111111;
		correct = 32'b10011111010011110001110011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000100011100110001010110100;
		correct = 32'b11101111011100011001110101001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001101101001010101110111;
		correct = 32'b00011001110010010110101010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110100100000110011110110100;
		correct = 32'b01100001011011111001100001001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100011101111111101000011011;
		correct = 32'b10000011100010000000010111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110110100101100101001011011;
		correct = 32'b01101001001011010011010110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110110111100100011000010;
		correct = 32'b01110000001001000011011100111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001110101011010000100011011;
		correct = 32'b01010110001010100101111011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111100110110000110111101011;
		correct = 32'b00100000011001001111001000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001110111011101001111001001;
		correct = 32'b00011110001000100010110000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010101011000111110011001001;
		correct = 32'b11000101010100111000001100110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100101001010001101011110;
		correct = 32'b10111111011010110101110010100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011111101001010000111100;
		correct = 32'b11101111100000010110101111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011010000111001011100100001;
		correct = 32'b10000100101111000110100011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001000011110000001110101000;
		correct = 32'b10111110111100001111110001010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101011101001100110101000000;
		correct = 32'b00001010100010110011001010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100110011011001010111110111;
		correct = 32'b00100011001100100110101000001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010100001000001001111101100;
		correct = 32'b01100101011110111110110000010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011101000011001100111110;
		correct = 32'b10011001100010111100110011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011010000110010101100010001;
		correct = 32'b10100100101111001101010011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111011110000000110111110;
		correct = 32'b01000100000100001111111001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010000001100110101001101110;
		correct = 32'b00111101111110011001010110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001001010101010011101000;
		correct = 32'b11010100110110101010101100010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001001000010000101010110101;
		correct = 32'b00100110110111101111010101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111101011011010101011011100;
		correct = 32'b10111000010100100101010100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100001000010111111010101011;
		correct = 32'b01110011110111101000000101010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010001100011101011001011001;
		correct = 32'b00001101110011100010100110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011011110001101110000100110;
		correct = 32'b01011100100001110010001111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100100000011100101001000000;
		correct = 32'b00111011011111100011010110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101111010000101001100011010;
		correct = 32'b11010010000101111010110011100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101000010001101001110100;
		correct = 32'b11011101010111101110010110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000000011001100000100110100;
		correct = 32'b01001111111100110011111011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011111100001001011110111;
		correct = 32'b00111010100000011110110100001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001000001111110100011100111;
		correct = 32'b10101110111110000001011100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001100111011000101000010;
		correct = 32'b10110111110011000100111010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001101111010010101110101111;
		correct = 32'b11101110010000101101010001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001000110111011001001101001;
		correct = 32'b01111110111001000100110110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110111100111010001011100001;
		correct = 32'b10100001000011000101110100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000111100111010100110110001;
		correct = 32'b11010111000011000101011001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001101000101110001001100000;
		correct = 32'b00100110010111010001110110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100000110110001001100010001;
		correct = 32'b01001011111001001110110011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001101011011101010000101;
		correct = 32'b11000001110010100100010101111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011001111001011001001011;
		correct = 32'b00010101100110000110100110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011100110111111101111111111;
		correct = 32'b11001100011001000000010000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010000010010001010100110;
		correct = 32'b00011000101111101101110101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001000110100000001000110010;
		correct = 32'b00000110111001011111110111001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000000111111101000011111110;
		correct = 32'b11101111111000000010111100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010011101111001001010010101;
		correct = 32'b01111101100010000110110101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110100110111101011000101;
		correct = 32'b01000011001011001000010100111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000011111100111011110011101;
		correct = 32'b10100111100000011000100001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111111110101100111000000011;
		correct = 32'b11100000000001010011000111111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000100011011100011110110111;
		correct = 32'b01110111011100100011100001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101001011111110111111011110;
		correct = 32'b10001010110100000001000000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101100111010101000101010;
		correct = 32'b00111110010011000101010111010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001101100010110110001010111;
		correct = 32'b00011110010011101001001110101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011111010001101001101110;
		correct = 32'b10011111100000101110010110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110011010001100000001011111;
		correct = 32'b01110001100101110011111110100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010101001001100001010101111;
		correct = 32'b01011101010110110011110101010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001010000111000110111110001;
		correct = 32'b01010110101111000111001000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111101011010011111101011111;
		correct = 32'b10001000010100101100000010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101100100100111110111001110;
		correct = 32'b00001010011011011000001000110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000101001000111011000111;
		correct = 32'b01001000111010110111000100111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100010010000001010111011000;
		correct = 32'b01110011101101111110101000100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000011010111011100110010000;
		correct = 32'b10110111100101000100011001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101101011100110010000000000;
		correct = 32'b01000010010100011001101111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001110110010100010000000101;
		correct = 32'b11111110001001101011101111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100110010001010110101011011;
		correct = 32'b01011011001101110101001010100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011100110001100011010000;
		correct = 32'b01000101100011001110011100101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000010011010110000101100;
		correct = 32'b10010010111101100101001111010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011111000111011000100101;
		correct = 32'b11001101100000111000100111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000010000001110111000100101;
		correct = 32'b00011111101111110001000111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011001000000101011001101;
		correct = 32'b00010101100110111111010100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001000001101111100000010100;
		correct = 32'b10101110111110010000011111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110100000111011110011010100;
		correct = 32'b01111001011111000100001100101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100100111101000011010001100;
		correct = 32'b00101011011000010111100101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001111011010000101001000000;
		correct = 32'b10100110000100101111010110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001110101000100101101100010;
		correct = 32'b10100110001010111011010010011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000111100001111110000011010;
		correct = 32'b10110111000011110000001111100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011101111101100010101011001;
		correct = 32'b01000100010000010011101010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011000000101111001010110;
		correct = 32'b00001000100111111010000110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110110011100101001111110011;
		correct = 32'b10000001001100011010110000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000000011110001100111001;
		correct = 32'b01111001111111100001110011000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000001101111010010101110010;
		correct = 32'b01101111110010000101101010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000111000010110100101101;
		correct = 32'b00001101111000111101001011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111010000111011001100110;
		correct = 32'b11110110000101111000100110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111000010001111101100101010;
		correct = 32'b10000000111101110000010011010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001011001110110110100101010;
		correct = 32'b10010110100110001001001011010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001101001111111111001000;
		correct = 32'b11011101110010110000000000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100110000101100001111000100;
		correct = 32'b01010011001111010011110000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000101110111000101001010110;
		correct = 32'b01101111010001000111010110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001000000111111000000000111;
		correct = 32'b00011110111111000000111111111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010110011110111100110110;
		correct = 32'b00111001101001100001000011001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010010101100111000110110010;
		correct = 32'b01100101101010011000111001001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100001110100001100011000001;
		correct = 32'b01100011110001011110011100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010001010011100000000101010;
		correct = 32'b00100101110101100011111111010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010100101001010010001100;
		correct = 32'b01110101101011010110101101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111111101100010011111110;
		correct = 32'b01100100000000010011101100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010000111000111011000101010;
		correct = 32'b01101101111000111000100111010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101011111101011011010100100;
		correct = 32'b01110010100000010100100101011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100110000101100011100101110;
		correct = 32'b11101011001111010011100011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010101001101101100001010;
		correct = 32'b01001001101010110010010011110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100111110001101110011100100;
		correct = 32'b10100011000001110010001100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100110101011010100000100;
		correct = 32'b00100101011001010100101011111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101101101011010101101100;
		correct = 32'b10010100010010010100101010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011101111100011111100101101;
		correct = 32'b10111100010000011100000011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111101110110010010010101110;
		correct = 32'b00101000010001001101101101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100111011010101110011111011;
		correct = 32'b00111011000100101010001100000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000001000011000011000111001;
		correct = 32'b11111111110111100111100111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011111110101111001110011;
		correct = 32'b00100110100000001010000110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100100000110111000111111101;
		correct = 32'b01101011011111001000111000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111111010111011001100111110;
		correct = 32'b01010000000101000100110011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100101001011100011011011001;
		correct = 32'b01110011010110100011100100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010001100110001000111100;
		correct = 32'b01010111101110011001110111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010110001000111100101011000;
		correct = 32'b10000101001110111000011010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000110101000101001001010011;
		correct = 32'b01111111001010111010110110101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011011010001010111111010001;
		correct = 32'b00110100100101110101000000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000001110011110100011000;
		correct = 32'b11011110111110001100001011100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111000101001000100001000011;
		correct = 32'b01101000111010110111011110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001100101111100000001110001;
		correct = 32'b00001110011010000011111110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011010101000100110101000010;
		correct = 32'b10110100101010111011001010111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111010101001101011101100010;
		correct = 32'b11101000101010110010100010011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		$display ("Done.");
		$finish;
	end

endmodule