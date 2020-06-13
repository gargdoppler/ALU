`timescale 1 ns/1 ps
    `include "alu.v"


    module mul_tb ();
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

    op = 3'b011;

		/* Display the operation */
		$display ("Opcode: 011, Operation: MUL");
		/* Test Cases!*/
		a = 32'b11001011101101011111100110001010;
		b = 32'b10001101101101110011011011100011;
		correct = 32'b00011010000000100011110001100110;
		#400 //-23851796.0 * -1.1291459e-30 = 2.693216e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001001110101101011010111001;
		b = 32'b01101010101010011010111100001001;
		correct = 32'b00101100011101111010111011111111;
		#400 //3.431686e-38 * 1.0256752e+26 = 3.5197953e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110010010111111000110001100;
		b = 32'b10010000100010100000110111110110;
		correct = 32'b11001111010110111111011010101001;
		#400 //6.7771867e+37 * -5.445291e-29 = -3690375400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100001101111111111100010;
		b = 32'b00110101100000101001101010100101;
		correct = 32'b10010001100010011011111011111011;
		#400 //-2.23338e-22 * 9.730762e-07 = -2.173249e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111110001111011001110110110;
		b = 32'b01100100101111110000000000111111;
		correct = 32'b11000101000101001111111101000110;
		#400 //-8.4577085e-20 * 2.8186767e+22 = -2383.9546
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001110111000011010011001110;
		b = 32'b11010001011011010010100101100100;
		correct = 32'b10110011110011000000000001111101;
		#400 //1.4921757e-18 * -63662604000.0 = -9.499579e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011100001011000010110101;
		b = 32'b00100011111100101000111011011100;
		correct = 32'b00010110111001000000110101011100;
		#400 //1.4010017e-08 * 2.6298196e-17 = 3.6843818e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100101010000010101011111010;
		b = 32'b10110011001011101100000011001110;
		correct = 32'b11001000011001011001011110111011;
		#400 //5778204300000.0 * -4.0687887e-08 = -235102.92
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000000000011010101110000111;
		b = 32'b01110011001000100010111101100101;
		correct = 32'b00111011101001000100110100011010;
		#400 //3.9021155e-34 * 1.284963e+31 = 0.005014074
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110001101011100011111110001;
		b = 32'b00011001110110010000001111111001;
		correct = 32'b01001000100110100001100101001101;
		#400 //1.4064625e+28 * 2.2438879e-23 = 315594.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111100101111011110010111011;
		b = 32'b01010010000011100110011010110000;
		correct = 32'b10100010001010001100111100011010;
		#400 //-1.4962446e-29 * 152902040000.0 = -2.2877884e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011011000110100000110010110;
		b = 32'b10111001100111010011000101111111;
		correct = 32'b10010101100010111000101100101001;
		#400 //1.8798192e-22 * -0.0002998225 = -5.636121e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011010110111010100001100100;
		b = 32'b10110011001001001011001110100001;
		correct = 32'b01100111000011010101001000000001;
		#400 //-1.7403082e+31 * -3.8347597e-08 = 6.673664e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010101011000010110011101011;
		b = 32'b00100000001001000001000101010000;
		correct = 32'b10000011010111001011000011010111;
		#400 //-4.6668252e-18 * 1.3897069e-19 = -6.485519e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111000111000010100101011010;
		b = 32'b01000001111111011000001101101011;
		correct = 32'b01100001100110101010010100001000;
		#400 //1.1252624e+19 * 31.689169 = 3.565863e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100100111111110101001101001;
		b = 32'b00100011011110001011111010001100;
		correct = 32'b10110000100110110110001000011101;
		#400 //-83841864.0 * 1.3484457e-17 = -1.130562e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100001010010111010100101011;
		b = 32'b11010101100010000111000010110110;
		correct = 32'b10101010001101001010000110110101;
		#400 //8.555427e-27 * -18752209000000.0 = -1.6043315e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000010000001000000111000;
		b = 32'b11000110100110110110011011001101;
		correct = 32'b11001010001001010011000011101011;
		#400 //136.06335 * -19891.4 = -2706490.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001110100110011010011011;
		b = 32'b01011001110010111101110110100100;
		correct = 32'b01000101100101000111000010111111;
		#400 //6.622287e-13 * 7172889600000000.0 = 4750.0933
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010001000100000010001010;
		b = 32'b01010001100100110101001001111000;
		correct = 32'b01001110011000011110000010010000;
		#400 //0.011978278 * 79092970000.0 = 947397600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000000011110000001111011100;
		b = 32'b10001110101100100111101001001010;
		correct = 32'b10110111010001110110101000000000;
		#400 //2.7014784e+24 * -4.3998148e-30 = -1.1886004e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010111111111001100110110101;
		b = 32'b11000110000100110100110000100100;
		correct = 32'b10010001100100110001000101001001;
		#400 //2.4613425e-32 * -9427.035 = -2.3203163e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000111110101101011110110;
		b = 32'b01001111010110101011010110100100;
		correct = 32'b01010011000010000010010010000111;
		#400 //159.35532 * 3669337000.0 = 584728400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100011010011001100001001111;
		b = 32'b01110110110001100111100010001101;
		correct = 32'b01000011101101010001100111001101;
		#400 //1.7995501e-31 * 2.012734e+33 = 362.20157
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101011011010010101001110110;
		b = 32'b00001100110111011011011111001100;
		correct = 32'b01000010110011010110011111101110;
		#400 //3.0064345e+32 * 3.416106e-31 = 102.70299
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110010100101111101001101001;
		b = 32'b10101101001111010010110100010001;
		correct = 32'b01011100000110111110100000000100;
		#400 //-1.6323645e+28 * -1.0753413e-11 = 1.755349e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000000000000011011111010010;
		b = 32'b01110101100111001110011110001011;
		correct = 32'b11010110000111010010101111111000;
		#400 //-1.0860491e-19 * 3.9780008e+32 = -43203042000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001010001011111010011110011;
		b = 32'b11011000111001101001100101010011;
		correct = 32'b11011010101100100101000010100010;
		#400 //12.372302 * -2028369600000000.0 = -2.5095601e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010110001000111001011010111;
		b = 32'b00000000010011011011010101001000;
		correct = 32'b10110011011011101000011010011100;
		#400 //-7.7821305e+30 * 7.136365e-39 = -5.553612e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110101010011011000010001;
		b = 32'b10000011000111100110111111001100;
		correct = 32'b10010010100000111111010001111011;
		#400 //1788545200.0 * -4.6560363e-37 = -8.327531e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101010100011001111010110001;
		b = 32'b01001000111000101111111001011110;
		correct = 32'b11011110101110011101111001100001;
		#400 //-14404969000000.0 * 464882.94 = -6.6966245e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000001110101001011100010010;
		b = 32'b01111010100011010001010110101000;
		correct = 32'b01001011010011011010100111111100;
		#400 //3.6798412e-29 * 3.6627655e+35 = 13478396.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101000001110001001001111;
		b = 32'b10111000000110111100001001011101;
		correct = 32'b01101101010000111100011001011000;
		#400 //-1.0197236e+32 * -3.7135895e-05 = 3.786835e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100110111110011010111111;
		b = 32'b10011011111110100111011100111011;
		correct = 32'b00010100000110001000011111110011;
		#400 //-1.858489e-05 * -4.1436082e-22 = 7.70085e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000001101100011011010011011;
		b = 32'b11000101100110111110010111101000;
		correct = 32'b00001110010111011110110101101000;
		#400 //-5.483282e-34 * -4988.7383 = 2.735466e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010110011100011101001010010;
		b = 32'b10011010110010101010010101101010;
		correct = 32'b00011110001000110011111101000110;
		#400 //-103.11391 * -8.381248e-23 = 8.642233e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011101101101011011101010101;
		b = 32'b10001101001000100011111001100100;
		correct = 32'b00001001011001111001100100010111;
		#400 //-0.005576054 * -4.9995204e-31 = 2.7877596e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100010000101001110110001111;
		b = 32'b10101100111000010101001100010010;
		correct = 32'b00011001101010110100101110100001;
		#400 //-2.765652e-12 * -6.4041073e-12 = 1.7711532e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111010111011011111101100101;
		b = 32'b11011110111100100111110110011111;
		correct = 32'b01000110110100100000101110111110;
		#400 //-3.0773666e-15 * -8.7366485e+18 = 26885.871
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011010101010101001111011011;
		b = 32'b01110101000111011001001101111101;
		correct = 32'b01011001000000110100111101010101;
		#400 //1.156451e-17 * 1.9975147e+32 = 2310028000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010111101100100101101010001;
		b = 32'b01010100110011011011011000100000;
		correct = 32'b00101000010001011110100110001000;
		#400 //1.554335e-27 * 7068191000000.0 = 1.0986336e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111111000101100101000110011;
		b = 32'b11111011010110110100010001100001;
		correct = 32'b01010011110000100011111110001101;
		#400 //-1.465595e-24 * -1.1384999e+36 = 1668579700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001001001100010110101000;
		b = 32'b10001001110110100100100010101000;
		correct = 32'b00101011100011000111111100010101;
		#400 //-1.899693e+20 * -5.2549917e-33 = 9.982871e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001001000110001011110100011;
		b = 32'b01010101110011011101111000011011;
		correct = 32'b10100111100000110010011101101101;
		#400 //-1.2865716e-28 * 28294227000000.0 = -3.640255e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010111010011000110010011;
		b = 32'b01001000011100101100100011001001;
		correct = 32'b01100101010100011100011001011001;
		#400 //2.4904191e+17 * 248611.14 = 6.191459e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110110101001010001110011;
		b = 32'b01100110101100111010001001010011;
		correct = 32'b01001100000110010110000001100101;
		#400 //9.479391e-17 * 4.2414898e+23 = 40206740.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111000010101001001100001010;
		b = 32'b11001000100110001100110010110000;
		correct = 32'b11110000001001010110110000110101;
		#400 //6.54399e+23 * -312933.5 = -2.0478336e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110110001101101100111001;
		b = 32'b11101111000001011011100001010100;
		correct = 32'b00111111011000101000110000010011;
		#400 //-2.1383686e-29 * -4.1384345e+28 = 0.88494986
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100100000100101110110000100;
		b = 32'b10101100001010001111111111001110;
		correct = 32'b11101001001011000001111101000101;
		#400 //5.4151625e+36 * -2.4016236e-12 = -1.3005182e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101001011100111110011110;
		b = 32'b10100111111101111010111010110000;
		correct = 32'b10111110001000000110110001110111;
		#400 //22788890000000.0 * -6.874567e-15 = -0.15666376
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010101110001011111100001001;
		b = 32'b11001010100100011100111101111101;
		correct = 32'b10111101110100100111001111100010;
		#400 //2.1507292e-08 * -4777918.5 = -0.10276009
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011010100100111000000001001;
		b = 32'b11110110110101000110000100010011;
		correct = 32'b01110010101011101001010010010100;
		#400 //-0.0032110235 * -2.153781e+33 = 6.9158415e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100110100010011010110011;
		b = 32'b01100000101011010010101111100000;
		correct = 32'b01100110110100001000110100100101;
		#400 //4932.8374 * 9.982651e+19 = 4.9242794e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011001111000110100100110100;
		b = 32'b10110010110010011011010000101101;
		correct = 32'b01000110100101000111001100110101;
		#400 //-809218870000.0 * -2.3481414e-08 = 19001.604
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000100110001011000111011001;
		b = 32'b01100110101010000011111000001010;
		correct = 32'b11011111110010001011001101101111;
		#400 //-7.2810515e-05 * 3.97251e+23 = -2.892405e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100010101011100101100101010;
		b = 32'b00110010101101100111110000110100;
		correct = 32'b01010111100110000110011000101010;
		#400 //1.5775184e+22 * 2.124407e-08 = 335129120000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101111101110111010010011100;
		b = 32'b00111001000011101001101101101100;
		correct = 32'b10011111100010011101100011101011;
		#400 //-4.2926687e-16 * 0.00013600074 = -5.838062e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011101111011000101101010110;
		b = 32'b01101010100010011110111110011100;
		correct = 32'b00111110110011000100000111110011;
		#400 //4.7847703e-27 * 8.337718e+25 = 0.39894065
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110000111101111010111110110;
		b = 32'b11001010110010010110100111001111;
		correct = 32'b11100001011110100010000110100011;
		#400 //43694808000000.0 * -6599911.5 = -2.8838186e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111000110101011000100111111;
		b = 32'b11101010111011110101000001011000;
		correct = 32'b11110010100100001001110000000110;
		#400 //39601.246 * -1.4465634e+26 = -5.728571e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110111111111011001110011110;
		b = 32'b00100111100101010101100111001001;
		correct = 32'b00100111000101010010110100111001;
		#400 //0.49941725 * 4.1453153e-15 = 2.070242e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010011000000011000110010011;
		b = 32'b00010000100011100010110100011110;
		correct = 32'b00111011011110010000011000000101;
		#400 //6.7758373e+25 * 5.607864e-29 = 0.0037997973
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001101101001001111110110010;
		b = 32'b11010010101001100110000100001001;
		correct = 32'b00011100111010101100100000001001;
		#400 //-4.34836e-33 * -357296280000.0 = 1.5536529e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111111000101101011010000101;
		b = 32'b11011100110010000000100110001111;
		correct = 32'b11000101001100010100000000010000;
		#400 //6.2960183e-15 * -4.5044404e+17 = -2836.004
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100110000100111000101001001;
		b = 32'b11001010001110110001001101011001;
		correct = 32'b00001111100011100001011101110010;
		#400 //-4.5713217e-36 * -3065046.2 = 1.4011312e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011000111001101000010111;
		b = 32'b10101000100011011000011101000100;
		correct = 32'b00010001011110111010100001000011;
		#400 //-1.2634444e-14 * -1.5712807e-14 = 1.9852258e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101010001010111000100110010;
		b = 32'b10101110111000000101011001100010;
		correct = 32'b01010100101011010000010110101011;
		#400 //-5.8274643e+22 * -1.0201685e-10 = 5944995500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111000100001100010010001101;
		b = 32'b11001110010111101000111110110101;
		correct = 32'b11001101111110111011011101101101;
		#400 //0.5654991 * -933490000.0 = -527887780.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100001010000100101110101000;
		b = 32'b10010111111110110110100111111110;
		correct = 32'b10110100101001010100011111011100;
		#400 //1.8948392e+17 * -1.6247251e-24 = -3.078593e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111010100100101110001100110;
		b = 32'b01000011100101111001100010000010;
		correct = 32'b10001011011110010010001110100100;
		#400 //-1.5825798e-34 * 303.19147 = -4.798247e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110100111100111110011111010;
		b = 32'b01000110100101110110010001001101;
		correct = 32'b00110101101110110111001110100000;
		#400 //7.2072084e-11 * 19378.15 = 1.3966237e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000100101110100110101111;
		b = 32'b01000110001110011111011000110000;
		correct = 32'b01000010110101010111000001001111;
		#400 //0.008966847 * 11901.547 = 106.71935
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111001001011101001000000011;
		b = 32'b11011110001000011001100101101110;
		correct = 32'b11101101110100010101100011101011;
		#400 //2782004000.0 * -2.9111148e+18 = -8.098733e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001100011001010000101011101;
		b = 32'b00111110101100111101110000110001;
		correct = 32'b10010000110001011001101110010011;
		#400 //-2.2187553e-28 * 0.3512893 = -7.79425e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010000011001111011010101011;
		b = 32'b10110001000010101110011101010110;
		correct = 32'b10000011100110001111100010110100;
		#400 //4.4480252e-28 * -2.0213142e-09 = -8.9908565e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001000111101001011110110111;
		b = 32'b01110000110110000001101111100001;
		correct = 32'b11110010100001011110000101001000;
		#400 //-9.91204 * 5.3505973e+29 = -5.3035334e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100101010100100100011111;
		b = 32'b10110011111011101101000110000101;
		correct = 32'b00100111000010110100010000101001;
		#400 //-1.7379135e-08 * -1.112085e-07 = 1.9327075e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100000111100000001010111;
		b = 32'b11000101110111111111000010100101;
		correct = 32'b11010001111001101000000011001010;
		#400 //17268910.0 * -7166.0806 = -123750400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001110101100100000011110;
		b = 32'b01011010000110111000111011101101;
		correct = 32'b01101100111000101111111011100100;
		#400 //200555330000.0 * 1.0946442e+16 = 2.1953674e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001011100001111100100001010;
		b = 32'b01000010100111010101100111001111;
		correct = 32'b11101100100101000001110101000101;
		#400 //-1.8207391e+25 * 78.67541 = -1.432474e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011100111000000111111010011;
		b = 32'b10000011101100101000111101100100;
		correct = 32'b00100111110110011011010011010101;
		#400 //-5.7576647e+21 * -1.0494821e-36 = 6.0425658e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110100101100011000000101;
		b = 32'b11000001000011100111000101110110;
		correct = 32'b10011010011010101000111010000011;
		#400 //5.4483676e-24 * -8.9027 = -4.8505186e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110110111011000011010010;
		b = 32'b10110111100010001101000101111000;
		correct = 32'b01110001111010101101001101100100;
		#400 //-1.4258742e+35 * -1.6310005e-05 = 2.3256015e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011011000001111110010011110;
		b = 32'b11011100000100001000011010010101;
		correct = 32'b11000111111111100000100011000000;
		#400 //7.9931363e-13 * -1.6272148e+17 = -130065.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100000001100000110101110011;
		b = 32'b10011010111101100101010100011101;
		correct = 32'b11000111100000001111110101111110;
		#400 //6.482383e+26 * -1.01880723e-22 = -66042.984
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010101101111011001101001011;
		b = 32'b01101110111001001000100001001101;
		correct = 32'b11110010001000111111110101111101;
		#400 //-91.85018 * 3.536368e+28 = -3.2481603e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100101100000011000010000100;
		b = 32'b01001101011101011011110111001101;
		correct = 32'b10111010101010010010000100001111;
		#400 //-5.007607e-12 * 257678540.0 = -0.0012903529
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011100101100111101111010111;
		b = 32'b01001000100111000010010010101000;
		correct = 32'b00011100101101111001001000000110;
		#400 //3.798744e-27 * 319781.25 = 1.214767e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011110011110110001000000;
		b = 32'b10010010110001111100001000010011;
		correct = 32'b00000011110000110000010000011101;
		#400 //-9.0921404e-10 * -1.2606509e-27 = 1.1462014e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010100001000001101001011;
		b = 32'b01000011010101101001001110011111;
		correct = 32'b11101100001011101100010111111110;
		#400 //-3.9386966e+24 * 214.57664 = -8.4515234e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010010000111001010011010011;
		b = 32'b00101001000001011110100011101011;
		correct = 32'b11010011110011001001110010001000;
		#400 //-5.9110834e+25 * 2.9733957e-14 = -1757599000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110010010111110100001101001;
		b = 32'b10000011100101011000001010000101;
		correct = 32'b10100010011011100010110001110110;
		#400 //3.6732773e+18 * -8.787399e-37 = -3.2278552e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110101110100111001100001;
		b = 32'b00100001101010010111011100110001;
		correct = 32'b10001001000011101000011011111101;
		#400 //-1.4939867e-15 * 1.1483435e-18 = -1.71561e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001011101101110101111101110;
		b = 32'b00001010011110110001001000010110;
		correct = 32'b00111100011100100010101011000100;
		#400 //1.22269654e+30 * 1.2088612e-32 = 0.014780704
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101100011010100010001011011;
		b = 32'b11111100110101001100010001111000;
		correct = 32'b11010010111010101101001000001100;
		#400 //5.705729e-26 * -8.8380143e+36 = -504273170000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000010011110011011011111;
		b = 32'b00110100001100010010000010100010;
		correct = 32'b01101101101111101101010001101001;
		#400 //4.4751706e+34 * 1.6496281e-07 = 7.3823675e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010101100010011000011011110;
		b = 32'b01111000011010101101111001001101;
		correct = 32'b01001011101000101001000010001001;
		#400 //1.1182317e-27 * 1.9054785e+34 = 21307666.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110000111111000011111001;
		b = 32'b00000001101101011111111101011000;
		correct = 32'b00101110000010110100110011010000;
		#400 //4.73757e+26 * 6.68553e-38 = 3.1673164e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011111000110011000000000;
		b = 32'b10101001100111000001000100111000;
		correct = 32'b01001011100110011101111100100010;
		#400 //-2.9099559e+20 * -6.9307787e-14 = 20168260.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010010001110011100100000001;
		b = 32'b10101000111110001111100110110011;
		correct = 32'b11001011110000011100000110001011;
		#400 //9.187524e+20 * -2.764182e-14 = -25395990.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000111010101010011101100;
		b = 32'b01100101111110010111101011001101;
		correct = 32'b11100100100110010101001100010010;
		#400 //-0.15364426 * 1.4726682e+23 = -2.2626702e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101110000101101110010111101;
		b = 32'b10000001000111100010100100101100;
		correct = 32'b00110111011100001100011100100111;
		#400 //-4.940345e+32 * -2.9049556e-38 = 1.43514835e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010010010110011110100100000;
		b = 32'b10011000011000001001101101011100;
		correct = 32'b10101011001100100101000011010011;
		#400 //218225970000.0 * -2.9029758e-24 = -6.335047e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011010111110100001011011000;
		b = 32'b01000101001000011100110101010111;
		correct = 32'b11100001000011010001110000011110;
		#400 //-6.2842415e+16 * 2588.8337 = -1.6268856e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001111111110101100111101110;
		b = 32'b11001110100100010110011110010100;
		correct = 32'b11101001000100010000100101000001;
		#400 //8984374700000000.0 * -1219742200.0 = -1.0958622e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011100001101100001010101;
		b = 32'b00101000011011001111011110100011;
		correct = 32'b00111011010111101111000001101000;
		#400 //258605400000.0 * 1.3154329e-14 = 0.0034017805
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100000011001001010011001111;
		b = 32'b00100011011001010001110100010010;
		correct = 32'b10001111111110111010001000101000;
		#400 //-1.9977802e-12 * 1.2420271e-17 = -2.4812971e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110100001110011010011100100;
		b = 32'b10011101001000011001001111110110;
		correct = 32'b00100100001010101010110011010001;
		#400 //-17306.445 * -2.1384667e-21 = 3.7009255e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111011111100110011011100;
		b = 32'b01001011100101000010100111101001;
		correct = 32'b00010110000010101100100110110001;
		#400 //5.7729806e-33 * 19420114.0 = 1.1211194e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000011010101100010000010;
		b = 32'b01100111000111110000001001010000;
		correct = 32'b11011101101011111001011001111111;
		#400 //-2.1062156e-06 * 7.508989e+23 = -1.581555e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100010011000011011110011;
		b = 32'b11010000000111001111101110101100;
		correct = 32'b11011100001010001010101011100000;
		#400 //18025958.0 * -10534957000.0 = -1.899027e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100111001010110011011111000;
		b = 32'b00011010100100010111010010010011;
		correct = 32'b10101000000000100101011111001001;
		#400 //-120272830.0 * 6.015893e-23 = -7.235485e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001101110010000101011001101;
		b = 32'b10001001011000010101000001101000;
		correct = 32'b00101011101000101101110010011101;
		#400 //-4.2667824e+20 * -2.7121197e-33 = 1.1572025e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100010001011011101010101010;
		b = 32'b10101110011110101110100100010110;
		correct = 32'b01011011010000011100110001010010;
		#400 //-9.561595e+26 * -5.705044e-11 = 5.4549323e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110100011001111000010011;
		b = 32'b00000001001001111110001010101001;
		correct = 32'b10000011100010010111011110110110;
		#400 //-26.202185 * 3.0835676e-38 = -8.079621e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101101000111011101110110010;
		b = 32'b10010100110001110100010100110001;
		correct = 32'b10001010111111101110011001010001;
		#400 //1.2199073e-06 * -2.0121156e-26 = -2.4545946e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111011101000110010111001;
		b = 32'b10111000111001000101100000001010;
		correct = 32'b11010111010101001100011101011110;
		#400 //2.1486647e+18 * -0.00010888286 = -233952740000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101001011101110111110111101;
		b = 32'b10001110011000101101001101001101;
		correct = 32'b00001100000110110000000000001001;
		#400 //-0.0427091 * -2.7958388e-30 = 1.1940776e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010101101101111100110110100;
		b = 32'b00000110010011111001111110001000;
		correct = 32'b10100001100101000110010111101111;
		#400 //-2.5751499e+16 * 3.9049578e-35 = -1.0055852e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111101100011011111100001;
		b = 32'b01001100100110110101100101101111;
		correct = 32'b00010110000101010110100111011001;
		#400 //1.48187235e-33 * 81447800.0 = 1.2069524e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100001100101101110111001;
		b = 32'b10111000100111101110001000111100;
		correct = 32'b10101010101001101100011010110001;
		#400 //3.910341e-09 * -7.5761665e-05 = -2.9625393e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011101010011011100100000101;
		b = 32'b10010000000111101101011001100001;
		correct = 32'b01000100010100101001110010100100;
		#400 //-2.689364e+31 * -3.1325157e-29 = 842.4475
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011111010001111101111010000;
		b = 32'b00111000100110000001100111000011;
		correct = 32'b10101101000010100110110011110110;
		#400 //-1.0849146e-07 * 7.252723e-05 = -7.868586e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011000111101010101111111;
		b = 32'b01101101010101000000000011001110;
		correct = 32'b11000110001111001010110110000101;
		#400 //-2.944685e-24 * 4.1007372e+27 = -12075.38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101101001111100000100101000;
		b = 32'b01111010011110010010001001101111;
		correct = 32'b11101000101000110100000101110000;
		#400 //-1.907148e-11 * 3.2339508e+35 = -6.167623e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000011000101100100110011101;
		b = 32'b00111011010110110100100110101110;
		correct = 32'b11101100010000100100001110111111;
		#400 //-2.807494e+29 * 0.0033460665 = -9.394061e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101111100000100010000111100;
		b = 32'b11110000101010110010100000100011;
		correct = 32'b01111111001000001010001101000000;
		#400 //-503875460.0 * -4.2376367e+29 = 2.1352412e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010101001010000011100000000;
		b = 32'b11110110111111100101011101101100;
		correct = 32'b11110010001000111111010101001101;
		#400 //0.0012590587 * -2.5793292e+33 = -3.247527e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001110101111010001001101000;
		b = 32'b11001111101010101111110010110001;
		correct = 32'b00010010000100000000011010110010;
		#400 //-7.921157e-38 * -5737374000.0 = 4.544664e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010000011001110111010001000;
		b = 32'b11001101011000011010101001101011;
		correct = 32'b11110111111110000111011011101110;
		#400 //4.259401e+25 * -236627630.0 = -1.00789203e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011011110101010011000100110;
		b = 32'b00011111001101010100010100100111;
		correct = 32'b10101011001100010111101100101110;
		#400 //-16426534.0 * 3.8385442e-20 = -6.305398e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111001001111000000110011010;
		b = 32'b10010100011010001100011100000011;
		correct = 32'b00011100000110000100111110101011;
		#400 //-42881.6 * -1.1752255e-26 = 5.039555e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111111001000001111111101000;
		b = 32'b11101111001000111010111010100110;
		correct = 32'b01101111100100011101101111110010;
		#400 //-1.7822237 * -5.0657194e+28 = 9.028245e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010000010101011000110110;
		b = 32'b11010001011101000011101010010010;
		correct = 32'b01010000001110000111001001100111;
		#400 //-0.18880543 * -65559667000.0 = 12378021000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011000000110011110111010;
		b = 32'b01001011110000011111101000001111;
		correct = 32'b10111010101010100000100101100110;
		#400 //-5.102383e-11 * 25424926.0 = -0.0012972772
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011101100010110010001011;
		b = 32'b11110111000000000110111100111101;
		correct = 32'b11011100111101110000001001111011;
		#400 //2.135219e-16 * -2.6049616e+33 = -5.5621637e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100111010110100101000110;
		b = 32'b00010001001010111011100111111100;
		correct = 32'b11001000010100110010111101011100;
		#400 //-1.5963395e+33 * 1.3546832e-28 = -216253.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011101010100100101110100;
		b = 32'b01011010101010000110001101100110;
		correct = 32'b11001001101000010101011101110001;
		#400 //-5.577179e-11 * 2.3698543e+16 = -1321710.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000100100101111010000101;
		b = 32'b11110011000100111100101100100110;
		correct = 32'b10111100101010010000000011011010;
		#400 //1.7618554e-33 * -1.1709411e+31 = -0.020630289
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010110011001011001110001001;
		b = 32'b11000010011111111101000101010001;
		correct = 32'b01000101110011001000111000110101;
		#400 //-102.350655 * -63.95441 = 6545.776
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010011111101111111001101001;
		b = 32'b10110101010111101011111110100010;
		correct = 32'b01101000010111011101111110000000;
		#400 //-5.0506724e+30 * -8.2980307e-07 = 4.1910634e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111001110110101001110101111;
		b = 32'b01111001001001010100101101111011;
		correct = 32'b11111000111100011110100001010111;
		#400 //-0.73174566 * 5.3641244e+34 = -3.9251749e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011100010010100011110100010;
		b = 32'b11011111001001010010100001011111;
		correct = 32'b01110011001100010010000110100011;
		#400 //-1179224600000.0 * -1.1900866e+19 = 1.4033795e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111010101010101001010100111;
		b = 32'b00100011011101101110110000100001;
		correct = 32'b01000011010011011100001000110000;
		#400 //1.5371532e+19 * 1.3385689e-17 = 205.75854
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001000111011100010101111001;
		b = 32'b00101100101011110111111100001000;
		correct = 32'b10010110010110000101000010001111;
		#400 //-3.5032283e-14 * 4.9879025e-12 = -1.7473761e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000111100111110001010001110;
		b = 32'b10111011011000110100001000100011;
		correct = 32'b01001100110110001000000011100110;
		#400 //-32733688000.0 * -0.0034676872 = 113510190.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111001010111110100000100011;
		b = 32'b11101011000110100001011110010110;
		correct = 32'b01100010110011101111001011110111;
		#400 //-1.0246443e-05 * -1.8628596e+26 = 1.9087684e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111101110111011011101111010;
		b = 32'b00110101101011101110011000011011;
		correct = 32'b01100110000000000011111101110000;
		#400 //1.1619101e+29 * 1.303098e-06 = 1.5140828e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111000100000010110100011;
		b = 32'b01100111100111111111111110000010;
		correct = 32'b01111100000011010100001100010111;
		#400 //1941514400000.0 * 1.5111391e+24 = 2.9338984e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011110100001111110000111000;
		b = 32'b10011101011101000110010010010111;
		correct = 32'b10010001110001111000001010000011;
		#400 //9.731633e-08 * -3.2345135e-21 = -3.1477098e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100000101001110111000111;
		b = 32'b00110001000110010110010100100100;
		correct = 32'b10001001000111001000011111001101;
		#400 //-8.440882e-25 * 2.2321922e-09 = -1.884167e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111101010010110001011000011;
		b = 32'b00111010011101010100101100110101;
		correct = 32'b11000010101000100100110101001000;
		#400 //-86725.52 * 0.0009357215 = -81.15094
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100100001111011010110000000;
		b = 32'b10101101011001000100001010010011;
		correct = 32'b10010010011100100000000111100001;
		#400 //5.885439e-17 * -1.2975082e-11 = -7.636405e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100101111100000010101111110;
		b = 32'b11000000001000110011111001111110;
		correct = 32'b11001101011100100101011111000100;
		#400 //99625970.0 * -2.5506892 = -254114880.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101010001011101111100100111;
		b = 32'b10101010010010101011000101111000;
		correct = 32'b00111000000111001010101101000001;
		#400 //-207483500.0 * -1.8002776e-13 = 3.735279e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001011010010011111101000010;
		b = 32'b10100011011111010100100101011000;
		correct = 32'b10010101011001101100011001010111;
		#400 //3.394192e-09 * -1.3730689e-17 = -4.6604593e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011000011010101001010110010;
		b = 32'b11000001011001000001100010110100;
		correct = 32'b00100100111110111101011010010011;
		#400 //-7.661137e-18 * -14.256031 = 1.092174e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111101011110011001101101;
		b = 32'b10000000110001110001111001000000;
		correct = 32'b10010100001111110100001100101101;
		#400 //528066450000.0 * -1.8286115e-38 = -9.656284e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010011111101010000001101000;
		b = 32'b10111011000010010101111101000010;
		correct = 32'b10110110000010001010001010010111;
		#400 //0.00097132334 * -0.002096132 = -2.036022e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111111111010011011101110000;
		b = 32'b00101111111111101010011110011011;
		correct = 32'b00101000011110111110001011001010;
		#400 //3.0185765e-05 * 4.6321422e-10 = 1.3982476e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111100101100101111000100000;
		b = 32'b11110111100110110011110000001101;
		correct = 32'b01010111101101100101110010000110;
		#400 //-6.368319e-20 * -6.2970624e+33 = 401017000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111110101111011101110011001;
		b = 32'b00110111011111100001111001110101;
		correct = 32'b11101111110101100010010111001100;
		#400 //-8.751162e+33 * 1.5146671e-05 = -1.3255097e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100000010110100111110010101;
		b = 32'b10100110001011101011111110001110;
		correct = 32'b11100010101111100011000010101010;
		#400 //2.8933735e+36 * -6.062798e-16 = -1.754194e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001001011010000110000001001;
		b = 32'b10100010001001001010111011010000;
		correct = 32'b01011011110111101010001111000001;
		#400 //-5.6156966e+34 * -2.231869e-18 = 1.2533499e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111001110111111001101010111;
		b = 32'b00011101101000110101101011110001;
		correct = 32'b10000101011011111101110101101010;
		#400 //-2.6083378e-15 * 4.323977e-21 = -1.1278393e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101001111100101001010100101;
		b = 32'b10100010010101110011010111001100;
		correct = 32'b00110000000111111111111101100111;
		#400 //-199567950.0 * -2.9166413e-18 = 5.820681e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011011011011111011010010;
		b = 32'b11001010101011101100101010111110;
		correct = 32'b01011100101000100101001111111100;
		#400 //-63819293000.0 * -5727583.0 = 3.655303e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111100101000101000101001010;
		b = 32'b10110100111010011011011111111111;
		correct = 32'b01101101000001110110100010010110;
		#400 //-6.016474e+33 * -4.3533507e-07 = 2.619182e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010011010000111000011000110;
		b = 32'b10001111111101111110011101001101;
		correct = 32'b00011010111000010001011011010011;
		#400 //-3808305.5 * -2.4445174e-29 = 9.3094693e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111101100110010011010011011;
		b = 32'b00110001000010110111101001111111;
		correct = 32'b00011001010000110011011101011111;
		#400 //4.9724336e-15 * 2.0296793e-09 = 1.0092446e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010010100101110010010110111;
		b = 32'b01001001001100111010110001001111;
		correct = 32'b11010100000101000000001111011111;
		#400 //-3455277.8 * 735940.94 = -2542880400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101011111001100011010111;
		b = 32'b00111111001101010100000110011101;
		correct = 32'b11110100011110001010100000100011;
		#400 //-1.1129784e+32 * 0.7080324 = -7.880248e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010011001000100101000110;
		b = 32'b10101011111110001001010011010001;
		correct = 32'b01001101110001101001101111100010;
		#400 //-2.3581421e+20 * -1.7662765e-12 = 416513100.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110101100011100001010000;
		b = 32'b00001001000101110001111010100100;
		correct = 32'b10011100011111001110100110110110;
		#400 //-460033900000.0 * 1.8190371e-33 = -8.368187e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111110011110010111110110;
		b = 32'b00010000010111111000101110010110;
		correct = 32'b10110110110110100011011110010100;
		#400 //-1.4751391e+23 * 4.408653e-29 = -6.5033764e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110001101111100011101001100;
		b = 32'b10011011011011001100100011101101;
		correct = 32'b11001010001010011111101111111000;
		#400 //1.4219173e+28 * -1.9586385e-22 = -2785022.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001100110100101010011100100;
		b = 32'b10110011111100000010010001000110;
		correct = 32'b01000110000100001100010101110100;
		#400 //-82856150000.0 * -1.1182469e-07 = 9265.363
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110000110100100101101011011;
		b = 32'b00110001111111110010011110011111;
		correct = 32'b00010000100110011100100011110001;
		#400 //8.168275e-21 * 7.425981e-09 = 6.065746e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110110100110111010001010;
		b = 32'b00111100111010100110010001000101;
		correct = 32'b10111001010001111111111010011000;
		#400 //-0.0066660093 * 0.028612265 = -0.00019072962
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111010101101000100111110000;
		b = 32'b11011010001010001101100110101111;
		correct = 32'b01111010000011011000000011110011;
		#400 //-1.5459151e+19 * -1.1881785e+16 = 1.8368231e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001010111000101010000000010;
		b = 32'b10000111000000101010101011011110;
		correct = 32'b00110000111000001110101101110000;
		#400 //-1.6647525e+25 * -9.830326e-35 = 1.636506e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011101100111100111100001110;
		b = 32'b01111111011000001001110000100010;
		correct = 32'b01110011100111011100001011010110;
		#400 //8.373e-08 * 2.9855776e+38 = 2.499824e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010001011011000010101110001;
		b = 32'b10110000000101011000000000110001;
		correct = 32'b01010010110010101010101100011101;
		#400 //-8.0022555e+20 * -5.4388055e-10 = 435227100000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000010101001011110000010011;
		b = 32'b11100000110011101011101000100101;
		correct = 32'b01111001101010111100101000000111;
		#400 //-935616950000000.0 * -1.19170075e+20 = 1.1149755e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000011100010100111000100;
		b = 32'b01001111111101110110110011110010;
		correct = 32'b11000110100010010110011011001100;
		#400 //-2.118396e-06 * 8302224400.0 = -17587.398
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001000001011000110101000100;
		b = 32'b00000100010001111110110010011101;
		correct = 32'b10010101110100001001100010000000;
		#400 //-35850043000.0 * 2.3500985e-36 = -8.4251134e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111010110100111110110000;
		b = 32'b11010010011001001110010111100001;
		correct = 32'b11100000110100100110011001000110;
		#400 //493483520.0 * -245777320000.0 = -1.2128706e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010101100100110111011100000;
		b = 32'b10010110011110011010010100010111;
		correct = 32'b10010001101011100000000011101001;
		#400 //0.0013613366 * -2.0166153e-25 = -2.745292e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111100110100101001100100;
		b = 32'b00101101100000000110111011000000;
		correct = 32'b01011101111101000001110011100101;
		#400 //1.5058958e+29 * 1.4601098e-11 = 2.1987733e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010011110111111000111111;
		b = 32'b01000010011110001010000001011010;
		correct = 32'b11000001010010011000010001000101;
		#400 //-0.20263003 * 62.156593 = -12.594792
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001110111000111100111101000;
		b = 32'b01001111000101110011011101001001;
		correct = 32'b11100001100000100011101110000101;
		#400 //-118367260000.0 * 2536982800.0 = -3.002957e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110111110100110110000100101;
		b = 32'b11000010001011101101001000010000;
		correct = 32'b01000001101010110000001011111110;
		#400 //-0.48910633 * -43.70514 = 21.376461
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000001110100001000001011110;
		b = 32'b11011110000111010111001000000010;
		correct = 32'b00110110111001001101110111001101;
		#400 //-2.40482e-24 * -2.8362832e+18 = 6.8207505e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100000100110100011000111000;
		b = 32'b00001110001101100010000000000101;
		correct = 32'b11001010110100011000110010101111;
		#400 //-3.0587674e+36 * 2.2448649e-30 = -6866519.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101010100001011100001010;
		b = 32'b00010010000101001110101011110111;
		correct = 32'b00110101010001011110001011011110;
		#400 //1.5688033e+21 * 4.699018e-28 = 7.3718354e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100100001000001100000101100;
		b = 32'b01000101000110101110000001000000;
		correct = 32'b00011010000111111101010010000001;
		#400 //1.3338128e-26 * 2478.0156 = 3.305209e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001000100010000000100001011;
		b = 32'b01111110000011000011100010110110;
		correct = 32'b11010111100111101101100101100011;
		#400 //-7.496535e-24 * 4.6596595e+37 = -349313000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111100100100001010100111110;
		b = 32'b00000000010110101011011100111010;
		correct = 32'b00001000010011110001000000011000;
		#400 //74794.484 * 8.330924e-39 = 6.2310715e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100010100010111011100110100;
		b = 32'b00100100110010000100001010000110;
		correct = 32'b11000001101000111101101110001111;
		#400 //-2.3583734e+17 * 8.684887e-17 = -20.482206
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010010111011001000001010;
		b = 32'b00011011011111101100001110110101;
		correct = 32'b10001101010010101011011001011111;
		#400 //-2.9641591e-09 * 2.1073624e-22 = -6.2465577e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001101011010111111000011;
		b = 32'b11001011100011001110000011011111;
		correct = 32'b00101011010001111111011101101101;
		#400 //-3.8473628e-20 * -18465214.0 = 7.1042374e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101001011101101011100000011;
		b = 32'b00000110101111000010111010110110;
		correct = 32'b10011100100000001000010111001101;
		#400 //-12014906000000.0 * 7.0786376e-35 = -8.504916e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111011111111111110110010001;
		b = 32'b10110001010111100111110010010110;
		correct = 32'b01010001010111100111101001111001;
		#400 //-1.8446059e+19 * -3.237607e-09 = 59721093000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010010111011000111110010110;
		b = 32'b10100111100010011101110110011111;
		correct = 32'b00011010011011101010001101001100;
		#400 //-1.2896541e-08 * -3.826542e-15 = 4.9349157e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111111000111010000001000;
		b = 32'b10100110000010101001101110111100;
		correct = 32'b01001100100010001011000000100000;
		#400 //-1.4902209e+23 * -4.808943e-16 = 71663870.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111100100111001110001011000;
		b = 32'b00101100011011011100111101101111;
		correct = 32'b10101100100010010001111101011001;
		#400 //-1.1532087 * 3.3794874e-12 = -3.8972545e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001001010011010000010111111;
		b = 32'b01001010000101000110011011000010;
		correct = 32'b00111011110001001010101000001010;
		#400 //2.468411e-09 * 2431408.5 = 0.0060017155
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001010000101000010110101011;
		b = 32'b11011001101000101100110000000000;
		correct = 32'b10111011011101110110011100110001;
		#400 //6.5906665e-19 * -5727906000000000.0 = -0.0037750716
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110001000001011001101010011;
		b = 32'b10011010101000111010010110001011;
		correct = 32'b00001001010011010111010000110001;
		#400 //-3.653906e-11 * -6.768267e-23 = 2.473061e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011011101001101001101111111;
		b = 32'b00110001011001100110011101111000;
		correct = 32'b10010101010111000101100011111000;
		#400 //-1.32720525e-17 * 3.352822e-09 = -4.449883e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111111111100101001110001000;
		b = 32'b10110001010111111100011000100100;
		correct = 32'b00111001110111100100111110011100;
		#400 //-130215.06 * -3.25634e-09 = 0.00042402453
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000101011100011100100010000;
		b = 32'b00001100010101101001010100001000;
		correct = 32'b00110101100100100000100100100000;
		#400 //6.581955e+24 * 1.6530808e-31 = 1.0880503e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000100001110010110011011010;
		b = 32'b10110001001101000100100110010011;
		correct = 32'b00000010001111100110010011000101;
		#400 //-5.3317216e-29 * -2.623527e-09 = 1.3987915e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011001101001101100010011110;
		b = 32'b00101100010110010100011000001000;
		correct = 32'b11101000000110010111110100010111;
		#400 //-9.3900695e+35 * 3.087643e-12 = -2.8993183e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100101010001011111001011001;
		b = 32'b11101011100000010010110011010010;
		correct = 32'b01000000101010100100101011101100;
		#400 //-1.7038744e-26 * -3.1232618e+26 = 5.3216457
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011000001010001001110010000;
		b = 32'b11101011011110101000010010010000;
		correct = 32'b11100111000000100011101000000100;
		#400 //0.002030585 * -3.0285746e+26 = -6.1497784e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010011011001111101001100;
		b = 32'b11100001101011101001000001111010;
		correct = 32'b10111110100011000011011001010001;
		#400 //6.8034697e-22 * -4.02518e+20 = -0.2738519
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100000100001010001000011010;
		b = 32'b00111000101000101100110011010001;
		correct = 32'b11110101001101111111010010010111;
		#400 //-3.0039142e+36 * 7.762912e-05 = -2.3319121e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101000001111001001101000001;
		b = 32'b01011011001100001011101111010110;
		correct = 32'b01001000101110110011000101101101;
		#400 //7.7065585e-12 * 4.9746124e+16 = 383371.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101011001110100001010100;
		b = 32'b11001110000110011100001001010001;
		correct = 32'b01001111010011111011010000110010;
		#400 //-5.4033604 * -644912200.0 = 3484693000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101011111000010011111000011;
		b = 32'b01011000101100010101000101000100;
		correct = 32'b01011110101011101010011110001001;
		#400 //4034.485 * 1559700700000000.0 = 6.292589e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111011111010110111101011;
		b = 32'b11100001001010101010001011110000;
		correct = 32'b01101100100111111100001000001011;
		#400 //-7853813.5 * -1.9673046e+20 = 1.5450844e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110001101011000101101110010;
		b = 32'b10111001110000010101010011111101;
		correct = 32'b10100000100010010001101001100110;
		#400 //6.2985973e-16 * -0.0003687515 = -2.3226172e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001110010101110101010101000;
		b = 32'b00101000111111001111001001111000;
		correct = 32'b00110011010010000111111100101110;
		#400 //1662293.0 * 2.8082774e-14 = 4.6681798e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101010111010001111001011;
		b = 32'b00110111110010011011111001101101;
		correct = 32'b00100110000001110100001101000111;
		#400 //1.9513188e-11 * 2.4049741e-05 = 4.692871e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001011100001100001010000011;
		b = 32'b11110111100110100000010011010000;
		correct = 32'b11001001100100001101100110001001;
		#400 //1.89926e-28 * -6.247745e+33 = -1186609.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010011110111001110010011100;
		b = 32'b01000110010011011011010011111000;
		correct = 32'b11001001010010100010111001000111;
		#400 //-62.90294 * 13165.242 = -828132.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111000011101100101001010000;
		b = 32'b01101010010001010100010011110110;
		correct = 32'b01111001110111000001000001001101;
		#400 //2395623400.0 * 5.962101e+25 = 1.4282949e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110010101001101110110011101;
		b = 32'b01101011010011010001011000011001;
		correct = 32'b01000010001010101000011111010111;
		#400 //1.7195152e-25 * 2.4793415e+26 = 42.632656
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110011100001001100101100000;
		b = 32'b01100001001001110001100000010110;
		correct = 32'b10110000000111010000101010110001;
		#400 //-2.9656131e-30 * 1.9264636e+20 = -5.713146e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101001101010111000011010110;
		b = 32'b11010011001000010100001100010000;
		correct = 32'b01010000111001001001011011111101;
		#400 //-0.04429706 * -692614860000.0 = 30680803000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100100001110000101000101101;
		b = 32'b10000011110100010001000011110111;
		correct = 32'b00101000110111001001000010000011;
		#400 //-1.992835e+22 * -1.2287811e-36 = 2.4487579e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001110100010100111101001;
		b = 32'b11000100001110010011010110101111;
		correct = 32'b00111110000001101010111101010011;
		#400 //-0.00017753955 * -740.8388 = 0.13152818
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011111101110110000110100;
		b = 32'b10100011101101101001010000000110;
		correct = 32'b01001110101101011100111101010011;
		#400 //-7.704565e+25 * -1.979517e-17 = 1525131600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100011101110101000010001011;
		b = 32'b11001100011010001010101010001000;
		correct = 32'b11101001011000001100010110111101;
		#400 //2.7845151e+17 * -60992030.0 = -1.6983324e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001110000010011010110011;
		b = 32'b01000110111111000000001110010010;
		correct = 32'b01011001101101010100100010101010;
		#400 //197730810000.0 * 32257.785 = 6378358000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000101011110111101010000010;
		b = 32'b11110100000010111111101100100100;
		correct = 32'b01100101001111111110011101010101;
		#400 //-1.2767745e-09 * -4.4361755e+31 = 5.6639958e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011010001100110111111101101;
		b = 32'b01101010101100010110110001001100;
		correct = 32'b11011110100010011000011101010101;
		#400 //-4.6202263e-08 * 1.0724564e+26 = -4.9549915e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011001111001000110010000100;
		b = 32'b01100010111000101110100100110110;
		correct = 32'b01010110101001110001111111010000;
		#400 //4.389996e-08 * 2.0928844e+21 = 91877540000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000010011100100101100111;
		b = 32'b01100111110100100000110011011000;
		correct = 32'b11110011011000100001110001000000;
		#400 //-9029991.0 * 1.9838678e+24 = -1.7914308e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111100001001110001011011;
		b = 32'b00110011001111000100111010011010;
		correct = 32'b01011001101100001111110010110011;
		#400 //1.4203153e+23 * 4.384365e-08 = 6227180000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110110101010000000110111;
		b = 32'b10111101110010011010011000111010;
		correct = 32'b10011001001011000011010111000001;
		#400 //9.042153e-23 * -0.09846158 = -8.903047e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011011111100100000001101001;
		b = 32'b10001000110011110101111110001101;
		correct = 32'b10010100110011011111010011111011;
		#400 //16662633.0 * -1.2480823e-33 = -2.0796338e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110010110110100011101001;
		b = 32'b10001110110011000111110011001000;
		correct = 32'b10100101001000100111101010111111;
		#400 //27956430000000.0 * -5.0410043e-30 = -1.4092848e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100110101111100011100010;
		b = 32'b00101011010101111110000100000100;
		correct = 32'b01100111100000101010111100111101;
		#400 //1.6093233e+36 * 7.6695616e-13 = 1.2342804e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010000011101001111001001111;
		b = 32'b01000010011010001000100001111100;
		correct = 32'b10111101000000011000101110000001;
		#400 //-0.000544046 * 58.133286 = -0.031627182
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111010111001100100000110000;
		b = 32'b00100111001111000010100010011110;
		correct = 32'b01000111001000100100011000001011;
		#400 //1.5909018e+19 * 2.611226e-15 = 41542.043
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100101010110110111110010100;
		b = 32'b01100101101000011101011000100010;
		correct = 32'b01011010110110001100000100100100;
		#400 //3.1932416e-07 * 9.553138e+22 = 3.0505478e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010111010100010010010001;
		b = 32'b11000111110110100111000101111011;
		correct = 32'b11101110101111001100111001111001;
		#400 //2.6122695e+23 * -111842.96 = -2.9216396e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111110000110101010101011;
		b = 32'b11011101110011110111110010110010;
		correct = 32'b10111011010010010101011101000001;
		#400 //1.6438836e-21 * -1.8688776e+18 = -0.0030722173
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010001011000100100001010;
		b = 32'b01011011000110110100101000010110;
		correct = 32'b10101110111011111010011001000111;
		#400 //-2.4932461e-27 * 4.371008e+16 = -1.08979985e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111100011001001100100101011;
		b = 32'b00111111101010000111100001100110;
		correct = 32'b11001111101110010000110101001000;
		#400 //-4717696500.0 * 1.3161743 = -6209310700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000110110100111010010100001;
		b = 32'b01010110000110001001001000000100;
		correct = 32'b11000111100000100011000111011010;
		#400 //-1.5894736e-09 * 41938225000000.0 = -66659.7
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111101010111000010001010;
		b = 32'b00010010110010001110011010001001;
		correct = 32'b11111111111101010111000010001010;
		#400 //nan * 1.2678606e-27 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010000001010000100101101101;
		b = 32'b11111000101000000100101001110111;
		correct = 32'b01011011001001101001100100101101;
		#400 //-1.8029851e-18 * -2.6008682e+34 = 4.6893265e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100111101100101001001011011;
		b = 32'b00011001110010011001110100100010;
		correct = 32'b00111111010000011111110111011011;
		#400 //3.6350667e+22 * 2.0846378e-23 = 0.7577798
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001101111010100111110010000;
		b = 32'b11010111101100011111010110000011;
		correct = 32'b10011010000000111001100110010001;
		#400 //6.95418e-38 * -391336050000000.0 = -2.7214215e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110011111010111000111001100;
		b = 32'b00100011111110101110100101111011;
		correct = 32'b10111010111110000110100001001000;
		#400 //-69666300000000.0 * 2.7203937e-17 = -0.0018951977
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001010010001010100101011110;
		b = 32'b11101100011111110011101111101011;
		correct = 32'b11000110010010000000111110101100;
		#400 //1.0373961e-23 * -1.23423615e+27 = -12803.918
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000100100100110111000111010;
		b = 32'b10011000101100011111011110111100;
		correct = 32'b01001001110010111001011111010100;
		#400 //-3.6254454e+29 * -4.6003575e-24 = 1667834.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011001110011100101101011010;
		b = 32'b10110000001001110110100010101110;
		correct = 32'b10100011111100101111111101000001;
		#400 //4.3258616e-08 * -6.0903005e-10 = -2.6345797e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111101100111101000001000111;
		b = 32'b11011111001010001110110100010011;
		correct = 32'b00100111011011010100111001101000;
		#400 //-2.705534e-34 * -1.2172406e+19 = 3.2932861e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001110000000110001010000011;
		b = 32'b11000000100100010100001101000001;
		correct = 32'b00011010110110100101010010101110;
		#400 //-1.9892123e-23 * -4.5394597 = 9.0299494e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111100111000011000001110;
		b = 32'b01011001111111101111010101000001;
		correct = 32'b11111110011100101000100001001111;
		#400 //-8.984437e+21 * 8970538000000000.0 = -8.059523e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111111011010000100011011110;
		b = 32'b10111001111011010101001110110011;
		correct = 32'b11100010010110111011111010110101;
		#400 //2.2387289e+24 * -0.00045266523 = -1.0133947e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001110101001001100111101110;
		b = 32'b10110100110101110111011100010110;
		correct = 32'b10011111001100101111000000101101;
		#400 //9.441394e-14 * -4.0133517e-07 = -3.7891635e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001010100001111001000001011;
		b = 32'b10001011001100111110010101110011;
		correct = 32'b10111101000100101101010010000100;
		#400 //1.0346479e+30 * -3.4646764e-32 = -0.035847202
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011010101010101110000010000;
		b = 32'b11110110110000000100011001011111;
		correct = 32'b11001010101000000011111110110010;
		#400 //2.692977e-27 * -1.949899e+33 = -5251033.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010001101100110110101101110;
		b = 32'b11101111111100101010100010100010;
		correct = 32'b11100010101011001110101110011101;
		#400 //1.0618676e-08 * -1.5019847e+29 = -1.5949089e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101101011111011110011111111;
		b = 32'b10000111110010111000000010001011;
		correct = 32'b10110110000010111011001100011100;
		#400 //6.798545e+27 * -3.0619596e-34 = -2.081687e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001101011010001100101010110;
		b = 32'b01001001100001111001110100011000;
		correct = 32'b10011011101101110110010100101010;
		#400 //-2.7310202e-28 * 1110947.0 = -3.0340186e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111110101101100011100011011;
		b = 32'b01001101110101010001111110110101;
		correct = 32'b01001110001100101100111001000011;
		#400 //1.6779512 * 446953120.0 = 749965500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010100101110011000000101010;
		b = 32'b10101010000110100011110011000110;
		correct = 32'b10110101001101100010110110111011;
		#400 //4954133.0 * -1.3699033e-13 = -6.786683e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111110100000011010010000;
		b = 32'b10000110011010110000000110100010;
		correct = 32'b10001001111001011000010110011110;
		#400 //125.01282 * -4.4199787e-35 = -5.5255398e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101001100101100011101100;
		b = 32'b10100100111010000100111101010011;
		correct = 32'b11000001000101101111010000100001;
		#400 //9.364523e+16 * -1.0074834e-16 = -9.434602
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001011001000111101000100100;
		b = 32'b10111111001011110000100110001000;
		correct = 32'b00101001000111000011100000000000;
		#400 //-5.073211e-14 * -0.6837392 = 3.468753e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011101000001111011111111010;
		b = 32'b11110010110010100111110110111000;
		correct = 32'b11001110111111101010010101110000;
		#400 //2.663003e-22 * -8.0214984e+30 = -2136127500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100000001001001011110110110;
		b = 32'b00111110100111101000111000000011;
		correct = 32'b01111011001001000011111001100000;
		#400 //2.753841e+36 * 0.3096772 = 8.528018e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010111010000111010001011110;
		b = 32'b10100000110010111111000111100000;
		correct = 32'b10011100001110010010111111100111;
		#400 //0.0017734875 * -3.4549597e-19 = -6.127328e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111111011100100000110101;
		b = 32'b11111011100001111101010111001101;
		correct = 32'b11010001000001101010100010000111;
		#400 //2.562544e-26 * -1.410593e+36 = -36147065000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100000111001100100111100;
		b = 32'b00010010101001110000100110100101;
		correct = 32'b10001010101010111011101111010111;
		#400 //-1.5687772e-05 * 1.0541559e-27 = -1.6537359e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111011011011010001010101110;
		b = 32'b11000101101001101010110010000010;
		correct = 32'b11001101100110101011011110011111;
		#400 //60834.68 * -5333.5635 = -324465630.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011101001101000111001110010;
		b = 32'b10010000010110001001010010111000;
		correct = 32'b01000100100011001110100011110010;
		#400 //-2.639192e+31 * -4.2713058e-29 = 1127.2795
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010000000110010101101001111;
		b = 32'b10101101110001110001001001000101;
		correct = 32'b11101000010011000000000000001110;
		#400 //1.7026732e+35 * -2.2631794e-11 = -3.853455e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010000110111000110101101110;
		b = 32'b11101111101011001101101111000111;
		correct = 32'b11111010010100100001000100100010;
		#400 //2548571.5 * -1.0699423e+29 = -2.7268246e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111000110000010001110101100;
		b = 32'b00010000011111101111110111111011;
		correct = 32'b00011000000101111000101001010101;
		#400 //38947.67 * 5.0288327e-29 = 1.9586132e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010000110000011011011111011;
		b = 32'b10101010001101110000111010111011;
		correct = 32'b10001100110110011011000000011111;
		#400 //2.0628948e-18 * -1.6258776e-13 = -3.3540143e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011101000001000011111000000;
		b = 32'b10100000000001011001010000100010;
		correct = 32'b00111100001001111000011011010101;
		#400 //-9.037051e+16 * -1.1314551e-19 = 0.010225018
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001101001111011000100000101;
		b = 32'b01010110110110001000100111000100;
		correct = 32'b01100001000011011101011110011010;
		#400 //1373728.6 * 119043105000000.0 = 1.6353292e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011111000001000010001000;
		b = 32'b10111111101001001011001111001010;
		correct = 32'b10011110101000100010101110011110;
		#400 //1.33441875e-20 * -1.2867367 = -1.7170457e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001101011001011111110000;
		b = 32'b00111100110111011101000010011101;
		correct = 32'b10011100100111010101100000100101;
		#400 //-3.845392e-20 * 0.027077014 = -1.0412173e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101000100100100111110000000;
		b = 32'b11010010001110110110111110010111;
		correct = 32'b01100111110101100011111110110011;
		#400 //-10054384000000.0 * -201257760000.0 = 2.023523e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000111111001001001100111100;
		b = 32'b00111010101000011101100001111000;
		correct = 32'b01010100000111111010111000101011;
		#400 //2221674400000000.0 * 0.0012347838 = 2743287400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011011101101001001101011110;
		b = 32'b10101110010000101110001110111001;
		correct = 32'b01001010001110111011011100000100;
		#400 //-6.9404876e+16 * -4.431275e-11 = 3075521.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010101000111000100111001010;
		b = 32'b01000100011001001111100011000000;
		correct = 32'b00011111100100100100010110100000;
		#400 //6.763783e-23 * 915.8867 = 6.194859e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010010111111011011000100011;
		b = 32'b10110011111011110001010001111000;
		correct = 32'b00100110110100001110110011101110;
		#400 //-1.30217215e-08 * -1.1133028e-07 = 1.4497119e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001011001001010011111011101;
		b = 32'b10110010011101001101000001110010;
		correct = 32'b10100100010110101010101000101101;
		#400 //3.3273786e-09 * -1.4250064e-08 = -4.741536e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110000001110001110000101010;
		b = 32'b11010100111101111101100111010101;
		correct = 32'b11100011100000101100111100100100;
		#400 //566692500.0 * -8516092300000.0 = -4.8260056e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111110100100010001001110111;
		b = 32'b01001010111100000001001110101111;
		correct = 32'b11110011010001010001000001111000;
		#400 //-1.9846655e+24 * 7866839.5 = -1.5613045e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111110001101111110111101;
		b = 32'b01001100010011110111101001110000;
		correct = 32'b11101100110010011011001111110001;
		#400 //-3.586652e+19 * 54389184.0 = -1.9507507e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110110000111011010010011011;
		b = 32'b01111101110001110100000110101111;
		correct = 32'b11010101000110000101001110011011;
		#400 //-3.1617927e-25 * 3.3107177e+37 = -10467803000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111001000011100110000110;
		b = 32'b11011111011001100011000011101000;
		correct = 32'b11101001110011010011011101001000;
		#400 //1869616.8 * -1.6587013e+19 = -3.1011356e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010100110100110011001000101;
		b = 32'b10111100000010100110111011111100;
		correct = 32'b10000111001001101111110000100010;
		#400 //1.486813e-32 * -0.008449312 = -1.2562547e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001110011001110100000100;
		b = 32'b10010000100010001111000000100101;
		correct = 32'b10100011010001101001001100010000;
		#400 //199300810000.0 * -5.401254e-29 = -1.0764743e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001001010001001001001111110;
		b = 32'b00011111111001011011000101001000;
		correct = 32'b00001001100101110011111111000111;
		#400 //3.7430555e-14 * 9.727856e-20 = 3.6411904e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000010100100111110011101;
		b = 32'b00010100110000001000101010001001;
		correct = 32'b00011000010100000000110100011101;
		#400 //138.31099 * 1.9441688e-26 = 2.688999e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111010111110011100110000;
		b = 32'b11111111111010010101111010101001;
		correct = 32'b11111111111010010101111010101001;
		#400 //1.4601693e+29 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110110111011010101111111;
		b = 32'b10110111100110101000010011111110;
		correct = 32'b00011111000001001001110101010010;
		#400 //-1.5245372e-15 * -1.842016e-05 = 2.808222e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001111011100101000001110001;
		b = 32'b01100010000111001100000010111011;
		correct = 32'b11100100100100011110110001101111;
		#400 //-29.789278 * 7.2289494e+20 = -2.1534518e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010010111110000110100000001;
		b = 32'b01010111011010110100000101011101;
		correct = 32'b11010010010011001111100111100011;
		#400 //-0.00085087126 * 258665970000000.0 = -220091430000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000111010100001011110100;
		b = 32'b01001111001101001110011110111010;
		correct = 32'b11100011110111100100001011011010;
		#400 //-2701732600000.0 * 3035085300.0 = -8.1999887e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011100111101011100100101;
		b = 32'b10100110101101010100001101000101;
		correct = 32'b10111001101011001010011100110000;
		#400 //261821640000.0 * -1.2577631e-15 = -0.0003293096
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010110000001110110010010011;
		b = 32'b10110010101110011100001001001010;
		correct = 32'b11011110000010111111110101100001;
		#400 //1.1661547e+26 * -2.1625187e-08 = -2.5218313e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101101001001000111000111101;
		b = 32'b10110110101010100111101111001010;
		correct = 32'b01001100110110110010110000001101;
		#400 //-22616352000000.0 * -5.0808057e-06 = 114909290.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110111110011101100001001110;
		b = 32'b11011011000100100010110010000001;
		correct = 32'b10100010100011101010100011001100;
		#400 //9.398122e-35 * -4.114428e+16 = -3.8667898e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001110010001001100001000000;
		b = 32'b11101000100000110010010101101011;
		correct = 32'b11010010110011011000011001110101;
		#400 //8.9081954e-14 * -4.954562e+24 = -441362060000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101101111110100000011000111;
		b = 32'b11100101011010100110100101001000;
		correct = 32'b01101011101011110001111111011101;
		#400 //-6120.097 * -6.918599e+22 = 4.2342498e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011011011101101110111011011;
		b = 32'b11011111101010110111000001110001;
		correct = 32'b01110011100111111111011100011100;
		#400 //-1025924330000.0 * -2.4706996e+19 = 2.534751e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100111010010011111101111;
		b = 32'b11000011111111100001000111010001;
		correct = 32'b00110111000110111111100010001111;
		#400 //-1.8295365e-08 * -508.1392 = 9.296592e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000111111100100001101101011;
		b = 32'b00110001110010011001010101111101;
		correct = 32'b10000011010010000011011101101000;
		#400 //-1.0028921e-28 * 5.8668648e-09 = -5.883832e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011100110101011111010101111;
		b = 32'b01001010101001011101010101000100;
		correct = 32'b01001110110010000111101110100001;
		#400 //309.48972 * 5434018.0 = 1681772700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100110010011011010010100110;
		b = 32'b01101001101000110110111011101011;
		correct = 32'b11111111000000001100010101101010;
		#400 //-6930553600000.0 * 2.4697338e+25 = -1.7116622e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101000100000000001100000101;
		b = 32'b01100011010011010010011000000011;
		correct = 32'b01100000111001101100111110011010;
		#400 //0.03515913 * 3.7843216e+21 = 1.3305345e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101110001010001100000001101;
		b = 32'b01000101100111110100100100101001;
		correct = 32'b10011011111101010100010010000111;
		#400 //-7.960561e-26 * 5097.145 = -4.0576135e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001110010000010011110111;
		b = 32'b10010000000111110101010111001111;
		correct = 32'b10100100111001100101000000110011;
		#400 //3178609000000.0 * -3.1423326e-29 = -9.988246e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010011010010001100010111010;
		b = 32'b11101011101011111001101100001010;
		correct = 32'b01000110100111111110010100010010;
		#400 //-4.8203245e-23 * -4.2458834e+26 = 20466.535
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101101000100101111101111010;
		b = 32'b10000111000101010011100011110101;
		correct = 32'b10100101001111010100101101100101;
		#400 //1.4625256e+18 * -1.1226252e-34 = -1.6418682e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100011000011110000111110010;
		b = 32'b01010010111111010101001101001111;
		correct = 32'b10101111110111111000010111001110;
		#400 //-7.4738283e-22 * 544012200000.0 = -4.0658538e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110001101000101100001011;
		b = 32'b10110111001110100101001001101000;
		correct = 32'b11001110100100001000000011101111;
		#400 //109150240000000.0 * -1.1105651e-05 = -1212184400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111110101000101111111101001;
		b = 32'b00110100101001011110101101110101;
		correct = 32'b10101101000010011010010100100110;
		#400 //-2.5317031e-05 * 3.0904963e-07 = -7.824219e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100001110111011101110111010;
		b = 32'b01100011110110110001110101111010;
		correct = 32'b11100000101000001010111100110110;
		#400 //-0.011458332 * 8.083922e+21 = -9.262826e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010000010110101101101001011;
		b = 32'b10001011001001001110010000100001;
		correct = 32'b10100101101100111000010101010111;
		#400 //9806350000000000.0 * -3.1756876e-32 = -3.1141905e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110001110101101000000010;
		b = 32'b01101001101100111010001011011000;
		correct = 32'b01000000000010111110001010111111;
		#400 //8.051747e-26 * 2.7145841e+25 = 2.1857145
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110000110110110100011001;
		b = 32'b11101011000110011100001110001010;
		correct = 32'b11100010011010101100001011110011;
		#400 //5.8241535e-06 * -1.8588906e+26 = -1.0826464e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011001100010000111011110;
		b = 32'b11000010000011101010100110011110;
		correct = 32'b00001011000000000011111101000100;
		#400 //-6.925292e-34 * -35.66564 = 2.46995e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001011011100110011001110110;
		b = 32'b11110110011110011000111000001011;
		correct = 32'b01110000011010000110010111110000;
		#400 //-0.00022735618 * -1.26539345e+33 = 2.8769503e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100011001101010010100001;
		b = 32'b11000100011010010101001100000110;
		correct = 32'b11111100100000000101101100110011;
		#400 //5.712767e+33 * -933.29724 = -5.33171e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001110000110111100001101;
		b = 32'b00111000000000100110100001100100;
		correct = 32'b11011110101110111110011100110100;
		#400 //-2.1774099e+23 * 3.1091637e-05 = -6.769924e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010100110001000011110000001;
		b = 32'b01000110001000001011101111110101;
		correct = 32'b10010001001111111000100101011011;
		#400 //-1.4688038e-32 * 10286.989 = -1.5109569e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110000110100111011111101;
		b = 32'b01100000110110010001000110011110;
		correct = 32'b10101101001001011001101101100101;
		#400 //-7.5230116e-32 * 1.2513165e+20 = -9.413669e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000000001011011011110010100;
		b = 32'b10110000100100001010111000010110;
		correct = 32'b01101001000101110010010001100011;
		#400 //-1.084842e+34 * -1.0526857e-09 = 1.1419977e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110101011011101001101101101;
		b = 32'b00110110111100010111100101110001;
		correct = 32'b01001110001000111111011001111111;
		#400 //95561790000000.0 * 7.1964973e-06 = 687710140.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111010011001110010111010001;
		b = 32'b00010111100111110001111010101111;
		correct = 32'b01000111011111101011011010011000;
		#400 //6.3412773e+28 * 1.028288e-24 = 65206.594
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110001000010000101100111;
		b = 32'b01011100010001001011010001011111;
		correct = 32'b11011110100101101011001111000011;
		#400 //-24.51631 * 2.2146966e+17 = -5.429619e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110111111111011111100110110;
		b = 32'b01010101100001011101100011010100;
		correct = 32'b11100101000001011011011011110100;
		#400 //-2145360600.0 * 18395790000000.0 = -3.94656e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010001111110100111100011111;
		b = 32'b00111001101110001100001010001111;
		correct = 32'b00000100100010100001001001000011;
		#400 //9.2111965e-33 * 0.00035240172 = 3.2460415e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110010010100101001010100;
		b = 32'b11000111101101011001110100101101;
		correct = 32'b11010111000011101100110100100011;
		#400 //1688545800.0 * -92986.35 = -157011700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011101100101110011101001;
		b = 32'b10111101110010010110001001000011;
		correct = 32'b11011110110000011100110110000011;
		#400 //7.100928e+19 * -0.09833195 = -6.982481e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001100001100011100000001011;
		b = 32'b01000011001001100111101001010101;
		correct = 32'b11111101001011101001000011110101;
		#400 //-8.711306e+34 * 166.47786 = -1.4502396e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000110111101000101001011101;
		b = 32'b11000100111010101110101101010111;
		correct = 32'b01000110010011000011011100001110;
		#400 //-6.95439 * -1879.3544 = 13069.764
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111110011001001000010100101;
		b = 32'b01100011111000000101000001010110;
		correct = 32'b11101100001100110011111011000010;
		#400 //-104737.29 * 8.275719e+21 = -8.6677635e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100110111011111001101010;
		b = 32'b00001011001111011001001110011001;
		correct = 32'b00001011011001101010101010111111;
		#400 //1.2167485 * 3.6511116e-32 = 4.4424844e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110001011111101100101010;
		b = 32'b01011110000011101000110111100100;
		correct = 32'b10101011010111000111111000011010;
		#400 //-3.050382e-31 * 2.5680293e+18 = -7.83347e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111101111100100101010000100;
		b = 32'b00100101101101111111111011101111;
		correct = 32'b10001110000010001100010011000100;
		#400 //-5.2816384e-15 * 3.191819e-16 = -1.6858033e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110011110010001000001001001;
		b = 32'b11000000101011001110011101100010;
		correct = 32'b01000111101010000011100000001110;
		#400 //-15940.071 * -5.403245 = 86128.11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101100110010001100110011001;
		b = 32'b11011010000111110010000100011000;
		correct = 32'b11111000001111100101010101100001;
		#400 //1.3790021e+18 * -1.1197727e+16 = -1.5441689e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000100111111111101111000101;
		b = 32'b10110101010111111011001101100011;
		correct = 32'b00000110100010111100110001101100;
		#400 //-6.3102354e-29 * -8.3335016e-07 = 5.258636e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111111111110001100110110001;
		b = 32'b00111111001010000110000000101001;
		correct = 32'b00010111101001111100100010101111;
		#400 //1.6485474e-24 * 0.6577173 = 1.0842782e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010100000011101101111101001;
		b = 32'b00101011101111001110110010010000;
		correct = 32'b10100110101111111010101011111110;
		#400 //-0.0009907457 * 1.3423863e-12 = -1.3299635e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100011010101111101001100101;
		b = 32'b10111011110100010110101100010000;
		correct = 32'b11111000110000000011100010110010;
		#400 //4.8803043e+36 * -0.0063909367 = -3.1189716e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010101001110001010011010111;
		b = 32'b00110110100001001010100110111111;
		correct = 32'b11010001101011010010101100010001;
		#400 //-2.3514617e+16 * 3.9536676e-06 = -92968985000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111000101001011100110000001;
		b = 32'b11101110000000101001111011101100;
		correct = 32'b01111101100101111100010100001110;
		#400 //-2495185200.0 * -1.0106294e+28 = 2.5217074e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100101001011010000000010111;
		b = 32'b00110110001111010010010011001001;
		correct = 32'b00010011011101001011110111111011;
		#400 //1.0960166e-21 * 2.8184606e-06 = 3.0890797e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001001111001100100000100010;
		b = 32'b11110100110100000100011010011000;
		correct = 32'b11010110100110011001011010101010;
		#400 //6.396175e-19 * -1.3201044e+32 = -84436190000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011000101110100111011110001;
		b = 32'b11110000000110110011001011000001;
		correct = 32'b01001011101101110111010110010111;
		#400 //-1.2515935e-22 * -1.9212614e+29 = 24046382.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111001011111001010010001000;
		b = 32'b10001001001010010000011011100000;
		correct = 32'b10110000111001111101101110001010;
		#400 //8.2915405e+23 * -2.0345868e-33 = -1.6869859e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011010100000100101111101;
		b = 32'b01001111111000101000110001010100;
		correct = 32'b00110000110011110001110010101010;
		#400 //1.982371e-19 * 7601694700.0 = 1.5069379e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011100110010100011010010100;
		b = 32'b01100110111111111010110000100000;
		correct = 32'b00111011000110010001010001011100;
		#400 //3.8692225e-27 * 6.036893e+23 = 0.0023358082
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110101001101101011111011010;
		b = 32'b10111001111110010110101101011110;
		correct = 32'b10110001001000101000110111101101;
		#400 //4.972314e-06 * -0.00047572976 = -2.3654778e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010010101100111101100000100;
		b = 32'b01000000101101101110001000111011;
		correct = 32'b11100011100110010011100011111111;
		#400 //-9.8911686e+20 * 5.715116 = -5.6529177e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100100010001000101010101011;
		b = 32'b10111100000111100000101001011011;
		correct = 32'b11100001001010001001011000110111;
		#400 //2.0149994e+22 * -0.009646024 = -1.9436732e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001001100000101011110000001;
		b = 32'b01101101010100101101101001110100;
		correct = 32'b10101111000100010011111001000010;
		#400 //-3.2388876e-38 * 4.0784966e+27 = -1.3209792e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110100010000001010010110111;
		b = 32'b01110110001101010101111110011101;
		correct = 32'b01111101010000001101001011110001;
		#400 //17418.357 * 9.1967285e+32 = 1.601919e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110011100011011010111110;
		b = 32'b00001110101110001101001111101011;
		correct = 32'b00000110000101001110001000001101;
		#400 //6.1456512e-06 * 4.556357e-30 = 2.8001782e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010101000001111000101011011;
		b = 32'b01000011010001101111101011011011;
		correct = 32'b11101110011110100011000011000100;
		#400 //-9.728395e+25 * 198.9799 = -1.9357552e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100000010101101010000010101;
		b = 32'b10000010100011001110010001000110;
		correct = 32'b10100111000110001100111110001101;
		#400 //1.0243731e+22 * -2.0702174e-37 = -2.120675e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010011111101111001100000011;
		b = 32'b10101000101010110110011010111111;
		correct = 32'b10101011101010101011001010100110;
		#400 //63.737316 * -1.9029373e-14 = -1.2128811e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110010100000010001110101001;
		b = 32'b00011001000011111100001110101101;
		correct = 32'b11010111111010011100011000000110;
		#400 //-6.9166145e+37 * 7.432443e-24 = -514073430000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111100111001100110100110101;
		b = 32'b00100010110110000001101001111011;
		correct = 32'b10010011000001000101110101011101;
		#400 //-2.8522043e-10 * 5.8574955e-18 = -1.6706774e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111010011110100000101010000;
		b = 32'b00100001010001000111000111001100;
		correct = 32'b01001001000111110000101000100010;
		#400 //9.787347e+23 * 6.655799e-19 = 651426.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011011101001100100011101000;
		b = 32'b01011110101110000100000010101100;
		correct = 32'b00101010101100000010111000111101;
		#400 //4.7143836e-32 * 6.6384004e+18 = 3.1295965e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010100110101000101000001;
		b = 32'b01111110001010010111000100110010;
		correct = 32'b11110101000010111101111000010100;
		#400 //-3.1488746e-06 * 5.630682e+37 = -1.7730311e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110010010000100000011110;
		b = 32'b00000110010110011010110011010000;
		correct = 32'b11000010101010101110111110010110;
		#400 //-2.0876326e+36 * 4.0940126e-35 = -85.46794
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110111111101110100110101100;
		b = 32'b00110011110111110001011100111011;
		correct = 32'b10010011010111100010010010101111;
		#400 //-2.698994e-20 * 1.0388472e-07 = -2.8038426e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000111101000110001011001;
		b = 32'b10101000111110111101110010001111;
		correct = 32'b10000011100110111111110000110100;
		#400 //3.2787006e-23 * -2.796225e-14 = -9.167984e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010101101111010111111000110;
		b = 32'b01001110111010000000011010011000;
		correct = 32'b01001010001001100111110000000111;
		#400 //0.0014014177 * 1946373100.0 = 2727681.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001010011011010000111001011;
		b = 32'b00011100100011001001010100001000;
		correct = 32'b01000110011000011101100001100001;
		#400 //1.5537115e+25 * 9.302947e-22 = 14454.095
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100100010011111101100001011;
		b = 32'b10000101111010001011111110001001;
		correct = 32'b00001010111110101110010101111100;
		#400 //-1103.8451 * -2.1887534e-35 = 2.4160447e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001111001110110000011001011;
		b = 32'b01100101100001011010110111110001;
		correct = 32'b10101111111100011010010011111111;
		#400 //-5.570225e-33 * 7.891042e+22 = -4.3954881e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100001100011001010110001010;
		b = 32'b00001101000111101001110100010011;
		correct = 32'b00001001110111000000111010000010;
		#400 //0.010838876 * 4.887658e-31 = 5.2976717e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100000000010111010101011;
		b = 32'b01110101000101001001101100110001;
		correct = 32'b01111010000101001101000101011111;
		#400 //1025.4584 * 1.8838076e+32 = 1.9317662e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111010111111010010111101101;
		b = 32'b10101111001101110111110100010011;
		correct = 32'b11100111001000000100110011100001;
		#400 //4.5361233e+33 * -1.6688188e-10 = -7.569968e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010011101111111100101110011;
		b = 32'b00100001011011100010111010110010;
		correct = 32'b00100100011001101011011100100100;
		#400 //61.993603 * 8.0699337e-19 = 5.0028426e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101100000110000110000001010;
		b = 32'b00110100000000110010100011111000;
		correct = 32'b00110010000001100100100001000100;
		#400 //0.06398781 * 1.221523e-07 = 7.816258e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001011001101100000011001;
		b = 32'b00101011100101110010010100111110;
		correct = 32'b00001100010011000001100100111000;
		#400 //1.4640467e-19 * 1.0739532e-12 = 1.5723177e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110100000110110011011110001;
		b = 32'b01111111111010101101110110011001;
		correct = 32'b01111111111010101101110110011001;
		#400 //4.73426e+18 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111010101011000010100110;
		b = 32'b00010010101000101110110111110001;
		correct = 32'b00010110000101010101110111101100;
		#400 //117.34502 * 1.0282294e-27 = 1.2065761e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100101100010010010100011;
		b = 32'b11001010100010111100101111000111;
		correct = 32'b00010111101000111111101011010001;
		#400 //-2.313321e-31 * -4580835.5 = 1.0596943e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001100110001010011001001011;
		b = 32'b11001101011011110110101010010110;
		correct = 32'b00110111100011101100001011001110;
		#400 //-6.779003e-14 * -251046240.0 = 1.7018432e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100011010101111001101001000;
		b = 32'b11010010111000011110000011101010;
		correct = 32'b10011111110011110100111000111110;
		#400 //1.8099914e-31 * -485070540000.0 = -8.779735e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100110000001100011110111101;
		b = 32'b00010111010100001000010010111001;
		correct = 32'b11010100100111010000011000111100;
		#400 //-8.0077774e+36 * 6.7375944e-25 = -5395315700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011000110000000010001110010;
		b = 32'b10100110000100111011010000001100;
		correct = 32'b01011001101011110110101011101111;
		#400 //-1.2044056e+31 * -5.124488e-16 = 6171962000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100101010111011101001001010;
		b = 32'b10111011111001110100100100110001;
		correct = 32'b10110001000110110010011000110010;
		#400 //3.1986775e-07 * -0.0070582856 = -2.257718e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001011000001100000100011;
		b = 32'b11110111101100101011110110000100;
		correct = 32'b11110000011100000101000001011110;
		#400 //4.1030475e-05 * -7.250568e+33 = -2.9749424e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101110111101011011001011110;
		b = 32'b11010110100010100010000100010011;
		correct = 32'b00100100111100000101011000101001;
		#400 //-1.372571e-30 * -75937330000000.0 = 1.0422937e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111011010100111111011001;
		b = 32'b10100001010110111110001110111111;
		correct = 32'b10101011110010111101011001101101;
		#400 //1944059.1 * -7.4501506e-19 = -1.4483533e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000010001010000100011001011;
		b = 32'b01100001001100011101111010001110;
		correct = 32'b11010010000010001110011001011111;
		#400 //-7.168068e-10 * 2.050694e+20 = -146995130000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101011000101011001010111;
		b = 32'b10001010011001000011111110001011;
		correct = 32'b10001000100110011010011110101100;
		#400 //0.084149055 * -1.0989752e-32 = -9.247772e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111011101101110000101111110;
		b = 32'b11111111110100111110101110101101;
		correct = 32'b11111111110100111110101110101101;
		#400 //7.6405916e+28 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110101000110011001100100001;
		b = 32'b10001011110101000000111001111101;
		correct = 32'b10110011000001110010111110010100;
		#400 //3.8534445e+23 * -8.168123e-32 = -3.147541e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001001011000010100111011100;
		b = 32'b01000110101011101011010111110011;
		correct = 32'b11001000011010101111110110100001;
		#400 //-10.76022 * 22362.975 = -240630.52
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111111101100101100011011111;
		b = 32'b01001101110001100110001011110010;
		correct = 32'b00010110001111101110011111110011;
		#400 //3.70662e-34 * 416046660.0 = 1.5421268e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100010011101111011100001110;
		b = 32'b10111000001001100100011111101010;
		correct = 32'b00111101000001100110111001010111;
		#400 //-827.8602 * -3.964446e-05 = 0.032820072
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011100001101100001101010100;
		b = 32'b10110000100101111000001101111111;
		correct = 32'b00011100100111111000010011011111;
		#400 //-9.575487e-13 * -1.1024069e-09 = 1.0556084e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011011100100000110011011110;
		b = 32'b01110010100101100001100010000011;
		correct = 32'b11100110100011011110101010110111;
		#400 //-5.635672e-08 * 5.945905e+30 = -3.350917e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001010000101011100010111110;
		b = 32'b10011110000011111110000101011001;
		correct = 32'b00101111110110101110000100110100;
		#400 //-52270195000.0 * -7.616958e-21 = 3.9813985e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011111001101001011001110111;
		b = 32'b01010111111011110110011111100011;
		correct = 32'b11100100010101111010010000001100;
		#400 //-30223598.0 * 526458940000000.0 = -1.5911483e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100010001110111011010110010;
		b = 32'b10101010100011111111000010011010;
		correct = 32'b01100111011000000100110110001001;
		#400 //-4.142698e+36 * -2.5568854e-13 = 1.05924036e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100001001111110010101101101;
		b = 32'b01011101100111011000001111010001;
		correct = 32'b01001010010011101001110001001111;
		#400 //2.3859484e-12 * 1.4187682e+18 = 3385107.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110000000101101110011010010;
		b = 32'b00001111011001010001011011010101;
		correct = 32'b10010101111010100011011001100111;
		#400 //-8375.205 * 1.1294969e-29 = -9.459768e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000111010011011110001110010;
		b = 32'b10011000101100101101011000100111;
		correct = 32'b10011010001000110100100010001110;
		#400 //7.3042536 * -4.622816e-24 = -3.376622e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010000100111010011011100011;
		b = 32'b11010101010001110010000110001110;
		correct = 32'b00011111111001011011010000101010;
		#400 //-7.1091804e-33 * -13684183000000.0 = 9.728333e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000001000100100110101001001;
		b = 32'b01010011110100110001100010000111;
		correct = 32'b01100100100001011101010101000000;
		#400 //10891896000.0 * 1813299200000.0 = 1.9750266e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100010111001111000111000010;
		b = 32'b00000100101001100010001111001000;
		correct = 32'b10111001100011110110001110100101;
		#400 //-7.0020065e+31 * 3.9059272e-36 = -0.00027349326
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011101010001100001000101;
		b = 32'b10110110000000110111000000110101;
		correct = 32'b11011100111110111010110110110001;
		#400 //2.8935687e+23 * -1.9585834e-06 = -5.6672956e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111011110000011000110100;
		b = 32'b11010010010110100011101110010100;
		correct = 32'b11100000110010111100001011101001;
		#400 //501270140.0 * -234325600000.0 = -1.1746043e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101011101000100011011111010;
		b = 32'b00101010110001110001101111011100;
		correct = 32'b10010000101111011111110111000010;
		#400 //-2.1187674e-16 * 3.5368832e-13 = -7.493833e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011111111100110001111010;
		b = 32'b01100010100111111011010110100001;
		correct = 32'b11000010100111111001010101111100;
		#400 //-5.416749e-20 * 1.47306e+21 = -79.79196
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100111110110110110111101010;
		b = 32'b11000101000000100010100110110101;
		correct = 32'b00010010011111111010110110001110;
		#400 //-3.8738825e-31 * -2082.6067 = 8.0677735e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000011101001001100110100101;
		b = 32'b10111111011110110110000001011000;
		correct = 32'b01110000011100000010111010110010;
		#400 //-3.0280035e+29 * -0.98193884 = 2.9733141e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001111101110001111001101;
		b = 32'b01100011011011100011101010001101;
		correct = 32'b11010101001100011010001101110001;
		#400 //-2.7778129e-09 * 4.394544e+21 = -12207221000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000101000111100011000101;
		b = 32'b10110011001100000101111100010110;
		correct = 32'b10010100110011001001010001011010;
		#400 //5.030419e-19 * -4.1064673e-08 = -2.065725e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111010011011100001101110001;
		b = 32'b10111111001011001100101000000101;
		correct = 32'b00010111000010101110000110110000;
		#400 //-6.6485754e-25 * -0.6749576 = 4.4875063e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010101010111000100001110;
		b = 32'b11001111100111010011011011100111;
		correct = 32'b01001110100000110001010000011100;
		#400 //-0.20843908 * -5275242000.0 = 1099566600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001111001001001100101100001;
		b = 32'b11101101001111001111011110011010;
		correct = 32'b01000111101010001011110110111101;
		#400 //-2.3636597e-23 * -3.655157e+27 = 86395.48
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000111010010001100011111111;
		b = 32'b10101100001000101100010011100001;
		correct = 32'b10111101100101000011010100010101;
		#400 //31285836000.0 * -2.3130874e-12 = -0.07236687
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000011101011000010110011010;
		b = 32'b00010110111110101110000111000100;
		correct = 32'b11000111111100001001110011111111;
		#400 //-3.0394137e+29 * 4.0532156e-25 = -123193.99
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010100110100011001100010;
		b = 32'b00010001010110011100010100100001;
		correct = 32'b00101011001100111011100101011001;
		#400 //3716788000000000.0 * 1.7179027e-28 = 6.3850796e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111110011111101101010101000;
		b = 32'b01010011110110000110011101010011;
		correct = 32'b10111100001011111011010001100010;
		#400 //-5.769111e-15 * 1858892900000.0 = -0.010724159
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100010001001001011010001101;
		b = 32'b11101101101011011001011010001111;
		correct = 32'b11000010100001010100110101011011;
		#400 //9.925162e-27 * -6.715365e+27 = -66.651085
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101000100010011001011101001;
		b = 32'b01111110010101100101111101100110;
		correct = 32'b01000011111100110010110101010101;
		#400 //6.827218e-36 * 7.123753e+37 = 486.35416
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001100111111101001010010001;
		b = 32'b00110010100010010110001010000000;
		correct = 32'b10010100101010111000101001011100;
		#400 //-1.0829996e-18 * 1.5993692e-08 = -1.732116e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001001010011011111001001001;
		b = 32'b00111110110000001111000000101000;
		correct = 32'b11001000011111111101101111100111;
		#400 //-695268.56 * 0.37683225 = -261999.61
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010010101001101000010110001;
		b = 32'b00111010111000110110010100101101;
		correct = 32'b11001101101111010000100100101001;
		#400 //-228508580000.0 * 0.0017348878 = -396436770.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100010001010110100010000110;
		b = 32'b01101111101000110010011111100101;
		correct = 32'b01001100011110111010000010100010;
		#400 //6.5316926e-22 * 1.0098857e+29 = 65962630.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010100000111010100100000;
		b = 32'b00010011101101101110100101000000;
		correct = 32'b00010010100101001111000100110011;
		#400 //0.2035718 * 4.617326e-27 = 9.399573e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000100101011000101101011011;
		b = 32'b10110111011110111011110110100111;
		correct = 32'b11001000100100110000111001101100;
		#400 //20071504000.0 * -1.5004923e-05 = -301171.38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000111111100011111100101110;
		b = 32'b11110110111111111000000000001010;
		correct = 32'b01100000011111011100000000011000;
		#400 //-2.8227065e-14 * -2.5910794e+33 = 7.3138564e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010111110010001001001010011;
		b = 32'b11111000100101111001010111100000;
		correct = 32'b01001100000100110111101110100001;
		#400 //-1.57186265e-27 * -2.4596145e+34 = 38661764.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110111010110010000001001100;
		b = 32'b00000001001010000110100000110011;
		correct = 32'b00011000100110101010110011100110;
		#400 //129261970000000.0 * 3.0931486e-38 = 3.998265e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010001100000110001110011;
		b = 32'b10010100000101011111100000100000;
		correct = 32'b10111010111010000000101001100111;
		#400 //2.3381455e+23 * -7.571512e-27 = -0.0017703295
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010101111001101111111000;
		b = 32'b10011110011010100000110111010011;
		correct = 32'b10111000010001010010000000110101;
		#400 //3793038000000000.0 * -1.2390716e-20 = -4.6998455e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000000110010111100101000101;
		b = 32'b00000010111110111001101100110101;
		correct = 32'b00111011100101101101011011110011;
		#400 //1.2451267e+34 * 3.697022e-37 = 0.0046032607
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110101000110111011001010101;
		b = 32'b10110000000010111011111111000101;
		correct = 32'b11101111001100100111011101100110;
		#400 //1.0863929e+38 * -5.0840426e-10 = -5.5232676e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101100100010110001111000111;
		b = 32'b00110100101110110111111000100101;
		correct = 32'b01110010110101001111011100001101;
		#400 //2.4157017e+37 * 3.4923247e-07 = 8.4364145e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101011110110011011101011000;
		b = 32'b11111110001010000000011110111100;
		correct = 32'b11010100001001001110001111101001;
		#400 //5.0732705e-26 * -5.5837616e+37 = -2832793300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011010101011011111001010001;
		b = 32'b01011001011010001110000010001111;
		correct = 32'b11001101010000100110111111110111;
		#400 //-4.976602e-08 * 4096818700000000.0 = -203882350.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101100110000011010000001110;
		b = 32'b01000110101001101000110001111110;
		correct = 32'b00001100110001100000101010010001;
		#400 //1.4313133e-35 * 21318.246 = 3.051309e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011100111011101101110110;
		b = 32'b00110111000001110110111000100101;
		correct = 32'b11001001000000001111000010111001;
		#400 //-65426383000.0 * 8.072272e-06 = -528139.56
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100100001101000111000001;
		b = 32'b00101100001111100001011101010011;
		correct = 32'b00101101010101110001000110111110;
		#400 //4.5256047 * 2.7013572e-12 = 1.2225275e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111010101001011011010000001;
		b = 32'b11001111111101110101100100001111;
		correct = 32'b01011111110011011000011000010110;
		#400 //-3568730400.0 * -8299618000.0 = 2.9619097e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111111000010110111010010110;
		b = 32'b10000010001000111101010100110101;
		correct = 32'b10010010100100000100010100101001;
		#400 //7564242000.0 * -1.2036536e-37 = -9.104727e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000001100010010010111111;
		b = 32'b11100110000000001111110000111010;
		correct = 32'b01111010100001110010110100010100;
		#400 //-2304568500000.0 * -1.5227892e+23 = 3.509372e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011100010110010101010100;
		b = 32'b10011101101011110101111101011111;
		correct = 32'b11000100101001010101111000110011;
		#400 //2.8498987e+23 * -4.6420726e-21 = -1322.9437
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100111010000010111001110010;
		b = 32'b10110101000001111110110111000011;
		correct = 32'b10000010011101101001000001000100;
		#400 //3.5773213e-31 * -5.063741e-07 = -1.8114628e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111110101000101111000011101;
		b = 32'b10100011001010000101001110111100;
		correct = 32'b00000011100010111010001100111010;
		#400 //-8.994119e-20 * -9.12503e-18 = 8.207161e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010100101001100101110011;
		b = 32'b00010010100001110101010101111011;
		correct = 32'b00011111010111101010101001111100;
		#400 //55207372.0 * 8.54077e-28 = 4.715135e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010001001011100111111011001;
		b = 32'b10001111010110000001010101001101;
		correct = 32'b11000010000010111111010100101011;
		#400 //3.284243e+30 * -1.06537246e-29 = -34.98942
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010110100000001000001000001;
		b = 32'b01000001000111101111000000101010;
		correct = 32'b10111100100000010010110100111001;
		#400 //-0.0015873985 * 9.933634 = -0.015768634
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001000001110000001101110010;
		b = 32'b11000001110101000010000101010110;
		correct = 32'b10010011010111111100000011011110;
		#400 //1.0650684e-28 * -26.516277 = -2.8241648e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010000010010110101100011001;
		b = 32'b01010010111011101011011010101100;
		correct = 32'b01101101100000000010001110100000;
		#400 //9669957000000000.0 * 512633470000.0 = 4.9571437e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011100111000101010010000111;
		b = 32'b11101011110001101011101001110011;
		correct = 32'b01011111111100101011011001111000;
		#400 //-7.2796915e-08 * -4.804956e+26 = 3.4978596e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110000110001010100111010;
		b = 32'b00011011011001011011001001000011;
		correct = 32'b00101001101011110000100111010101;
		#400 //409118530.0 * 1.9000035e-22 = 7.773267e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110110100001110101110100000;
		b = 32'b01100110011101010110000001110000;
		correct = 32'b01000101110010000100000000110100;
		#400 //2.2120309e-20 * 2.8968969e+23 = 6408.0254
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101010110001001100010110101;
		b = 32'b10000001001100011101000111000111;
		correct = 32'b00010111000101100111001100010010;
		#400 //-14884399000000.0 * -3.2660274e-38 = 4.8612853e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110101110000011001110010101;
		b = 32'b11010111110001100000001000110010;
		correct = 32'b01000111000011100111100101111010;
		#400 //-8.376514e-11 * -435425460000000.0 = 36473.477
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000001010010011101000000001;
		b = 32'b01011101010111110001101100110101;
		correct = 32'b11000110000100110111101110000011;
		#400 //-9.393962e-15 * 1.00478135e+18 = -9438.878
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010000101010111110101110110;
		b = 32'b00010111011110011010011001111011;
		correct = 32'b01010010000100011100100000111111;
		#400 //1.9404922e+35 * 8.0666367e-25 = 156532460000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000111010101000000011111100;
		b = 32'b01100010110101100010000100100111;
		correct = 32'b01110100010001000010011000110001;
		#400 //31474573000.0 * 1.974996e+21 = 6.216216e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111111000100100110100111111;
		b = 32'b01000111001000011001011110010100;
		correct = 32'b11101111100011101101100010010011;
		#400 //-2.1373595e+24 * 41367.58 = -8.841739e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110111110111111111111110011;
		b = 32'b00011110001011100001101000011101;
		correct = 32'b10011101101010110110000110101100;
		#400 //-0.4921871 * 9.216883e-21 = -4.5364313e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001100001110101011111111000;
		b = 32'b01001000001000000001011110111110;
		correct = 32'b01101010001010010100011100010001;
		#400 //3.1208116e+20 * 163934.97 = 5.1161016e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001010101001001011010100100;
		b = 32'b00001111110011101101011000011010;
		correct = 32'b00010001101010111100001100000011;
		#400 //13.2867775 * 2.0395637e-29 = 2.7099228e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111000001101011101000101110;
		b = 32'b01111101000000100011011101111001;
		correct = 32'b01000100100010010000111101111010;
		#400 //1.0135753e-34 * 1.081798e+37 = 1096.4836
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000001111101011101011010;
		b = 32'b01000010010101001011001111100110;
		correct = 32'b11010000111000011011101110011000;
		#400 //-569759360.0 * 53.175682 = -30297342000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000110111001000001001100000;
		b = 32'b01010001001101011101111011011101;
		correct = 32'b01000010100111001010100000100101;
		#400 //1.6044162e-09 * 48820507000.0 = 78.32841
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010110110100111010111010110;
		b = 32'b11000010110101010101111000011000;
		correct = 32'b11111110001101100001010001010111;
		#400 //5.6715536e+35 * -106.68378 = -6.0506276e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101100110001111101011110010;
		b = 32'b10110110101110001000100101101001;
		correct = 32'b11001100110111001000110011110110;
		#400 //21025446000000.0 * -5.499624e-06 = -115632050.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101101111011110101000100000;
		b = 32'b11011000100001011100101110101010;
		correct = 32'b10101110110001101000001101110011;
		#400 //7.6705876e-26 * -1176878200000000.0 = -9.0273476e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001101000110100111011100;
		b = 32'b00011111100010000110001001001100;
		correct = 32'b00111010010000000011101100000110;
		#400 //1.2695472e+16 * 5.776086e-20 = 0.0007333014
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001000000100110101111111001;
		b = 32'b00101101001111011100010111110001;
		correct = 32'b00011110110000010101110100011101;
		#400 //1.8978865e-09 * 1.0787358e-11 = 2.047318e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000001011111010101000101110;
		b = 32'b01100100011011011100111010101100;
		correct = 32'b01111101001000110010111001011110;
		#400 //772581800000000.0 * 1.7547082e+22 = 1.3556557e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110110000101001111110001;
		b = 32'b00000111111000001100010100010010;
		correct = 32'b10110001001111011110111111111011;
		#400 //-8.172637e+24 * 3.3819602e-34 = -2.7639533e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111101100101001100110000100;
		b = 32'b11011110000001100010001100010010;
		correct = 32'b11001110001110110010100110100101;
		#400 //3.248709e-10 * -2.4163973e+18 = -785017150.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101111100001101000000100010;
		b = 32'b01100011000000011110001110101000;
		correct = 32'b01111001011101000101111000001111;
		#400 //33097090000000.0 * 2.3960343e+21 = 7.930176e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001110001011100001111110000;
		b = 32'b10101001010011011110010100000100;
		correct = 32'b00011011100111110000111011010011;
		#400 //-5.75573e-09 * -4.5717783e-14 = 2.6313923e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110111110011000101000011000;
		b = 32'b01000100100110010101000010011000;
		correct = 32'b00111100000101010111001000011000;
		#400 //7.4368545e-06 * 1226.5186 = 0.00912144
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001110110111000011111110010;
		b = 32'b11101000111000111101010011111110;
		correct = 32'b11100011010000110110000000110010;
		#400 //0.00041872222 * -8.6072496e+24 = -3.6040467e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101001010111000010100101101;
		b = 32'b01111110000000110100100100111010;
		correct = 32'b01010011101011111110110001101100;
		#400 //3.4638232e-26 * 4.362727e+37 = 1511171600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100000101101001101000100101;
		b = 32'b00101101100011001001111000011010;
		correct = 32'b10101010001001010111001010011101;
		#400 //-0.009192024 * 1.5986368e-11 = -1.4694708e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100111101101000111110110;
		b = 32'b10100011010101101010011110101011;
		correct = 32'b00100101100001010010101110001001;
		#400 //-19.85252 * -1.1636468e-17 = 2.3101323e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111010101010100010101000110;
		b = 32'b01110001011110010101001111111010;
		correct = 32'b01001001010011111011011001010111;
		#400 //6.8911447e-25 * 1.2346126e+30 = 850789.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010111011010011101011011001;
		b = 32'b10101100100010001001000100010100;
		correct = 32'b10010111111111010001101101101000;
		#400 //4.214049e-13 * -3.8814594e-12 = -1.635666e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101100010111010001100100001;
		b = 32'b11111011010010010101100111001100;
		correct = 32'b11101001010110111010100000100000;
		#400 //1.5874914e-11 * -1.045473e+36 = -1.6596794e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100110110011111111001010111;
		b = 32'b11000111010111101010001111101001;
		correct = 32'b00111100101111011001011000100011;
		#400 //-4.0604456e-07 * -56995.91 = 0.02314288
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111011100101010000010010010;
		b = 32'b00111001101001000111001100100111;
		correct = 32'b11101001100110111101110000000001;
		#400 //-7.508949e+28 * 0.00031366313 = -2.3552805e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000010110110000011100101110;
		b = 32'b11110100100001010111101100011011;
		correct = 32'b01101101011001000110100000011101;
		#400 //-5.2220355e-05 * -8.460356e+31 = 4.418028e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010010101001001110100010;
		b = 32'b00000110101010010001000100101111;
		correct = 32'b00000101100001011100100100001111;
		#400 //0.1978288 * 6.3595984e-35 = 1.2581117e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011101010001000111111101111;
		b = 32'b01000010010100100110101001100000;
		correct = 32'b00110110100010101000110000011101;
		#400 //7.849291e-08 * 52.60388 = 4.129032e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001000011011000111011011;
		b = 32'b10101000011110000000101110010001;
		correct = 32'b10010100000111001010101110011010;
		#400 //5.7445514e-13 * -1.37692736e-14 = -7.90983e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101111000111100101010101110;
		b = 32'b10011001100010100001111100100111;
		correct = 32'b10010111111101011100110111110100;
		#400 //0.111226425 * -1.4281448e-23 = -1.5884744e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010010111000101011001111111;
		b = 32'b00101110110000010011101011000000;
		correct = 32'b10001001101001100100111111000111;
		#400 //-4.5564805e-23 * 8.78706e-11 = -4.003807e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011010110001101110111000011;
		b = 32'b10000101100000011000111000110110;
		correct = 32'b10101001010110111000000001110000;
		#400 //4.0004763e+21 * -1.2183342e-35 = -4.873917e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100111101111000001100100000;
		b = 32'b10010001011011000101101111010101;
		correct = 32'b10000110111001001000010110101011;
		#400 //4.610274e-07 * -1.8645415e-28 = -8.5960475e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010010011100001001110001110;
		b = 32'b11110000110010100110101110000010;
		correct = 32'b01100011101000101111000111111001;
		#400 //-1.1995224e-08 * -5.0116753e+29 = 6.011617e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100110010101000011000100100;
		b = 32'b10011011110101111011011110101010;
		correct = 32'b00010001001010101010011111110101;
		#400 //-3.7723032e-07 * -3.5687456e-22 = 1.3462391e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111100001100100110101110100;
		b = 32'b11000101110001001111001111100000;
		correct = 32'b10110101110011101010011001111100;
		#400 //2.4429492e-10 * -6302.4844 = -1.5396649e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011101000100101001001010;
		b = 32'b11001100110111010000110100010011;
		correct = 32'b10111101110100101111000010011100;
		#400 //8.8872254e-10 * -115894424.0 = -0.10299799
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101111000111001101100001010;
		b = 32'b00010010010001000101111100111011;
		correct = 32'b11001000101011101001011101011111;
		#400 //-5.770488e+32 * 6.1964076e-28 = -357562.97
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111110110100100011110101011;
		b = 32'b11110000111110001101101101001111;
		correct = 32'b01011001010101000011000001101100;
		#400 //-6.0584857e-15 * -6.161393e+29 = 3732871000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011100100011111101000100;
		b = 32'b01000110011000011111110111010001;
		correct = 32'b11101000010101011101100111001001;
		#400 //-2.7929193e+20 * 14463.454 = -4.039526e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100000010011011001111110;
		b = 32'b00000011001000110001011001010010;
		correct = 32'b00001111001001001010000111101101;
		#400 //16936188.0 * 4.7927017e-37 = 8.11701e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001110010010101011010010111;
		b = 32'b00101011100111011101100111100111;
		correct = 32'b01011101111110000100101011110101;
		#400 //1.9939574e+30 * 1.1216001e-12 = 2.2364227e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010010100100111001111100010;
		b = 32'b11001010110000000110000101010111;
		correct = 32'b11111101100111100010011011101111;
		#400 //4.1684445e+30 * -6303915.5 = -2.6277522e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111001011000111111000111;
		b = 32'b01010110001000111001001010001110;
		correct = 32'b00011100100100101010110111110111;
		#400 //2.1587872e-35 * 44962460000000.0 = 9.706438e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101010011000101001110000;
		b = 32'b11000101101001100110011110011111;
		correct = 32'b10111110110111000110100011001001;
		#400 //8.084334e-05 * -5324.9526 = -0.43048695
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110000100001000010111010101;
		b = 32'b11000001110001100111001000101001;
		correct = 32'b00010000011000000000111111101011;
		#400 //-1.7813808e-30 * -24.805742 = 4.4188473e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010101000100011000000011010;
		b = 32'b01100011001010101110100000000100;
		correct = 32'b01111110010110001000110111011111;
		#400 //2.2825917e+16 * 3.152665e+21 = 7.196247e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100010101101100100100101000;
		b = 32'b11110100101101011010100010010001;
		correct = 32'b11101001100110000110100110100111;
		#400 //2.0003483e-07 * -1.1513973e+32 = -2.3031957e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111111100011110110101100110;
		b = 32'b00000010011110110000100001110010;
		correct = 32'b10101010111011010011101110111110;
		#400 //-2.2849391e+24 * 1.8442991e-37 = -4.2141112e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110001011000110100001101010;
		b = 32'b11011001101010110111011011001000;
		correct = 32'b11101000011001101111001101111011;
		#400 //723131000.0 * -6032853000000000.0 = -4.3625429e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101001000010000010011101110;
		b = 32'b11100001101111010100001110000010;
		correct = 32'b01101111011011100001011000110100;
		#400 //-168840930.0 * -4.364124e+20 = 7.3684274e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001110110100010100101101010;
		b = 32'b10101000001011111101011111011100;
		correct = 32'b10001010100101011101101001000100;
		#400 //1.4783217e-18 * -9.7612585e-15 = -1.443028e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110000011011111011010110110;
		b = 32'b10110101001000000101100101100011;
		correct = 32'b01101011101100011101011110000111;
		#400 //-7.1984155e+32 * -5.973472e-07 = 4.2999534e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000011110110010011001011100;
		b = 32'b00010101110111001000000111100101;
		correct = 32'b00111110110110000101010001100110;
		#400 //4.7440864e+24 * 8.906223e-26 = 0.4225189
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101110100101011100110111101;
		b = 32'b10100000000010111010100001100011;
		correct = 32'b00001110011001011110101011101010;
		#400 //-2.395672e-11 * -1.1829472e-19 = 2.8339536e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110001010001111000100000101;
		b = 32'b10110111011100011011010101001111;
		correct = 32'b01110110000111111000001010001100;
		#400 //-5.6140437e+37 * -1.4406934e-05 = 8.088115e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011001000100110010000011;
		b = 32'b10001111101100000101011001000100;
		correct = 32'b01000111100111010100000110001000;
		#400 //-4.6304513e+33 * -1.7388168e-29 = 80515.06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101101010010111110011000;
		b = 32'b00000100011010010010010011110101;
		correct = 32'b10001110101001010000001001111001;
		#400 //-1484275.0 * 2.7405988e-36 = -4.067802e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010100001110001001000000000;
		b = 32'b00011001011101110100100111111010;
		correct = 32'b00010100100000100111100101100110;
		#400 //0.0010305047 * 1.278454e-23 = 1.3174529e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111000100101110100000001010;
		b = 32'b10000010100000000010111111101101;
		correct = 32'b11000010000100110001111100001011;
		#400 //1.952721e+38 * -1.8835418e-37 = -36.780315
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101100110011010101111101110;
		b = 32'b10101010011000011110000001001110;
		correct = 32'b10100000100001111001011011000001;
		#400 //1.1449426e-06 * -2.0061836e-13 = -2.296965e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011110101100001110101000001;
		b = 32'b11000000111110001001011101111011;
		correct = 32'b11100101010011111110101100001001;
		#400 //7.8994224e+21 * -7.7684913 = -6.1366593e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100111011011000001111000110;
		b = 32'b00111101111110111000111100101110;
		correct = 32'b11000011011010010110010100001010;
		#400 //-1900.1179 * 0.12283169 = -233.39468
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010111011101011000001011011;
		b = 32'b11001000011001100110111010001000;
		correct = 32'b10100011110101101101100110000000;
		#400 //9.871941e-23 * -235962.12 = -2.3294041e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000111110100011001111011011;
		b = 32'b01000000001000110111001000010001;
		correct = 32'b00100001100111111011111010000000;
		#400 //4.2385962e-19 * 2.553837 = 1.0824684e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100000100000001111011010100;
		b = 32'b01000110100010001101011010110100;
		correct = 32'b01101011000110100001001001111111;
		#400 //1.063421e+22 * 17515.352 = 1.8626192e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011011010001100001011110111;
		b = 32'b10111111001111100000111000001101;
		correct = 32'b11011011001011001100110101111010;
		#400 //6.551656e+16 * -0.7424019 = -4.863962e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110011001101010111001110;
		b = 32'b10110100000000101001001000000001;
		correct = 32'b00110000010100001111001011001011;
		#400 //-0.0062510734 * -1.216031e-07 = 7.601499e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000001100010110100100011111;
		b = 32'b01101100000100110010110111000101;
		correct = 32'b10111100110010111111111000101010;
		#400 //-3.4988077e-29 * 7.1171294e+26 = -0.024901468
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110100100101011010101011;
		b = 32'b00000111111011100101100100011011;
		correct = 32'b11000100010000111101010111001001;
		#400 //-2.1842804e+36 * 3.5862631e-34 = -783.3404
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101011010110100011011001111;
		b = 32'b11111010010111110010010111101110;
		correct = 32'b01100000010011010001010110001010;
		#400 //-2.0406992e-16 * -2.8966288e+35 = 5.911148e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101011001100100001011101100;
		b = 32'b11000000001001100011101100010001;
		correct = 32'b00001110000101011000010010000110;
		#400 //-7.0954776e-31 * -2.5973551 = 1.8429476e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111101101101111101110100101;
		b = 32'b00011111110110101001110001111100;
		correct = 32'b01010000000111000100001000100100;
		#400 //1.1326098e+29 * 9.258547e-20 = 10486321000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000010011111011101010001000;
		b = 32'b10011001000010100110001111010001;
		correct = 32'b10101001111000001001011100011000;
		#400 //13940433000.0 * -7.1545905e-24 = -9.973809e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011011001111100001001111110;
		b = 32'b01101101100001010101011110010110;
		correct = 32'b11001001011100010110111010101101;
		#400 //-1.9170716e-22 * 5.158424e+27 = -988906.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100100101001101110011001;
		b = 32'b10111001100101101000110010001001;
		correct = 32'b10111111101011000110111101001110;
		#400 //4691.4497 * -0.00028714936 = -1.3471467
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000010110111011100111100111;
		b = 32'b01010101101001110101001100101110;
		correct = 32'b00100110100011111001110110101010;
		#400 //4.333335e-29 * 22996962000000.0 = 9.965353e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000001110010111110100011011;
		b = 32'b11001111011001001010111111111101;
		correct = 32'b00101000001001011011001011110000;
		#400 //-2.3973852e-24 * -3836738800.0 = 9.198141e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001100001101100000101000000;
		b = 32'b11111000100000000100000000001100;
		correct = 32'b11110010100001110000010010101101;
		#400 //0.00025702454 * -2.0809782e+34 = -5.3486245e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011010111000001101111000111;
		b = 32'b00100000000010001101111111100000;
		correct = 32'b10110011111010110101111001111101;
		#400 //-945358800000.0 * 1.1593722e-19 = -1.09602276e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000011011101100000101111010;
		b = 32'b10110011001100100000110111001001;
		correct = 32'b01011100001001100000111101100010;
		#400 //-4.509969e+24 * -4.1456392e-08 = 1.8696704e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000110111100000000001101;
		b = 32'b01011000111010100101000000011010;
		correct = 32'b00011000110010110011000111010110;
		#400 //2.548453e-39 * 2061038000000000.0 = 5.252459e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101011011100101100001000010;
		b = 32'b10101011101101111001101101011101;
		correct = 32'b01000001101010101111000110111101;
		#400 //-16378927000000.0 * -1.3046054e-12 = 21.368036
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010101100010101111011001001;
		b = 32'b11000111111101101001010001111110;
		correct = 32'b01010011001010101101011111110111;
		#400 //-5812068.5 * -126248.984 = 733767700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010000010111010100100110000;
		b = 32'b00001101001011100100000010110000;
		correct = 32'b00110111101111100010000010010010;
		#400 //4.2209914e+25 * 5.3695754e-31 = 2.2664932e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101011111111011011110100111;
		b = 32'b10100100110011110101010111110111;
		correct = 32'b01100010110011110001101101011111;
		#400 //-2.124417e+37 * -8.991757e-17 = 1.9102242e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000111001101000100010110001;
		b = 32'b00000111101011010100101111101011;
		correct = 32'b00000001000111000000111010111101;
		#400 //0.000109927154 * 2.6074767e-34 = 2.866325e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101001110001110100101001101;
		b = 32'b11101011001001000001111001000010;
		correct = 32'b01001000111011010001011010100001;
		#400 //-2.447281e-21 * -1.9840672e+26 = 485557.03
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011011111101101111110110000;
		b = 32'b00110110110011100110111010101101;
		correct = 32'b11001010110011011000011000110000;
		#400 //-1094674550000.0 * 6.1521628e-06 = -6734616.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000110111100101110110101011;
		b = 32'b00000100100101010001001010000110;
		correct = 32'b00110110000000010111110010011100;
		#400 //5.5055128e+29 * 3.5046743e-36 = 1.929503e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100011000100000111111110010;
		b = 32'b00110100100010100111100010100101;
		correct = 32'b11000001011101001000111001000011;
		#400 //-59260870.0 * 2.5792284e-07 = -15.284732
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000000001111010111100010110;
		b = 32'b10110110000111010101010001111110;
		correct = 32'b10010110101001101100011001010001;
		#400 //1.1492876e-19 * -2.3444004e-06 = -2.6943902e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101001011110101101011011100;
		b = 32'b01111000101100010101101101100011;
		correct = 32'b10111110011100101111100011010110;
		#400 //-8.245149e-36 * 2.8777815e+34 = -0.23727736
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010001011001111110010110;
		b = 32'b01010100001101100111101001011110;
		correct = 32'b10011111000011001101110111101011;
		#400 //-9.51522e-33 * 3134948000000.0 = -2.982972e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001100100011111101011000;
		b = 32'b11011100001110010100010011000101;
		correct = 32'b11001000000000001111111110101001;
		#400 //6.332621e-13 * -2.0859393e+17 = -132094.64
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110000000110011101001000011;
		b = 32'b01110011010011000110011101000100;
		correct = 32'b01111001110100011000111010111001;
		#400 //8398.565 * 1.6194504e+31 = 1.360106e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110001001101100110011001000;
		b = 32'b11101011101010101000101001111111;
		correct = 32'b11111010010111100011110001110100;
		#400 //699609600.0 * -4.1234284e+26 = -2.88479e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100001111000010101110100;
		b = 32'b00000111101110100101100011101110;
		correct = 32'b10011000110001010100110000010100;
		#400 //-18189361000.0 * 2.8038438e-34 = -5.1000126e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110110001101101001100100101;
		b = 32'b10111100110101010010100100111101;
		correct = 32'b00000100001001011000110110110101;
		#400 //-7.478957e-35 * -0.02602064 = 1.9460725e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110101001001010100011101;
		b = 32'b11011111110100010010101100011000;
		correct = 32'b11101110001011011011000110000110;
		#400 //445817760.0 * -3.0144334e+19 = -1.343888e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110000111011001001111010110;
		b = 32'b11001000000000001000011110100110;
		correct = 32'b00011110100111100011101011010100;
		#400 //-1.2729008e-25 * -131614.6 = 1.6753231e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101111101000101000101000001;
		b = 32'b11111011100001000101101011011011;
		correct = 32'b01011001111111001010000100110110;
		#400 //-6.4670277e-21 * -1.3744519e+36 = 8888618400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110010111010110010000110;
		b = 32'b10010011111100111010110001010011;
		correct = 32'b00100000010000011101110111011101;
		#400 //-26695948.0 * -6.151175e-27 = 1.6421144e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010101101011000000111000;
		b = 32'b00011100110111101011111011011110;
		correct = 32'b00110011101110101100110011100010;
		#400 //59013086000000.0 * 1.4740066e-21 = 8.698568e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000100101100010101010000100;
		b = 32'b01001100111010000111101101111100;
		correct = 32'b01011110000010000101111011110111;
		#400 //20154950000.0 * 121887710.0 = 2.4566408e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011111001011001000111000;
		b = 32'b11100010000001011011111111010000;
		correct = 32'b11110101000001000000010111101101;
		#400 //271330440000.0 * -6.168096e+20 = -1.6735922e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001110010001110000010000111;
		b = 32'b11000001010101111000101100010111;
		correct = 32'b00001011101010010010000110110101;
		#400 //-4.8359393e-33 * -13.4714575 = 6.514715e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001011010011011111010010100;
		b = 32'b10011010011011001010101001010101;
		correct = 32'b01001100010110000001011100110111;
		#400 //-1.1574464e+30 * -4.894125e-23 = 56646876.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010000101110011110011010111;
		b = 32'b01010001001111111000001110101100;
		correct = 32'b01100011111000100100100001011100;
		#400 //162390200000.0 * 51409240000.0 = 8.3483564e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000100000101001011111011110;
		b = 32'b00000110000001111111011110000100;
		correct = 32'b00110111000010101011100010110100;
		#400 //3.2333318e+29 * 2.5572524e-35 = 8.2684455e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110101111001010101100001;
		b = 32'b01011100111000110110010000011100;
		correct = 32'b01111000001111110111110111000011;
		#400 //3.0340682e+16 * 5.1203913e+17 = 1.5535616e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101110011101101110011011001;
		b = 32'b01100000001011110011101101010010;
		correct = 32'b11111110100011011001100011100111;
		#400 //-1.8632534e+18 * 5.0507105e+19 = -9.410753e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000000001110001011000000110;
		b = 32'b11110101110011010111110111011010;
		correct = 32'b01111110010110001101111000010111;
		#400 //-138328.1 * -5.2098312e+32 = 7.20666e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011010111010110001111110100;
		b = 32'b10000111011100110000111011000100;
		correct = 32'b01000011010100100011001010100110;
		#400 //-1.1495249e+36 * -1.8285627e-34 = 210.19785
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111111101011000111001011010;
		b = 32'b00011001011111100001100100100011;
		correct = 32'b10001001111100111011101101011010;
		#400 //-4.4666387e-10 * 1.31365685e-23 = -5.8676307e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111010011111001110110001010;
		b = 32'b10011110000001101100101001110111;
		correct = 32'b11010101110110101010000101010010;
		#400 //4.2109403e+33 * -7.13577e-21 = -30048300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011010101111111010010110000;
		b = 32'b00011101011001101010010101000011;
		correct = 32'b00110001010000101001000100111111;
		#400 //927523140000.0 * 3.0525685e-21 = 2.8313278e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001010111100001101001101;
		b = 32'b01000001100001000011100111101010;
		correct = 32'b11001101001100010110111100011110;
		#400 //-11256653.0 * 16.528278 = -186053090.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011000111010110110110001000;
		b = 32'b00100100111001000000111001110011;
		correct = 32'b01000000100011000011111001110000;
		#400 //4.4312002e+16 * 9.8903716e-17 = 4.382622
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100100100100000110001110100;
		b = 32'b11101010001010000010010110110011;
		correct = 32'b00111111001111111101101101011100;
		#400 //-1.4747144e-26 * -5.081939e+25 = 0.7494409
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110101100000010110001001;
		b = 32'b10000001100001011110110111111001;
		correct = 32'b00000111110111111110111110100111;
		#400 //-6848.692 * -4.919796e-38 = 3.3694166e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011011000111101100100110000;
		b = 32'b00010100011000000011101000000110;
		correct = 32'b10010000010001111001000110101111;
		#400 //-0.0034766905 * 1.1320553e-26 = -3.935806e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101001000111110001000110111;
		b = 32'b01000001110111010100001000010011;
		correct = 32'b01110111100011011010010010010110;
		#400 //2.077472e+32 * 27.657263 = 5.745719e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100101100111110000011100100;
		b = 32'b00010110000101000101101011001011;
		correct = 32'b00001011010100000111101110011111;
		#400 //3.3504978e-07 * 1.1983994e-25 = 4.0152345e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000000111100101010010101010;
		b = 32'b11000010000100001111101010101110;
		correct = 32'b11111010101100110101010101010100;
		#400 //1.2845314e+34 * -36.244804 = -4.655759e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111010111001000000100100;
		b = 32'b01011011000000110011010010101111;
		correct = 32'b00110000011100010111011001111001;
		#400 //2.378579e-26 * 3.693115e+16 = 8.784365e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010100001111101101011110000;
		b = 32'b01001011011100110100110110001111;
		correct = 32'b11111110100000010001110111111011;
		#400 //-5.38178e+30 * 15945103.0 = -8.581304e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101100010110101010100001;
		b = 32'b10000101000100011100011010101011;
		correct = 32'b10111010010010100000111000101000;
		#400 //1.1245108e+32 * -6.854357e-36 = -0.0007707798
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111011101000000111010010110;
		b = 32'b11000011010011011010100111010100;
		correct = 32'b00110011010001000001000110010110;
		#400 //-2.2196853e-10 * -205.66339 = 4.56508e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111111111111000100011111010;
		b = 32'b00011110010010100010000100100100;
		correct = 32'b01111111111111111000100011111010;
		#400 //nan * 1.0700644e-20 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110111001001000110101010011;
		b = 32'b11000101110000100010100000010101;
		correct = 32'b11111101001011010101011011100010;
		#400 //2.3177931e+33 * -6213.0103 = -1.4400473e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111010111001101100110001;
		b = 32'b11101011001101111110001111011010;
		correct = 32'b11000101101010010011110110100011;
		#400 //2.4361112e-23 * -2.2230942e+26 = -5415.7046
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101101110110001011100010101;
		b = 32'b01101101000010011110110010001111;
		correct = 32'b11011011010010011001100001111000;
		#400 //-2.126969e-11 * 2.6678393e+27 = -5.674411e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011110101100101111001101100;
		b = 32'b11101011001110010000001100101101;
		correct = 32'b01010111100110101110110011100101;
		#400 //-1.5231822e-12 * -2.2366627e+26 = 340684500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010100000110001010000010000;
		b = 32'b00111001000101000010100110110010;
		correct = 32'b00011100000101111011100111100101;
		#400 //3.5528863e-18 * 0.00014129913 = 5.020197e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001010110011101011101000001;
		b = 32'b10001000010111100101011011101011;
		correct = 32'b10101010001111010011001010100001;
		#400 //2.5115338e+20 * -6.6907867e-34 = -1.6804138e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110101010111100011100000011;
		b = 32'b00010101110011111000100010100010;
		correct = 32'b10110101000010110100000110011010;
		#400 //-6.1889327e+18 * 8.38222e-26 = -5.1877e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001011000000000110010101001;
		b = 32'b00010110010011111101011111111101;
		correct = 32'b10100000001101011110011101000101;
		#400 //-917706.56 * 1.6789481e-25 = -1.5407817e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101111011000011110100010011;
		b = 32'b11100110001100000001101111011011;
		correct = 32'b01110100101000101000001110110010;
		#400 //-495428200.0 * -2.0791259e+23 = 1.0300576e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100011110001000111111111011;
		b = 32'b01101011101101111100010100010110;
		correct = 32'b01010000101100100110111001001001;
		#400 //5.3898384e-17 * 4.4432827e+26 = 23948577000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010010111010011010011111111;
		b = 32'b00111111110100111100010110100001;
		correct = 32'b11011010101101101111110101110011;
		#400 //-1.556606e+16 * 1.6544687 = -2.5753558e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100011001011001001010010;
		b = 32'b11001010100011110000110011101011;
		correct = 32'b11010110100111010011110101101011;
		#400 //18441380.0 * -4687477.5 = -86443560000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101100111101110101010001000;
		b = 32'b11011010010100011001110111010011;
		correct = 32'b11101000100000100001111101110010;
		#400 //333271300.0 * -1.475045e+16 = -4.9159017e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010001110101111001101100;
		b = 32'b11110000101101100101100110001000;
		correct = 32'b01111010100011100000001011011011;
		#400 //-816614.75 * -4.5147607e+29 = 3.6868203e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010010110011001001011101;
		b = 32'b00001001101100011101000101000000;
		correct = 32'b10010000100011010010001111101001;
		#400 //-13004.591 * 4.2807978e-33 = -5.567002e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011111111111111110001110100;
		b = 32'b01100111010110100100101011010010;
		correct = 32'b01100011110110100100011111001100;
		#400 //0.007812077 * 1.0308561e+24 = 8.0531274e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110100101110111010001010011;
		b = 32'b01001111100000011001100111000001;
		correct = 32'b11011110100110010101100100101001;
		#400 //-1270491500.0 * 4348674600.0 = -5.524954e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111101111000111001111100111;
		b = 32'b00011001101011101111010110010100;
		correct = 32'b00110010000000001100101110001111;
		#400 //414411970000000.0 * 1.8090367e-23 = 7.4968645e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011000110001011100100001100;
		b = 32'b10101011110010101010110111010011;
		correct = 32'b11001111011100011101001101101101;
		#400 //2.817239e+21 * -1.4401209e-12 = -4057165000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000111111100011000100100011;
		b = 32'b10110000101011011111011110011111;
		correct = 32'b11100010001011001011110100010100;
		#400 //6.2934876e+29 * -1.2657785e-09 = -7.966161e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110000100100110011111110;
		b = 32'b11000110111100010101100010001101;
		correct = 32'b11001101001101110010110110110001;
		#400 //6217.624 * -30892.275 = -192076560.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000001111110101010001111010;
		b = 32'b00111001110111010101000000010110;
		correct = 32'b01101010101001010110011111001000;
		#400 //2.3685505e+29 * 0.00042212073 = 9.998143e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000100100010100110111011100;
		b = 32'b01001000011001010011111010011011;
		correct = 32'b11010001100000100001111000101111;
		#400 //-297582.88 * 234746.42 = -69856520000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101110011010001101011000111;
		b = 32'b01101110010000100011111010010010;
		correct = 32'b01001100100110111010000001101100;
		#400 //5.4290735e-21 * 1.5028934e+28 = 81593180.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110100110111101100100011010;
		b = 32'b01001110110110111010001011011100;
		correct = 32'b11010110000001011011010111011111;
		#400 //-19948.55 * 1842441700.0 = -36754044000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110110001000100011011100100;
		b = 32'b00110100001100000011110010000100;
		correct = 32'b10001011100001110001111100100011;
		#400 //-3.1710246e-25 * 1.6413293e-07 = -5.204696e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011001001111111001101000000;
		b = 32'b10001110000001000010111010111101;
		correct = 32'b00000001101011010111000000101101;
		#400 //-3.9103952e-08 * -1.629276e-30 = 6.371113e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000100101000010101101011001;
		b = 32'b11001110111011001100101001010010;
		correct = 32'b01101000000010010000110100010000;
		#400 //-1303311200000000.0 * -1986341100.0 = 2.5888207e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001000010111011010001010110;
		b = 32'b01011101011010100000111011001011;
		correct = 32'b11000110111111110111010111010011;
		#400 //-3.1020617e-14 * 1.05410255e+18 = -32698.912
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011111001001101001010011000;
		b = 32'b10100001001010001010111000111011;
		correct = 32'b10101101100101101100010111110000;
		#400 //29992240.0 * -5.7151206e-19 = -1.7140928e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100011011010011000011111000;
		b = 32'b00010101011011011110000011110000;
		correct = 32'b11000010010111000110011010111111;
		#400 //-1.1469867e+27 * 4.8039213e-26 = -55.100338
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100100100111011011101110;
		b = 32'b00101010000001010000111010010000;
		correct = 32'b10010001000110000100000000111101;
		#400 //-1.0163021e-15 * 1.1817825e-13 = -1.2010481e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001111000100111000101000;
		b = 32'b00111100010000100010100100000011;
		correct = 32'b10001011000011101101000101100101;
		#400 //-2.321042e-30 * 0.011850598 = -2.7505736e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011111111011001101100101101;
		b = 32'b00100111101011011000000110110001;
		correct = 32'b11100100001010111110001001011000;
		#400 //-2.6335969e+36 * 4.8157758e-15 = -1.2682812e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010001000110000010111000000;
		b = 32'b11110011111001110010001010110011;
		correct = 32'b01000110100100110011000001001001;
		#400 //-5.144082e-28 * -3.662489e+31 = 18840.143
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001100100110101100101000010;
		b = 32'b11010100100100110100110111110101;
		correct = 32'b00010110101010011001001001000000;
		#400 //-5.412735e-38 * -5061345000000.0 = 2.739572e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011010011110010101111011;
		b = 32'b11011010000011011111010110011100;
		correct = 32'b10111001000000011011001111001100;
		#400 //1.2382373e-20 * -9989506000000000.0 = -0.00012369378
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100100110001010100110000;
		b = 32'b10100101001100010110011010000001;
		correct = 32'b10010010010010111101100100010101;
		#400 //4.1803436e-12 * -1.5387032e-16 = -6.432308e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000010111101010001110111111;
		b = 32'b10110110010000100110001010001010;
		correct = 32'b11000111001010010000110111001001;
		#400 //14941093000.0 * -2.896561e-06 = -43277.785
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001101101010000100110011;
		b = 32'b00001001101000000100000101111001;
		correct = 32'b10010101011001001010011011101010;
		#400 //-11968819.0 * 3.858017e-33 = -4.6175905e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111011010010100011010001001;
		b = 32'b11101100001000010000011100100111;
		correct = 32'b10111100000100101011101111100001;
		#400 //1.15013715e-29 * -7.786833e+26 = -0.008955927
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101101100110001001110100001;
		b = 32'b01010011100001111110011111111000;
		correct = 32'b10101001101111100010001100111100;
		#400 //-7.2328493e-26 * 1167424700000.0 = -8.443807e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111010001011100100010110;
		b = 32'b01011101111010001001000001111000;
		correct = 32'b11010100010100110110101100010001;
		#400 //-1.7339214e-06 * 2.0947533e+18 = -3632137500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110101000010101111001100111;
		b = 32'b01001000010101001001110001011011;
		correct = 32'b10110111100001100000010010111100;
		#400 //-7.3382016e-11 * 217713.42 = -1.597625e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101011111010101011100010110;
		b = 32'b01011000101111101010010110010110;
		correct = 32'b11000110101111001010101010000000;
		#400 //-1.4400722e-11 * 1676947200000000.0 = -24149.25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100011001000101100000010000;
		b = 32'b00010011111111110010000101110010;
		correct = 32'b10111000111000111001000110001101;
		#400 //-1.6848813e+22 * 6.440403e-27 = -0.000108513144
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011001011110010001101010110;
		b = 32'b01111110110000011010000111101111;
		correct = 32'b01110010100001000111100001101101;
		#400 //4.07775e-08 * 1.2869091e+38 = 5.247694e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010001100110100111001010000;
		b = 32'b11010010101000000010001100010001;
		correct = 32'b10010101011000000101001100000011;
		#400 //1.3173318e-37 * -343891540000.0 = -4.5301924e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101011000100111011010101111;
		b = 32'b00000110000110000100011111010101;
		correct = 32'b00110100000001101011011000000011;
		#400 //4.3804432e+27 * 2.8640796e-35 = 1.2545938e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011110001010000101101111111;
		b = 32'b01000110101001100000010001101101;
		correct = 32'b01001010111111111001000110111001;
		#400 //394.0898 * 21250.213 = 8374492.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110111010010111000000100111;
		b = 32'b00000010100011000101100000010100;
		correct = 32'b00100001111111111111001101001100;
		#400 //8.410494e+18 * 2.0621706e-37 = 1.7343872e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110010110010010111101100;
		b = 32'b01011000010101100100101101010001;
		correct = 32'b10100100101010100000110101111000;
		#400 //-7.8249814e-32 * 942475900000000.0 = -7.3748565e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110100010011101111101110;
		b = 32'b10111110100000101100001101100101;
		correct = 32'b10111100110101011100000001000100;
		#400 //0.10216509 * -0.255397 = -0.026092656
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111111111010110111011111;
		b = 32'b10011010111110111011011000111011;
		correct = 32'b01001110011110110110010101111010;
		#400 //-1.0128496e+31 * -1.04105576e-22 = 1054432900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111111001001001101011110;
		b = 32'b01011100000000000001010101000001;
		correct = 32'b10111000011111001011110101001110;
		#400 //-4.1785137e-22 * 1.4420866e+17 = -6.0257786e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001111001000101010100101101;
		b = 32'b11110000001011001111100101110000;
		correct = 32'b01110010100110100100011110110101;
		#400 //-28.54159 * -2.141319e+29 = 6.1116646e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111110111010101111101000;
		b = 32'b10010011000101110101010110011000;
		correct = 32'b10110001100101001100011010001011;
		#400 //2.2668554e+18 * -1.910108e-27 = -4.3299386e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101010001011011001010110100;
		b = 32'b10011111101110111101101001111100;
		correct = 32'b11001101100100010001001001000011;
		#400 //3.8240366e+27 * -7.955903e-20 = -304236640.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111101110100111111001011;
		b = 32'b11001001100110001111100000101011;
		correct = 32'b11111111111101110100111111001011;
		#400 //nan * -1253125.4 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100101011010100000110011111;
		b = 32'b01000110010001010010111111001101;
		correct = 32'b00110011100001010111001111011001;
		#400 //4.924241e-12 * 12619.95 = 6.214368e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011010101111100000001010001;
		b = 32'b00110011010110100110001110100111;
		correct = 32'b00101111001110000000110111000001;
		#400 //0.0032921026 * 5.0847714e-08 = 1.6739589e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110100001100110011000110001;
		b = 32'b01100101011101100010110111100010;
		correct = 32'b11111100100000010011111001001010;
		#400 //-73886730000000.0 * 7.2659284e+22 = -5.3685573e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000110100100010000100011011;
		b = 32'b01100011000001011001110100110101;
		correct = 32'b11001100010110110101100001111010;
		#400 //-2.332904e-14 * 2.464745e+21 = -57500136.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101001111111001101011001;
		b = 32'b11100111100100111101010100001111;
		correct = 32'b11100100110000011111100100000111;
		#400 //0.02050178 * -1.3962362e+24 = -2.8625327e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110110000101111110100001011;
		b = 32'b11001010101000010001010011011110;
		correct = 32'b11001001111101010110001000010010;
		#400 //0.3808368 * -5278319.0 = -2010178.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011011100111000111011001100;
		b = 32'b10110110011011000110011111000110;
		correct = 32'b10111010011000001110101001011111;
		#400 //243.5578 * -3.5227145e-06 = -0.0008579846
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110001111101101111011011101;
		b = 32'b01010110001010110011001110110010;
		correct = 32'b01110100111111110100101011010001;
		#400 //3.4384183e+18 * 47059630000000.0 = 1.6181069e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000110100001010100011111110;
		b = 32'b00100111010101000100010001111001;
		correct = 32'b10110000101011010000001111000010;
		#400 //-427335.94 * 2.945803e-15 = -1.2588475e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000000000111101011110000011;
		b = 32'b10101111100011100111101011001111;
		correct = 32'b11001000000100101100000110010100;
		#400 //579846560000000.0 * -2.591691e-10 = -150278.31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111011100100110110100111011;
		b = 32'b01011001010110100111101011010010;
		correct = 32'b11110001010011101110010101010011;
		#400 //-266550960000000.0 * 3843536700000000.0 = -1.0244984e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011100100101000111010011011;
		b = 32'b10001011111111100010100101100010;
		correct = 32'b11000000000100011000000100101111;
		#400 //2.3222892e+31 * -9.789951e-32 = -2.2735097
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110001001011010101110111000;
		b = 32'b10100101100110011000110101011011;
		correct = 32'b00101100010001101011111000110111;
		#400 //-10602.93 * -2.6637055e-16 = 2.8243083e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011011010101010101000111000;
		b = 32'b00101011111010010001001011001000;
		correct = 32'b00101111110101011010011000100100;
		#400 //234.66492 * 1.6560859e-12 = 3.8862524e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011010010000101001010111000;
		b = 32'b01001010000011011101100010110011;
		correct = 32'b11001101110111011111111001000010;
		#400 //-200.32312 * 2324012.8 = -465553470.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100011011010010101101011111;
		b = 32'b10111111100001110101111001000010;
		correct = 32'b11011100011110101101001001100100;
		#400 //2.6702903e+17 * -1.057564 = -2.8240028e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001101100001100110001011110;
		b = 32'b00100001001000110011011111001100;
		correct = 32'b01001011011000010111000101010001;
		#400 //2.6717005e+25 * 5.5300395e-19 = 14774609.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011010101000000011001101001;
		b = 32'b10101000011001111010000110010100;
		correct = 32'b01100100001111111101011110011011;
		#400 //-1.10089695e+36 * -1.2858113e-14 = 1.4155457e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110010011010010110100110;
		b = 32'b01001100010000111010101110110110;
		correct = 32'b11001000100110100010000001101110;
		#400 //-0.00615378 * 51293910.0 = -315651.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101000100101101010110101000;
		b = 32'b10001010001000110011100111010000;
		correct = 32'b10111111101110110011111001100110;
		#400 //1.8613496e+32 * -7.859038e-33 = -1.4628417
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111001100111011101100010001;
		b = 32'b10100001001011001100110100111111;
		correct = 32'b11010000111100101010001110010001;
		#400 //5.5623966e+28 * -5.854751e-19 = -32566446000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011000111010100101111100;
		b = 32'b11111001110001000010000100001101;
		correct = 32'b11011010101011100110101100100111;
		#400 //1.9283726e-19 * -1.2729507e+35 = -2.454723e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111100101110000111110100;
		b = 32'b01101101001100001001000000101111;
		correct = 32'b01010000101001111000010000100011;
		#400 //6.583347e-18 * 3.4152293e+27 = 22483638000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110100000000111011110110010;
		b = 32'b11001000110000100011001010111100;
		correct = 32'b00010111110000101110100001010101;
		#400 //-3.16697e-30 * -397717.88 = 1.2595605e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110011010111110010011101;
		b = 32'b11100010111110110010111111111111;
		correct = 32'b11110001010010011001111110110100;
		#400 //430937000.0 * -2.3167956e+21 = -9.983929e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001110100001100111101010001;
		b = 32'b01000101100110100111110110101101;
		correct = 32'b10110111111111000000011001110010;
		#400 //-6.077166e-09 * 4943.7095 = -3.0043742e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001010101011011000011001011;
		b = 32'b11010111010000000101001111110010;
		correct = 32'b11000001001000001000101010101011;
		#400 //4.7448844e-14 * -211466770000000.0 = -10.0338545
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110000010001111100100100111;
		b = 32'b00011001100010010000000011100110;
		correct = 32'b11000000000100101001101110100010;
		#400 //-1.6170947e+23 * 1.4165831e-23 = -2.290749
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001110000101011111100111001;
		b = 32'b00010000111100101100110100100111;
		correct = 32'b01001011001110001011010011010101;
		#400 //1.2639801e+35 * 9.5768257e-29 = 12104917.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010110010000100111100000100;
		b = 32'b10101111011100001101011111001110;
		correct = 32'b10100010101111000111001011101111;
		#400 //2.3318997e-08 * -2.1904542e-10 = -5.1079193e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101001111000101110100000111;
		b = 32'b00101011100001011011010010011111;
		correct = 32'b10110001010001001100001001110110;
		#400 //-3013.8142 * 9.500351e-13 = -2.8632292e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000001111101100101011100;
		b = 32'b01001111010110100100100011000111;
		correct = 32'b00101001111001111010101101101110;
		#400 //2.8092927e-23 * 3662202600.0 = 1.0288199e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100001001111011100010011111;
		b = 32'b10001000110010010010101100111001;
		correct = 32'b00100101100000111100110001000110;
		#400 //-1.8883726e+17 * -1.2107409e-33 = 2.2863299e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011001100110000001011101011;
		b = 32'b00001001011000011101001111001101;
		correct = 32'b00111101000111011110100110101011;
		#400 //1.4182744e+31 * 2.7182978e-33 = 0.03855292
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000000000110111111010011;
		b = 32'b11101100001101111111001110010110;
		correct = 32'b00101111101110001001010001001010;
		#400 //-3.7744187e-37 * -8.895349e+26 = 3.357477e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111000010111101000100101000;
		b = 32'b01100010111101111000111111001100;
		correct = 32'b11100010100001110011010101010111;
		#400 //-0.5461602 * 2.2833537e+21 = -1.247077e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001100101011001100101011011;
		b = 32'b10100110101001101100111010001111;
		correct = 32'b10010000110000101111010001001100;
		#400 //6.643532e-14 * -1.1574552e-15 = -7.6895907e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010101001000001001010101011;
		b = 32'b11001010001001000110000100110110;
		correct = 32'b00111101010100101011010010000110;
		#400 //-1.9100602e-08 * -2693197.5 = 0.05144169
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001001110011111101101111010;
		b = 32'b10100101010100110001101001010000;
		correct = 32'b00001111000110010101110101100011;
		#400 //-4.1296373e-14 * -1.8310248e-16 = 7.561468e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010000001110011111000011;
		b = 32'b00100000101110100110100111001001;
		correct = 32'b11001110100011000111100000011010;
		#400 //-3.7313315e+27 * 3.1579628e-19 = -1178340600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010111011011111001110111110;
		b = 32'b10011011101010101100010011111011;
		correct = 32'b10110111000111101011101011110100;
		#400 //3.3488783e+16 * -2.8251436e-22 = -9.461062e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000110011111111000111010100;
		b = 32'b10110001110001100001111010001010;
		correct = 32'b10011011001000001110110111011000;
		#400 //2.3086493e-14 * -5.7660303e-09 = -1.3311741e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110010110010101010110000101;
		b = 32'b11101011101010001000110001110101;
		correct = 32'b11111010100011110001011101011101;
		#400 //911565100.0 * -4.0752565e+26 = -3.7148616e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011010001011110000010101;
		b = 32'b00011110010011011010000100001101;
		correct = 32'b10110000001110101111000100000111;
		#400 //-62474244000.0 * 1.0885914e-20 = -6.8008926e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101100001010101101010101000;
		b = 32'b10110000001011110000011101111010;
		correct = 32'b11100110001101100101100110111100;
		#400 //3.3809288e+32 * -6.3675254e-10 = -2.152815e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100101110001011111000111110;
		b = 32'b11011100001011111000001111101100;
		correct = 32'b00100001011111010101001010000000;
		#400 //-4.3432902e-36 * -1.9761268e+17 = 8.582892e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101101101101110100111101;
		b = 32'b10001110010001000001101001010011;
		correct = 32'b00001110100011000001010000110000;
		#400 //-1.4286267 * -2.417154e-30 = 3.4532104e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000011001100010010011101000;
		b = 32'b00001001101000010111101001000011;
		correct = 32'b10101010100100010010101100100000;
		#400 //-6.633454e+19 * 3.8874314e-33 = -2.5787098e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100100001111010001010000;
		b = 32'b10000100011010110101000111010110;
		correct = 32'b00100101100001010011111010011100;
		#400 //-8.356049e+19 * -2.7661694e-36 = 2.3114248e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000101111010100101111010000;
		b = 32'b00101111000011001101101101110010;
		correct = 32'b00100000010100000100111101110100;
		#400 //1.3773107e-09 * 1.2810888e-10 = 1.7644574e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001000010101100011001100110;
		b = 32'b11010000101111100010110001011100;
		correct = 32'b11011010010011100010111010010111;
		#400 //568422.4 * -25524625000.0 = -1.4508768e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100111001010110101111100100;
		b = 32'b01010010111110001001111100110111;
		correct = 32'b01111000010111101100111100110100;
		#400 //3.385663e+22 * 533911540000.0 = 1.8076445e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000110100010011000101001;
		b = 32'b01011110100100000011011011001110;
		correct = 32'b11011000001011011010110011101110;
		#400 //-0.000147008 * 5.19586e+18 = -763832960000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110011000010101000010110010;
		b = 32'b11111100101100101110000100011101;
		correct = 32'b01110011100111010111000000111101;
		#400 //-3.3574584e-06 * -7.4303574e+36 = 2.4947115e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001100100111110011010101000;
		b = 32'b10110000011011100010000010101111;
		correct = 32'b10011010100010011001001101010010;
		#400 //6.568124e-14 * -8.663034e-10 = -5.689988e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100111100100010010101010110;
		b = 32'b01110100100001111100101100111011;
		correct = 32'b11100010000000000111000111101100;
		#400 //-6.882199e-12 * 8.606959e+31 = -5.9234804e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010000100110110111110011100;
		b = 32'b01000010100011000000110010100110;
		correct = 32'b00001101001000010101000010100100;
		#400 //7.098784e-33 * 70.024704 = 4.9709023e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100001010110001000100101110;
		b = 32'b01000100000100001010001011010001;
		correct = 32'b11010000110000010100110011101101;
		#400 //-44844216.0 * 578.544 = -25944353000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000111000101100010110101110;
		b = 32'b11100110000000001010010011110011;
		correct = 32'b11000111011000111110100111101010;
		#400 //3.8416703e-19 * -1.5187642e+23 = -58345.914
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101000011101000110110100010;
		b = 32'b10101111010001000111111000011111;
		correct = 32'b00110100110110101101010101010110;
		#400 //-2280.852 * -1.7870903e-10 = 4.0760887e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001011001110001110110111110;
		b = 32'b01101111110001100011111110001111;
		correct = 32'b10111001101100101111101001100010;
		#400 //-2.7819598e-33 * 1.2270974e+29 = -0.00034137355
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111111100010011111001100;
		b = 32'b01100100110101101011110011001011;
		correct = 32'b10110101010101010011000010110011;
		#400 //-2.5061663e-29 * 3.1689658e+22 = -7.941955e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000110001110001111110000101;
		b = 32'b10000100000011010111001110001010;
		correct = 32'b10011101010111000000110001110110;
		#400 //1751505500000000.0 * -1.6627523e-36 = -2.91232e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111001000100011110100010000;
		b = 32'b00110100000000011110100111100111;
		correct = 32'b10001011101001001010101000000010;
		#400 //-5.2422095e-25 * 1.2099154e-07 = -6.34263e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010110011011000010000011011;
		b = 32'b01010010010110100100110111100011;
		correct = 32'b01010101101011110100000100000110;
		#400 //102.75802 * 234402400000.0 = 24086726000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010001011101100111001010001;
		b = 32'b00101010110000001101111110100110;
		correct = 32'b00110101100000111011001101110100;
		#400 //2864020.2 * 3.4261239e-13 = 9.812488e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111101101010101110111110000;
		b = 32'b01100100001011100101000111001010;
		correct = 32'b11001100011101101111111110010110;
		#400 //-5.033944e-15 * 1.2862508e+22 = -64749144.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000111101110001011000101011;
		b = 32'b11000010001011011111010001011100;
		correct = 32'b00100011101001111110010111010101;
		#400 //-4.1858097e-19 * -43.488632 = 1.8203514e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101010100001111000101110000;
		b = 32'b01001000010101011000101100010010;
		correct = 32'b01000110001011100100101001100100;
		#400 //0.051011503 * 218668.28 = 11154.598
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010011100001101111010001010;
		b = 32'b11110110001010100101010101111010;
		correct = 32'b11111001001000000100010000110100;
		#400 //60.217323 * -8.6369545e+32 = -5.2009426e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110011100001101011001100;
		b = 32'b01011001001011101110101001001100;
		correct = 32'b11010010100011001101001011011000;
		#400 //-9.827837e-05 * 3077141000000000.0 = -302416400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011101100001001101101000110;
		b = 32'b10111000010000101001000100010001;
		correct = 32'b01001100100001100011100110111111;
		#400 //-1517038600000.0 * -4.6388308e-05 = 70372856.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100100110101101110000001100;
		b = 32'b11000111100001100101100001110001;
		correct = 32'b00110100101000101000100101011101;
		#400 //-4.4013734e-12 * -68784.88 = 3.0274796e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101100001100111110110110010;
		b = 32'b10001101110110001111100100110010;
		correct = 32'b11001011111000111111100111110001;
		#400 //2.234615e+37 * -1.3372019e-30 = -29881314.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111100001000110101100001100;
		b = 32'b11111100101010111111111000111011;
		correct = 32'b01101100101100011110111000000011;
		#400 //-2.4086722e-10 * -7.1443134e+36 = 1.7208308e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110100100110001010001010010;
		b = 32'b10011001111000011100110010111100;
		correct = 32'b00010001000000011011101001111100;
		#400 //-4.383307e-06 * -2.3347146e-23 = 1.0233771e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010000001111101010010010;
		b = 32'b00010110110010110000001110111001;
		correct = 32'b11010001100110010000100110000000;
		#400 //-2.505008e+35 * 3.2798768e-25 = -82161170000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011000111001000100011011110;
		b = 32'b00101110101010001000000000111011;
		correct = 32'b01011010010011100001000001110100;
		#400 //1.8923876e+26 * 7.662534e-11 = 1.4500484e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010111011110110101000100;
		b = 32'b11000110101101100010000000100000;
		correct = 32'b11100011100111011110001010001000;
		#400 //2.4986738e+17 * -23312.062 = -5.824924e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010110100100110001011000110;
		b = 32'b10011000011101010100011000100000;
		correct = 32'b00010011110010011001001000101001;
		#400 //-0.0016051165 * -3.1700912e-24 = 5.088366e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000100011100111100100000001;
		b = 32'b11011010101111110100111000110000;
		correct = 32'b11010011110101001110111110010111;
		#400 //6.7936264e-05 * -2.6923844e+16 = -1829105400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111001100111111110001001101;
		b = 32'b00101011100101011101110001011110;
		correct = 32'b00110011010100101011100110001111;
		#400 //46076.3 * 1.0648251e-12 = 4.90632e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001011001000000110010101101;
		b = 32'b10110011100011010101110000010110;
		correct = 32'b00001101011110111101101000000111;
		#400 //-1.17898836e-23 * -6.5825745e-08 = 7.7607787e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101000110100111111101100000;
		b = 32'b10101111110101011111111110000001;
		correct = 32'b01011101100000010010011000101110;
		#400 //-2.9884174e+27 * -3.892602e-10 = 1.163272e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100011011111001100001110;
		b = 32'b01111011011100111001101001101011;
		correct = 32'b01101101100001110001001101010110;
		#400 //4.131272e-09 * 1.2648601e+36 = 5.2254815e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111001011100001010010001100;
		b = 32'b00111001011001001111000000101101;
		correct = 32'b10111001000110111010110110011111;
		#400 //-0.680001 * 0.00021833247 = -0.00014846631
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010010101000110101101000;
		b = 32'b10110011101100111101000101001111;
		correct = 32'b01010111100011100100011001111100;
		#400 //-3.7364317e+21 * -8.37341e-08 = 312866760000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110111011011000000111001000;
		b = 32'b01001101000001011010010001011100;
		correct = 32'b10011100011101111111100111010011;
		#400 //-5.8549986e-30 * 140133820.0 = -8.2048335e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011111100110000110010001000;
		b = 32'b11001100100111011011101010001110;
		correct = 32'b00010001000101011011111111001101;
		#400 //-1.4285133e-36 * -82695280.0 = 1.1813131e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010110011101100111101000100;
		b = 32'b01100010001101001000000000001101;
		correct = 32'b10100101100100011101000100101110;
		#400 //-3.0387944e-37 * 8.3241024e+20 = -2.5295236e-16
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