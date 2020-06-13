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

    op = 3'b001;

		/* Display the operation */
		$display ("Opcode: 001, Operation: SUB");
		/* Test Cases!*/
		a = 32'b10111111010100100010111011101010;
		b = 32'b11100001010000000010011110110000;
		correct = 32'b01100001010000000010011110110000;
		#400 //-0.82102835 * -2.2153967e+20 = 2.2153967e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001111100101101100100001001;
		b = 32'b11111011011010100110110110100111;
		correct = 32'b01111011011010100110110110100111;
		#400 //-1.07846085e-13 * -1.2172215e+36 = 1.2172215e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110111111111111011010100001;
		b = 32'b01010011100101010010010100000111;
		correct = 32'b11010011100101010010010100000111;
		#400 //1.16398675e-10 * 1281142700000.0 = -1281142700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110100000001010000100001111;
		b = 32'b10110010110011111101110101000110;
		correct = 32'b01010110100000001010000100001111;
		#400 //70714615000000.0 * -2.4198595e-08 = 70714615000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101000010010011101010001;
		b = 32'b01111011110100011110101101010000;
		correct = 32'b11111011110100011110101101010000;
		#400 //-1320170.1 * 2.1799255e+36 = -2.1799255e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001011010010011011111001;
		b = 32'b00011111010011110100011111001001;
		correct = 32'b11100110001011010010011011111001;
		#400 //-2.0442208e+23 * 4.3893334e-20 = -2.0442208e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111011101101110001111011110;
		b = 32'b11011100000000111100000111010010;
		correct = 32'b01011100000000111100000111010010;
		#400 //1.2172622e-29 * -1.4834532e+17 = 1.4834532e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000000100011000111011100110;
		b = 32'b01100000101001000011110001100001;
		correct = 32'b11111000000100011000111011100110;
		#400 //-1.1809084e+34 * 9.4675525e+19 = -1.1809084e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010001101001010101000000;
		b = 32'b00110110010111111010101001101101;
		correct = 32'b11101000010001101001010101000000;
		#400 //-3.751127e+24 * 3.332879e-06 = -3.751127e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101101001111110011111100;
		b = 32'b10010100011001010010110001001111;
		correct = 32'b00010100011001010010110001001111;
		#400 //1.06375315e-36 * -1.1570284e-26 = 1.1570284e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110100110000011001000101;
		b = 32'b10011110101111010111100100010001;
		correct = 32'b01010001110100110000011001000101;
		#400 //113292910000.0 * -2.0061225e-20 = 113292910000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000000101101011100000011111;
		b = 32'b00011001101101110010111000100001;
		correct = 32'b11101000000101101011100000011111;
		#400 //-2.8470056e+24 * 1.8940388e-23 = -2.8470056e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000011110001110000101011001;
		b = 32'b10110110001110110011001000000001;
		correct = 32'b11000000011110001110000101001101;
		#400 //-3.8887541 * -2.7894278e-06 = -3.8887513
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111001011001101111000100;
		b = 32'b11100011111111101110110110000011;
		correct = 32'b11111111111001011001101111000100;
		#400 //nan * -9.405175e+21 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010000010010101001101100001;
		b = 32'b11011110001001010110001000100100;
		correct = 32'b01111010000010010101001101100001;
		#400 //1.7825895e+35 * -2.9792818e+18 = 1.7825895e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100110001110110010111000110;
		b = 32'b01110110000001110011101101000110;
		correct = 32'b11110110000001110011101101000110;
		#400 //2.0134008e-26 * 6.8570536e+32 = -6.8570536e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101000100110001011010011000;
		b = 32'b00000000011001000010001011111011;
		correct = 32'b11110101000100110001011010011000;
		#400 //-1.8645652e+32 * 9.196098e-39 = -1.8645652e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010000100000111100111011;
		b = 32'b01111001110111000111110100110010;
		correct = 32'b11111001110111000111110100110010;
		#400 //0.18951122 * 1.4310557e+35 = -1.4310557e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010101101001101101001010011;
		b = 32'b11100011111010001001101000101110;
		correct = 32'b01100011111010001001101000101110;
		#400 //2.6573935e-37 * -8.581509e+21 = 8.581509e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000101001100011011011111101;
		b = 32'b11011010100010111000110010110001;
		correct = 32'b01011010100010111000110010110001;
		#400 //2.8157882e-19 * -1.9639857e+16 = 1.9639857e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111101110011000111010010100;
		b = 32'b01010110000100001001101000010000;
		correct = 32'b11110111101110011000111010010100;
		#400 //-7.527084e+33 * 39747840000000.0 = -7.527084e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000111000011100000110101011;
		b = 32'b11000100101010101001011000110000;
		correct = 32'b01000100101010101001011000101111;
		#400 //-0.000107649095 * -1364.6934 = 1364.6932
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111010100101000101011110101;
		b = 32'b00110100101110110110110011000010;
		correct = 32'b01010111010100101000101011110101;
		#400 //231494260000000.0 * 3.4910596e-07 = 231494260000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111110111111001101001000101;
		b = 32'b10101001101001011101101110111000;
		correct = 32'b00110111110111111001101001000101;
		#400 //2.6655509e-05 * -7.365587e-14 = 2.6655509e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010011011011100110100000000;
		b = 32'b01000100010111001000101001010010;
		correct = 32'b11000100010111001000101001010010;
		#400 //7.5036696e-28 * 882.16125 = -882.16125
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010000101110100001001111;
		b = 32'b10011001101011100011000011111100;
		correct = 32'b00111001010000101110100001001111;
		#400 //0.00018587823 * -1.8010963e-23 = 0.00018587823
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101110100011101101000110110;
		b = 32'b01110111011001100010101011000110;
		correct = 32'b11110111011001100010101010101100;
		#400 //8.118271e+27 * 4.668343e+33 = -4.668335e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100001011111100000010000;
		b = 32'b11110110110100011101101001011011;
		correct = 32'b11111000011100011011010011010101;
		#400 //-2.1737712e+34 * -2.1281618e+33 = -1.9609551e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000111111000000010111011011;
		b = 32'b11010011000010001001110010010111;
		correct = 32'b01010011000010001001110010010111;
		#400 //1.8337077e-09 * -586742700000.0 = 586742700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111001100110011100000110101;
		b = 32'b00111100011110100011010010011110;
		correct = 32'b01000111001100110011100000110001;
		#400 //45880.207 * 0.015271334 = 45880.19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101111101111001001100011011;
		b = 32'b01100010100000001000100000100101;
		correct = 32'b01110101111101111001001100011011;
		#400 //6.2767626e+32 * 1.1854967e+21 = 6.2767626e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101001100111111101111000;
		b = 32'b10100010011101111101001011100100;
		correct = 32'b11111101101001100111111101111000;
		#400 //-2.7664213e+37 * -3.3586387e-18 = -2.7664213e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000000111100001110011101110;
		b = 32'b00000111101111111101110111111110;
		correct = 32'b10100000000111100001110011101110;
		#400 //-1.3392693e-19 * 2.8868961e-34 = -1.3392693e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000100111000011111111101;
		b = 32'b10001110001010100100100000111001;
		correct = 32'b10110001000100111000011111111101;
		#400 //-2.1468616e-09 * -2.0988892e-30 = -2.1468616e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100101101001110011111110;
		b = 32'b10101101000101010001000001010010;
		correct = 32'b01111011100101101001110011111110;
		#400 //1.5640574e+36 * -8.473293e-12 = 1.5640574e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010001111001000100111111101;
		b = 32'b10001101110000010010000011100110;
		correct = 32'b11111010001111001000100111111101;
		#400 //-2.4473764e+35 * -1.1902463e-30 = -2.4473764e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001000100110000011110000001;
		b = 32'b00110011110100101010000110001101;
		correct = 32'b10110011110100101010000110001101;
		#400 //-7.601237e-24 * 9.808273e-08 = -9.808273e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000001001100010110000001000;
		b = 32'b00100010111100110000111010000111;
		correct = 32'b10100010111100110000111010001100;
		#400 //-2.1477227e-24 * 6.5880663e-18 = -6.5880684e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011100000111000010110111000;
		b = 32'b10011110000011000010101010011110;
		correct = 32'b00011110000011000010101010011110;
		#400 //-7.730188e-37 * -7.420351e-21 = 7.420351e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010111100110111000010101;
		b = 32'b11110011100011101010000010101111;
		correct = 32'b01110011100011101010000010101111;
		#400 //-1.17753466e-20 * -2.2600256e+31 = 2.2600256e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001010010111010011111010;
		b = 32'b01011110111000111000000010110111;
		correct = 32'b11011110111000111000000010110111;
		#400 //181953000000.0 * 8.196652e+18 = -8.196652e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101001001111101100000100000;
		b = 32'b01011110011110011100001001101100;
		correct = 32'b11011110011110011100001001101100;
		#400 //-6.252685e-07 * 4.4992665e+18 = -4.4992665e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110101001100001011001001;
		b = 32'b00010010111101011001111001110001;
		correct = 32'b00100100110101001100001011001001;
		#400 //9.227032e-17 * 1.5500733e-27 = 9.227032e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110001011100111010111110;
		b = 32'b00111100101111101000101000101001;
		correct = 32'b11010010110001011100111010111110;
		#400 //-424788560000.0 * 0.02325924 = -424788560000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011110010100011011111000010;
		b = 32'b00011111100001110101000111110010;
		correct = 32'b01001011110010100011011111000010;
		#400 //26505092.0 * 5.731029e-20 = 26505092.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010111010111111001110000001;
		b = 32'b10000100110000001000100100110100;
		correct = 32'b10110010111010111111001110000001;
		#400 //-2.7468333e-08 * -4.5264984e-36 = -2.7468333e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011111100111100011100000111;
		b = 32'b00011101100011000110101000100001;
		correct = 32'b11111011111100111100011100000111;
		#400 //-2.5315298e+36 * 3.7167426e-21 = -2.5315298e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100101001000011101111110010;
		b = 32'b10000011010001100000100100101011;
		correct = 32'b01101100101001000011101111110010;
		#400 //1.5883753e+27 * -5.8197495e-37 = 1.5883753e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011111111101100010010000011;
		b = 32'b00011011111111111000111011011010;
		correct = 32'b11111011111111101100010010000011;
		#400 //-2.6456583e+36 * 4.2278527e-22 = -2.6456583e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000110011000101101010010110;
		b = 32'b10001000001110010001001010111010;
		correct = 32'b01111000110011000101101010010110;
		#400 //3.3158308e+34 * -5.5693425e-34 = 3.3158308e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001110000110000010000110000;
		b = 32'b10100110001000011010001100011111;
		correct = 32'b11001001110000110000010000110000;
		#400 //-1597574.0 * -5.6079166e-16 = -1597574.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111010111101101110011110101;
		b = 32'b11110011010001110101101101100111;
		correct = 32'b01110011010001110101101101100111;
		#400 //2.0269282e-10 * -1.5794692e+31 = 1.5794692e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000010001110000100110011101;
		b = 32'b10010111110000110110101101101000;
		correct = 32'b10100000010001110000100100111011;
		#400 //-1.6859136e-19 * -1.2628693e-24 = -1.685901e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010111000000011111001000;
		b = 32'b10100010010110001110010011110000;
		correct = 32'b10110110010111000000011111001000;
		#400 //-3.2787084e-06 * -2.9394657e-18 = -3.2787084e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001101010100011001011110110;
		b = 32'b11100111000100011110101000111000;
		correct = 32'b01100111000100011110101000111000;
		#400 //-91374930000.0 * -6.890637e+23 = 6.890637e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000111101101001010000001010;
		b = 32'b00100011100000011100000011100010;
		correct = 32'b01111000111101101001010000001010;
		#400 //4.0009613e+34 * 1.4067897e-17 = 4.0009613e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101110110101010001000100101;
		b = 32'b10111110001100100001010100001111;
		correct = 32'b00111110001100100001010010100010;
		#400 //-1.6289456e-06 * -0.17390846 = 0.17390683
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010101000010110000011110100;
		b = 32'b10111110110010100100110011001011;
		correct = 32'b00111110110010100100110011001011;
		#400 //-1.5540206e-32 * -0.39511713 = 0.39511713
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101100001001001011101110;
		b = 32'b11100000000101011100001100001100;
		correct = 32'b01100000000101011100001100001100;
		#400 //-0.00033678807 * -4.316593e+19 = 4.316593e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101000101011000100111110;
		b = 32'b00100010001111101101001111101111;
		correct = 32'b01000100101000101011000100111110;
		#400 //1301.5388 * 2.5861998e-18 = 1301.5388
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111011110110011101011100000;
		b = 32'b11011001110001101101100000011010;
		correct = 32'b01011001110001101101100000010010;
		#400 //-4214939600.0 * -6996206400000000.0 = 6996202000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100001010011110110000100000;
		b = 32'b10001101010111011011010101110101;
		correct = 32'b00001101010111011011010110011111;
		#400 //1.9974278e-36 * -6.8319304e-31 = 6.83195e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011100101001010001010101100;
		b = 32'b10001000001100010101100011110101;
		correct = 32'b11100011100101001010001010101100;
		#400 //-5.48368e+21 * -5.336857e-34 = -5.48368e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101100010110010111001101101;
		b = 32'b11010010110101001010111000100111;
		correct = 32'b01010010110101001000101101011011;
		#400 //-291884450.0 * -456727430000.0 = 456435530000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010110110010101100100001011;
		b = 32'b01010001011111010001110110110011;
		correct = 32'b11010001011111010001110110110011;
		#400 //3.1936392e-37 * 67945312000.0 = -67945312000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000010010001101010111110010;
		b = 32'b00101111001000000011110110011111;
		correct = 32'b11100000010010001101010111110010;
		#400 //-5.7886956e+19 * 1.4573807e-10 = -5.7886956e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011101101101011010011110101;
		b = 32'b11101110011000000100001010001110;
		correct = 32'b01101110011000000100001010001110;
		#400 //1.9809118e-17 * -1.7351275e+28 = 1.7351275e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011111101011001100111011100;
		b = 32'b10101110000000011101100000000010;
		correct = 32'b00110011111101011010101000010111;
		#400 //1.14366884e-07 * -2.9523058e-11 = 1.1439641e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001111111000110110101001111;
		b = 32'b00111000100011100010101110100111;
		correct = 32'b01111001111111000110110101001111;
		#400 //1.6383448e+35 * 6.7792185e-05 = 1.6383448e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000001011100000000101111011;
		b = 32'b01111000000100000000111110010110;
		correct = 32'b11111000000100000000111110010110;
		#400 //765285500000000.0 * 1.1687607e+34 = -1.1687607e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000010000110010010110101;
		b = 32'b10010010101101100010011011010001;
		correct = 32'b01001100000010000110010010110101;
		#400 //35754708.0 * -1.1495384e-27 = 35754708.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011101010011010000101010010;
		b = 32'b11101001111110101110101100101010;
		correct = 32'b01101001111110101110101100101010;
		#400 //2.8062956e-22 * -3.7917748e+25 = 3.7917748e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100001101110101111001111110;
		b = 32'b01111100011000010100000101111110;
		correct = 32'b11111100011000010100000101111110;
		#400 //-3.9761838e-17 * 4.6783805e+36 = -4.6783805e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010010110111010010110010;
		b = 32'b10111111010100010001101001000110;
		correct = 32'b01010110010010110111010010110010;
		#400 //55925516000000.0 * -0.81680715 = 55925516000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110100001000010001100111011;
		b = 32'b11001100101000011011101001100110;
		correct = 32'b01001100101000011100001010101000;
		#400 //16913.615 * -84792110.0 = 84809020.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100000001000000111000000010;
		b = 32'b01000010001000001010101001100111;
		correct = 32'b11101100000001000000111000000010;
		#400 //-6.385774e+26 * 40.16641 = -6.385774e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100011101001101001001010;
		b = 32'b11101101101101001010100001101010;
		correct = 32'b01101101101101001010100001101010;
		#400 //2.1971424e-31 * -6.988863e+27 = 6.988863e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100000000100100011110110;
		b = 32'b00011110101011101011000101111011;
		correct = 32'b11001010100000000100100011110110;
		#400 //-4203643.0 * 1.849637e-20 = -4203643.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000010011101001000011001010;
		b = 32'b11111100001011110110001111000101;
		correct = 32'b01111100001011110110001111000101;
		#400 //-211523.16 * -3.642702e+36 = 3.642702e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111010000101101100111011110;
		b = 32'b01011010000010000010001000001100;
		correct = 32'b11011010000010000010001000001100;
		#400 //-1.1614027e-05 * 9579508000000000.0 = -9579508000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100110010010110100001010;
		b = 32'b00110110101100001000000001010000;
		correct = 32'b11000001100110010010110100001101;
		#400 //-19.146992 * 5.2601463e-06 = -19.146997
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111001001110110001011011111;
		b = 32'b01010000001111110001011110111011;
		correct = 32'b01100111001001110110001011011111;
		#400 //7.9045905e+23 * 12824014000.0 = 7.9045905e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100001111010101010111101100;
		b = 32'b11000101001111101100011000101001;
		correct = 32'b01110100001111010101010111101100;
		#400 //6.0002857e+31 * -3052.385 = 6.0002857e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000100111101100010000000111;
		b = 32'b10101100000101100001011000111001;
		correct = 32'b11110000100111101100010000000111;
		#400 //-3.930849e+29 * -2.1328618e-12 = -3.930849e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100011110111100011000000111;
		b = 32'b11110100001100100010011011101110;
		correct = 32'b01110100001100100010011011101110;
		#400 //-66000924.0 * -5.6458644e+31 = 5.6458644e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000010011111111000000101011;
		b = 32'b01100111110110101000010111111000;
		correct = 32'b11100111110110101000010111111000;
		#400 //-1.7613047e-19 * 2.0638944e+24 = -2.0638944e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011101110100010100101001101;
		b = 32'b01011000100101100111101001110010;
		correct = 32'b11011000100101100111101001110010;
		#400 //1.3227558e-12 * 1323621100000000.0 = -1323621100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011001111110100111100100100;
		b = 32'b00101110100010101110111111111100;
		correct = 32'b10101110100010101110111111111100;
		#400 //-3.68448e-32 * 6.318143e-11 = -6.318143e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110101010110110001010100110;
		b = 32'b01011010111100110101100000101011;
		correct = 32'b11011010111100101010110011001000;
		#400 //94220090000000.0 * 3.424768e+16 = -3.415346e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100001110011010110111001110;
		b = 32'b01111010000001011011101100011110;
		correct = 32'b11111010000001011011101100011110;
		#400 //-1.7292697e-07 * 1.7359267e+35 = -1.7359267e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001111011101110011110110110;
		b = 32'b10010000000000010001001011001011;
		correct = 32'b00100001111011101110011110110110;
		#400 //1.6188841e-18 * -2.5455242e-29 = 1.6188841e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011111011000001110110111101;
		b = 32'b11010100001011010110010000100100;
		correct = 32'b01010011010111010101010100010110;
		#400 //-2028222400000.0 * -2978837700000.0 = 950615300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000000101011010001111001;
		b = 32'b11010110101001110100001110111000;
		correct = 32'b11101001000000101011010001111001;
		#400 //-9.875788e+24 * -91954650000000.0 = -9.875788e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110111000101111111100110111;
		b = 32'b11001011101110111000100110001000;
		correct = 32'b01001011101110111000100110001000;
		#400 //-1.03226254e-10 * -24580880.0 = 24580880.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010001000110000111011110000;
		b = 32'b00111110001100111110001110110001;
		correct = 32'b11100010001000110000111011110000;
		#400 //-7.519739e+20 * 0.17567326 = -7.519739e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111001100011111011110100101;
		b = 32'b00001100100010001110010010000101;
		correct = 32'b01001111001100011111011110100101;
		#400 //2985796900.0 * 2.1091653e-31 = 2985796900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111001011111101110100111011;
		b = 32'b01000001111100010100110111010010;
		correct = 32'b11100111001011111101110100111011;
		#400 //-8.304951e+23 * 30.162998 = -8.304951e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100111010101100101001111;
		b = 32'b10101010100011100110010001010110;
		correct = 32'b00101010100011100110010001010110;
		#400 //2.4825273e-28 * -2.529389e-13 = 2.529389e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111000011011110000101101;
		b = 32'b00011011101101101011110100010101;
		correct = 32'b10011011101101101011110100010101;
		#400 //-8.491209e-35 * 3.0231566e-22 = -3.0231566e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100111000101101011101111;
		b = 32'b01110011001111100110011101101000;
		correct = 32'b11110011001111100110011101101000;
		#400 //-19.544401 * 1.5085354e+31 = -1.5085354e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101010001111001101111100000;
		b = 32'b01100111100111101100001111100010;
		correct = 32'b11100111100111101100001111100010;
		#400 //-0.04873264 * 1.4994946e+24 = -1.4994946e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101100011001110001000110001;
		b = 32'b01000101110011000110010100001101;
		correct = 32'b11000101110011000110010100001101;
		#400 //1.3248626e-35 * 6540.6313 = -6540.6313
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110101011111111100110010011;
		b = 32'b11101111101001101000110011010100;
		correct = 32'b01110110101011111111110000101101;
		#400 //1.7845975e+33 * -1.03089525e+29 = 1.7847006e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111100010010110011100110101;
		b = 32'b10100010000001011010101011101001;
		correct = 32'b00100111100010010111011111101010;
		#400 //3.8137036e-15 * -1.811534e-18 = 3.815515e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110011101001011011100110;
		b = 32'b11111101010110011111001001010001;
		correct = 32'b01111101010110011111001001010001;
		#400 //8.959389e-17 * -1.8106291e+37 = 1.8106291e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010111110010011101011100000;
		b = 32'b11001110100100111101111010100110;
		correct = 32'b11100010111110010011101011100000;
		#400 //-2.2987408e+21 * -1240421100.0 = -2.2987408e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010001011001000011010001;
		b = 32'b11011000011010110001001100010001;
		correct = 32'b01011000011010110001001100010001;
		#400 //9.512442e-33 * -1033868500000000.0 = 1033868500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100110010010111000100010;
		b = 32'b00110011101101100111101000010000;
		correct = 32'b10110011101011001110011100101110;
		#400 //4.4581308e-09 * 8.4972385e-08 = -8.0514255e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000110001000110110111000100;
		b = 32'b10000011001010010101011011100001;
		correct = 32'b11010000110001000110110111000100;
		#400 //-26364223000.0 * -4.976437e-37 = -26364223000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110101100101011011001100010;
		b = 32'b11100111100011001011101001000111;
		correct = 32'b01100111100011001011101001000111;
		#400 //6.7224146e-35 * -1.329135e+24 = 1.329135e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110001101000101010101001011;
		b = 32'b01011000011011001101110000010001;
		correct = 32'b01100110001101000101010101001011;
		#400 //2.1289984e+23 * 1041719700000000.0 = 2.1289984e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101101000100001000011001011;
		b = 32'b01001010000001011000111001011011;
		correct = 32'b01111101101000100001000011001011;
		#400 //2.6927766e+37 * 2188182.8 = 2.6927766e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000101110000000011010000001;
		b = 32'b11000000111110010010000001100010;
		correct = 32'b11111000101110000000011010000001;
		#400 //-2.985983e+34 * -7.785203 = -2.985983e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011110100110111001001111000;
		b = 32'b00110001001110001111010011111000;
		correct = 32'b10110001001110001111010011111000;
		#400 //5.3376763e-27 * 2.6914773e-09 = -2.6914773e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100110010010011111101001;
		b = 32'b00110011101111000111001100100000;
		correct = 32'b11111000100110010010011111101001;
		#400 //-2.4850965e+34 * 8.775373e-08 = -2.4850965e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010111111010101010100110101;
		b = 32'b10010111000010100111101000110110;
		correct = 32'b01110010111111010101010100110101;
		#400 //1.0035548e+31 * -4.4744457e-25 = 1.0035548e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001101011111011101101000001;
		b = 32'b00101011110111100010111111100111;
		correct = 32'b01011001101011111011101101000001;
		#400 //6183001000000000.0 * 1.5787344e-12 = 6183001000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110110001001000110011101010;
		b = 32'b11100000110001001101001101110111;
		correct = 32'b01100000101110001000101010101000;
		#400 //-7.081476e+18 * -1.1346248e+20 = 1.06381005e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100110000101100011000000110;
		b = 32'b10001011010110001001100011000100;
		correct = 32'b11101100110000101100011000000110;
		#400 //-1.883734e+27 * -4.1715015e-32 = -1.883734e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111000011011100111001111100;
		b = 32'b01010111111000011101111110100001;
		correct = 32'b11010111111000011101111110100001;
		#400 //-36302.484 * 496701200000000.0 = -496701200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110011000100100100100010110;
		b = 32'b11110000100000111011110000110010;
		correct = 32'b01110000100000111011110000110010;
		#400 //-3.3719166e-06 * -3.261604e+29 = 3.261604e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101001010001001011110011;
		b = 32'b01111111111001100001100110000110;
		correct = 32'b01111111111001100001100110000110;
		#400 //-20.634253 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101000001011000110001110110;
		b = 32'b01010010100100100101101100011111;
		correct = 32'b11011101000001011000110001111011;
		#400 //-6.0144977e+17 * 314297000000.0 = -6.014501e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111110111101101110010010001;
		b = 32'b01011000100110110111101001001010;
		correct = 32'b11011111110111101101111011111111;
		#400 //-3.211774e+19 * 1367596200000000.0 = -3.2119107e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100011100000111000000111100;
		b = 32'b10011010001011011111001100100100;
		correct = 32'b00011100011110110100111101101110;
		#400 //7.95544e-22 * -3.597197e-23 = 8.3151594e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011111101011101010100011100;
		b = 32'b10001000101101011011000011111010;
		correct = 32'b00001011111110001010101111100000;
		#400 //9.469122e-32 * -1.0935148e-33 = 9.5784734e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011010111110010110100111011;
		b = 32'b10110010110011010010101000000111;
		correct = 32'b10111011010111110010110011010100;
		#400 //-0.003405406 * -2.3884253e-08 = -0.003405382
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000011110000000000111100111;
		b = 32'b00011000011000101010001100111110;
		correct = 32'b11010000011110000000000111100111;
		#400 //-16643497000.0 * 2.9292232e-24 = -16643497000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001011101001101111110010101;
		b = 32'b11101110000100111110111010001110;
		correct = 32'b01101110000100111110111010001110;
		#400 //1.9317103e-28 * -1.1445673e+28 = 1.1445673e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101111111001011101110011101;
		b = 32'b01111011001000001111000010100101;
		correct = 32'b11111011001000001111000010100101;
		#400 //4.3842163e-16 * 8.3564835e+35 = -8.3564835e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001010101011011100101011010;
		b = 32'b00011110010000100111011100011101;
		correct = 32'b10011110010000101010110010001011;
		#400 //-1.1049273e-23 * 1.02949065e-20 = -1.03059555e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010101010101011001100001100;
		b = 32'b01011000110100000001010100011100;
		correct = 32'b11011000110100000001010100011100;
		#400 //1.0772647e-27 * 1830312700000000.0 = -1830312700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000011101111101001101010100;
		b = 32'b11011100011101101011000101010001;
		correct = 32'b01011100011101101011000101010001;
		#400 //1.1004234e-38 * -2.7775122e+17 = 2.7775122e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100110101110000110001001;
		b = 32'b01100010110100101011100011101110;
		correct = 32'b11100010110100101011100011101110;
		#400 //1239.048 * 1.9435709e+21 = -1.9435709e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011000001000001010001011101;
		b = 32'b00100101111010111100010010110010;
		correct = 32'b01010011000001000001010001011101;
		#400 //567277300000.0 * 4.0899288e-16 = 567277300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001111010101010011010111101;
		b = 32'b11011011101001110111111001001100;
		correct = 32'b01011011101001110111111001001100;
		#400 //-5.649025e-33 * -9.429037e+16 = 9.429037e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101101011000101100111000110;
		b = 32'b11010110010100011000001110100110;
		correct = 32'b01010110010100011000001110100110;
		#400 //1.2841126e-06 * -57590840000000.0 = 57590840000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100111111000111001011110;
		b = 32'b00111111101100011001110110001111;
		correct = 32'b11100000100111111000111001011110;
		#400 //-9.197784e+19 * 1.3876208 = -9.197784e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000110001110100000111000111;
		b = 32'b11111011010101000100111011100111;
		correct = 32'b01111011010101000100111011100111;
		#400 //1.4497851e-09 * -1.1023673e+36 = 1.1023673e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101010011100100111101010;
		b = 32'b11110001110101011011111101101001;
		correct = 32'b01110001110101011011111101101001;
		#400 //1.5660246e+21 * -2.1168546e+30 = 2.1168546e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100001010111101110100000;
		b = 32'b10000111011110011011100000001110;
		correct = 32'b11010000100001010111101110100000;
		#400 //-17915773000.0 * -1.8786767e-34 = -17915773000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110000000101100000001101111;
		b = 32'b10110111011111110111010111101101;
		correct = 32'b00110111011111110111010111101101;
		#400 //1.0562038e-25 * -1.5226641e-05 = 1.5226641e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001010010111100000000100001;
		b = 32'b11100011010101010111101101010011;
		correct = 32'b01100011010101010111101101010011;
		#400 //-1.6073081e-28 * -3.938043e+21 = 3.938043e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100111011100011100110111000;
		b = 32'b10011110010000111011111101100011;
		correct = 32'b00011110010000111011111101100011;
		#400 //5.6006537e-36 * -1.0362792e-20 = 1.0362792e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010101011110000000010100100;
		b = 32'b11110101000100100000000001111110;
		correct = 32'b01110101000100100000000001111110;
		#400 //2.5714307e-37 * -1.8507942e+32 = 1.8507942e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101011010100110000110111;
		b = 32'b00010101001100010000000110011000;
		correct = 32'b00111000101011010100110000110111;
		#400 //8.263479e-05 * 3.5746123e-26 = 8.263479e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010110011001110000001000101;
		b = 32'b10010101011000111000011101010110;
		correct = 32'b00010101011010011110111001011000;
		#400 //1.2929497e-27 * -4.5949046e-26 = 4.7241995e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111100111101001001010011001;
		b = 32'b11011011111101000101010000110101;
		correct = 32'b01011011111101000101010000110101;
		#400 //-2.8844196e-10 * -1.3754496e+17 = 1.3754496e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001110000001110010110011101;
		b = 32'b01001011111111101110100000110000;
		correct = 32'b11010001110000001111010110001100;
		#400 //-103560750000.0 * 33411168.0 = -103594164000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100101011011000111110101111;
		b = 32'b11010001000011000111110010110011;
		correct = 32'b01010001000011000111110010110011;
		#400 //2.6741347e-31 * -37711720000.0 = 37711720000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000010010111100110101000000;
		b = 32'b01010101111011100110100110101010;
		correct = 32'b11110000010010111100110101000000;
		#400 //-2.5229436e+29 * 32767199000000.0 = -2.5229436e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110111101111110111010110111;
		b = 32'b01011011110101111011001100001110;
		correct = 32'b11011011110101111011001100001110;
		#400 //1.7203772e-15 * 1.21427985e+17 = -1.21427985e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001101100111001100000100001;
		b = 32'b01101111110100010011010101010110;
		correct = 32'b11101111110100010011010101010110;
		#400 //1.216978e-18 * 1.2949369e+29 = -1.2949369e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001001001001110010100000;
		b = 32'b00110011001111000111011110100000;
		correct = 32'b01111001001001001001110010100000;
		#400 //5.341959e+34 * 4.388096e-08 = 5.341959e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100001001101010001011001011;
		b = 32'b10010010011101001111001011000110;
		correct = 32'b00110100001001101010001011001011;
		#400 //1.5519178e-07 * -7.7292066e-28 = 1.5519178e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111111101110010111010001;
		b = 32'b10111010010110011011111100001100;
		correct = 32'b01010100111111101110010111010001;
		#400 //8758219000000.0 * -0.0008306361 = 8758219000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000101010000001001011000110;
		b = 32'b10111100011011000110001110001100;
		correct = 32'b00111100011011000110001110001011;
		#400 //-1.2228945e-09 * -0.014428031 = 0.01442803
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100001010001110110110100001;
		b = 32'b01100101111100000000111100000110;
		correct = 32'b11100101111100000000111100000110;
		#400 //-675.71295 * 1.4170564e+23 = -1.4170564e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011101001010100100101011010;
		b = 32'b01111010001011100001011101111011;
		correct = 32'b11111010001011100001011101111011;
		#400 //6.0979966e+21 * 2.2598397e+35 = -2.2598397e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000000001100000011011010111;
		b = 32'b11000111011010010110010111110100;
		correct = 32'b11000111100101110101101010110100;
		#400 //-137243.36 * -59749.953 = -77493.41
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100010001010101110000001;
		b = 32'b11100011100010001010101111001101;
		correct = 32'b01100011100010001010101111001101;
		#400 //-2.1057338e-31 * -5.0422735e+21 = 5.0422735e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101010011100011100001101001;
		b = 32'b00010011110101001110110111010110;
		correct = 32'b10010011110101001110110111010110;
		#400 //9.6964344e-36 * 5.375085e-27 = -5.375085e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111101010111011010111000010;
		b = 32'b00111011100111110011010100001100;
		correct = 32'b10111011100111110011010100001100;
		#400 //2.5836048e-34 * 0.0048586186 = -0.0048586186
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110000011001101100111101111;
		b = 32'b00000100101010111011011011111001;
		correct = 32'b10101110000011001101100111101111;
		#400 //-3.202588e-11 * 4.036994e-36 = -3.202588e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110110001011111011001110010;
		b = 32'b11101010111000010000010111110100;
		correct = 32'b11101110110001010001010101101100;
		#400 //-3.063324e+28 * -1.3601821e+26 = -3.0497222e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000101100111110110010000000;
		b = 32'b11111100000001111100010010011011;
		correct = 32'b01111100000001111100010010011010;
		#400 //-4.4546982e+29 * -2.8197908e+36 = 2.8197905e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101100010000010111010011;
		b = 32'b11100001000111111010010101111101;
		correct = 32'b01100001000111111010010101111101;
		#400 //-0.0003376441 * -1.8405981e+20 = 1.8405981e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001110100100110001100100110;
		b = 32'b10010100111001111100000101010000;
		correct = 32'b00100001110100100110001100100110;
		#400 //1.4256398e-18 * -2.3401288e-26 = 1.4256398e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011101100101001000100110;
		b = 32'b00010101011101111010110010100010;
		correct = 32'b10011111011101100101001000110101;
		#400 //-5.2160478e-20 * 5.0017436e-26 = -5.2160526e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100100001100011110101001000;
		b = 32'b01001000011001010101111011111000;
		correct = 32'b11001000011001010101111011111000;
		#400 //-1.3554713e-26 * 234875.88 = -234875.88
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010100111110010101001000100;
		b = 32'b11001001010100101100101111010100;
		correct = 32'b01001001010100101100101111010100;
		#400 //-0.0012143333 * -863421.25 = 863421.25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111101110010100110111111101;
		b = 32'b00011111010001011010100010001100;
		correct = 32'b01110111101110010100110111111101;
		#400 //7.516849e+33 * 4.185579e-20 = 7.516849e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101011101110011111101111011;
		b = 32'b00000000110100110101100110100011;
		correct = 32'b11110101011101110011111101111011;
		#400 //-3.1342404e+32 * 1.9409445e-38 = -3.1342404e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110000011101010010000010111;
		b = 32'b00111010011110010111001110011100;
		correct = 32'b10111010011110010111001110011100;
		#400 //2.6827786e-35 * 0.00095158233 = -0.00095158233
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010111000001001110100001010;
		b = 32'b01001111001111100010110011010010;
		correct = 32'b01100010111000001001110100001010;
		#400 //2.0716933e+21 * 3190608400.0 = 2.0716933e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010101100100100010110111000;
		b = 32'b01101101110001110111010001001000;
		correct = 32'b11101101110001110111010001001000;
		#400 //-4.8320814e-18 * 7.7160115e+27 = -7.7160115e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111001100001010001010010100;
		b = 32'b01000001110100110110000100110011;
		correct = 32'b11010111001100001010001010010100;
		#400 //-194212310000000.0 * 26.42246 = -194212310000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101011111011000000010110111;
		b = 32'b10001101000010000000100101000101;
		correct = 32'b00010101011111011000000100111111;
		#400 //5.119448e-26 * -4.1919393e-31 = 5.11949e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111000101100100000011111;
		b = 32'b01110100111010010101110111101001;
		correct = 32'b11110100111010010101110111101001;
		#400 //487010040000.0 * 1.4791381e+32 = -1.4791381e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001011101011101000110110011;
		b = 32'b10001110111101011110011000111110;
		correct = 32'b10111001011101011101000110110011;
		#400 //-0.0002344314 * -6.061888e-30 = -0.0002344314
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111111011101010010011000011;
		b = 32'b11011011001110101001110011010111;
		correct = 32'b01011011001110101001110011010111;
		#400 //-1.01069496e-19 * -5.2526793e+16 = 5.2526793e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101011000001011110000111100;
		b = 32'b00011101000110001001111001000000;
		correct = 32'b10011101000110001001111100100001;
		#400 //-4.538493e-26 * 2.0198846e-21 = -2.01993e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101100100011011111101010110;
		b = 32'b10101111111111000101111011001011;
		correct = 32'b10111101100100011011111101010110;
		#400 //-0.071165726 * -4.5905887e-10 = -0.071165726
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110110011001010000101011010;
		b = 32'b00001110110000101011110111101011;
		correct = 32'b11110110110011001010000101011010;
		#400 //-2.0751976e+33 * 4.8007577e-30 = -2.0751976e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000101111100110111001101011;
		b = 32'b01010101111110011001100111110101;
		correct = 32'b11110000101111100110111001101011;
		#400 //-4.714851e+29 * 34304954000000.0 = -4.714851e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100000001010011001011110000;
		b = 32'b11100101011110010001001101001010;
		correct = 32'b11110100000001010011001011110000;
		#400 //-4.221244e+31 * -7.3514067e+22 = -4.221244e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011001010000000000101011000;
		b = 32'b11101111110101110011110101110110;
		correct = 32'b01101111110101110011110101110110;
		#400 //3.0991498e+21 * -1.3322716e+29 = 1.3322716e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011111001101111010001011111;
		b = 32'b11100101011101000100110110011011;
		correct = 32'b01100101011101000100110110011011;
		#400 //1.07546605e-07 * -7.210556e+22 = 7.210556e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111111000001010101100001110;
		b = 32'b01000000000011000000101100001011;
		correct = 32'b11000000000011000000101100001011;
		#400 //-3.380431e-34 * 2.188174 = -2.188174
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000101110111100111110000100;
		b = 32'b01101101001111110001000010001100;
		correct = 32'b11101101001111101011001010100100;
		#400 //7.095284e+24 * 3.6957276e+27 = -3.6886322e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001101001000001010100111101;
		b = 32'b01001000100110000010111011001101;
		correct = 32'b01010001101001000001010100010111;
		#400 //88091370000.0 * 311670.4 = 88091060000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100000101001100011111111001;
		b = 32'b00101011011101011011010110010110;
		correct = 32'b10101011011101011011010110010110;
		#400 //-1.748914e-36 * 8.7293486e-13 = -8.7293486e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101111110111011110101101000;
		b = 32'b10010010111010001110111111010000;
		correct = 32'b01111101111110111011110101101000;
		#400 //4.182746e+37 * -1.4700377e-27 = 4.182746e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000001010110011111101111;
		b = 32'b00001010010111100111001101101101;
		correct = 32'b10101000000001010110011111101111;
		#400 //-7.40552e-15 * 1.07106204e-32 = -7.40552e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110000010100010100100010;
		b = 32'b10000011001101000001110101100000;
		correct = 32'b11101000110000010100010100100010;
		#400 //-7.301536e+24 * -5.2930967e-37 = -7.301536e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101101000010000110100111010;
		b = 32'b01011010001010001111000000000000;
		correct = 32'b11011010001010001111000000000000;
		#400 //4.263002e-21 * 1.188792e+16 = -1.188792e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010110100101110100101010;
		b = 32'b01010110110011000011010100010010;
		correct = 32'b11010110110011000011010100010010;
		#400 //1.3015504e-05 * 112264150000000.0 = -112264150000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010110000101011110001000001;
		b = 32'b10001100111000100001111001111010;
		correct = 32'b11000010110000101011110001000001;
		#400 //-97.36768 * -3.4839156e-31 = -97.36768
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100110011110100101110101100;
		b = 32'b10101000111010101011001110110111;
		correct = 32'b00101000111010101011001110110111;
		#400 //-2.0931506e-26 * -2.6057158e-14 = 2.6057158e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000100001111100100010110101;
		b = 32'b10010100101110100101110000100011;
		correct = 32'b00010100101110100101110000100010;
		#400 //-8.172203e-34 * -1.8817542e-26 = 1.881754e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001110010110000001001100110;
		b = 32'b11110011100110000010000001010000;
		correct = 32'b01110011100110000010000001010000;
		#400 //-7142757000000000.0 * -2.4105362e+31 = 2.4105362e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011100010111110100101101010;
		b = 32'b01010110010010001001100111000111;
		correct = 32'b11010110010011001111100100010010;
		#400 //-1201833000000.0 * 55140700000000.0 = -56342530000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001100110101100110000010010;
		b = 32'b01110101010011010011111011010101;
		correct = 32'b11110101010011010011111011010101;
		#400 //-1268098.2 * 2.601795e+32 = -2.601795e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001110110101100101010111000;
		b = 32'b11110101110010101110001001010010;
		correct = 32'b01110101110010101110001001010010;
		#400 //-7698054600000000.0 * -5.143722e+32 = 5.143722e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100111000011011010100011;
		b = 32'b01111001010110000100010001110010;
		correct = 32'b11111001010110000100010001110010;
		#400 //-2.1985085e+16 * 7.018277e+34 = -7.018277e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000101101011101101000011010;
		b = 32'b00010111010110110011011001101000;
		correct = 32'b01110000101101011101101000011010;
		#400 //4.5024364e+29 * 7.0831387e-25 = 4.5024364e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111000001000111000101100011;
		b = 32'b00110100011010101011011010101111;
		correct = 32'b10110100011010101011011010101111;
		#400 //-6.52994e-30 * 2.1859408e-07 = -2.1859408e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011100001011101001111101100;
		b = 32'b11100101001101111000001111100000;
		correct = 32'b01101011100001011101100110101000;
		#400 //3.235758e+26 * -5.416411e+22 = 3.2362997e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010010001100000010100010100;
		b = 32'b01111001111011000001000111110100;
		correct = 32'b11111001111011000001000111110100;
		#400 //49.50496 * 1.5321827e+35 = -1.5321827e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001010011000100110011111101;
		b = 32'b11011010100100100000100010110101;
		correct = 32'b01011010100100100000100010110101;
		#400 //-4.5363876e-14 * -2.055246e+16 = 2.055246e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001111101010001011101010100;
		b = 32'b01000010100000100011000101010001;
		correct = 32'b01010001111101010001011101010100;
		#400 //131582300000.0 * 65.09632 = 131582300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110001101100001111110000000;
		b = 32'b01001010111100010000101000000010;
		correct = 32'b11001010111100010000101000000010;
		#400 //4.1409987e-11 * 7898369.0 = -7898369.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010000111010000001011100101;
		b = 32'b10101100010100011011111110011111;
		correct = 32'b00101100010001111110111101110001;
		#400 //-1.3945405e-13 * -2.9807057e-12 = 2.8412518e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011011101001010011100110111;
		b = 32'b10000001100111011000101010010100;
		correct = 32'b01000011011101001010011100110111;
		#400 //244.65318 * -5.787154e-38 = 244.65318
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001110111000101011011001;
		b = 32'b11000000100011101001111000011110;
		correct = 32'b01000000100011101001100001000010;
		#400 //-0.0007154174 * -4.4568014 = 4.456086
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111011011001001010001110;
		b = 32'b11001110101001001111010000001101;
		correct = 32'b11100011111011011001001010001110;
		#400 //-8.7648774e+21 * -1383728800.0 = -8.7648774e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000000011100110000001010101;
		b = 32'b10101111100100101100011111111011;
		correct = 32'b10111000000011100110000000001100;
		#400 //-3.3945154e-05 * -2.669934e-10 = -3.394489e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111000101011000000110000000;
		b = 32'b10001100011011111111101000000011;
		correct = 32'b01000111000101011000000110000000;
		#400 //38273.5 * -1.8487125e-31 = 38273.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011001011111110110110001100;
		b = 32'b10010110011110011101010100001000;
		correct = 32'b01001011001011111110110110001100;
		#400 //11529612.0 * -2.0181281e-25 = 11529612.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000101111000101011111010;
		b = 32'b01011101010101101001111101011101;
		correct = 32'b11011101010101101001111110000011;
		#400 //-2603486800000.0 * 9.665739e+17 = -9.665765e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111100010100111101001000111;
		b = 32'b10010111010111110111100011100100;
		correct = 32'b11000111100010100111101001000111;
		#400 //-70900.555 * -7.220777e-25 = -70900.555
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000011111111001010000101;
		b = 32'b10111111000110110110101010101000;
		correct = 32'b01001100000011111111001010000101;
		#400 //37734932.0 * -0.6070962 = 37734932.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111011101110100110000100100;
		b = 32'b11000111111011001001101110101110;
		correct = 32'b01000111111011001001101110101110;
		#400 //1.2192704e-29 * -121143.36 = 121143.36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011001111000011101101010010;
		b = 32'b00111111011011010010000110011000;
		correct = 32'b11101011001111000011101101010010;
		#400 //-2.2755819e+26 * 0.92629385 = -2.2755819e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101001010001101001001111001;
		b = 32'b11010000110011111001100010101110;
		correct = 32'b01010000110011111001100010101110;
		#400 //9.596429e-12 * -27863118000.0 = 27863118000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001111010100000111001000;
		b = 32'b00001110111011101010111000011101;
		correct = 32'b01011010001111010100000111001000;
		#400 //1.3317774e+16 * 5.8839195e-30 = 1.3317774e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100001011010100000001001011;
		b = 32'b11000000111011011011111100100001;
		correct = 32'b11110100001011010100000001001011;
		#400 //-5.490548e+31 * -7.429581 = -5.490548e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110100100010100010110110010;
		b = 32'b00110100011111011011000100110011;
		correct = 32'b10110100011111011011000100110011;
		#400 //-3.5812374e-30 * 2.3626926e-07 = -2.3626926e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111100000011001001010100011;
		b = 32'b11101111011001000111111100001011;
		correct = 32'b01101111011001000111111100001011;
		#400 //-1.9495948e-34 * -7.071617e+28 = 7.071617e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101100010000110101101011001;
		b = 32'b11010011101110011010011010100001;
		correct = 32'b01010011101110011010011010100001;
		#400 //-1.0164032e-06 * -1594729000000.0 = 1594729000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010101000001101010011001000;
		b = 32'b00000110101000001000010101010010;
		correct = 32'b10011010101000001101010011001000;
		#400 //-6.6518216e-23 * 6.038121e-35 = -6.6518216e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100011010110111100011010110;
		b = 32'b00010101001000011000001111111000;
		correct = 32'b01101100011010110111100011010110;
		#400 //1.1386728e+27 * 3.2617796e-26 = 1.1386728e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001010000000001100001111;
		b = 32'b11101000011001100111101100100010;
		correct = 32'b01101000011001100111101100100010;
		#400 //-2.4448956e-09 * -4.3536628e+24 = 4.3536628e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101000100110000100011110001;
		b = 32'b11001101010000111001100001110111;
		correct = 32'b01001101010000111001100001110111;
		#400 //-0.0358972 * -205096820.0 = 205096820.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001000001011110110110011111;
		b = 32'b10011000111010000111100111101000;
		correct = 32'b01011001000001011110110110011111;
		#400 //2356090000000000.0 * -6.009369e-24 = 2356090000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110110011110001110001100000;
		b = 32'b10010101100011101011001001001010;
		correct = 32'b11000110110011110001110001100000;
		#400 //-26510.188 * -5.7634634e-26 = -26510.188
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100000110010011011111011101;
		b = 32'b01001100000010010101010111000110;
		correct = 32'b11001100000010010101010111000110;
		#400 //-1.4269558e-07 * 36001560.0 = -36001560.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000000110111100010100000110;
		b = 32'b00110101111000000010101000101010;
		correct = 32'b10110101111000000010101000101010;
		#400 //3.072014e-29 * 1.6701572e-06 = -1.6701572e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011000001001101011010110000;
		b = 32'b01011101000000110101011011101001;
		correct = 32'b11111011000001001101011010110000;
		#400 //-6.897376e+35 * 5.915005e+17 = -6.897376e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101101001001111010010100110;
		b = 32'b01100010101001010100101111111110;
		correct = 32'b01111101101001001111010010100110;
		#400 //2.740796e+37 * 1.5245943e+21 = 2.740796e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011110011011100111010101;
		b = 32'b00000111100010010110101011101011;
		correct = 32'b00010100011110011011100111010101;
		#400 //1.2607936e-26 * 2.067631e-34 = 1.2607936e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101100001100010101110010010;
		b = 32'b11000101000100111110001010010010;
		correct = 32'b01110101100001100010101110010010;
		#400 //3.4016186e+32 * -2366.1606 = 3.4016186e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001100010001101000010001;
		b = 32'b01011010111100011010101000000010;
		correct = 32'b11011010111100011010101000000010;
		#400 //-2.5771707e-09 * 3.4011197e+16 = -3.4011197e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001111011111011000110110;
		b = 32'b10110001011111111100011011100001;
		correct = 32'b00111110001111011111011000110110;
		#400 //0.18550953 * -3.7220433e-09 = 0.18550953
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100101110111100110001000100;
		b = 32'b10000111100100011110100010100111;
		correct = 32'b00000111100101001101011111011000;
		#400 //4.4151077e-36 * -2.1953916e-34 = 2.2395427e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000111111110101111110000101;
		b = 32'b10100101001010111000010001000101;
		correct = 32'b01111000111111110101111110000101;
		#400 //4.1436658e+34 * -1.48767e-16 = 4.1436658e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001001110011111110000000111;
		b = 32'b01101001110110100111111011010111;
		correct = 32'b11101001110110100111111011010111;
		#400 //-761792.44 * 3.3018102e+25 = -3.3018102e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011100100111101111111000001;
		b = 32'b01101100010100011000010011100010;
		correct = 32'b11101100010100011000010011100010;
		#400 //-0.0045127575 * 1.0131721e+27 = -1.0131721e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011100101100000101010111;
		b = 32'b10110100001110101110001000000010;
		correct = 32'b11111011011100101100000101010111;
		#400 //-1.2604572e+36 * -1.7404821e-07 = -1.2604572e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000110010011101101011001101;
		b = 32'b01011101010001010100000011101101;
		correct = 32'b11011101010001010100000011101101;
		#400 //413398.4 * 8.883513e+17 = -8.883513e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011010001001100001101000;
		b = 32'b00111010001101011001000100000101;
		correct = 32'b01001110011010001001100001101000;
		#400 //975575550.0 * 0.00069262116 = 975575550.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100111011000011011100011010;
		b = 32'b00100101001101000110011101111011;
		correct = 32'b10100101001101000110011101111011;
		#400 //-5.5533936e-36 * 1.5647572e-16 = -1.5647572e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011100101111101101011111000;
		b = 32'b11000010100110001100000011001110;
		correct = 32'b01000010100110001100000011001110;
		#400 //5.849255e-32 * -76.37657 = 76.37657
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010001001000000010111111;
		b = 32'b11001101000010010010110010000110;
		correct = 32'b11101000010001001000000010111111;
		#400 //-3.711835e+24 * -143837280.0 = -3.711835e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000111010011001101110100111;
		b = 32'b10001000000110010010101011101100;
		correct = 32'b10011000111010011001101110100111;
		#400 //-6.0386257e-24 * -4.6092217e-34 = -6.0386257e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010110000000100111111000101;
		b = 32'b01101000010101100111001100010111;
		correct = 32'b11101000010101100111001100010111;
		#400 //1.2136568e-27 * 4.0508378e+24 = -4.0508378e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110000001001100101010001;
		b = 32'b11110010011110101110010111100011;
		correct = 32'b11111010110000001001100011010100;
		#400 //-5.000153e+35 * -4.9695468e+30 = -5.0001036e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000111011001110111101010;
		b = 32'b10111110111110101100001000111010;
		correct = 32'b01011101000111011001110111101010;
		#400 //7.098432e+17 * -0.48976308 = 7.098432e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100011011010101000010101101;
		b = 32'b01101101111000010100110010010110;
		correct = 32'b11101101111000010100110010010110;
		#400 //-5.1459518e-17 * 8.715839e+27 = -8.715839e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100110001010101110001110001;
		b = 32'b01001011100111001110010100110010;
		correct = 32'b01011100110001010101110001110001;
		#400 //4.444177e+17 * 20564580.0 = 4.444177e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010000011100000110001100001;
		b = 32'b00111010011101010100111000011110;
		correct = 32'b01011010000011100000110001100001;
		#400 //9995764000000000.0 * 0.00093576487 = 9995764000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000101101110010100000010001;
		b = 32'b10101110010000111000001010001100;
		correct = 32'b01010000101101110010100000010001;
		#400 //24582850000.0 * -4.4453816e-11 = 24582850000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111101010111000101011000011;
		b = 32'b11011110010111110100111000011110;
		correct = 32'b01011110010111110100111000011110;
		#400 //2.0449404e-05 * -4.022708e+18 = 4.022708e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101100001101111111111110101;
		b = 32'b10101100001000010111000001001000;
		correct = 32'b01111101100001101111111111110101;
		#400 //2.2430695e+37 * -2.2941805e-12 = 2.2430695e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001100011010100100110100001;
		b = 32'b11011000100110000000101110100101;
		correct = 32'b11101001100011010100100110100001;
		#400 //-2.135078e+25 * -1337406200000000.0 = -2.135078e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000000101011110100110100011;
		b = 32'b10010000110101110010000100000100;
		correct = 32'b01011000000101011110100110100011;
		#400 //659322800000000.0 * -8.4853416e-29 = 659322800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111100001011010001000100100;
		b = 32'b00010000100010000110100100111011;
		correct = 32'b10100111100001011010001000100100;
		#400 //-3.709071e-15 * 5.3804675e-29 = -3.709071e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100100100000011001010010001;
		b = 32'b00111101111010101001000000101111;
		correct = 32'b11000100100100000011011000111011;
		#400 //-1153.5802 * 0.11453282 = -1153.6947
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110101010000101000100111001;
		b = 32'b01010110001011110101101000001100;
		correct = 32'b11010110001011110101101000001100;
		#400 //-0.32874468 * 48200320000000.0 = -48200320000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011000111111100110110101101;
		b = 32'b11100111101000010101101001111000;
		correct = 32'b01100111101000010101101001111000;
		#400 //-5.677358e-13 * -1.5239397e+24 = 1.5239397e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001001110001010000001010101;
		b = 32'b10000001011011100101011011111001;
		correct = 32'b10100001001110001010000001010101;
		#400 //-6.2553823e-19 * -4.3776096e-38 = -6.2553823e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001101000101110100011000000;
		b = 32'b10011010111001110001101011000101;
		correct = 32'b00011010111001110001101011101110;
		#400 //2.5702537e-28 * -9.558261e-23 = 9.558287e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011110101110101001101111100;
		b = 32'b10101100010011011111101001100010;
		correct = 32'b01110011110101110101001101111100;
		#400 //3.4119784e+31 * -2.9271243e-12 = 3.4119784e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001111110111001110111010101;
		b = 32'b00000110100010111011110001010101;
		correct = 32'b10110001111110111001110111010101;
		#400 //-7.323005e-09 * 5.256272e-35 = -7.323005e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010110100101111101111100110;
		b = 32'b10100011011010010100100010100001;
		correct = 32'b10101010110100101111101000010011;
		#400 //-3.7478283e-13 * -1.2646335e-17 = -3.7477017e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101100011111100100010011010;
		b = 32'b11011110110100011000100110001100;
		correct = 32'b11111101100011111100100010011010;
		#400 //-2.3890148e+37 * -7.5493766e+18 = -2.3890148e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100110100111110011011001;
		b = 32'b00011011101101111101111010101100;
		correct = 32'b11110110100110100111110011011001;
		#400 //-1.5666913e+33 * 3.041871e-22 = -1.5666913e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110110000101110010010111;
		b = 32'b01111010010110001100101111011011;
		correct = 32'b11111010010110001100101111011011;
		#400 //-5.1086957e+23 * 2.814177e+35 = -2.814177e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101100011001110100100111;
		b = 32'b11000011000110001011110011001001;
		correct = 32'b01110100101100011001110100100111;
		#400 //1.1257617e+32 * -152.73744 = 1.1257617e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000001100010111111110001;
		b = 32'b11000010011010100110110010011011;
		correct = 32'b01000010011010100110110010011011;
		#400 //1.6152205e-33 * -58.60606 = 58.60606
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110110101110001011011010;
		b = 32'b10011001101111000100101101011101;
		correct = 32'b00011001101111000100101101011101;
		#400 //-3.372475e-31 * -1.9469183e-23 = 1.9469183e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011100100110000111101000100;
		b = 32'b00010010111010110101000011010010;
		correct = 32'b00111011100100110000111101000100;
		#400 //0.004487904 * 1.4850509e-27 = 0.004487904
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011100000110111100101110000;
		b = 32'b01011111001111111110010010111111;
		correct = 32'b11111011100000110111100101110000;
		#400 //-1.3653079e+36 * 1.3827387e+19 = -1.3653079e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101111001110100110000110011;
		b = 32'b10001011011001110011010100100000;
		correct = 32'b00010101111001110100110000111010;
		#400 //9.342038e-26 * -4.4528949e-32 = 9.342042e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011000110111001011111110100;
		b = 32'b10001010001001110010000000100100;
		correct = 32'b10100011000110111001011111110100;
		#400 //-8.434744e-18 * -8.0468025e-33 = -8.434744e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111011110100101010110100100;
		b = 32'b01000111101000010011010100100111;
		correct = 32'b01111111011110100101010110100100;
		#400 //3.3275167e+38 * 82538.305 = 3.3275167e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110101001101101000100110001;
		b = 32'b11010110110010111111111101011110;
		correct = 32'b01010110110010111111111101011110;
		#400 //21352.596 * -112148830000000.0 = 112148830000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010101010111001100101011001;
		b = 32'b01011010100100011100010011001010;
		correct = 32'b01101010101010111001100101011001;
		#400 //1.0372524e+26 * 2.0515122e+16 = 1.0372524e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010111110100000111011100010;
		b = 32'b00110010110100001011110010101001;
		correct = 32'b11101010111110100000111011100010;
		#400 //-1.5115087e+26 * 2.430018e-08 = -1.5115087e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101100001101001001101111111;
		b = 32'b00111000100000000001000011010010;
		correct = 32'b10111000100000000001000011010000;
		#400 //1.5299538e-11 * 6.106649e-05 = -6.106647e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000100100110111001011001001;
		b = 32'b00010011010001110110110001100110;
		correct = 32'b11000000100100110111001011001001;
		#400 //-4.607762 * 2.5170776e-27 = -4.607762
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101101001110010111101101001;
		b = 32'b01000111111100110000100100100000;
		correct = 32'b11000111111111010111110000010111;
		#400 //-5349.9263 * 124434.25 = -129784.18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111011000111110011011010011;
		b = 32'b10010000110100001101011100011000;
		correct = 32'b11100111011000111110011011010011;
		#400 //-1.07623515e+24 * -8.237294e-29 = -1.07623515e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110000110011111011100111010;
		b = 32'b00011101011000100111001111100100;
		correct = 32'b00111110000110011111011100111010;
		#400 //0.15035716 * 2.9970765e-21 = 0.15035716
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100001100100000001110111000;
		b = 32'b01001011001000111111100111111010;
		correct = 32'b01001100000010010000010100111010;
		#400 //46665440.0 * 10746362.0 = 35919080.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111011110100011001110111000;
		b = 32'b00011111000001011111111001101111;
		correct = 32'b11010111011110100011001110111000;
		#400 //-275100040000000.0 * 2.8374308e-20 = -275100040000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111111101000000101111000001;
		b = 32'b01000111110011010011010110001001;
		correct = 32'b11000111110011010011010110001001;
		#400 //1.5771098e-24 * 105067.07 = -105067.07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010101100100000001110000010;
		b = 32'b11010010110111110011110110101011;
		correct = 32'b01010010110111110011110110101011;
		#400 //7.362474e-23 * -479406160000.0 = 479406160000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011101001111000001111001101;
		b = 32'b11000110100000000000001101010001;
		correct = 32'b01000110100000000000001101010001;
		#400 //-7.800518e-08 * -16385.658 = 16385.658
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001011110010011000010111110;
		b = 32'b01110100111000000100100000100110;
		correct = 32'b01111001011110001100000010011010;
		#400 //8.086691e+34 * 1.421555e+32 = 8.0724753e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110101101010000101100111000;
		b = 32'b01001100010111000011111111110110;
		correct = 32'b11001110101110111110110100111000;
		#400 //-1518705700.0 * 57737176.0 = -1576442900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101010001010101111100100;
		b = 32'b01001001110000001110110100101011;
		correct = 32'b11110010101010001010101111100100;
		#400 //-6.6817644e+30 * 1580453.4 = -6.6817644e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011000010110000111100000010;
		b = 32'b01010000010111000101000000111100;
		correct = 32'b01011011000010110000111011111111;
		#400 //3.9141523e+16 * 14784983000.0 = 3.914151e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011101101110100101010000;
		b = 32'b01000011010100100100001001001100;
		correct = 32'b11000011010100100100001001001100;
		#400 //7.256073e-37 * 210.25897 = -210.25897
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101011001001011101110110010;
		b = 32'b11010111000110111110011111111110;
		correct = 32'b11111101011001001011101110110010;
		#400 //-1.900241e+37 * -171420700000000.0 = -1.900241e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011110111000111100000011101;
		b = 32'b10010110011000000000101111100101;
		correct = 32'b01001011110111000111100000011101;
		#400 //28897338.0 * -1.8098329e-25 = 28897338.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100100111001000001111010111;
		b = 32'b01000110010000010110010101000010;
		correct = 32'b01111100100111001000001111010111;
		#400 //6.501379e+36 * 12377.314 = 6.501379e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011100111100101111011010010;
		b = 32'b00101011010100101110100000100000;
		correct = 32'b10101011010100101110100000100000;
		#400 //3.9978307e-27 * 7.4929125e-13 = -7.4929125e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010011110000011101010010000;
		b = 32'b00000100001000101100110011010110;
		correct = 32'b00101010011110000011101010010000;
		#400 //2.2047143e-13 * 1.9137065e-36 = 2.2047143e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001011110111001010101010;
		b = 32'b11010010001100010010000000101011;
		correct = 32'b01010010001100010010000000101011;
		#400 //-4.183004e-05 * -190187230000.0 = 190187230000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011111011111010010100000000;
		b = 32'b11100110100110110101001111000011;
		correct = 32'b11101011111011110111111000101011;
		#400 //-5.7942492e+26 * -3.6675597e+23 = -5.7905816e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000110110101101001101000101;
		b = 32'b10110100000001110111110010011010;
		correct = 32'b01111000110110101101001101000101;
		#400 //3.550643e+34 * -1.2618185e-07 = 3.550643e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010100101110111000010010000;
		b = 32'b01101011110010100111110101110001;
		correct = 32'b11110010100101110111001110111010;
		#400 //-5.9991445e+30 * 4.895908e+26 = -5.999634e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101111111010100010100111010;
		b = 32'b11101010110100001101010010101001;
		correct = 32'b01101010110100001101010010101001;
		#400 //-4.3935414e-16 * -1.26230415e+26 = 1.26230415e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111101010010010101001101101;
		b = 32'b00101000010111011111001000010011;
		correct = 32'b11010111101010010010101001101101;
		#400 //-371999360000000.0 * 1.2320456e-14 = -371999360000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100101010010111001101101000;
		b = 32'b10010011100000011000100011101111;
		correct = 32'b00010011100000011000100011101111;
		#400 //-3.9837693e-36 * -3.2699205e-27 = 3.2699205e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101100100001101110011100100;
		b = 32'b01001100010110110010011010101010;
		correct = 32'b01100101100100001101110011100100;
		#400 //8.551194e+22 * 57449130.0 = 8.551194e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001000000100110101001000000;
		b = 32'b10001100101101110001001110111011;
		correct = 32'b11001001000000100110101001000000;
		#400 //-534180.0 * -2.820749e-31 = -534180.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010101010001011011001101001;
		b = 32'b11010110111100000011110101010110;
		correct = 32'b01010110111100000011110101010110;
		#400 //-2.9969367e-13 * -132073110000000.0 = 132073110000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100000111110100101110011001;
		b = 32'b11010001111100000101100000101001;
		correct = 32'b01010001111100000101100000101001;
		#400 //-1.8725073e-36 * -129033904000.0 = 129033904000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111000011100011001110110001;
		b = 32'b11110000101000010110110000100000;
		correct = 32'b01110000101000010110110000100000;
		#400 //1.2933189e-10 * -3.996624e+29 = 3.996624e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001000110111110001101000;
		b = 32'b00100001000100010111011110001001;
		correct = 32'b10100001000100010111011110001001;
		#400 //-2.01512e-30 * 4.9286114e-19 = -4.9286114e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011111100110011011110100011;
		b = 32'b11110110001100101100000111111011;
		correct = 32'b01110110001100101100000111111011;
		#400 //31878982.0 * -9.064094e+32 = 9.064094e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001010111111110101101010001;
		b = 32'b10000100110111110001111001000010;
		correct = 32'b10100001010111111110101101010001;
		#400 //-7.586678e-19 * -5.2454835e-36 = -7.586678e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110100101100101101011100;
		b = 32'b01001011000101000100001001010101;
		correct = 32'b11001011000101000100001001101111;
		#400 //-26.349297 * 9716309.0 = -9716335.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010101100110011011010000100;
		b = 32'b00001011010000100101010111010100;
		correct = 32'b10001011010000100101011000101110;
		#400 //-2.6332977e-37 * 3.742761e-32 = -3.7427875e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010110111111010001110110101;
		b = 32'b00011100011011010111111010010000;
		correct = 32'b10011100011011010111111010010000;
		#400 //-3.2860868e-37 * 7.85803e-22 = -7.85803e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011010011110100100000101;
		b = 32'b10101001111110001101000011110100;
		correct = 32'b00101001111110001101000011111011;
		#400 //4.953242e-20 * -1.104966e-13 = 1.1049665e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111010011011001110000011101;
		b = 32'b00111100111010100110101100000110;
		correct = 32'b11111111010011011001110000011101;
		#400 //-2.7330233e+38 * 0.028615486 = -2.7330233e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101001000010011011010011110;
		b = 32'b10011001101001010011001100010001;
		correct = 32'b00011001101001010011001100010001;
		#400 //-4.96777e-31 * -1.7081226e-23 = 1.7081226e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011100001111111011001110;
		b = 32'b10101000000010010110011001001100;
		correct = 32'b00101000000010010110011001001100;
		#400 //1.2167155e-26 * -7.62721e-15 = 7.62721e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101110000001101000011101011;
		b = 32'b11110100100110110111000001000000;
		correct = 32'b01110100100110110111000001000000;
		#400 //-1.7367329e+18 * -9.852084e+31 = 9.852084e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100001101011011001110111010;
		b = 32'b01111101101110011111001110010010;
		correct = 32'b11111101101110011111001110010010;
		#400 //-6.012017e-22 * 3.0896484e+37 = -3.0896484e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100110011100100000111101;
		b = 32'b11110100011011110111110010010000;
		correct = 32'b01110100011011110111110010010000;
		#400 //-3.631079e+23 * -7.5896324e+31 = 7.5896324e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111100110011000101100100011;
		b = 32'b10011000001110110011111100111000;
		correct = 32'b10011111100110011000100110101101;
		#400 //-6.50282e-20 * -2.42011e-24 = -6.5025786e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100110101101011001111101011;
		b = 32'b00001111001110110110011100111011;
		correct = 32'b01011100110101101011001111101011;
		#400 //4.8346774e+17 * 9.239693e-30 = 4.8346774e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000000110101111100001100;
		b = 32'b00111110110100011100110010010110;
		correct = 32'b10111110110011011011000110011110;
		#400 //0.008018266 * 0.409764 = -0.40174574
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110011000011111101001111011;
		b = 32'b00010100111011111111101011000111;
		correct = 32'b10100110011000011111101001111011;
		#400 //-7.840202e-16 * 2.4231747e-26 = -7.840202e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010101011101010101011001;
		b = 32'b00011101100011010110011111010110;
		correct = 32'b01100110010101011101010101011001;
		#400 //2.524499e+23 * 3.7429753e-21 = 2.524499e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101111101010001010011101110;
		b = 32'b01101110100000011010001100000101;
		correct = 32'b11101110100000011010001100000101;
		#400 //-513973700.0 * 2.0060322e+28 = -2.0060322e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111001111001110000011100001;
		b = 32'b10010100010000010100011101010010;
		correct = 32'b01010111001111001110000011100001;
		#400 //207674030000000.0 * -9.758075e-27 = 207674030000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011011100101000000111100;
		b = 32'b10110011001011110110100011000100;
		correct = 32'b00110011001011110110100011000100;
		#400 //7.003402e-37 * -4.0840646e-08 = 4.0840646e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110110010000101100110110101;
		b = 32'b11000000001100001000111010111001;
		correct = 32'b01000000001100001000111010111001;
		#400 //7.536345e-35 * -2.758711 = 2.758711
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110111000000110010011101;
		b = 32'b11101101110000111110100000111000;
		correct = 32'b01101101110000111110100000111000;
		#400 //-8.6794133e-29 * -7.578789e+27 = 7.578789e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011111101000101010000000110;
		b = 32'b11101101010100100001001100101000;
		correct = 32'b01101101010100100001001100101000;
		#400 //-1.7360564e-12 * -4.0634382e+27 = 4.0634382e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111110111010011101001110;
		b = 32'b10000001001100111100011001011011;
		correct = 32'b00001000111110111010100010110110;
		#400 //1.5145846e-33 * -3.301942e-38 = 1.5146177e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100010110110001000110000;
		b = 32'b11010001100011001110101011111101;
		correct = 32'b11011010100010110110001000001101;
		#400 //-1.961649e+16 * -75654730000.0 = -1.9616415e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010001011111011100011110;
		b = 32'b01100000101010101011001101010101;
		correct = 32'b11100000101010101011001101010101;
		#400 //6.5501224e-22 * 9.840215e+19 = -9.840215e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011100111111111101000000000;
		b = 32'b01110111010000111001011000000011;
		correct = 32'b11110111010000111001011000000011;
		#400 //0.0048820972 * 3.966955e+33 = -3.966955e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010111110101110110000010101;
		b = 32'b11101011000110110101011111111110;
		correct = 32'b01101011000110110101011111111110;
		#400 //-3.6869703e-37 * -1.8779903e+26 = 1.8779903e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101011010001000011001001111;
		b = 32'b01101011101010001010010100100110;
		correct = 32'b11101011101010001010010100100110;
		#400 //1.3217496e-11 * 4.0775886e+26 = -4.0775886e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010011100111101010101001100;
		b = 32'b01101000010101100011110001101101;
		correct = 32'b11101000010101100011110001101101;
		#400 //1.1740141e-32 * 4.0468043e+24 = -4.0468043e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010010100110100110011101100;
		b = 32'b11001100111011111000011001111110;
		correct = 32'b11011010010100110100110011101100;
		#400 //-1.4868949e+16 * -125580270.0 = -1.4868949e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001101110100011010000111;
		b = 32'b00010000011110001011100100111100;
		correct = 32'b10111010001101110100011010000111;
		#400 //-0.00069914054 * 4.9052075e-29 = -0.00069914054
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101100000111011000000110110;
		b = 32'b10110010001101010100110011000100;
		correct = 32'b11100101100000111011000000110110;
		#400 //-7.773507e+22 * -1.0553041e-08 = -7.773507e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101110101101100111010010;
		b = 32'b01110101000110100100010011000010;
		correct = 32'b11110101000110100100010011000010;
		#400 //-23.356358 * 1.9555866e+32 = -1.9555866e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011111000110010000001001;
		b = 32'b01100100100011011101000011100100;
		correct = 32'b11110111011111000110010000001001;
		#400 //-5.1190928e+33 * 2.0928345e+22 = -5.1190928e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010100110110001000100011;
		b = 32'b10111101101100100101110011010001;
		correct = 32'b01011001010100110110001000100011;
		#400 //3718695200000000.0 * -0.087091096 = 3718695200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111110110110111011010101000;
		b = 32'b00110001011110011010001000101001;
		correct = 32'b01111111110110110111011010101000;
		#400 //nan * 3.6326446e-09 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010000010010101111000111000;
		b = 32'b01101000010110110001010101101000;
		correct = 32'b11101000010110110001010101101000;
		#400 //6.614031e-33 * 4.1383725e+24 = -4.1383725e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010111001111111110101011100;
		b = 32'b00110011100011001010110100000001;
		correct = 32'b10110011100011001010110100000001;
		#400 //2.2339794e-32 * 6.550727e-08 = -6.550727e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110111100101100100101110010;
		b = 32'b00000010000010010011111000100101;
		correct = 32'b01001110111100101100100101110010;
		#400 //2036644100.0 * 1.0083005e-37 = 2036644100.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000000111001111010100111;
		b = 32'b00110110111100100111011110001000;
		correct = 32'b01011101000000111001111010100111;
		#400 //5.927626e+17 * 7.2260773e-06 = 5.927626e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111011011100111111110110;
		b = 32'b00110000000010101110111110000101;
		correct = 32'b10110000000010101110111110000101;
		#400 //2.458922e-23 * 5.0544485e-10 = -5.0544485e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101011000110010111011011101;
		b = 32'b01001000011010000011100100000000;
		correct = 32'b11111101011000110010111011011101;
		#400 //-1.887363e+37 * 237796.0 = -1.887363e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000100000101011100111111111;
		b = 32'b01111110010111110001100010101011;
		correct = 32'b11111110010111110001100010101011;
		#400 //2.2145939e-19 * 7.413648e+37 = -7.413648e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111001001000000001111000101;
		b = 32'b01000101011001010100101011100100;
		correct = 32'b11000101011001010100101011100100;
		#400 //-9.776039e-06 * 3668.6807 = -3668.6807
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110011101011101110110111111;
		b = 32'b00001000100011011111110101111000;
		correct = 32'b01110110011101011101110110111111;
		#400 //1.2466897e+33 * 8.545719e-34 = 1.2466897e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100101101110011000111010011;
		b = 32'b00111001010010101101011101110010;
		correct = 32'b01010100101101110011000111010011;
		#400 //6294519400000.0 * 0.00019344481 = 6294519400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101010100100110101111101101;
		b = 32'b00110001101010011101001101001100;
		correct = 32'b10111101010100100110101111101110;
		#400 //-0.051372457 * 4.942569e-09 = -0.05137246
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111110000000001011010001101;
		b = 32'b01110001000111111010110011101110;
		correct = 32'b11110001000001111010101000011100;
		#400 //1.1889677e+29 * 7.906748e+29 = -6.71778e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100011101111111001001001111;
		b = 32'b01011000001101000011011000010001;
		correct = 32'b11111100011101111111001001001111;
		#400 //-5.1496477e+36 * 792577200000000.0 = -5.1496477e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000110011011110100100111110;
		b = 32'b11100100111111100101111010111001;
		correct = 32'b01100100111111100101111010111001;
		#400 //3.4882698e-19 * -3.7538388e+22 = 3.7538388e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110110001000000010101000111;
		b = 32'b11010110101000011110011011010011;
		correct = 32'b01010110101000011110011011010011;
		#400 //-25090.639 * -89006380000000.0 = 89006380000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111000000011101011100100;
		b = 32'b01000010111100000111011000001011;
		correct = 32'b11000010111100001010111000011010;
		#400 //-0.109487325 * 120.23055 = -120.34004
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010011010110100101100101;
		b = 32'b01000100001011101110010101101000;
		correct = 32'b11100001010011010110100101100101;
		#400 //-2.3682356e+20 * 699.5845 = -2.3682356e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110100110100000101011110110;
		b = 32'b01011111011011000111100000001010;
		correct = 32'b01100110100110100000100100011101;
		#400 //3.637233e+23 * 1.703938e+19 = 3.6370627e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010010011100000111011011000;
		b = 32'b10000101010001111111000001000011;
		correct = 32'b10110010010011100000111011011000;
		#400 //-1.1994153e-08 * -9.401064e-36 = -1.1994153e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111010011110100011001011000;
		b = 32'b11110011011010000110001110101101;
		correct = 32'b01110011011010000110001110101101;
		#400 //-1.4935722e+19 * -1.8411782e+31 = 1.8411782e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101111101001000111010101;
		b = 32'b10100110000101101111010111111000;
		correct = 32'b11001001101111101001000111010101;
		#400 //-1561146.6 * -5.2375054e-16 = -1561146.6
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010011000111110110010000001;
		b = 32'b11001110111010010100011000010100;
		correct = 32'b11100010011000111110110010000001;
		#400 //-1.0511132e+21 * -1956842000.0 = -1.0511132e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001101001010110101100110;
		b = 32'b00110110111111110001100110111001;
		correct = 32'b10111000010101001001000010011101;
		#400 //-4.3076834e-05 * 7.6025867e-06 = -5.067942e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111110001001101111011010;
		b = 32'b00110000010111111111100101001101;
		correct = 32'b11110010111110001001101111011010;
		#400 //-9.848409e+30 * 8.1481205e-10 = -9.848409e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110010101111000100010001;
		b = 32'b01011100000110101011001011000100;
		correct = 32'b11011100000110101011001011000100;
		#400 //-8.0046373e-29 * 1.741748e+17 = -1.741748e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101100101011010001000111;
		b = 32'b00010100000010110000000100101110;
		correct = 32'b11110010101100101011010001000111;
		#400 //-7.079203e+30 * 7.017939e-27 = -7.079203e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010010000110100011010000010;
		b = 32'b01010000000110101111010010000111;
		correct = 32'b11101010010000110100011010000010;
		#400 //-5.9018375e+25 * 10398866000.0 = -5.9018375e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011100010010100100001101101;
		b = 32'b00011100000001101000001001011110;
		correct = 32'b00100011100010010100011101100000;
		#400 //1.4884243e-17 * 4.4505376e-22 = 1.4883798e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001101111110100101010010010;
		b = 32'b01100100010100100011010110100100;
		correct = 32'b11100100010100100011010110100100;
		#400 //8.49504e-14 * 1.5510726e+22 = -1.5510726e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101001111011111101100010101;
		b = 32'b10100011101110110100111101110010;
		correct = 32'b00100011101110110100111101110010;
		#400 //-8.932854e-36 * -2.0308227e-17 = 2.0308227e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101001011010011101010010100;
		b = 32'b00011000010101011110100110100100;
		correct = 32'b01101101001011010011101010010100;
		#400 //3.3507327e+27 * 2.7647563e-24 = 3.3507327e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101010101010010001110011010;
		b = 32'b00010010100010000110001101111100;
		correct = 32'b01010101010101010010001110011010;
		#400 //14646805000000.0 * 8.607331e-28 = 14646805000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001000111111101100011110100;
		b = 32'b00000001011010101010110100010011;
		correct = 32'b11011001000111111101100011110100;
		#400 //-2812066500000000.0 * 4.3103187e-38 = -2812066500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110001011011011110000010111;
		b = 32'b10000101111101010110010100110101;
		correct = 32'b00100110001011011011110000010111;
		#400 //6.027634e-16 * -2.3076867e-35 = 6.027634e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111000011000111101111110001;
		b = 32'b10010000101100000100010010011001;
		correct = 32'b00010111000011001000000101110011;
		#400 //4.5392876e-25 * -6.952545e-29 = 4.539983e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010101001111101110101001100;
		b = 32'b00110110000000101001001011101100;
		correct = 32'b11011010101001111101110101001100;
		#400 //-2.362482e+16 * 1.945703e-06 = -2.362482e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101000000000001010001011001;
		b = 32'b01101110000100101011110000001000;
		correct = 32'b11101110000100101011110000001000;
		#400 //-8801555000000.0 * 1.1353032e+28 = -1.1353032e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100001100011011001111111011;
		b = 32'b01111100110100100000111101101111;
		correct = 32'b11111100110100100000111101101111;
		#400 //0.010846133 * 8.725563e+36 = -8.725563e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001111010110000100001101000;
		b = 32'b10111101111010011010101100110100;
		correct = 32'b01110001111010110000100001101000;
		#400 //2.3276525e+30 * -0.114096075 = 2.3276525e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100111110100011000100101;
		b = 32'b00101101101101101011101110010001;
		correct = 32'b10101101101101101011101110010001;
		#400 //-2.4540046e-31 * 2.07743e-11 = -2.07743e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001001011111000100000001111;
		b = 32'b11111000001111011101101110111110;
		correct = 32'b01111000001111011101101110111110;
		#400 //0.00016739986 * -1.5403141e+34 = 1.5403141e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100001000101100110000010;
		b = 32'b11001001110001111001011100100100;
		correct = 32'b01001001110001111001011100100100;
		#400 //2.0881091e-28 * -1635044.5 = 1635044.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111100010111100010110111;
		b = 32'b10110001010001110101110100101110;
		correct = 32'b00110001010001110101110100101110;
		#400 //-2.2707875e-35 * -2.9011278e-09 = 2.9011278e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000000100001011000000000111;
		b = 32'b01011001101110011110010100101100;
		correct = 32'b11011001101110011110010100011010;
		#400 //9709821000.0 * 6540606000000000.0 = -6540596300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100110010000101100111000001;
		b = 32'b00111110101011001111001110001000;
		correct = 32'b10111110101011001111001101111011;
		#400 //3.7318208e-07 * 0.3377955 = -0.3377951
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011111011100010001100110110;
		b = 32'b00110011001110101001010111110010;
		correct = 32'b01101011111011100010001100110110;
		#400 //5.7578125e+26 * 4.3442874e-08 = 5.7578125e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000010011011100001110010001;
		b = 32'b00101101010011001100101101100101;
		correct = 32'b10101101010011001100101101100101;
		#400 //7.141489e-39 * 1.164122e-11 = -1.164122e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010110011011110011110001100;
		b = 32'b00110100100101011110111010101000;
		correct = 32'b10111010110011011111000011101011;
		#400 //-0.0015709265 * 2.7927058e-07 = -0.0015712058
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011011001100100101001111011;
		b = 32'b00001001011100010010000100110101;
		correct = 32'b10110011011001100100101001111011;
		#400 //-5.3618788e-08 * 2.9024934e-33 = -5.3618788e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110010001000010111111010000;
		b = 32'b00110001000001011000000110101101;
		correct = 32'b10110001000010001001001001101100;
		#400 //-4.4607706e-11 * 1.942776e-09 = -1.9873836e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101010000001100000100000010;
		b = 32'b01111100000100000000010001111100;
		correct = 32'b11111100000100000000010001111100;
		#400 //5.689092e+22 * 2.9911268e+36 = -2.9911268e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001101101001111110101101;
		b = 32'b10110101000010100010101100111101;
		correct = 32'b01101010001101101001111110101101;
		#400 //5.5194637e+25 * -5.1471926e-07 = 5.5194637e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001101100110101100100110010;
		b = 32'b10000000000111011010101000001010;
		correct = 32'b01110001101100110101100100110010;
		#400 //1.7761807e+30 * -2.724228e-39 = 1.7761807e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110101011001100011110101100;
		b = 32'b10011100100100101111011111011000;
		correct = 32'b00011110101101011111011100101010;
		#400 //1.829379e-20 * -9.725536e-22 = 1.9266345e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111000100011001001101001101;
		b = 32'b10100110100100010110011011010011;
		correct = 32'b00100110100100010110011011010011;
		#400 //-4.7037947e-25 * -1.0089267e-15 = 1.0089267e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011101101101000000001000;
		b = 32'b00001010010010001000111101110110;
		correct = 32'b10010111011101101101000000001000;
		#400 //-7.974946e-25 * 9.656632e-33 = -7.974946e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110100100001000011011110101;
		b = 32'b11001101101001010110101101001111;
		correct = 32'b01001101101001010110101101001111;
		#400 //-6.572335e-11 * -346909150.0 = 346909150.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100011100000011101001111111;
		b = 32'b01100111111010111111110000011110;
		correct = 32'b01110100011100000011101001111111;
		#400 //7.613145e+31 * 2.2288137e+24 = 7.613145e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000101101111010010011110000;
		b = 32'b01100011101010010001110000100011;
		correct = 32'b11100011101010010001110000100011;
		#400 //7.24349e-29 * 6.2390544e+21 = -6.2390544e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000011111011100011000011001;
		b = 32'b11011101100010010010110000110010;
		correct = 32'b01011101100010010010110000110010;
		#400 //-259864.39 * -1.2355413e+18 = 1.2355413e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110001010110110010101101011;
		b = 32'b10110110100000110100111001111110;
		correct = 32'b00110110110110010000000100110100;
		#400 //2.5540019e-06 * -3.913242e-06 = 6.467244e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010000010011011011111001011;
		b = 32'b10101100111011110110011011101101;
		correct = 32'b11111010000010011011011111001011;
		#400 //-1.787681e+35 * -6.8042156e-12 = -1.787681e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000101101001011001110100;
		b = 32'b10011101110111001000110100100001;
		correct = 32'b01000100000101101001011001110100;
		#400 //602.3508 * -5.837944e-21 = 602.3508
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011101100011100100101110;
		b = 32'b10100000100001111011010001011110;
		correct = 32'b00111000011101100011100100101110;
		#400 //5.8704223e-05 * -2.2989247e-19 = 5.8704223e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011110101110110100000110101;
		b = 32'b11111001101011110011101111010110;
		correct = 32'b01111001101011110011101111010110;
		#400 //-1850332500000.0 * -1.137332e+35 = 1.137332e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010000000011011001101110;
		b = 32'b01000110011010101101010010000111;
		correct = 32'b11000110011010101101010010000111;
		#400 //1.1456765e-05 * 15029.132 = -15029.132
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010001101011100011001111000;
		b = 32'b10000110000111000111110010111110;
		correct = 32'b10110010001101011100011001111000;
		#400 //-1.0580713e-08 * -2.9431985e-35 = -1.0580713e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111010000011011000000011;
		b = 32'b01011010010101110011000110001100;
		correct = 32'b11011010010101110011000110001100;
		#400 //1.4311107e-30 * 1.5142899e+16 = -1.5142899e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100001011000101001011010111;
		b = 32'b10110111001000101100111001101011;
		correct = 32'b11111100001011000101001011010111;
		#400 //-3.579021e+36 * -9.704013e-06 = -3.579021e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010011001111001100110100;
		b = 32'b01011101001101110111011000010100;
		correct = 32'b11011101001101110111011000010100;
		#400 //-0.012509156 * 8.26236e+17 = -8.26236e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101010000111110011011010110;
		b = 32'b00010101110111101010011110100001;
		correct = 32'b01001101010000111110011011010110;
		#400 //205417820.0 * 8.992956e-26 = 205417820.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000110100011010101011111;
		b = 32'b10001011110110100110100100110001;
		correct = 32'b00010011000110100011011100010100;
		#400 //1.9463847e-27 * -8.412882e-32 = 1.9464688e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110000100101111100110011011;
		b = 32'b01101010100110011110011011100001;
		correct = 32'b11101010100110011110011011100001;
		#400 //2.1900985e-06 * 9.302797e+25 = -9.302797e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101110101100000101101100000;
		b = 32'b01000000111010101100101011111111;
		correct = 32'b11110101110101100000101101100000;
		#400 //-5.426671e+32 * 7.33728 = -5.426671e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110100001110101110110101;
		b = 32'b10100000000100100011110001000101;
		correct = 32'b11100110110100001110101110110101;
		#400 //-4.9330013e+23 * -1.2386623e-19 = -4.9330013e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111000000000011111001111;
		b = 32'b10010010100101001101110110011100;
		correct = 32'b10110110111000000000011111001111;
		#400 //-6.6766293e-06 * -9.394744e-28 = -6.6766293e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010101101111111001001111;
		b = 32'b10001101100011100110000011000101;
		correct = 32'b00001101100011001011001011001000;
		#400 //-1.0351555e-32 * -8.774722e-31 = 8.671206e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111001001010011101100010101;
		b = 32'b01010000010000010010111111100000;
		correct = 32'b01101111001001010011101100010101;
		#400 //5.1136452e+28 * 12964561000.0 = 5.1136452e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100011001000011110001100;
		b = 32'b10110110010111010100010101001010;
		correct = 32'b01011010100011001000011110001100;
		#400 //1.9777766e+16 * -3.2971898e-06 = 1.9777766e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011010100111000111000011110;
		b = 32'b01001111100111001100110101100010;
		correct = 32'b11001111100111001100110101100010;
		#400 //211.55515 * 5261411300.0 = -5261411300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101100111100111111101101;
		b = 32'b11010011011100011101011000101111;
		correct = 32'b01010011011100011101010011000111;
		#400 //-23568346.0 * -1038680500000.0 = 1038656900000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110111100001101100001010;
		b = 32'b11011110001001111010001001011000;
		correct = 32'b01011110001001111010001001011000;
		#400 //-1.0342599e-07 * -3.0198285e+18 = 3.0198285e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111111111110011011100111010;
		b = 32'b00110010010111100100100001000011;
		correct = 32'b10110010010111100100100001000011;
		#400 //-3.8400595e-34 * 1.2938531e-08 = -1.2938531e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001000101011101111010100100;
		b = 32'b00100111101110101000010111011100;
		correct = 32'b10100111101110101000010111011100;
		#400 //-7.748081e-24 * 5.17705e-15 = -5.17705e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101101000001011011101111111;
		b = 32'b00111001111001001000010000111100;
		correct = 32'b10111001111001001000010000111100;
		#400 //-6.491299e-26 * 0.0004358607 = -0.0004358607
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000000100111100000110101110;
		b = 32'b01011100111010000000000010100110;
		correct = 32'b01110000000100111100000110101110;
		#400 //1.8291376e+29 * 5.2242326e+17 = 1.8291376e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011100110001011101010111;
		b = 32'b10101000100111100011100001111010;
		correct = 32'b01100110011100110001011101010111;
		#400 //2.869914e+23 * -1.7566017e-14 = 2.869914e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100010001101000111110110110;
		b = 32'b10111110011101101111110100010000;
		correct = 32'b01101100010001101000111110110110;
		#400 //9.601839e+26 * -0.24119973 = 9.601839e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011101101000101110110110110;
		b = 32'b01010001111101011000101010001101;
		correct = 32'b01111011101101000101110110110110;
		#400 //1.8730282e+36 * 131823935000.0 = 1.8730282e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001000011000001000111001101;
		b = 32'b00000110110001011010101101011101;
		correct = 32'b10110001000011000001000111001101;
		#400 //-2.03828e-09 * 7.435496e-35 = -2.03828e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111010100101000010011110001;
		b = 32'b11110001011011111101010011110111;
		correct = 32'b01110001011011111101010011110111;
		#400 //1.5837712e-34 * -1.18759e+30 = 1.18759e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010100010011000000001000111;
		b = 32'b11010000100001101101010100001011;
		correct = 32'b01010000100001101101110110100011;
		#400 //4505635.5 * -18096871000.0 = 18101377000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010110100101000001011101001;
		b = 32'b00000110100011011111011001011000;
		correct = 32'b01000010110100101000001011101001;
		#400 //105.255684 * 5.3400275e-35 = 105.255684
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111001001101000010010101;
		b = 32'b10000011101111001100100110000101;
		correct = 32'b01000010111001001101000010010101;
		#400 //114.40739 * -1.10959135e-36 = 114.40739
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010010000100111001001110110;
		b = 32'b10011101101000011100111011000111;
		correct = 32'b00101010010000100111001001110110;
		#400 //1.7270373e-13 * -4.2830148e-21 = 1.7270373e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100101001101001011111010010;
		b = 32'b01111110011111110011101111110110;
		correct = 32'b11111110011111110011101111110110;
		#400 //-1.6821599e-26 * 8.481612e+37 = -8.481612e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111111111100010100100100;
		b = 32'b10001010100010111101111010101011;
		correct = 32'b00011001111111111100010100100100;
		#400 //2.6446006e-23 * -1.3468971e-32 = 2.6446006e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110000010101101011100010100;
		b = 32'b01001110111101110111010011101100;
		correct = 32'b11001110111101110111010011101100;
		#400 //3.1568595e-11 * 2075817500.0 = -2075817500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100000001001101011110000111;
		b = 32'b11100111010000111001001101011101;
		correct = 32'b01100111010000111001001101011101;
		#400 //1.561549e-36 * -9.2357984e+23 = 9.2357984e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100010000011110000111010;
		b = 32'b00100011100111010100100101101000;
		correct = 32'b01010100100010000011110000111010;
		#400 //4681008000000.0 * 1.7053063e-17 = 4681008000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001000111111001011011110111;
		b = 32'b10001110110011101001000001100011;
		correct = 32'b01110001000111111001011011110111;
		#400 //7.9024995e+29 * -5.092196e-30 = 7.9024995e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111001011001111101100101101;
		b = 32'b00111100000000111000011001101111;
		correct = 32'b11110111001011001111101100101101;
		#400 //-3.5084746e+33 * 0.008027657 = -3.5084746e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111010111000011001101101;
		b = 32'b00111010100000111001110000001011;
		correct = 32'b10111010100000111001110000001011;
		#400 //1.5585744e-21 * 0.0010041011 = -0.0010041011
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000111100111101000010011011;
		b = 32'b01100011000011011111100001000111;
		correct = 32'b11100011000011011111100001000111;
		#400 //2.2390859e-38 * 2.6188812e+21 = -2.6188812e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001000101100001110111100101;
		b = 32'b01001011111100101100011011011101;
		correct = 32'b01101001000101100001110111100101;
		#400 //1.1342503e+25 * 31821242.0 = 1.1342503e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011101011110101111100110;
		b = 32'b01100100101100101110100110011101;
		correct = 32'b11100100101100101110100110011101;
		#400 //15.370092 * 2.6402832e+22 = -2.6402832e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001000010000110001111010111;
		b = 32'b11100110111001010000001000110110;
		correct = 32'b01101001000011111000101111101001;
		#400 //1.0305337e+25 * -5.4073135e+23 = 1.0846069e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010100101110001010110101101;
		b = 32'b10110000010100000110001001101000;
		correct = 32'b00110010100111011001100011000000;
		#400 //1.758857e-08 * -7.5809803e-10 = 1.8346668e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001100011000100000100101;
		b = 32'b10111011010110100001010001011100;
		correct = 32'b01011010001100011000100000100101;
		#400 //1.2492691e+16 * -0.0033276295 = 1.2492691e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101000101101000101111111000;
		b = 32'b00010111000111000000100001100010;
		correct = 32'b10100101000101101000101111111000;
		#400 //-1.3057849e-16 * 5.04169e-25 = -1.3057849e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010101100110011110111010000;
		b = 32'b11111100000101011001110001110001;
		correct = 32'b01111100000101011001110010000111;
		#400 //7.1004856e+30 * -3.107301e+36 = 3.107308e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010111101111011000110100100;
		b = 32'b10110000110010101100000110011101;
		correct = 32'b00111010111101111011000110110001;
		#400 //0.0018897546 * -1.4752463e-09 = 0.0018897561
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100110001000001011000101;
		b = 32'b11000000101100100000100101101111;
		correct = 32'b01000000101100100000100101101111;
		#400 //2.4061964e-28 * -5.5636516 = 5.5636516
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100011001100111110001110110;
		b = 32'b10000110011101001010111100110011;
		correct = 32'b01101100011001100111110001110110;
		#400 //1.11456275e+27 * -4.6020016e-35 = 1.11456275e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000111000010011000100111010;
		b = 32'b00001111110100001001110000100111;
		correct = 32'b10111000111000010011000100111010;
		#400 //-0.00010738005 * 2.0570531e-29 = -0.00010738005
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011000101010010111000001110;
		b = 32'b01000101110010100111110110011101;
		correct = 32'b11000101110010100111110110011101;
		#400 //4.3840033e-37 * 6479.7017 = -6479.7017
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011100101100000101011101;
		b = 32'b11011110010011001010101001101011;
		correct = 32'b01011110010011001010101001101011;
		#400 //-3884.0852 * -3.6869294e+18 = 3.6869294e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001111111101101100110110;
		b = 32'b00000011110001011100010000101010;
		correct = 32'b11100001001111111101101100110110;
		#400 //-2.2119525e+20 * 1.1623656e-36 = -2.2119525e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111111001000001100101100;
		b = 32'b01001010010111000110001000111011;
		correct = 32'b11011111111111001000001100101100;
		#400 //-3.639087e+19 * 3610766.8 = -3.639087e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101100111111000001000010;
		b = 32'b00100111010100100000101101111111;
		correct = 32'b01000100101100111111000001000010;
		#400 //1439.508 * 2.9149586e-15 = 1439.508
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101001000111001101101001011;
		b = 32'b00110000111101010001011001000101;
		correct = 32'b01010101001000111001101101001011;
		#400 //11242961000000.0 * 1.7832426e-09 = 11242961000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011011011011100101101010110;
		b = 32'b11110110110110100110011100100101;
		correct = 32'b01110110110110100110011100100101;
		#400 //-0.0036284528 * -2.2148686e+33 = 2.2148686e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001001110010011110010011100;
		b = 32'b00000111101100000111110010010010;
		correct = 32'b00101001001110010011110010011100;
		#400 //4.1130822e-14 * 2.6554753e-34 = 4.1130822e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011010000001010000001010111;
		b = 32'b00101110101111110001001011001100;
		correct = 32'b00111011010000001010000001010111;
		#400 //0.0029392445 * 8.6890134e-11 = 0.0029392445
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100001111110010011100100010;
		b = 32'b11101111110001011101010000001111;
		correct = 32'b01101111110001011101010000001111;
		#400 //764.61145 * -1.2244982e+29 = 1.2244982e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001011100010100111011110100;
		b = 32'b10101101010110111100100001011101;
		correct = 32'b00101101010110111100100001011101;
		#400 //4.4321355e-38 * -1.2493198e-11 = 1.2493198e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001101000100111111011111;
		b = 32'b11110000100101000111101111101011;
		correct = 32'b01110000100101000111101111101011;
		#400 //3097736500000.0 * -3.676287e+29 = 3.676287e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101000011000110100001010000;
		b = 32'b11000000011100000001101101000110;
		correct = 32'b01000000011100000001101101000110;
		#400 //6.6019275e-36 * -3.7516646 = 3.7516646
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100010010010111000111010;
		b = 32'b01011011010011101011100110111011;
		correct = 32'b11011011010011101011100110111111;
		#400 //-18412065000.0 * 5.818806e+16 = -5.8188075e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111001011110110000110111111;
		b = 32'b11011101111011110000000111011110;
		correct = 32'b01011101111011110000000111011110;
		#400 //-2942418700.0 * -2.1527863e+18 = 2.1527863e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100101100011010001010101111;
		b = 32'b10110001111111000110110000010001;
		correct = 32'b11011100101100011010001010101111;
		#400 //-3.9999955e+17 * -7.346451e-09 = -3.9999955e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011110110010011110001101111;
		b = 32'b01110101100010101110011111111100;
		correct = 32'b11110101100010101110011111111100;
		#400 //-5.4838093e-27 * 3.5216903e+32 = -3.5216903e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000011001001000100001000111;
		b = 32'b01101100110101000111111100001100;
		correct = 32'b11101100110101000111111100001100;
		#400 //-1.9357442e-19 * 2.0551379e+27 = -2.0551379e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110000110001011111010111011;
		b = 32'b10010101000110100100001001100101;
		correct = 32'b11100110000110001011111010111011;
		#400 //-1.8032952e+23 * -3.1152428e-26 = -1.8032952e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010011000100101011000110110;
		b = 32'b10010110000001111010011110101100;
		correct = 32'b10100010011000100101011000110101;
		#400 //-3.0674351e-18 * -1.0958121e-25 = -3.067435e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111010011111001111110000;
		b = 32'b10011001111110101001110100110111;
		correct = 32'b11100011111010011111001111110000;
		#400 //-8.631338e+21 * -2.5912893e-23 = -8.631338e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110010000011110010100010011;
		b = 32'b11001110010000111001101000000101;
		correct = 32'b11011110010000011110010100010011;
		#400 //-3.4928986e+18 * -820412740.0 = -3.4928986e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111011000100001110101011;
		b = 32'b01010010001010001010100111100000;
		correct = 32'b11010010001010001010100111100000;
		#400 //-3.9086654e-22 * 181101130000.0 = -181101130000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100100001101111011000101011;
		b = 32'b11001001000111010011101000110110;
		correct = 32'b01001001000111010011101000110110;
		#400 //1.3627638e-26 * -644003.4 = 644003.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101110110000001001010111001;
		b = 32'b01011110011110111100011000111110;
		correct = 32'b01110101110110000001001010111001;
		#400 //5.4781048e+32 * 4.535564e+18 = 5.4781048e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011100000010101001010101100;
		b = 32'b11001010100010110010010100110001;
		correct = 32'b01001010100010110010010100110001;
		#400 //-9.188947e-13 * -4559512.5 = 4559512.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110111011001000111010001100;
		b = 32'b10101010011010000011111111001101;
		correct = 32'b00101110111011010000001010101100;
		#400 //1.0757359e-10 * -2.0627875e-13 = 1.0777987e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000111000111111010101110100;
		b = 32'b01111001101001010101111100000100;
		correct = 32'b11111001101001010101111100000100;
		#400 //2.5308511e-14 * 1.0733202e+35 = -1.0733202e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011111011000000001101001011;
		b = 32'b10110101101010100000110101110111;
		correct = 32'b01111011111011000000001101001011;
		#400 //2.4508977e+36 * -1.2669906e-06 = 2.4508977e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010110111110110011010010;
		b = 32'b00101010001111001110001100110111;
		correct = 32'b11111001010110111110110011010010;
		#400 //-7.136977e+34 * 1.6776585e-13 = -7.136977e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011010010110011101101110001;
		b = 32'b01000100001000010000010010110010;
		correct = 32'b01100011010010110011101101110001;
		#400 //3.7489723e+21 * 644.07336 = 3.7489723e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010011000010111101000101;
		b = 32'b11011101001011001100011000110111;
		correct = 32'b01011101001011001100011000110111;
		#400 //6.0004475e-37 * -7.781062e+17 = 7.781062e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101001111101100010110001011;
		b = 32'b11010001000001000101111100001101;
		correct = 32'b01010001000001000101111100001101;
		#400 //2.5248418e-21 * -35533150000.0 = 35533150000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100011000011000111011110100;
		b = 32'b01110110010000001010110001001101;
		correct = 32'b11110110010000001010110001001101;
		#400 //-1.7376388e-31 * 9.769684e+32 = -9.769684e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101110011101000110100011;
		b = 32'b00000010100100001001001100110010;
		correct = 32'b00000011100101011010110011010110;
		#400 //1.0921453e-36 * 2.1243384e-37 = 8.797114e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010111001001010110010110011;
		b = 32'b00110010111111010110000000000010;
		correct = 32'b10110010111111010110000000000010;
		#400 //9.45776e-23 * 2.9496736e-08 = -2.9496736e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110000001000100111000011100;
		b = 32'b00111001000101000101000000010100;
		correct = 32'b10111001000101000101000000010100;
		#400 //1.6307864e-30 * 0.00014144211 = -0.00014144211
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001010100101011001111000001;
		b = 32'b00000001110100001110101110110010;
		correct = 32'b01010001010100101011001111000001;
		#400 //56559930000.0 * 7.674534e-38 = 56559930000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101001110100000111110010001;
		b = 32'b00110110110010100011110010000101;
		correct = 32'b01100101001110100000111110010001;
		#400 //5.4915457e+22 * 6.0271145e-06 = 5.4915457e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101111010100000111010001000;
		b = 32'b01010011001101011101001110000000;
		correct = 32'b01101101111010100000111010001000;
		#400 //9.0546324e+27 * 780937460000.0 = 9.0546324e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100100100001011011111100001;
		b = 32'b10101011101111100111001000100110;
		correct = 32'b11010100100100001011011111100001;
		#400 //-4972482000000.0 * -1.3531995e-12 = -4972482000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110111100000101011011010001;
		b = 32'b10000011101110001001111101111111;
		correct = 32'b00001110111100000101011011010100;
		#400 //5.924817e-30 * -1.08511665e-36 = 5.924818e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111010010011100011100111;
		b = 32'b00001000101111011000001001000100;
		correct = 32'b11111111111010010011100011100111;
		#400 //nan * 1.1405649e-33 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001000101101111111011111100;
		b = 32'b01101111000011111010011111001000;
		correct = 32'b11101111000011111010011111001000;
		#400 //618479.75 * 4.445919e+28 = -4.445919e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110101101011010000111001110;
		b = 32'b11111100010110000110001001011111;
		correct = 32'b01111100010110000110001001011111;
		#400 //-4.2886655e+23 * -4.4941253e+36 = 4.4941253e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110100011000101110000101;
		b = 32'b11110110000010101110111001101010;
		correct = 32'b01110110000010101110111001101010;
		#400 //6.2449276e-06 * -7.044654e+32 = 7.044654e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100010010101111110111010111;
		b = 32'b10101101100011001010010000010101;
		correct = 32'b00101101100011001010010000010101;
		#400 //-1.0248455e-26 * -1.5989024e-11 = 1.5989024e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100100111000111100011110110;
		b = 32'b00000001010100011111101000011010;
		correct = 32'b01011100100111000111100011110110;
		#400 //3.5234475e+17 * 3.8566676e-38 = 3.5234475e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100100111011101001001011101;
		b = 32'b01001010100100111001001100001110;
		correct = 32'b11001010100100111001001100001110;
		#400 //-4.4855634e-12 * 4835719.0 = -4835719.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111011110001000101001111;
		b = 32'b01101111110101001011110110100000;
		correct = 32'b11101111110101001011110110100000;
		#400 //525715240000000.0 * 1.3168013e+29 = -1.3168013e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101000111010001110111001000;
		b = 32'b11010010110001000100001101001101;
		correct = 32'b01010010110001000100001101001101;
		#400 //2.0794174e-21 * -421471350000.0 = 421471350000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111111001011111101110101010;
		b = 32'b10000011111110101101110111001010;
		correct = 32'b00101111111001011111101110101010;
		#400 //4.1833675e-10 * -1.47446e-36 = 4.1833675e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010010101100010011111110010;
		b = 32'b10101001010111100111101100111100;
		correct = 32'b00101001010111100111011111100011;
		#400 //-2.9023555e-18 * -4.940079e-14 = 4.9397887e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011101101110011011001010101;
		b = 32'b00000101010100101101100010101010;
		correct = 32'b10101011101101110011011001010101;
		#400 //-1.3018012e-12 * 9.9139475e-36 = -1.3018012e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111110010010000111010011010;
		b = 32'b10111011111011000000110111001001;
		correct = 32'b00111011111011000000110111001000;
		#400 //-3.6572062e-10 * -0.0072037918 = 0.0072037913
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100110101001011001011011000;
		b = 32'b00010111001000110111010111011101;
		correct = 32'b11011100110101001011001011011000;
		#400 //-4.789547e+17 * 5.2816905e-25 = -4.789547e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100111010101000011011011010;
		b = 32'b01101100010111100000001000010001;
		correct = 32'b11101100010111100000001000010001;
		#400 //-1.5519679e-21 * 1.07356516e+27 = -1.07356516e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110010111110001111001001110;
		b = 32'b01111111001011001010111111000111;
		correct = 32'b11111111001011001010111111000111;
		#400 //3.324723e-06 * 2.295399e+38 = -2.295399e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111110101011101111110010010;
		b = 32'b10001000001011101011000101010110;
		correct = 32'b11111111110101011101111110010010;
		#400 //nan * -5.256968e-34 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011110111011100100000001010;
		b = 32'b11111011101110101111001000101001;
		correct = 32'b01111100010011000101110100011010;
		#400 //2.3031098e+36 * -1.9413576e+36 = 4.2444675e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111100101000010100010011011;
		b = 32'b00100111111001001000111011010001;
		correct = 32'b01011111100101000010100010011011;
		#400 //2.1351907e+19 * 6.3437554e-15 = 2.1351907e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001111000111011101010111;
		b = 32'b00010110101101100011110110110100;
		correct = 32'b00111000001111000111011101010111;
		#400 //4.4933837e-05 * 2.9442626e-25 = 4.4933837e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001101101000111101000001000;
		b = 32'b11100111010011000101111011111010;
		correct = 32'b01100111010011000101111011111010;
		#400 //5.252563e-09 * -9.651148e+23 = 9.651148e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100101101111000110110011101;
		b = 32'b10101110010111011010011010100010;
		correct = 32'b00101110011101001001100001010110;
		#400 //5.216895e-12 * -5.0397582e-11 = 5.561448e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011111110001001011010100;
		b = 32'b10101101000110101011110110011011;
		correct = 32'b00101101000110101011110110011011;
		#400 //7.495938e-37 * -8.795987e-12 = 8.795987e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010110010100110000101100010;
		b = 32'b01111010111101111111000101010000;
		correct = 32'b11111010111101111111000101010000;
		#400 //-3.594998e-13 * 6.4369586e+35 = -6.4369586e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100011011010010101110101100;
		b = 32'b00100001010011000000010010111111;
		correct = 32'b10100001010011000000010010111111;
		#400 //-2.787927e-36 * 6.912417e-19 = -6.912417e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111101100010101110111111011;
		b = 32'b11111001110100000010001010110101;
		correct = 32'b01111001110100000010001010110101;
		#400 //390034400000000.0 * -1.3508771e+35 = 1.3508771e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001011000100010100000011;
		b = 32'b00110010110001001001111111010101;
		correct = 32'b01111001001011000100010100000011;
		#400 //5.5904674e+34 * 2.2890086e-08 = 5.5904674e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101001010011100111111000001;
		b = 32'b11110001001111101101001101001100;
		correct = 32'b01110001001111101101001101001100;
		#400 //-7.9845e-36 * -9.449215e+29 = 9.449215e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100000101110010100111011000;
		b = 32'b11111011110111110100001010000111;
		correct = 32'b01111011110111110100001010000111;
		#400 //2.1481619e-12 * -2.318463e+36 = 2.318463e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000111000111101010100000;
		b = 32'b00110010010101111111100010101001;
		correct = 32'b10110010010101111111100010101001;
		#400 //8.482744e-18 * 1.2571186e-08 = -1.2571186e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000000100001100111011000;
		b = 32'b01011100001001011000100111101100;
		correct = 32'b11011100001001011001001000001110;
		#400 //-35761877000000.0 * 1.8638007e+17 = -1.8641584e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010101000000100111111000010;
		b = 32'b00001000010101011000100011100010;
		correct = 32'b01110010101000000100111111000010;
		#400 //6.350595e+30 * 6.425826e-34 = 6.350595e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100101111110101101001110110;
		b = 32'b00100011111110101001110001011100;
		correct = 32'b11000100101111110101101001110110;
		#400 //-1530.8269 * 2.7171275e-17 = -1530.8269
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000101101111011101100011111;
		b = 32'b01001110001110111100001000111100;
		correct = 32'b11001110001110111100001000111100;
		#400 //5.741592 * 787517200.0 = -787517200.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110000010001101101100010;
		b = 32'b11010000111110100110101110110100;
		correct = 32'b01010000111110100110101110110100;
		#400 //-1.3399487e-15 * -33610900000.0 = 33610900000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111100100111011111011111101;
		b = 32'b00101110011111001001001011101100;
		correct = 32'b10101110011111001001001011101100;
		#400 //1.4568885e-29 * 5.742866e-11 = -5.742866e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111010011111011100001110100;
		b = 32'b01101000101010011001110000001100;
		correct = 32'b11101000101010011001110000001100;
		#400 //-0.8114083 * 6.407668e+24 = -6.407668e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010110010011110011011010111;
		b = 32'b10111011010000010111110011111000;
		correct = 32'b00111011010000010111110011111000;
		#400 //-1.9442428e-32 * -0.002952395 = 0.002952395
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011110010001001000010110101;
		b = 32'b00000111110001110111110001001000;
		correct = 32'b00100011110010001001000010110101;
		#400 //2.174533e-17 * 3.0015238e-34 = 2.174533e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100111111001110001110001010;
		b = 32'b00010111100001100011000101011101;
		correct = 32'b11001100111111001110001110001010;
		#400 //-132586580.0 * 8.672008e-25 = -132586580.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011110111000000110110000010;
		b = 32'b00101111000101100100111010110110;
		correct = 32'b11011011110111000000110110000010;
		#400 //-1.2387869e+17 * 1.3670384e-10 = -1.2387869e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111001001100101111011010101;
		b = 32'b01101011111011001000001111001010;
		correct = 32'b11101111001010000011011111011101;
		#400 //-5.1489157e+28 * 5.718577e+26 = -5.2061016e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011000000000101111001101110;
		b = 32'b10100101000110000001100010001000;
		correct = 32'b10111011000000000101111001101110;
		#400 //-0.0019587534 * -1.319221e-16 = -0.0019587534
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110101001111101111000111011;
		b = 32'b10010110011101010100100010000101;
		correct = 32'b11111110101001111101111000111011;
		#400 //-1.1156748e+38 * -1.9813826e-25 = -1.1156748e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110111100010010110111101111;
		b = 32'b00001001010010011010110100111001;
		correct = 32'b11100110111100010010110111101111;
		#400 //-5.6946882e+23 * 2.4275944e-33 = -5.6946882e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011111101010010111111001001;
		b = 32'b00100100011010100001011111000100;
		correct = 32'b01111011111101010010111111001001;
		#400 //2.5461639e+36 * 5.0760792e-17 = 2.5461639e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010100111110111100110011001;
		b = 32'b10010111001101100110100110100110;
		correct = 32'b11110010100111110111100110011001;
		#400 //-6.317455e+30 * -5.894072e-25 = -6.317455e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000100111001100001011100;
		b = 32'b01001101011001110010000000100010;
		correct = 32'b11001101011001110010000000011001;
		#400 //147.59515 * 242352670.0 = -242352530.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111001100010010110000000100;
		b = 32'b01100100101010010001000011111001;
		correct = 32'b11100100101010010001000011111001;
		#400 //-2972451800.0 * 2.4949782e+22 = -2.4949782e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010111110110100110110110000;
		b = 32'b10011000000101000110101110011010;
		correct = 32'b00011010111111111111000100001101;
		#400 //1.0393668e-22 * -1.9182877e-24 = 1.05854967e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010001011001101110111010;
		b = 32'b10001011101101011000010011110010;
		correct = 32'b00011011010001011001101110111010;
		#400 //1.6345776e-22 * -6.99187e-32 = 1.6345776e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101001000001000110110001;
		b = 32'b11010101101101001001111011001001;
		correct = 32'b11110010101001000001000110110001;
		#400 //-6.499447e+30 * -24824259000000.0 = -6.499447e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000000101101100111011100111;
		b = 32'b01001001001100011101010100000101;
		correct = 32'b11001001001100011101010100000101;
		#400 //-1.2773952e-19 * 728400.3 = -728400.3
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101000100100000111100111010;
		b = 32'b01101000011110100011001100101000;
		correct = 32'b11101000011110100011001100101000;
		#400 //-6.867684e-36 * 4.7261411e+24 = -4.7261411e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100001011000111101011110000;
		b = 32'b01110011111110011111111110001001;
		correct = 32'b11110011111110011111111110001001;
		#400 //-45214656.0 * 3.9613794e+31 = -3.9613794e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001100101101110101100100000;
		b = 32'b00001101110010110110110000111101;
		correct = 32'b11010001100101101110101100100000;
		#400 //-81023730000.0 * 1.2536898e-30 = -81023730000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010000110111111001010000111;
		b = 32'b01110001111011011110100001010110;
		correct = 32'b11110001111011011110100001010110;
		#400 //-7.508593e-33 * 2.3561224e+30 = -2.3561224e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100010100110111100001000000;
		b = 32'b01111111000100010011101001001111;
		correct = 32'b11111111000100010011101001001111;
		#400 //-2.3809375e+17 * 1.9304081e+38 = -1.9304081e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100001100100000100111010011;
		b = 32'b10010111001100100010010010011000;
		correct = 32'b01110100001100100000100111010011;
		#400 //5.6422614e+31 * -5.756109e-25 = 5.6422614e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000101101000000000000111;
		b = 32'b11101111110000101111011101111111;
		correct = 32'b01101111110000101111001011001011;
		#400 //-1.1371467e+25 * -1.2067859e+29 = 1.2066722e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100101101000110100011100001;
		b = 32'b01101001010101111000101110100110;
		correct = 32'b11101001010101111000101110100110;
		#400 //2.7796513e-31 * 1.6286158e+25 = -1.6286158e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110000011010010011101111010;
		b = 32'b10010100001000111001111101011000;
		correct = 32'b01110110000011010010011101111010;
		#400 //7.1573685e+32 * -8.260822e-27 = 7.1573685e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000111100001000011001000001;
		b = 32'b11111011011011010000101111010100;
		correct = 32'b01111011011011010000101111010100;
		#400 //-9.487016e-29 * -1.23081426e+36 = 1.23081426e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001001110001110101001100010;
		b = 32'b11011000001010101100000111000010;
		correct = 32'b11111001001110001110101001100010;
		#400 //-6.000853e+34 * -750996640000000.0 = -6.000853e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111001000110111110011111110;
		b = 32'b10111111010011100001101001001111;
		correct = 32'b00111111010011100001101001001111;
		#400 //1.2299489e-34 * -0.80508894 = 0.80508894
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001110010000110000000101;
		b = 32'b10110101111111001110111100001111;
		correct = 32'b11011000001110010000110000000101;
		#400 //-813845100000000.0 * -1.8845038e-06 = -813845100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000010000110001110001100100;
		b = 32'b01110100111010000110001000010010;
		correct = 32'b11110100111010000110001000010010;
		#400 //5.871405e-34 * 1.4729028e+32 = -1.4729028e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110111010010000100111110000;
		b = 32'b11110010101011100110010000110110;
		correct = 32'b01110010101011100110010000110110;
		#400 //-1.6170316e-15 * -6.908357e+30 = 6.908357e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110010000100101110100101;
		b = 32'b00011000001110101100010111110001;
		correct = 32'b11001011110010000100101110100101;
		#400 //-26253130.0 * 2.4139871e-24 = -26253130.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100101001110111110000011000;
		b = 32'b11101011011001001011010011010110;
		correct = 32'b01101011011001001011010011010110;
		#400 //87810240.0 * -2.7648906e+26 = 2.7648906e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100001000001011101110010;
		b = 32'b10100010101110101001000000010000;
		correct = 32'b01010100100001000001011101110010;
		#400 //4538632000000.0 * -5.0567933e-18 = 4538632000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110100101100100001101101010;
		b = 32'b00111001000010101010100010111111;
		correct = 32'b00111110100101100011001000010101;
		#400 //0.29348308 * 0.00013223568 = 0.29335085
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010101100111010010000100011;
		b = 32'b10011010000101101000110001010100;
		correct = 32'b01010010101100111010010000100011;
		#400 //385776450000.0 * -3.113263e-23 = 385776450000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010000011000010010001110;
		b = 32'b00100100100000001101111111010101;
		correct = 32'b10100100100000001101111111010101;
		#400 //9.317543e-33 * 5.589034e-17 = -5.589034e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000001110101001101100010010;
		b = 32'b10100011110010011110011011111001;
		correct = 32'b11100000001110101001101100010010;
		#400 //-5.3785444e+19 * -2.1890284e-17 = -5.3785444e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011111001010111010111010;
		b = 32'b01111011010101111110011001001101;
		correct = 32'b11111011010101111110011001001101;
		#400 //1.27572074e-26 * 1.1210149e+36 = -1.1210149e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111010011011010011000101000;
		b = 32'b11000100110001011000001010101011;
		correct = 32'b01000100110001011000001010101011;
		#400 //1.8703672e-10 * -1580.0834 = 1580.0834
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100100011110110111000100110;
		b = 32'b10011110100101111101000010101001;
		correct = 32'b01001100100011110110111000100110;
		#400 //75198770.0 * -1.6074047e-20 = 75198770.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000111100011100010100010111;
		b = 32'b11001110000100001111000101110011;
		correct = 32'b11101000111100011100010100010111;
		#400 //-9.133808e+24 * -607935700.0 = -9.133808e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001100000110101100000111;
		b = 32'b01111001101101001111011010111010;
		correct = 32'b11111001101101001111011010111010;
		#400 //189427470000.0 * 1.1745221e+35 = -1.1745221e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101000011011011111000110110;
		b = 32'b00110101010101000000001011000101;
		correct = 32'b10111101000011011011111100001010;
		#400 //-0.034605227 * 7.8980185e-07 = -0.034606017
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101011111000111101100000110;
		b = 32'b10011110001100011111100000100001;
		correct = 32'b01011101011111000111101100000110;
		#400 //1.13707136e+18 * -9.421614e-21 = 1.13707136e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100001010101101001100111110;
		b = 32'b01011111101001011101000000000010;
		correct = 32'b11100100001010110010011000100110;
		#400 //-1.2604672e+22 * 2.3896104e+19 = -1.2628568e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101011011000011101010010;
		b = 32'b10011101011010111001010000101110;
		correct = 32'b11000000101011011000011101010010;
		#400 //-5.4227686 * -3.1178598e-21 = -5.4227686
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000001001010111011000011101;
		b = 32'b01111001001110101001100010010000;
		correct = 32'b11111001001110101001100010010000;
		#400 //-3.440284e-39 * 6.0553847e+34 = -6.0553847e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011110001011101010001111;
		b = 32'b11100000110101111101001001110111;
		correct = 32'b01100000110101111101001001110111;
		#400 //-3.2147437e-24 * -1.2441299e+20 = 1.2441299e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100101110111001110000010000;
		b = 32'b01000110011111111101111001010101;
		correct = 32'b01001100101110111001010000010001;
		#400 //98361470.0 * 16375.583 = 98345096.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000001011010001010001000010;
		b = 32'b10111000000101010110110010010000;
		correct = 32'b11100000001011010001010001000010;
		#400 //-4.9886663e+19 * -3.5625475e-05 = -4.9886663e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110010011000000010011010010;
		b = 32'b10110111011011110101110011011011;
		correct = 32'b01101110010011000000010011010010;
		#400 //1.5785192e+28 * -1.426713e-05 = 1.5785192e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110000000100110100010111;
		b = 32'b01101100001010110110110000100100;
		correct = 32'b11111001110000000100110100010111;
		#400 //-1.2481057e+35 * 8.28948e+26 = -1.2481057e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011111000100000011110001011;
		b = 32'b01101111100000011010101010110100;
		correct = 32'b11101111100000011010101010110100;
		#400 //1.0525317e-07 * 8.025987e+28 = -8.025987e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100110011100011101001001001;
		b = 32'b00111101000101001100111001010001;
		correct = 32'b10111101000101001100111010111000;
		#400 //-3.8412898e-07 * 0.03632957 = -0.036329955
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110011111111010100001110;
		b = 32'b11110100110110011010010010100010;
		correct = 32'b01110100110110011010010010100010;
		#400 //114325704000000.0 * -1.379477e+32 = 1.379477e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110101010110110110110110001;
		b = 32'b00010010000000110010101000001011;
		correct = 32'b00010110101010110010110000011100;
		#400 //2.7695765e-25 * 4.1388133e-28 = 2.7654377e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010001001000000110000011;
		b = 32'b00010111100111111000110011010100;
		correct = 32'b11100111010001001000000110000011;
		#400 //-9.279729e+23 * 1.0310684e-24 = -9.279729e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100101011111010100100011100;
		b = 32'b10110100001110100110111010000010;
		correct = 32'b01101100101011111010100100011100;
		#400 //1.6988849e+27 * -1.7362802e-07 = 1.6988849e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000011101111111000110001101;
		b = 32'b00111111101111000110110110000100;
		correct = 32'b10111111101111000110111101110100;
		#400 //-5.911435e-05 * 1.4720922 = -1.4721513
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100100110101111010010010001;
		b = 32'b01111110110100110110011001100011;
		correct = 32'b11111110110100110110011001101101;
		#400 //-9.821461e+31 * 1.4049936e+38 = -1.4049947e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000011100000111100000001;
		b = 32'b10010100110010111110111111111000;
		correct = 32'b01000010000011100000111100000001;
		#400 //35.514652 * -2.0592413e-26 = 35.514652
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001101010000100111001001011;
		b = 32'b01110001100000011000111000101100;
		correct = 32'b11110001100000011000111000101100;
		#400 //4.0518155e-33 * 1.2830541e+30 = -1.2830541e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111100110111111011011100111;
		b = 32'b11110011010000000011011011101000;
		correct = 32'b01110011010000000011011011101000;
		#400 //-5233299000.0 * -1.52288e+31 = 1.52288e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111100011000000010101101100;
		b = 32'b10000101000110110111000010011101;
		correct = 32'b01001111100011000000010101101100;
		#400 //4698331000.0 * -7.308749e-36 = 4698331000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011011001011001011110001010;
		b = 32'b11011010000011000001100101001111;
		correct = 32'b01011010000011000001100101001111;
		#400 //5.345604e-08 * -9858581000000000.0 = 9858581000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100000010001010101000000100;
		b = 32'b11101011110101000011010011111111;
		correct = 32'b01101011110101000011010011111111;
		#400 //1.5387012e+17 * -5.1308508e+26 = 5.1308508e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110110100111011101010101;
		b = 32'b00101100010110111101010110100011;
		correct = 32'b00111101110110100111011101010101;
		#400 //0.10667292 * 3.1240364e-12 = 0.10667292
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001110010000000010000000;
		b = 32'b10011011100010000110010010010010;
		correct = 32'b11001011001110010000000010000000;
		#400 //-12124288.0 * -2.2564305e-22 = -12124288.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010101100011011011110001;
		b = 32'b10110111111110000100100011000100;
		correct = 32'b00110111111110000100100011000100;
		#400 //-4.645039e-17 * -2.9597788e-05 = 2.9597788e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000000010101010001010110010;
		b = 32'b00100111110000001100111100110111;
		correct = 32'b10100111110000001100111100110111;
		#400 //-4.171911e-34 * 5.351537e-15 = -5.351537e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100100101101110101100111100;
		b = 32'b10111011001110001101101101110000;
		correct = 32'b01001100100101101110101100111100;
		#400 //79124960.0 * -0.0028206967 = 79124960.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000010000111110111000011;
		b = 32'b00000001000110100000110111010011;
		correct = 32'b01000100000010000111110111000011;
		#400 //545.965 * 2.829525e-38 = 545.965
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110110101111110011110000000;
		b = 32'b00110011111001101010000010101010;
		correct = 32'b10110011111001101101011010100100;
		#400 //-9.818191e-11 * 1.0739434e-07 = -1.07492525e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110100001100000010100101011;
		b = 32'b10111100110001110111101001111101;
		correct = 32'b11010110100001100000010100101011;
		#400 //-73678380000000.0 * -0.0243504 = -73678380000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001011101010011100011100;
		b = 32'b00000111011101001010110111111001;
		correct = 32'b00100000001011101010011100011100;
		#400 //1.4793665e-19 * 1.8407646e-34 = 1.4793665e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110100000011100111010110011;
		b = 32'b00001001011000001000111010101101;
		correct = 32'b01100110100000011100111010110011;
		#400 //3.064991e+23 * 2.7030105e-33 = 3.064991e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011001000000110110100011111;
		b = 32'b01000010111101100110110011001011;
		correct = 32'b11000010111101100110110011001011;
		#400 //2.024864e-27 * 123.21249 = -123.21249
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010011011110101010010110011;
		b = 32'b01001111011000110101111001001011;
		correct = 32'b11111010011011110101010010110011;
		#400 //-3.1066921e+35 * 3814607600.0 = -3.1066921e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111000110001101000010001011;
		b = 32'b11011100011000100110011011011001;
		correct = 32'b01011100011000100110011011011001;
		#400 //-4.9377067e-25 * -2.549057e+17 = 2.549057e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010001011101111011010001100;
		b = 32'b11000010011011100000111100110001;
		correct = 32'b01111010001011101111011010001100;
		#400 //2.2711505e+35 * -59.514835 = 2.2711505e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101011100101110110111010001;
		b = 32'b10010101010111010011111111001100;
		correct = 32'b00010101010111010011111111001100;
		#400 //-1.1422465e-35 * -4.468092e-26 = 4.468092e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101001111101100111010110010;
		b = 32'b01100100110001101101010111011111;
		correct = 32'b11100100110001101101010111011111;
		#400 //5.879707e-31 * 2.934293e+22 = -2.934293e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100101000100101110110000011;
		b = 32'b11010111001111101011001001101111;
		correct = 32'b01010111001111101011001001101111;
		#400 //1.6394704e-26 * -209673580000000.0 = 209673580000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110011100110011010000000010;
		b = 32'b10010001000001010110101010000110;
		correct = 32'b10110110011100110011010000000010;
		#400 //-3.6240094e-06 * -1.0524675e-28 = -3.6240094e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001100000001010001110011001;
		b = 32'b10110100000001100011111111111101;
		correct = 32'b00110100000001100011111111111101;
		#400 //-8.716921e-19 * -1.2503001e-07 = 1.2503001e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101110100110110100011001100;
		b = 32'b10111111101010011000000011101010;
		correct = 32'b01110101110100110110100011001100;
		#400 //5.359864e+32 * -1.3242466 = 5.359864e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010001010011001101110110110;
		b = 32'b00101011110001010011110001101011;
		correct = 32'b10101011110001010011110001101011;
		#400 //-1.2460846e-37 * 1.4014461e-12 = -1.4014461e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011100011000011011110100001;
		b = 32'b00101010001010001111001111000010;
		correct = 32'b11100011100011000011011110100001;
		#400 //-5.1731053e+21 * 1.5005968e-13 = -5.1731053e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011001011000101001100010111;
		b = 32'b11110111111111110101101001010110;
		correct = 32'b01110111111111110101101001010110;
		#400 //11293463.0 * -1.0358343e+34 = 1.0358343e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001000100100000011100111;
		b = 32'b11000001101111010101011000010100;
		correct = 32'b01101010001000100100000011100111;
		#400 //4.903812e+25 * -23.66703 = 4.903812e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100011011100011101011011;
		b = 32'b10101010010001111000010101000101;
		correct = 32'b01010100100011011100011101011011;
		#400 //4871480000000.0 * -1.7720988e-13 = 4871480000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101011101001001011000011101;
		b = 32'b10011001100011011101010001101111;
		correct = 32'b01001101011101001001011000011101;
		#400 //256467410.0 * -1.466486e-23 = 256467410.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011000111000000011010111;
		b = 32'b11010111011010111000010011001000;
		correct = 32'b01010111011010111000010011001000;
		#400 //4.8175694e-20 * -258955520000000.0 = 258955520000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010100110100100110101011011;
		b = 32'b00010110000011001001001111111011;
		correct = 32'b10111010100110100100110101011011;
		#400 //-0.0011772321 * 1.1355804e-25 = -0.0011772321
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100011000111110001001101000;
		b = 32'b00101101110000110001011001010000;
		correct = 32'b01100100011000111110001001101000;
		#400 //1.6814901e+22 * 2.2178842e-11 = 1.6814901e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011110100010111101101011010;
		b = 32'b00100101000010100111110100001000;
		correct = 32'b01010011110100010111101101011010;
		#400 //1799435300000.0 * 1.2011954e-16 = 1799435300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101111111101001010011100;
		b = 32'b01011011101111101001001000011111;
		correct = 32'b11011011101111101001001000011111;
		#400 //5.1993645e-18 * 1.07281815e+17 = -1.07281815e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010100000011000001111001110;
		b = 32'b10010110100110000000010010111010;
		correct = 32'b00111010100000011000001111001110;
		#400 //0.00098812 * -2.4559907e-25 = 0.00098812
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101111111011110010101001010;
		b = 32'b10001010000110111000110110101100;
		correct = 32'b00011101111111011110010101001010;
		#400 //6.720562e-21 * -7.489624e-33 = 6.720562e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111001101101001101010101110;
		b = 32'b00111000110111011101110000001010;
		correct = 32'b10111000110111011101110000001010;
		#400 //-9.003083e-30 * 0.00010579087 = -0.00010579087
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000110011001010001110001100;
		b = 32'b11101100001100101001101010000111;
		correct = 32'b01101100001100101001101010000111;
		#400 //-3.466717e-19 * -8.636741e+26 = 8.636741e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010000101100101011010101001;
		b = 32'b00111011101010000111011000011111;
		correct = 32'b10111011101010000111011000011111;
		#400 //-3.1089276e-23 * 0.0051410343 = -0.0051410343
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111010101000111101100000;
		b = 32'b00001001011011111011011100100001;
		correct = 32'b01010100111010101000111101100000;
		#400 //8059422000000.0 * 2.8854685e-33 = 8059422000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101110111011101100111110110;
		b = 32'b00111001001010010111011100010111;
		correct = 32'b11010101110111011101100111110110;
		#400 //-30491026000000.0 * 0.0001616146 = -30491026000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100010101100001001110101010;
		b = 32'b11100111010101111001001001110101;
		correct = 32'b01100111010101111001001001110101;
		#400 //-1.0808117e-26 * -1.01801045e+24 = 1.01801045e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000111101011101010001111110;
		b = 32'b11001000000111001111110111101100;
		correct = 32'b01001000000111001111110111101100;
		#400 //4.164523e-19 * -160759.69 = 160759.69
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100010000100000110011011100;
		b = 32'b11100111000011110000010000111100;
		correct = 32'b01100111000011110000010000111100;
		#400 //1.4949086e-31 * -6.753765e+23 = 6.753765e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110100011010101001010110;
		b = 32'b00011101101010111001101010110000;
		correct = 32'b00111101110100011010101001010110;
		#400 //0.10237567 * 4.5423266e-21 = 0.10237567
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010001111011001001011001011;
		b = 32'b11111101000010100000101110011000;
		correct = 32'b01111101000010100000101110011000;
		#400 //-2.5691988e-18 * -1.1468354e+37 = 1.1468354e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000000110011111011000111;
		b = 32'b11001101011101101010000010110011;
		correct = 32'b11010100000000110011101011101100;
		#400 //-2254775800000.0 * -258607920.0 = -2254517000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111001101001111010110100101;
		b = 32'b10110001110011011111000010100110;
		correct = 32'b00110001110011011111000010100110;
		#400 //1.3613883e-34 * -5.993644e-09 = 5.993644e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101001000101011100000101010;
		b = 32'b00011100111101101101010011111000;
		correct = 32'b11011101001000101011100000101010;
		#400 //-7.32823e+17 * 1.6333966e-21 = -7.32823e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011001001001101010111000010;
		b = 32'b10000100100110111111110010011101;
		correct = 32'b00011011001001001101010111000010;
		#400 //1.3634831e-22 * -3.6672314e-36 = 1.3634831e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100011001110011011011110011;
		b = 32'b10011100100001100011001101000100;
		correct = 32'b10100100011001110011010111100111;
		#400 //-5.0136684e-17 * -8.880628e-22 = -5.0135797e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101010011010000010010000000;
		b = 32'b00100110100110000101111011101000;
		correct = 32'b01100101010011010000010010000000;
		#400 //6.051051e+22 * 1.0572843e-15 = 6.051051e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111010100100100010011000;
		b = 32'b01000000111001101100101001100011;
		correct = 32'b11000000111001101100101001100011;
		#400 //6.350269e-18 * 7.2122054 = -7.2122054
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010000100101110101010001;
		b = 32'b10101010010011001100110101010010;
		correct = 32'b00101010010011001100110101010001;
		#400 //-1.0289572e-20 * -1.8190075e-13 = 1.8190073e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101000011100111101001001101;
		b = 32'b11001010111010001110010010100110;
		correct = 32'b11100101000011100111101001001101;
		#400 //-4.2052006e+22 * -7631443.0 = -4.2052006e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011000110011111000000110000;
		b = 32'b11111101100010100101011101011110;
		correct = 32'b01111101100010100101011101011001;
		#400 //-1.2196243e+31 * -2.2985887e+37 = 2.2985875e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100011010001001101100001;
		b = 32'b00001101001011000101111101100010;
		correct = 32'b11110110100011010001001101100001;
		#400 //-1.4306776e+33 * 5.3116405e-31 = -1.4306776e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001101001111011100100011000;
		b = 32'b11000100000100001010010110110110;
		correct = 32'b01000100000100001010010110110110;
		#400 //-1.7342154e-23 * -578.58923 = 578.58923
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110101101100011101101110000;
		b = 32'b00010000000110000101110111110011;
		correct = 32'b01010110101101100011101101110000;
		#400 //100183200000000.0 * 3.004909e-29 = 100183200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010011000010111110110101;
		b = 32'b00100110100101111000110000010010;
		correct = 32'b11001011010011000010111110110101;
		#400 //-13381557.0 * 1.0515696e-15 = -13381557.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010110100001011000111010;
		b = 32'b10100011001111111111010001001000;
		correct = 32'b11111010010110100001011000111010;
		#400 //-2.8309288e+35 * -1.0405859e-17 = -2.8309288e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001011001100010100000110;
		b = 32'b00011100001011100111000111011101;
		correct = 32'b10110001001011001100010100000110;
		#400 //-2.514129e-09 * 5.7718935e-22 = -2.514129e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001101001100110000111111;
		b = 32'b00011111011111001110000000000010;
		correct = 32'b00101011001101001100110000111110;
		#400 //6.4232295e-13 * 5.354837e-20 = 6.423229e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101010101001111110100101;
		b = 32'b00000011001001101101011010000100;
		correct = 32'b01110100101010101001111110100101;
		#400 //1.0814556e+32 * 4.9029267e-37 = 1.0814556e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000100011001101100011011101;
		b = 32'b11010101011101100111110100001000;
		correct = 32'b01010101011101100111110100001000;
		#400 //1.2934765e-38 * -16938554000000.0 = 16938554000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011001111100011110110010010;
		b = 32'b10010001110111111011100000100000;
		correct = 32'b10101011001111100011110110010010;
		#400 //-6.7587006e-13 * -3.5296672e-28 = -6.7587006e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110011011010001111110100011;
		b = 32'b01110010011010111100010010100111;
		correct = 32'b11110010011010111100010010100111;
		#400 //-2.9227738e-30 * 4.6698698e+30 = -4.6698698e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010011011111000111110101111;
		b = 32'b01110101100010011110010111011100;
		correct = 32'b11111010011011111101010010100010;
		#400 //-3.109683e+35 * 3.496127e+32 = -3.1131791e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011011000000010011110100011;
		b = 32'b11110101110111101000001010111000;
		correct = 32'b01110101110111101000001010111000;
		#400 //1.2151458e-17 * -5.6413144e+32 = 5.6413144e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110011101110000001001100010;
		b = 32'b11110111001101110100001011001011;
		correct = 32'b01110111011101010000001101100100;
		#400 //1.252486e+33 * -3.7169728e+33 = 4.969459e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011100011001111000101111;
		b = 32'b00101001111100110100001100001011;
		correct = 32'b10110000011100011010010111001001;
		#400 //-8.790008e-10 * 1.0802998e-13 = -8.7910884e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000101110100100000011010010;
		b = 32'b11100110111000011010001000011111;
		correct = 32'b01100110111000011010001000011111;
		#400 //-1.1209707e-33 * -5.3276153e+23 = 5.3276153e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000010101001100001001101;
		b = 32'b10100101011111000110111111011111;
		correct = 32'b10110110000010101001100001001101;
		#400 //-2.0652253e-06 * -2.1895419e-16 = -2.0652253e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011001100110001011000001101;
		b = 32'b00010010100110011101011001001011;
		correct = 32'b10010010100110011101011001001011;
		#400 //5.2628685e-37 * 9.708485e-28 = -9.708485e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100100001111100111000001111;
		b = 32'b00100000011001010110010000101000;
		correct = 32'b10100000011001100111001111000100;
		#400 //-8.986816e-22 * 1.9430193e-19 = -1.9520061e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011011100001111111010000100;
		b = 32'b01110001110011010010010001100011;
		correct = 32'b11110001110011010010010001100011;
		#400 //4.4455584e+21 * 2.0316293e+30 = -2.0316293e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000000010111011001100000000;
		b = 32'b00110100111000011010111111110101;
		correct = 32'b01101000000010111011001100000000;
		#400 //2.6388436e+24 * 4.2037541e-07 = 2.6388436e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111000000100101000100111000;
		b = 32'b11110110101111000000010111110101;
		correct = 32'b01111111000000100101000110010110;
		#400 //1.7322135e+38 * -1.9067825e+33 = 1.7322326e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011101101100010000110110101;
		b = 32'b10010101010001111011001011011001;
		correct = 32'b01010011101101100010000110110101;
		#400 //1564499100000.0 * -4.0328816e-26 = 1564499100000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111011001001101101111100111;
		b = 32'b00011010000101101001110001000110;
		correct = 32'b10111111011001001101101111100111;
		#400 //-0.89398044 * 3.114551e-23 = -0.89398044
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000001110110010110010010011;
		b = 32'b11011001011111011110111010001111;
		correct = 32'b01011001011111011110111010001111;
		#400 //3.6913586e-29 * -4467216700000000.0 = 4467216700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110010100110010000001001101;
		b = 32'b00010110110011011101011110111100;
		correct = 32'b10010110110011011101011110111100;
		#400 //3.970842e-35 * 3.3255684e-25 = -3.3255684e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011011000110101010000101;
		b = 32'b10110111111100110000001101001011;
		correct = 32'b00110111111100110000001101101001;
		#400 //5.3754796e-11 * -2.896939e-05 = 2.8969445e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100010111011011001000101110;
		b = 32'b11111100011001011011011011111001;
		correct = 32'b01111100011001011011011011111001;
		#400 //4.807266e-17 * -4.7709884e+36 = 4.7709884e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101001101100011111000101000;
		b = 32'b11000100111001111101111001011000;
		correct = 32'b01000100111001111101111001011000;
		#400 //-5.61579e-31 * -1854.9482 = 1854.9482
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100101010000000101011011101;
		b = 32'b10010010100011111000110001101101;
		correct = 32'b11001100101010000000101011011101;
		#400 //-88102630.0 * -9.059186e-28 = -88102630.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100000100000000111001011100;
		b = 32'b11110111101001101111010001110010;
		correct = 32'b01110111101001101111010001110010;
		#400 //-2.0471602e-12 * -6.772494e+33 = 6.772494e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101111001000110110001001;
		b = 32'b10111001001110110110001100111011;
		correct = 32'b00111001001110110110001100111011;
		#400 //-4.7597436e-27 * -0.00017870676 = 0.00017870676
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111001100101111101001001110;
		b = 32'b00011110000110101101001110000110;
		correct = 32'b11111111001100101111101001001110;
		#400 //-2.3790224e+38 * 8.196434e-21 = -2.3790224e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111100000110001100011001;
		b = 32'b11110111100011001110000101100011;
		correct = 32'b01110111100011001110000101100011;
		#400 //504128300.0 * -5.7147886e+33 = 5.7147886e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010100110000000101000100101;
		b = 32'b00011011001110011110111100010111;
		correct = 32'b01101010100110000000101000100101;
		#400 //9.1902315e+25 * 1.5380095e-22 = 9.1902315e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101101001011110010101110011;
		b = 32'b10000110100101100000010111101110;
		correct = 32'b01101101101001011110010101110011;
		#400 //6.417802e+27 * -5.643244e-35 = 6.417802e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110101111101100111110010110;
		b = 32'b11000100100100100101001001010000;
		correct = 32'b01000100100100100101001001010000;
		#400 //-7.1775077e-35 * -1170.5723 = 1170.5723
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011100001011001110101000110;
		b = 32'b11001010010010101000110011101001;
		correct = 32'b01001010010010101000110011101001;
		#400 //-5.1466375e-32 * -3318586.2 = 3318586.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001001110110110001101111011;
		b = 32'b10111010000001010110011111001101;
		correct = 32'b00111010000001010110011111001101;
		#400 //2.2556082e-33 * -0.0005089015 = 0.0005089015
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000111110110101001000111111;
		b = 32'b11111000001001110111010101010101;
		correct = 32'b01111000001001110111010101010101;
		#400 //-514705.97 * -1.3585834e+34 = 1.3585834e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011000001010101111011001010;
		b = 32'b10011010110010101101011100101110;
		correct = 32'b10100011000001010101111001100101;
		#400 //-7.230017e-18 * -8.3892883e-23 = -7.229933e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001100101100010011110011010;
		b = 32'b10100100111101110101011001011100;
		correct = 32'b00100100111110011010111011111010;
		#400 //1.0174878e-18 * -1.0726547e-16 = 1.0828296e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001111010111000010011101001;
		b = 32'b11011100111011111111010110100011;
		correct = 32'b11100001111010110100100011101100;
		#400 //-5.4307026e+20 * -5.403408e+17 = -5.4252993e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110100100000101001101001;
		b = 32'b11010111010000111001100011011000;
		correct = 32'b01010111010000111001100011011000;
		#400 //6721.3013 * -215061230000000.0 = 215061230000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111010100011100111110010011;
		b = 32'b11101110110100100111100011100011;
		correct = 32'b01101110110100100111100011100011;
		#400 //-230689450000000.0 * -3.2568998e+28 = 3.2568998e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101001111001100000011001001;
		b = 32'b00111011100100110110011001010010;
		correct = 32'b10111011100100110110011001010010;
		#400 //8.8751266e-36 * 0.0044982815 = -0.0044982815
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011100000111001100000111010;
		b = 32'b01111101110100000010011001100111;
		correct = 32'b11111101110100000010011001100111;
		#400 //2.1770506e-22 * 3.4584852e+37 = -3.4584852e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000000100000001110010100110;
		b = 32'b11001111000110000101110000010101;
		correct = 32'b01001111000110000101111001010101;
		#400 //147570.6 * -2556171500.0 = 2556319000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011100011010110000100000010;
		b = 32'b10000100011101001100101100110000;
		correct = 32'b10010011100011010110000100000010;
		#400 //-3.568906e-27 * -2.8775361e-36 = -3.568906e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111000111100100010111100101;
		b = 32'b10010001101011111011101101011111;
		correct = 32'b11011111000111100100010111100101;
		#400 //-1.1404773e+19 * -2.7725608e-28 = -1.1404773e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001001111101111111010000010;
		b = 32'b00000001111011000010110010100011;
		correct = 32'b11010001001111101111111010000010;
		#400 //-51269607000.0 * 8.675676e-38 = -51269607000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000110001000010001100110101;
		b = 32'b01111000001001110111011100111010;
		correct = 32'b11111000001001110111011100111010;
		#400 //-2.177564e-14 * 1.3586434e+34 = -1.3586434e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001101011000111101111010;
		b = 32'b01111100110001100011101001000010;
		correct = 32'b11111100110001100011101001000010;
		#400 //1.2776181e+16 * 8.234051e+36 = -8.234051e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000101001001001110010101;
		b = 32'b10000000111011001100101101100100;
		correct = 32'b01101101000101001001001110010101;
		#400 //2.8738873e+27 * -2.174614e-38 = 2.8738873e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110011010000010010111110;
		b = 32'b11001010011001100100011001101010;
		correct = 32'b01001010011001100100011001101010;
		#400 //6.110028e-06 * -3772826.5 = 3772826.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111101111110110010011010111;
		b = 32'b01010111011101101001110011010010;
		correct = 32'b11010111011101101001110011010010;
		#400 //-1.2368541e-24 * 271153400000000.0 = -271153400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111011111010001011110110111;
		b = 32'b01011000010000111111110111011011;
		correct = 32'b01011111011111010001010010100111;
		#400 //1.8237246e+19 * 861980300000000.0 = 1.8236384e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100000111010000010111011110;
		b = 32'b11101111101101000101010000011011;
		correct = 32'b01101111101101000101010000011011;
		#400 //1.2096606e-31 * -1.1161796e+29 = 1.1161796e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001010000110000100110111;
		b = 32'b10100000010110110000011110100001;
		correct = 32'b00100000010110110000011110100001;
		#400 //-1.2667484e-34 * -1.8552546e-19 = 1.8552546e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010000010110001101101101100;
		b = 32'b10101101001000000111110011111111;
		correct = 32'b11001010000010110001101101101100;
		#400 //-2279131.0 * -9.122702e-12 = -2279131.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101010101010101001111110100;
		b = 32'b00011110001111010000100011110101;
		correct = 32'b01110101010101010101001111110100;
		#400 //2.704253e+32 * 1.0007429e-20 = 2.704253e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011111011110001000110110001;
		b = 32'b11000110111001110100100011011110;
		correct = 32'b11110011111011110001000110110001;
		#400 //-3.7882012e+31 * -29604.434 = -3.7882012e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101111100101001100010010010;
		b = 32'b00101111000111101011000100110101;
		correct = 32'b01010101111100101001100010010010;
		#400 //33342137000000.0 * 1.4432973e-10 = 33342137000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001011000000101111010101100;
		b = 32'b00101011100110001011011100100101;
		correct = 32'b11110001011000000101111010101100;
		#400 //-1.1110255e+30 * 1.0851082e-12 = -1.1110255e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110000001000000101101011;
		b = 32'b10111111011111101011000100111010;
		correct = 32'b00111111011111101011000100111010;
		#400 //7.775237e-26 * -0.99489176 = 0.99489176
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100011110000100101010001;
		b = 32'b00011111001110010010100011100001;
		correct = 32'b00101100100011110000100101010001;
		#400 //4.0653388e-12 * 3.9209088e-20 = 4.0653388e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100010100110011100110010000;
		b = 32'b01001000000001010100110010101110;
		correct = 32'b11001000000001010100110010101110;
		#400 //1.9671847e-07 * 136498.72 = -136498.72
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101011011101011100010101101;
		b = 32'b01001110111001101011100001110000;
		correct = 32'b11001110111001101011100001110000;
		#400 //4.82094e-26 * 1935423500.0 = -1935423500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111111101010001110001011010;
		b = 32'b00010010000011111111011100011000;
		correct = 32'b10110111111101010001110001011010;
		#400 //-2.9219478e-05 * 4.542741e-28 = -2.9219478e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011000101111011101011111;
		b = 32'b11011110111110100110101000101011;
		correct = 32'b01011110111110100110101000101011;
		#400 //-0.055411693 * -9.022141e+18 = 9.022141e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010001110111100001000111;
		b = 32'b10110100010111100111101010001010;
		correct = 32'b11101101010001110111100001000111;
		#400 //-3.8583077e+27 * -2.071994e-07 = -3.8583077e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011000100000000111010010000;
		b = 32'b00001111001011110010000010100011;
		correct = 32'b00111011000100000000111010010000;
		#400 //0.0021981336 * 8.634452e-30 = 0.0021981336
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011011011011000100001100001;
		b = 32'b01100011101010000001000000010101;
		correct = 32'b11100011101010000001000000010101;
		#400 //-8.438858e-13 * 6.2004237e+21 = -6.2004237e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010000001100100101110011100;
		b = 32'b01011100010111000111000010110100;
		correct = 32'b11011100010111000111000010110100;
		#400 //1.1927823e-13 * 2.4819365e+17 = -2.4819365e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011110101111010010001000101;
		b = 32'b01011110010010101010101100111000;
		correct = 32'b11011110010010101010101100111000;
		#400 //3.5674923e-22 * 3.650957e+18 = -3.650957e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000110111000011011000011101;
		b = 32'b11111100100101100000011011000110;
		correct = 32'b01111100100101100000011011000110;
		#400 //1.2694322e+20 * -6.231855e+36 = 6.231855e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110110101110111011001110101;
		b = 32'b01000101010001100110001101010110;
		correct = 32'b01101110110101110111011001110101;
		#400 //3.3341241e+28 * 3174.2085 = 3.3341241e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010011111000001111001110100;
		b = 32'b00101100000010001000110001011100;
		correct = 32'b10101100000010001000110001011100;
		#400 //-1.2139086e-32 * 1.9404678e-12 = -1.9404678e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010011101100101001010101010;
		b = 32'b01100110010111010000000110011001;
		correct = 32'b11100110010111010000000110011001;
		#400 //-7.7725804e-28 * 2.6091812e+23 = -2.6091812e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010100100011000010011110000;
		b = 32'b10000101000100100001101110010111;
		correct = 32'b00100010100100011000010011110000;
		#400 //3.944308e-18 * -6.8699545e-36 = 3.944308e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111001000111001011110100010;
		b = 32'b00110000001001101000011001001100;
		correct = 32'b10111111001000111001011110100010;
		#400 //-0.6390325 * 6.0581296e-10 = -0.6390325
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101011000011010100000010010;
		b = 32'b10010111101111101001001100101111;
		correct = 32'b00010111101111101001001100101111;
		#400 //1.0610319e-35 * -1.2315617e-24 = 1.2315617e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100011101100100110101111110;
		b = 32'b01010011111011111101001101110010;
		correct = 32'b01010011111111001100011110001010;
		#400 //4231448200000.0 * 2060089300000.0 = 2171359000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010101111100011011111001000;
		b = 32'b10010101111100011110100010110110;
		correct = 32'b11111010101111100011011111001000;
		#400 //-4.938339e+35 * -9.770628e-26 = -4.938339e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111110001001011000100010;
		b = 32'b00011001111110000100001011011100;
		correct = 32'b01100101111110001001011000100010;
		#400 //1.4673954e+23 * 2.5669603e-23 = 1.4673954e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011110100010010011000101;
		b = 32'b00110100011111010000100001111011;
		correct = 32'b11011001011110100010010011000101;
		#400 //-4400573300000000.0 * 2.3565546e-07 = -4400573300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111111101111010101000010;
		b = 32'b01111110100111101110011111101111;
		correct = 32'b11111110100111101110011111101111;
		#400 //-2.3976139e-35 * 1.0561115e+38 = -1.0561115e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101100001011000001101001100;
		b = 32'b11001111100000100111101111001111;
		correct = 32'b01001111100000100111101111001111;
		#400 //1.5178657e-11 * -4378304000.0 = 4378304000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101101001111010110100001110;
		b = 32'b01011111001001100011110010001011;
		correct = 32'b11011111001001100011110010001011;
		#400 //-351642050.0 * 1.1978602e+19 = -1.1978602e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111011100000001101011101001;
		b = 32'b11101111000001010010100000000001;
		correct = 32'b11111111011100000001101011101001;
		#400 //-3.1915444e+38 * -4.120987e+28 = -3.1915444e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110000110001101001011110001;
		b = 32'b11111111011000110101100110110100;
		correct = 32'b01111111011000110101100110110100;
		#400 //2.8742998e-35 * -3.0220052e+38 = 3.0220052e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101100001010110100011101101;
		b = 32'b01000100110111000100110011100011;
		correct = 32'b01010101100001010110100011101101;
		#400 //18335712000000.0 * 1762.4027 = 18335712000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000100001000110101101100011;
		b = 32'b10000101011010101000011011010010;
		correct = 32'b10001000100000101001011001010101;
		#400 //-7.9697075e-34 * -1.102739e-35 = -7.859433e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101101101000000110000110011;
		b = 32'b01101011001011010011011011000101;
		correct = 32'b11101011001011010011011011000101;
		#400 //3.123329e-16 * 2.094028e+26 = -2.094028e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001110100011010000110111;
		b = 32'b11110000000001101111110001110101;
		correct = 32'b01110000000001101111110001110101;
		#400 //-2.1467855e+20 * -1.6710477e+29 = 1.6710477e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100110011010110110101010000;
		b = 32'b00100001110010101110011111010100;
		correct = 32'b00101100110011010110110101001101;
		#400 //5.8385866e-12 * 1.3749417e-18 = 5.8385853e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000100000101001110011010011;
		b = 32'b10101000001101110011010110010010;
		correct = 32'b11000000100000101001110011010011;
		#400 //-4.0816436 * -1.0170157e-14 = -4.0816436
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110110110000100101111001011;
		b = 32'b01111111110011000001101000101010;
		correct = 32'b01111111110011000001101000101010;
		#400 //1.4375339e+38 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001110110100101001011000011;
		b = 32'b10011000000111101001111100000010;
		correct = 32'b00011001111011100010011010100011;
		#400 //2.2574099e-23 * -2.05013e-24 = 2.4624228e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101011010011001000111100;
		b = 32'b00010110011101010110110010110101;
		correct = 32'b10010110011110101101011001000111;
		#400 //-4.3720875e-27 * 1.9825244e-25 = -2.0262453e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000100111010011111001011001;
		b = 32'b11100110011111010000001010001001;
		correct = 32'b01100110011111010000001010001001;
		#400 //-4.913861 * -2.9870137e+23 = 2.9870137e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000101110011000100110001;
		b = 32'b10000000011111010011101110100100;
		correct = 32'b00100011000101110011000100110001;
		#400 //8.196143e-18 * -1.1500832e-38 = 8.196143e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000111110101110000110110100;
		b = 32'b11111001110100010011010100101101;
		correct = 32'b01111001100100100111110011000000;
		#400 //-4.0707876e+34 * -1.3578357e+35 = 9.50757e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001110011110100000010110001;
		b = 32'b11110001001001111001101101001101;
		correct = 32'b01110001001001111001101101001101;
		#400 //7.613262e-38 * -8.299479e+29 = 8.299479e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101011011110110101010110010;
		b = 32'b10000011011010101100110101111111;
		correct = 32'b10010101011011110110101010110010;
		#400 //-4.8349833e-26 * -6.9002317e-37 = -4.8349833e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001111110101100111010010101;
		b = 32'b00011110101001111001101010010110;
		correct = 32'b10100001111111010110110011111111;
		#400 //-1.6995341e-18 * 1.7745748e-20 = -1.7172798e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111001101100000011010000100;
		b = 32'b00010001001010101000101101011111;
		correct = 32'b11110111001101100000011010000100;
		#400 //-3.6919148e+33 * 1.3453582e-28 = -3.6919148e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001101010010110011100001010;
		b = 32'b01111100101110111100110101111010;
		correct = 32'b11111100101110111100110101111010;
		#400 //-6.222865e-38 * 7.8010166e+36 = -7.8010166e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101010011001100000110101;
		b = 32'b01111011000101110110110110010011;
		correct = 32'b11111011000101110110110110010011;
		#400 //9.967872e-37 * 7.8625925e+35 = -7.8625925e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010001001100101100011010000;
		b = 32'b11111010011011100011010100101000;
		correct = 32'b01111010011011100011010100101000;
		#400 //-41.58673 * -3.092112e+35 = 3.092112e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011011001011000011011100010;
		b = 32'b00001010101100000011001000011010;
		correct = 32'b11000011011001011000011011100010;
		#400 //-229.52689 * 1.696703e-32 = -229.52689
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000101100100111100001110011;
		b = 32'b01001010001111001001111010000000;
		correct = 32'b11001010001111001001111010000000;
		#400 //-7.03942e-29 * 3090336.0 = -3090336.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000010011101110010100100110;
		b = 32'b01011001011001101000100001000011;
		correct = 32'b11011001011001101000100001000011;
		#400 //-1.7524698e-19 * 4055566600000000.0 = -4055566600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011100101000100010101101110;
		b = 32'b00011110100111000111000100100101;
		correct = 32'b10011110100111000111000100100101;
		#400 //5.711199e-32 * 1.6563938e-20 = -1.6563938e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001100010111001011111111110;
		b = 32'b11100001000000111111111110000100;
		correct = 32'b01100001000000111111111110000100;
		#400 //-4.062712e-09 * -1.5218346e+20 = 1.5218346e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101001110011011111000011000;
		b = 32'b10000100100100111001010000011001;
		correct = 32'b00100101001110011011111000011000;
		#400 //1.6110598e-16 * -3.469554e-36 = 1.6110598e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111000101110100001101100110;
		b = 32'b11011110111011001000001111101010;
		correct = 32'b01011110111011001000001111101010;
		#400 //1.3757315e-10 * -8.5213614e+18 = 8.5213614e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100010010010111101001111001;
		b = 32'b11010101001100011111101000100001;
		correct = 32'b01010101001100011111101000100001;
		#400 //-1.5521332e-31 * -12230491000000.0 = 12230491000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100010000110111010010101011;
		b = 32'b10101000000101001010010110000111;
		correct = 32'b11100100010000110111010010101011;
		#400 //-1.4422088e+22 * -8.251543e-15 = -1.4422088e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000101111010101001101110000;
		b = 32'b01010011010000111010100010000010;
		correct = 32'b11010011010000111010100010000010;
		#400 //1.3775274e-09 * 840345700000.0 = -840345700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011001000101010110110010;
		b = 32'b11100100010010011110110100011110;
		correct = 32'b01100100010010011110110100011110;
		#400 //4.503109e-29 * -1.4899527e+22 = 1.4899527e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110101000110010110110010100;
		b = 32'b00010010100111011011101101000110;
		correct = 32'b00111110101000110010110110010100;
		#400 //0.3187071 * 9.954259e-28 = 0.3187071
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010001000010110000110010;
		b = 32'b11000011001100110111110110001100;
		correct = 32'b11101101010001000010110000110010;
		#400 //-3.7945307e+27 * -179.49042 = -3.7945307e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100110100000011000110100;
		b = 32'b11101100000100010001111011010101;
		correct = 32'b01101100000100010001111011010101;
		#400 //4.377632e-12 * -7.017594e+26 = 7.017594e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100110101110110100000100110;
		b = 32'b10000000101001111100000101010100;
		correct = 32'b11011100110101110110100000100110;
		#400 //-4.8505306e+17 * -1.5405881e-38 = -4.8505306e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111101111011000101101110;
		b = 32'b10110011101111010101111111010001;
		correct = 32'b00110011101111010101111111010001;
		#400 //2.6854938e-17 * -8.818427e-08 = 8.818427e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101110100111011101100001111;
		b = 32'b11001000011111011001100111011010;
		correct = 32'b01001000011111011001100111011010;
		#400 //2.4070993e-11 * -259687.4 = 259687.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000111111100000001001100010;
		b = 32'b01101100011010010010001100101000;
		correct = 32'b11101100011010110001111100101101;
		#400 //-9.5962003e+24 * 1.12738295e+27 = -1.1369792e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111110000111011010001111001;
		b = 32'b00000011011100001110101000101100;
		correct = 32'b01000111110000111011010001111001;
		#400 //100200.945 * 7.0798477e-37 = 100200.945
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010111000111110011111010000;
		b = 32'b11001010110000100001011110011001;
		correct = 32'b01001010110000100001011110011001;
		#400 //-1.438286e-27 * -6360012.5 = 6360012.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111000110100101111100011010;
		b = 32'b01101101100101011111011000110011;
		correct = 32'b11101101100101011111011000110011;
		#400 //3.2689435e-20 * 5.801363e+27 = -5.801363e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010000110111101101100101;
		b = 32'b01101111110010100011000101000010;
		correct = 32'b11101111110010100011000101000010;
		#400 //-1.03487314e-20 * 1.2515104e+29 = -1.2515104e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111010010000101010011111100;
		b = 32'b11110100111111100111111001100010;
		correct = 32'b01110100111111100111111001100010;
		#400 //6.473075e-25 * -1.61304535e+32 = 1.61304535e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011000111011100110001111010;
		b = 32'b01101111111001001000111000110011;
		correct = 32'b11101111111001001000111000110011;
		#400 //3.674038e-08 * 1.4146898e+29 = -1.4146898e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010001110001110001010110;
		b = 32'b10101101011111111101011001000110;
		correct = 32'b10111100010001110001110001010110;
		#400 //-0.012152752 * -1.454265e-11 = -0.012152752
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111010101011110101011110011;
		b = 32'b11100011000011010011010010011110;
		correct = 32'b01100011000011010011010010011110;
		#400 //1.6093384e-34 * -2.6047824e+21 = 2.6047824e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110101110001000100000101;
		b = 32'b11101111111010111001100111100011;
		correct = 32'b11111011110101110001000100000100;
		#400 //-2.233378e+36 * -1.4583003e+29 = -2.2333779e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111101000110001101111111011;
		b = 32'b10101001011101110111101010101111;
		correct = 32'b00101001011101110111101010101111;
		#400 //2.454196e-34 * -5.495143e-14 = 5.495143e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110110111000001010001101110;
		b = 32'b10100010010110000010011000010100;
		correct = 32'b00100010010110000010011000010100;
		#400 //5.425386e-30 * -2.9293617e-18 = 2.9293617e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101001001001001000001101;
		b = 32'b11011000101001101111100110010001;
		correct = 32'b11111101101001001001001000001101;
		#400 //-2.7343966e+37 * -1468726500000000.0 = -2.7343966e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111101111110000000111100111;
		b = 32'b10000011000010100010110001101010;
		correct = 32'b10001111101111110000000111100111;
		#400 //-1.8834787e-29 * -4.060554e-37 = -1.8834787e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101100100111110010001011;
		b = 32'b11100001000110101110110101100001;
		correct = 32'b01100001000110101110110101100010;
		#400 //24530997000000.0 * -1.7861897e+20 = 1.7861899e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110111101111110100000000000;
		b = 32'b01101111011100100010111001110011;
		correct = 32'b01111110111101111110100000000000;
		#400 //1.6476196e+38 * 7.4951526e+28 = 1.6476196e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011101001011010010000111;
		b = 32'b10111011010111101010110010001101;
		correct = 32'b10111101011001101100100110111110;
		#400 //-0.059742477 * -0.003397736 = -0.05634474
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101000011011110011101100110;
		b = 32'b00101100001111010010011101000010;
		correct = 32'b00101100101111010011101100101011;
		#400 //8.066303e-12 * 2.6880308e-12 = 5.378272e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001101011100101100010111;
		b = 32'b01100101100001101010011001011100;
		correct = 32'b11100101100001101010011111001000;
		#400 //-3.2748973e+18 * 7.948324e+22 = -7.948652e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010101000000010001001001111;
		b = 32'b10001011100110100001111000101100;
		correct = 32'b10111010101000000010001001001111;
		#400 //-0.0012217256 * -5.936404e-32 = -0.0012217256
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100000011100011101010000001;
		b = 32'b11111010100010000111101110100100;
		correct = 32'b01111100000111110100100111110110;
		#400 //2.953971e+36 * -3.5433005e+35 = 3.3083012e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001011100000111010010011011;
		b = 32'b00110011000011110100010000011110;
		correct = 32'b10110011000011110100010000011110;
		#400 //-1.24312575e-23 * 3.3356734e-08 = -3.3356734e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110000100100010111010100111;
		b = 32'b11111010000011010001001101111001;
		correct = 32'b01111010000011010001001101111001;
		#400 //9355.663 * -1.831272e+35 = 1.831272e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111101011101001000110110101;
		b = 32'b01100110111101011011100010110101;
		correct = 32'b11100110111101011011100010110101;
		#400 //-1.7213849e-29 * 5.801935e+23 = -5.801935e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101111100101101000001011100;
		b = 32'b00010011001110100001001110000010;
		correct = 32'b01101101111100101101000001011100;
		#400 //9.393408e+27 * 2.3486119e-27 = 9.393408e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101001010010010101110101001;
		b = 32'b01111110101110100010111110001101;
		correct = 32'b11111110101110100010111110001101;
		#400 //-3.416372e-26 * 1.2374165e+38 = -1.2374165e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110111011011010010000110;
		b = 32'b01001001011111000011011110100010;
		correct = 32'b01011010110111011011010010000110;
		#400 //3.1202229e+16 * 1033082.1 = 3.1202229e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100011110011100011111110;
		b = 32'b10101111011101111110001011101100;
		correct = 32'b00101111011101111110001011101100;
		#400 //1.5164285e-20 * -2.2545138e-10 = 2.2545138e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010010011100100011001001110;
		b = 32'b01110010011000010000111101011110;
		correct = 32'b11110010011000010000111101011110;
		#400 //221485700000.0 * 4.457773e+30 = -4.457773e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110100110100011010111111011;
		b = 32'b11111110111100101101000001010000;
		correct = 32'b01111110111100101101000001010000;
		#400 //1.0700528e-15 * -1.613774e+38 = 1.613774e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111100100000100001011001;
		b = 32'b11011100000001010010001000011110;
		correct = 32'b01011100000001010010001000011110;
		#400 //-0.007386249 * -1.4989474e+17 = 1.4989474e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000110010001000011111011000;
		b = 32'b01010110100010101010100100000110;
		correct = 32'b11010110100010101010100100000110;
		#400 //1.8415831e-38 * 76229280000000.0 = -76229280000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101011011000100110101111;
		b = 32'b01101111011011000011001111100000;
		correct = 32'b11101111011011000011001111100000;
		#400 //-0.00033099714 * 7.3101175e+28 = -7.3101175e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011000010111110101101110110;
		b = 32'b11010101101101110100111010111011;
		correct = 32'b11111011000010111110101101110110;
		#400 //-7.26505e+35 * -25193597000000.0 = -7.26505e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011000101100000101000001010;
		b = 32'b11111111110011111101010101001000;
		correct = 32'b11111111110011111101010101001000;
		#400 //2.767735e+21 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100101010111000010101101101;
		b = 32'b10111010011011000000010101110111;
		correct = 32'b00111010011011000000010101110111;
		#400 //7.438546e-17 * -0.00090035 = 0.00090035
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010111010001101101101110000;
		b = 32'b01000011101010000001011011001110;
		correct = 32'b11000011101010000001011011001110;
		#400 //2.242333e-32 * 336.17816 = -336.17816
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101011100001010000101001;
		b = 32'b01111001101010111011110001010100;
		correct = 32'b11111001101010111011110001010100;
		#400 //1.9790463e-11 * 1.1146281e+35 = -1.1146281e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010000000000100011010110;
		b = 32'b11011100010100000000110010111111;
		correct = 32'b01011100010100000000110010111111;
		#400 //-12290.209 * -2.3424324e+17 = 2.3424324e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001101111100111111001000;
		b = 32'b10110001011011111011101101110110;
		correct = 32'b10111010001101111100111110001100;
		#400 //-0.0007011858 * -3.4885637e-09 = -0.0007011823
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100110000010100010000111111;
		b = 32'b10001100001110011110010011111100;
		correct = 32'b10011100110000010100010000111111;
		#400 //-1.278931e-21 * -1.4320789e-31 = -1.278931e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111111011010000010100001011;
		b = 32'b00111101010100100110011010011100;
		correct = 32'b11100111111011010000010100001011;
		#400 //-2.2385878e+24 * 0.051367387 = -2.2385878e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001100110101101000001101010;
		b = 32'b11010100011010010011110110010111;
		correct = 32'b01010100011011100001010000011010;
		#400 //83115200000.0 * -4007042700000.0 = 4090157900000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111101001011100000110000;
		b = 32'b01110100100111101101001000001101;
		correct = 32'b11110100100111101101001000001101;
		#400 //1.7388365e-12 * 1.0066446e+32 = -1.0066446e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100000011000100110110001;
		b = 32'b10011000010001000100010110011011;
		correct = 32'b00111111100000011000100110110001;
		#400 //1.0120145 * -2.5367548e-24 = 1.0120145
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000110000101001011101101101;
		b = 32'b10111000000100011001000010011100;
		correct = 32'b01101000110000101001011101101101;
		#400 //7.351459e+24 * -3.4705372e-05 = 7.351459e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011011011000010111110001;
		b = 32'b10100100110000101101101001110100;
		correct = 32'b00110010011011011000010111110001;
		#400 //1.382567e-08 * -8.450416e-17 = 1.382567e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000111100000011000100001010;
		b = 32'b01000000101010111110101001011011;
		correct = 32'b11000000101010111110101001011011;
		#400 //6.2088063e-24 * 5.372358 = -5.372358
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001010010010000010011100001;
		b = 32'b10101000101010101001110111010101;
		correct = 32'b00101000101010101001110111010101;
		#400 //-1.0392442e-23 * -1.894224e-14 = 1.894224e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000100100001101100001000101;
		b = 32'b11100100000001111111001000110000;
		correct = 32'b01110000100100001101100001000101;
		#400 //3.5861836e+29 * -1.0031048e+22 = 3.5861836e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010100110001100101101001011;
		b = 32'b10000111100101000010000101011111;
		correct = 32'b10100010100110001100101101001011;
		#400 //-4.1414927e-18 * -2.2288179e-34 = -4.1414927e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001100101100001110000110110;
		b = 32'b11101000110111101011000011011110;
		correct = 32'b01101000110111101011000011011110;
		#400 //-4.368782e-09 * -8.413024e+24 = 8.413024e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100001110111111101000011110;
		b = 32'b01001000110001001010011101111110;
		correct = 32'b11111100001110111111101000011110;
		#400 //-3.90413e+36 * 402747.94 = -3.90413e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110001110110111001111110;
		b = 32'b11101110011111010010111010000100;
		correct = 32'b01101110011111010010111010000100;
		#400 //-0.0060861697 * -1.9588985e+28 = 1.9588985e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100001100100100101100111110;
		b = 32'b10000001101011000011001100000000;
		correct = 32'b10010100001100100100101100111110;
		#400 //-9.001542e-27 * -6.3256e-38 = -9.001542e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011110101110000011000100;
		b = 32'b11111001110001000110001001011000;
		correct = 32'b01111001110001000110001001011000;
		#400 //4.947696e-29 * -1.274606e+35 = 1.274606e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111100010111111011001001111;
		b = 32'b00010001000111111001001011101011;
		correct = 32'b00100111100010111111011001001111;
		#400 //3.88473e-15 * 1.2588161e-28 = 3.88473e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101010111110110001010011101;
		b = 32'b00101000000000001101110100110001;
		correct = 32'b01011101010111110110001010011101;
		#400 //1.00603754e+18 * 7.153391e-15 = 1.00603754e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111101000010000000111111011;
		b = 32'b01101111011011011100100001010100;
		correct = 32'b11101111011011011100100001010100;
		#400 //-2.4225752e-34 * 7.359013e+28 = -7.359013e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011110001011110101010110101;
		b = 32'b10111101110111111010111110000110;
		correct = 32'b11101011110001011110101010110101;
		#400 //-4.785335e+26 * -0.1092215 = -4.785335e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011011100010011011110101110;
		b = 32'b00101101111111011110010110011111;
		correct = 32'b11001011011100010011011110101110;
		#400 //-15808430.0 * 2.8864742e-11 = -15808430.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111000011001100010001111001;
		b = 32'b10110111110010001010111000110001;
		correct = 32'b00110111110010001010111000110001;
		#400 //-1.953541e-15 * -2.3922972e-05 = 2.3922972e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100111101011010101001000;
		b = 32'b11000001101000001110011101100100;
		correct = 32'b01011010100111101011010101001000;
		#400 //2.2336184e+16 * -20.112984 = 2.2336184e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100100011000001000010011;
		b = 32'b00001100100011010110100010010010;
		correct = 32'b01010100100100011000001000010011;
		#400 //4999620300000.0 * 2.1787426e-31 = 4999620300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000001101010101101111000000;
		b = 32'b00011011001100111010101110001001;
		correct = 32'b01011000001101010101101111000000;
		#400 //797622700000000.0 * 1.4861959e-22 = 797622700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100011100100110110101001111;
		b = 32'b11010100100100010001000111011010;
		correct = 32'b01010100100100010001000111011010;
		#400 //2.8497155e-36 * -4984558000000.0 = 4984558000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101010001111101011100011110;
		b = 32'b10110110110101110010010110001100;
		correct = 32'b01111101010001111101011100011110;
		#400 //1.6602083e+37 * -6.4118703e-06 = 1.6602083e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111110001110101111110100011;
		b = 32'b10100110000011110011010101111010;
		correct = 32'b11011111110001110101111110100011;
		#400 //-2.8732761e+19 * -4.9685566e-16 = -2.8732761e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011011001100000110100101001;
		b = 32'b01011001011110000011100110110011;
		correct = 32'b11011001011110000011100110110011;
		#400 //-230.0514 * 4366827200000000.0 = -4366827200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000101100000011100000110100;
		b = 32'b01010100110000001101100011001001;
		correct = 32'b11010100110000001101100011001001;
		#400 //1.95643e-14 * 6626166000000.0 = -6626166000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000100100110101001111000000;
		b = 32'b10001111111100001110110110100000;
		correct = 32'b00001111111100001110101101010011;
		#400 //-8.86693e-34 * -2.3757357e-29 = 2.375647e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110101001011100101011011;
		b = 32'b10110010010101101000000011100111;
		correct = 32'b00111101110101001011100101011101;
		#400 //0.10386916 * -1.2485748e-08 = 0.10386918
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001111000111000011010111;
		b = 32'b01111001100111101100101010001001;
		correct = 32'b11111001100111101100101010001001;
		#400 //0.1840242 * 1.0306135e+35 = -1.0306135e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000110010110000000111011100;
		b = 32'b00100110000101110110111010110111;
		correct = 32'b01011000110010110000000111011100;
		#400 //1785670800000000.0 * 5.2538696e-16 = 1785670800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111110100110100000100101110;
		b = 32'b11111110101110000100000110000101;
		correct = 32'b01111110101110000100000110000101;
		#400 //3.0444998e+19 * -1.2245907e+38 = 1.2245907e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010000011111110011101111;
		b = 32'b10100010110110101111001001100111;
		correct = 32'b11001011010000011111110011101111;
		#400 //-12713199.0 * -5.934567e-18 = -12713199.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110101010000000000100001010;
		b = 32'b10101101101111100001110000011111;
		correct = 32'b01011110101010000000000100001010;
		#400 //6.052984e+18 * -2.1612987e-11 = 6.052984e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110100010011101101110001000;
		b = 32'b11011011110000100010100001000000;
		correct = 32'b01011011110000100010100001000000;
		#400 //6.269035e-11 * -1.093008e+17 = 1.093008e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001111001000110001000101011;
		b = 32'b00100100010011111100011110010100;
		correct = 32'b01110001111001000110001000101011;
		#400 //2.2618003e+30 * 4.505502e-17 = 2.2618003e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101000111000111000110010;
		b = 32'b11001000111010001010100111011100;
		correct = 32'b01010101101000111000111000110010;
		#400 //22478890000000.0 * -476494.88 = 22478890000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000000000100110100010100011;
		b = 32'b11011001111010111110010111110101;
		correct = 32'b01011001111010111110010111110101;
		#400 //3.924345e-34 * -8299932500000000.0 = 8299932500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111111111001011011010010000;
		b = 32'b11011111001100101111110011011011;
		correct = 32'b01011111001100101111110011011011;
		#400 //-1.9743214 * -1.2897424e+19 = 1.2897424e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010010100110110110101001001;
		b = 32'b01010110111000101010011110101001;
		correct = 32'b11010110111000101010011110101001;
		#400 //0.0008065296 * 124604860000000.0 = -124604860000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010100011100011000000010010;
		b = 32'b10010101111000100110110000001100;
		correct = 32'b11110010100011100011000000010010;
		#400 //-5.632638e+30 * -9.145114e-26 = -5.632638e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001000100111100010011001011;
		b = 32'b10011100011001001000000100000110;
		correct = 32'b01001001000100111100010011001011;
		#400 //605260.7 * -7.560563e-22 = 605260.7
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010111101100100110110111101;
		b = 32'b00110000010100010000010101101100;
		correct = 32'b10110000010100010000010101101100;
		#400 //-1.0186881e-22 * 7.604146e-10 = -7.604146e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111011010010001000101011000;
		b = 32'b10001000011010111011010010001100;
		correct = 32'b10110111011010010001000101011000;
		#400 //-1.389192e-05 * -7.092997e-34 = -1.389192e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001010011110110110011000010;
		b = 32'b10000100011001100101110000001011;
		correct = 32'b11000001010011110110110011000010;
		#400 //-12.964052 * -2.7078634e-36 = -12.964052
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001100011010111001010101000;
		b = 32'b10101100010011011010000011101100;
		correct = 32'b00101100010011011010000011101000;
		#400 //-9.584881e-19 * -2.9221582e-12 = 2.9221573e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100111110010010010000000110;
		b = 32'b10011000100000100000101010011100;
		correct = 32'b11001100111110010010010000000110;
		#400 //-130621490.0 * -3.3614925e-24 = -130621490.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000110000000100000001110011;
		b = 32'b10111010110010100000001001001101;
		correct = 32'b01110000110000000100000001110011;
		#400 //4.759923e+29 * -0.0015412063 = 4.759923e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011000000011111100010000;
		b = 32'b01100111001010111101100101110011;
		correct = 32'b11100111001010111101100101110011;
		#400 //8.158034e-10 * 8.115359e+23 = -8.115359e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011101111011110100000011110;
		b = 32'b10010111011110001010001101010010;
		correct = 32'b00101011101111011110100000011110;
		#400 //1.3493683e-12 * -8.033926e-25 = 1.3493683e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011101110000100111111001;
		b = 32'b00011110000001111101001011011011;
		correct = 32'b10111010011101110000100111111001;
		#400 //-0.0009423788 * 7.190444e-21 = -0.0009423788
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100110111011001111011110111;
		b = 32'b01111001000010101101001101110001;
		correct = 32'b11111001000010101101001101110001;
		#400 //-2.1433864e+27 * 4.5051594e+34 = -4.5051594e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011011010001000000111001011;
		b = 32'b01111010000110101110101011111101;
		correct = 32'b11111010000110101110101011111101;
		#400 //0.0035477753 * 2.0109496e+35 = -2.0109496e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001101001100001000111100101;
		b = 32'b11011001101110000101101110001101;
		correct = 32'b01011001101110000101101110001101;
		#400 //-1.7171225e-23 * -6486507000000000.0 = 6486507000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111011101000011000000011;
		b = 32'b01001011001110111010111000110001;
		correct = 32'b11001011001110111010111000110001;
		#400 //2.4084717e-26 * 12299825.0 = -12299825.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111101111101101110000111111;
		b = 32'b00001100011010010010110011000001;
		correct = 32'b10001100011010011000110000101111;
		#400 //-2.8717472e-34 * 1.7963135e-31 = -1.7991852e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010011011101110010010111111;
		b = 32'b11111101000011001010000101001111;
		correct = 32'b01111101000011001010000101001111;
		#400 //-256509980000.0 * -1.1683093e+37 = 1.1683093e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111100011101100110100000000;
		b = 32'b11011001010110011001111000001100;
		correct = 32'b01011001010110011001111000001100;
		#400 //-1.1156311 * -3828365300000000.0 = 3828365300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001010111101001111110101001;
		b = 32'b00111100100010011010110011111010;
		correct = 32'b10111100100010110110101000111001;
		#400 //-0.00021231048 * 0.016806114 = -0.017018424
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001100000101010110111010001;
		b = 32'b10001001001000100111011001111001;
		correct = 32'b00101001100000101010110111010001;
		#400 //5.803312e-14 * -1.9555746e-33 = 5.803312e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000010101101010100101000001;
		b = 32'b10111000101010011111110101111100;
		correct = 32'b01000000010101101010101010010101;
		#400 //3.3540804 * -8.105763e-05 = 3.3541615
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011000001110101010011100001;
		b = 32'b01111010100011111000110011011010;
		correct = 32'b11111010100011111000110011011010;
		#400 //-1.1194364e-22 * 3.7267763e+35 = -3.7267763e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101111001100001001001111101;
		b = 32'b01010110001110000000100011001101;
		correct = 32'b11010110001110000000100011001101;
		#400 //-6.089961e-21 * 50586985000000.0 = -50586985000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000000111101100111011101110;
		b = 32'b10101101100100011101000010000011;
		correct = 32'b00111000000111101100111011110011;
		#400 //3.7862854e-05 * -1.657719e-11 = 3.7862872e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000010100110101100011111010;
		b = 32'b00110011100001110100111001101110;
		correct = 32'b11100000010100110101100011111010;
		#400 //-6.091679e+19 * 6.300694e-08 = -6.091679e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100101100001110001000101;
		b = 32'b10111000011010111110111001011100;
		correct = 32'b01010100100101100001110001000101;
		#400 //5157755000000.0 * -5.6250356e-05 = 5157755000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001100110111011010010000010;
		b = 32'b10100110001010100000010000101100;
		correct = 32'b10101001100110100110000001111010;
		#400 //-6.914696e-14 * -5.898625e-16 = -6.85571e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000001000001010000010000110;
		b = 32'b01110010111100000000101100100101;
		correct = 32'b11110010111100000000101100100101;
		#400 //2.5097976 * 9.509104e+30 = -9.509104e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000011000101110101010000000;
		b = 32'b10100110111000011101001111001011;
		correct = 32'b11101000011000101110101010000000;
		#400 //-4.2863223e+24 * -1.5669918e-15 = -4.2863223e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100111001000101000101011101;
		b = 32'b11010110110100110101001010111111;
		correct = 32'b01111100111001000101000101011101;
		#400 //9.4839514e+36 * -116176170000000.0 = 9.4839514e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110000010110110100110011100;
		b = 32'b11110000110001110011111111011100;
		correct = 32'b01110000110001110011111111011100;
		#400 //584738560.0 * -4.9331775e+29 = 4.9331775e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100010011110111100111101001;
		b = 32'b01100111010010000111000000010011;
		correct = 32'b11100111010010000111000000010110;
		#400 //-2.3359745e+17 * 9.465407e+23 = -9.465409e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010011100100000100001111100;
		b = 32'b10000111101100110011100101000011;
		correct = 32'b00000111101100110101011110000100;
		#400 //1.7781787e-37 * -2.6966582e-34 = 2.6984364e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010110010011011001010111;
		b = 32'b01000000111110111110000011111011;
		correct = 32'b11000000111110111110000011111011;
		#400 //-4.7100402e-17 * 7.8712134 = -7.8712134
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000001001111011100100010011;
		b = 32'b10001111011111001111000010000101;
		correct = 32'b01111000001001111011100100010011;
		#400 //1.3607302e+34 * -1.2470882e-29 = 1.3607302e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101010010010110000110000101;
		b = 32'b00111100011110001110011111110100;
		correct = 32'b10111100011110001110011111110100;
		#400 //2.6652545e-21 * 0.015192021 = -0.015192021
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000000010001110101101001011;
		b = 32'b10101011110101001000100101111111;
		correct = 32'b00101011110101001000100101111111;
		#400 //4.1202597e-34 * -1.5101669e-12 = 1.5101669e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000010111001111001010111;
		b = 32'b11100000100100011001101110101011;
		correct = 32'b01100000100100011001101110101011;
		#400 //-2.6259324e-35 * -8.393734e+19 = 8.393734e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010001111001000011010001011;
		b = 32'b00111010111000100000000011011010;
		correct = 32'b10111010111000100000000011011010;
		#400 //-9.0771755e-33 * 0.0017242685 = -0.0017242685
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000110000000011110110100110;
		b = 32'b10010101100010010110000111110000;
		correct = 32'b00101000110000000011110110100110;
		#400 //2.1343018e-14 * -5.548838e-26 = 2.1343018e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100011101101011101101010011;
		b = 32'b11101001110110011101000111111101;
		correct = 32'b01101001110110011101000111111101;
		#400 //-2.7779524e+17 * -3.2916068e+25 = 3.2916068e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100110011101110110010011010;
		b = 32'b00101000010110011100100000110011;
		correct = 32'b00101100110011100111111110110110;
		#400 //5.88114e-12 * 1.2089331e-14 = 5.869051e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100101101111001010110001;
		b = 32'b00011010011000010010101011000000;
		correct = 32'b11110110100101101111001010110001;
		#400 //-1.5307947e+33 * 4.6563443e-23 = -1.5307947e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100111000111101100110110110;
		b = 32'b01111110010010000010000111111100;
		correct = 32'b11111110010010000010000111111100;
		#400 //4.244045e-07 * 6.6505514e+37 = -6.6505514e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000101101001100111000010110;
		b = 32'b10001001010100001101111101101110;
		correct = 32'b01001000101101001100111000010110;
		#400 //370288.7 * -2.5142145e-33 = 370288.7
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010000000111111100100000010;
		b = 32'b10100110001011111101111001110001;
		correct = 32'b11000010000000111111100100000010;
		#400 //-32.99317 * -6.1016786e-16 = -32.99317
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101011000111111110111100100;
		b = 32'b10010100111101010000001101010010;
		correct = 32'b01100101011000111111110111100100;
		#400 //6.729129e+22 * -2.4739988e-26 = 6.729129e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000100101010011100111101101;
		b = 32'b11110101100011010000000001100001;
		correct = 32'b01110101100011010000000001100001;
		#400 //305615.4 * -3.5748122e+32 = 3.5748122e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110001111000111010010101000;
		b = 32'b11011010011111011011001011011111;
		correct = 32'b01011010011111011011001011011111;
		#400 //-6.53837e-16 * -1.785246e+16 = 1.785246e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000010010100001011111100000;
		b = 32'b01111000000010011001100000111011;
		correct = 32'b11111000000010011001100000111011;
		#400 //888815560000000.0 * 1.1163004e+34 = -1.1163004e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000101111111110001001111101;
		b = 32'b11110101011101101101011010001011;
		correct = 32'b01110101011101101101011010001011;
		#400 //1.3961451e-09 * -3.1290441e+32 = 3.1290441e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010001000011111111110111111;
		b = 32'b10111001111101110100100100010010;
		correct = 32'b01000010001000100000000000111011;
		#400 //40.499752 * -0.00047165953 = 40.500225
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100010010111101001011111110;
		b = 32'b10010100000011110110010000110100;
		correct = 32'b11110100010010111101001011111110;
		#400 //-6.4594464e+31 * -7.2394166e-27 = -6.4594464e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101010000000011110010011011;
		b = 32'b10000100101000011111010000011011;
		correct = 32'b00101101010000000011110010011011;
		#400 //1.09273935e-11 * -3.8075094e-36 = 1.09273935e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110101000001011100101000100;
		b = 32'b01011010000001011111010111101110;
		correct = 32'b01100110101000001011100101000100;
		#400 //3.794981e+23 * 9426644000000000.0 = 3.794981e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100110111110000001111111011;
		b = 32'b11100110001111011010100111110101;
		correct = 32'b01110100110111110000001111111011;
		#400 //1.413529e+32 * -2.239156e+23 = 1.413529e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000111001010101111011010110;
		b = 32'b10100011001111000100110110010010;
		correct = 32'b00100011001111000100110110010010;
		#400 //-9.047069e-29 * -1.02079266e-17 = 1.02079266e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110000001011101110111011;
		b = 32'b10000110001101101100011100110010;
		correct = 32'b10100110110000001011101110111011;
		#400 //-1.3373561e-15 * -3.437674e-35 = -1.3373561e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110001010010010100001100;
		b = 32'b01010110001101111001010011000100;
		correct = 32'b11010101101010100000010001111100;
		#400 //27095363000000.0 * 50462393000000.0 = -23367030000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110101111010000011001001010;
		b = 32'b10111111110000001101011111111010;
		correct = 32'b00111111110000001101011111111010;
		#400 //8.595842e-11 * -1.5065911 = 1.5065911
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000110111000010001110000;
		b = 32'b10100111001101001111101111100100;
		correct = 32'b11110010000110111000010001110000;
		#400 //-3.0803382e+30 * -2.5116568e-15 = -3.0803382e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010110110000001011000001110;
		b = 32'b01101111100011111101101100100001;
		correct = 32'b11101111100011111101101100100001;
		#400 //5.857027e-18 * 8.904253e+28 = -8.904253e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110101001001010100000011111;
		b = 32'b10101000100111000001000101100100;
		correct = 32'b00101000101001100101101111100110;
		#400 //1.1425355e-15 * -1.7327021e-14 = 1.8469557e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010100010001100000111001010;
		b = 32'b00010111001010101110011011011001;
		correct = 32'b11000010100010001100000111001010;
		#400 //-68.378494 * 5.5221333e-25 = -68.378494
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011010111110010001011110101;
		b = 32'b00100001111100101011100000111101;
		correct = 32'b11011011010111110010001011110101;
		#400 //-6.2807355e+16 * 1.6447325e-18 = -6.2807355e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000000100100100000000110;
		b = 32'b10011000101110010011001100010001;
		correct = 32'b00011000101110010011001100010001;
		#400 //2.09508e-40 * -4.7872943e-24 = 4.7872943e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101100000011101100001110011;
		b = 32'b01101100111000111101001010100110;
		correct = 32'b11111101100000011101100001110011;
		#400 //-2.1574285e+37 * 2.2033674e+27 = -2.1574285e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111110010101100110100000101;
		b = 32'b01010101111011000110100111101010;
		correct = 32'b11010101111011000110100111101010;
		#400 //-2.4175746e-05 * 32492455000000.0 = -32492455000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101110001101010010100010111;
		b = 32'b00011111001001000110010011100100;
		correct = 32'b10011111001001000110010011100100;
		#400 //-1.8680475e-35 * 3.4811806e-20 = -3.4811806e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110110111100100010101110111;
		b = 32'b01101111111001011111100001010001;
		correct = 32'b11101111111001011111100001010001;
		#400 //-1.01077306e-10 * 1.4234453e+29 = -1.4234453e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001111000011100010101010111;
		b = 32'b00001110001111110010101110001000;
		correct = 32'b10110001111000011100010101010111;
		#400 //-6.570797e-09 * 2.3563527e-30 = -6.570797e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001010111110010111100101011;
		b = 32'b00100111111010000011100011001010;
		correct = 32'b01110001010111110010111100101011;
		#400 //1.1051549e+30 * 6.4454506e-15 = 1.1051549e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010010100110100101111100;
		b = 32'b00001010111110010111011110011010;
		correct = 32'b01011001010010100110100101111100;
		#400 //3560870400000000.0 * 2.4022817e-32 = 3560870400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000011000010000111100110100;
		b = 32'b00000001110000010010010001100110;
		correct = 32'b11100000011000010000111100110100;
		#400 //-6.486895e+19 * 7.094923e-38 = -6.486895e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011100000100011011000101010;
		b = 32'b11010010001100101101010101101111;
		correct = 32'b01110011100000100011011000101010;
		#400 //2.0632848e+31 * -192021250000.0 = 2.0632848e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011001110111100011101101010;
		b = 32'b10100111111000100000000100101010;
		correct = 32'b10111011001110111100011101101010;
		#400 //-0.0028652796 * -6.2728863e-15 = -0.0028652796
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111101000010001010000111100;
		b = 32'b01110101111011000010000101010011;
		correct = 32'b11110101111011000010000101010011;
		#400 //-2.423648e-34 * 5.986611e+32 = -5.986611e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011111101101100000000101001;
		b = 32'b11011000111110001101010101010100;
		correct = 32'b01011000111110001101010101010100;
		#400 //493.50125 * -2188761000000000.0 = 2188761000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000011111100011010011010001;
		b = 32'b01111101001001001001000101010110;
		correct = 32'b11111101001001001001000101010110;
		#400 //-2.1532112e-19 * 1.3671751e+37 = -1.3671751e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010001101010111100101110;
		b = 32'b01100011010010110010011101100101;
		correct = 32'b11100011010010110010011101100101;
		#400 //-12715.795 * 3.7475277e+21 = -3.7475277e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000111001000110111011011111;
		b = 32'b10010110111111110011000110011101;
		correct = 32'b00010110111111110010001101010110;
		#400 //-9.010097e-29 * -4.1228782e-25 = 4.1219772e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000100101010101001010010010;
		b = 32'b00001011000110101100111111001001;
		correct = 32'b01110000100101010101001010010010;
		#400 //3.697047e+29 * 2.981564e-32 = 3.697047e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000111011000010110001101;
		b = 32'b00101110010111010111101000001110;
		correct = 32'b10101110010111010111101000001110;
		#400 //-4.629146e-37 * 5.035799e-11 = -5.035799e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000010011111001001101010;
		b = 32'b00100100101000010011111010110111;
		correct = 32'b01001100000010011111001001101010;
		#400 //36161960.0 * 6.992886e-17 = 36161960.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011011010000100001011000101;
		b = 32'b10100000100011100011101011111001;
		correct = 32'b00100000100011100011101011111001;
		#400 //4.4731807e-32 * -2.409476e-19 = 2.409476e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111010111111000000000010000;
		b = 32'b00011001110100100011101000001111;
		correct = 32'b01010111010111111000000000010000;
		#400 //245741120000000.0 * 2.173694e-23 = 245741120000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110101100011101001110011001;
		b = 32'b00111001110100000111000000010110;
		correct = 32'b10111001110100110011011101100100;
		#400 //-5.2996443e-06 * 0.00039756362 = -0.00040286325
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011110000110011101110111101;
		b = 32'b11010011101011001011011101010111;
		correct = 32'b01010011101011001011011101010111;
		#400 //3.229865e-22 * -1483620600000.0 = 1483620600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100100101110000000011101;
		b = 32'b10110001110110101011001101101010;
		correct = 32'b00110001110110101011001101101010;
		#400 //-9.491603e-25 * -6.365032e-09 = 6.365032e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101110101000000100111101001;
		b = 32'b00100000110110110001010000101111;
		correct = 32'b11001101110101000000100111101001;
		#400 //-444677400.0 * 3.71134e-19 = -444677400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010000110110010101111000010;
		b = 32'b01001010011110011111111001001110;
		correct = 32'b11111010000110110010101111000010;
		#400 //-2.0142338e+35 * 4095891.5 = -2.0142338e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101000101000110011011100;
		b = 32'b00001101001111001100001010010100;
		correct = 32'b11111101101000101000110011011100;
		#400 //-2.700829e+37 * 5.8166188e-31 = -2.700829e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111010110010001110111110000;
		b = 32'b10101011011101010111011110010010;
		correct = 32'b11000111010110010001110111110000;
		#400 //-55581.938 * -8.720742e-13 = -55581.938
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011111110001011011010100100;
		b = 32'b01011101010110001000011010010111;
		correct = 32'b11011101010110001000011010010111;
		#400 //-497.42688 * 9.7514525e+17 = -9.7514525e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001101111111101111011100;
		b = 32'b11000001001011000111111000100100;
		correct = 32'b01000001001011000111111000100100;
		#400 //-1.3841405e-34 * -10.780796 = 10.780796
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101110111001110100110110010;
		b = 32'b11100001100011110010101000000101;
		correct = 32'b01100001100011110010101000000101;
		#400 //-2.5114886e-11 * -3.3011403e+20 = 3.3011403e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100110010100111010100101100;
		b = 32'b00110000111111011001100110110101;
		correct = 32'b10110000111111011001100110110101;
		#400 //1.3397527e-21 * 1.8451859e-09 = -1.8451859e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100000100111011110110100;
		b = 32'b11011011111101010010011000101101;
		correct = 32'b01011011111101010010011000101101;
		#400 //17100648.0 * -1.3800669e+17 = 1.3800669e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110110011110100001110010;
		b = 32'b00101100111011100101100100100100;
		correct = 32'b11000101110110011110100001110010;
		#400 //-6973.0557 * 6.7742634e-12 = -6973.0557
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000101100110010110111011;
		b = 32'b00111010010100001010010010001011;
		correct = 32'b01001100000101100110010110111011;
		#400 //39425772.0 * 0.0007959089 = 39425772.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001001111010011011001000100;
		b = 32'b01010000111000000000010111110111;
		correct = 32'b01010000100110100110011010010001;
		#400 //50791203000.0 * 30067898000.0 = 20723304000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011110000101011001011010110;
		b = 32'b00011100010110011100101110110110;
		correct = 32'b01100011110000101011001011010110;
		#400 //7.1831097e+21 * 7.2062567e-22 = 7.1831097e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011010101010111101110101011;
		b = 32'b11011110101010001111011100100011;
		correct = 32'b01110011010101010111101110101011;
		#400 //1.6913872e+31 * -6.0876193e+18 = 1.6913872e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101110111100110010101111;
		b = 32'b10000100001101100010000011100100;
		correct = 32'b00111101101110111100110010101111;
		#400 //0.091699 * -2.14091e-36 = 0.091699
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001101101100011100111101;
		b = 32'b11000100010000000001011100110000;
		correct = 32'b11011000001101101100011100111101;
		#400 //-803867350000000.0 * -768.3623 = -803867350000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101000000011111001101011011;
		b = 32'b10110101000101010011111000000011;
		correct = 32'b01001101000000011111001101011011;
		#400 //136263090.0 * -5.5597064e-07 = 136263090.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110110100111100101101100110;
		b = 32'b10001100110010000111100110101000;
		correct = 32'b10011110110100111100101101100110;
		#400 //-2.2424618e-20 * -3.0888098e-31 = -2.2424618e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110111111101100101011101000;
		b = 32'b00011000011100000011100011001001;
		correct = 32'b10011110111111101101001001101010;
		#400 //-2.6977216e-20 * 3.1047942e-24 = -2.6980321e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111000100110000011010000;
		b = 32'b11011100101010101111110110001111;
		correct = 32'b01011100101010101111110110001111;
		#400 //-2.1288501e-35 * -3.850363e+17 = 3.850363e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010010010110100101101010111;
		b = 32'b11001101100101111111001001100001;
		correct = 32'b01010010010010111001011101010000;
		#400 //218285590000.0 * -318655520.0 = 218604240000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101011001001101000001110100;
		b = 32'b10100001110011000010001100000000;
		correct = 32'b10110101011001001101000001110100;
		#400 //-8.523996e-07 * -1.3832842e-18 = -8.523996e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001111111110100100001111;
		b = 32'b01000000010101100011001100011011;
		correct = 32'b11011000001111111110100100001111;
		#400 //-844030800000000.0 * 3.3468692 = -844030800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100011000010100101011010110;
		b = 32'b01101101111111111010100111111010;
		correct = 32'b11101101111111111010100111111010;
		#400 //-4.8852486e-17 * 9.890521e+27 = -9.890521e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010110011100100010111100000;
		b = 32'b01011001110001110001001011000001;
		correct = 32'b11011001110001110001001011000001;
		#400 //1.9863362e-32 * 7004267600000000.0 = -7004267600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		$display ("Done.");
		$finish;
	end

endmodule