`timescale 1 ns/1 ps
    `include "alu.v"


    module div_tb ();
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

    op = 3'b010;

		/* Display the operation */
		$display ("Opcode: 010, Operation: DIV");
		/* Test Cases!*/
		a = 32'b11010011101001000100100110000101;
		b = 32'b11001001001001100100111110101000;
		correct = 32'b01001001111111001110001001110001;
		#400 //-1411216200000.0 * -681210.5 = 2071630.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101100010011110010101011000;
		b = 32'b01100011010100111111001000111011;
		correct = 32'b01001001101001101000111011011011;
		#400 //5.334588e+27 * 3.9097175e+21 = 1364443.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111110110001111110110010;
		b = 32'b11101001011010111100000000010100;
		correct = 32'b00110101000010000101100011010101;
		#400 //-9.047689e+18 * -1.781279e+25 = 5.0793216e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110000110110011100011100110;
		b = 32'b01101100010110101110011111010001;
		correct = 32'b00101001001101011000011001111100;
		#400 //42667170000000.0 * 1.0585622e+27 = 4.030672e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100000000000010101100110001;
		b = 32'b10101010000101100111001010001001;
		correct = 32'b00111001010110100001011100111101;
		#400 //-2.779216e-17 * -1.3362414e-13 = 0.00020798757
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101101100000100111001110001;
		b = 32'b01101111111101110110100000110101;
		correct = 32'b00110101001101100110111000001101;
		#400 //1.0407294e+23 * 1.5313755e+29 = 6.796043e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000000001110100011001001101;
		b = 32'b00001000101110000100001001000000;
		correct = 32'b10111110101110111111000110011110;
		#400 //-4.0707723e-34 * 1.10896725e-33 = -0.36707777
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011010000001110011110000000;
		b = 32'b10001100111011000101000111100011;
		correct = 32'b11111101110100001111100000001001;
		#400 //12642176.0 * -3.641084e-31 = -3.4720912e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101010100000110110100101110;
		b = 32'b00110111100111010101111001110001;
		correct = 32'b10100101001010011000011101101011;
		#400 //-2.7585015e-21 * 1.8759836e-05 = -1.4704295e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011101110001111111000101;
		b = 32'b10000010000110100010011001101100;
		correct = 32'b11000000110011010011001110101101;
		#400 //7.2623246e-37 * -1.132516e-37 = -6.412558
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001000010110100100010101001;
		b = 32'b10110110100111001111001110100110;
		correct = 32'b10100001111000110010111010101011;
		#400 //7.200805e-24 * -4.6775267e-06 = -1.5394471e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010000000101100001111000001;
		b = 32'b01011110111101100101001110000010;
		correct = 32'b10000010100001111110011001101101;
		#400 //-1.7721917e-18 * 8.874837e+18 = -1.9968725e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100011101011000101001101100;
		b = 32'b01011101000101101001110000001111;
		correct = 32'b10110110110100001010111000010100;
		#400 //-4218357300000.0 * 6.7828536e+17 = -6.2191484e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110100010110110110100010101;
		b = 32'b10100011010001101011111101010100;
		correct = 32'b00111010101100111001011100011000;
		#400 //-1.4762313e-20 * -1.0774117e-17 = 0.0013701646
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000100101011010011000011001;
		b = 32'b10110110100111011001111010110011;
		correct = 32'b00010001011100110000110110111100;
		#400 //-9.006661e-34 * -4.6974396e-06 = 1.9173552e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101010011111001101011111111;
		b = 32'b11001010010001010010110100111000;
		correct = 32'b10111010100001101100010100100000;
		#400 //3321.6873 * -3230542.0 = -0.0010282136
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010011110111001111000010;
		b = 32'b00100001110011011110101101010011;
		correct = 32'b01111110000000001111001111110000;
		#400 //5.979402e+19 * 1.395363e-18 = 4.2851945e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011000010101111011110111;
		b = 32'b10111011111101111010100101110110;
		correct = 32'b01111110111010001111010101100010;
		#400 //-1.1701929e+36 * -0.007558043 = 1.548275e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111111001110110111110000111;
		b = 32'b10011111011001101010101111010111;
		correct = 32'b00101000000000000110110010010110;
		#400 //-3.4822567e-34 * -4.8846537e-20 = 7.128973e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111010001001110000110111;
		b = 32'b00110110100001101100010011010111;
		correct = 32'b00010010110111001110110101011000;
		#400 //5.5998872e-33 * 4.0164264e-06 = 1.3942462e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011100111010000110111100;
		b = 32'b00011001010001011010111111100111;
		correct = 32'b11010100100111011011111110100101;
		#400 //-5.5395452e-11 * 1.02201845e-23 = -5420201000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111001011000010100011111110;
		b = 32'b11010011110001010101110010000011;
		correct = 32'b01001010110111110100111110100110;
		#400 //-1.2405444e+19 * -1695321300000.0 = 7317459.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111011011010000011101000;
		b = 32'b00110001010110001001011000100101;
		correct = 32'b10110001000011000110111110000011;
		#400 //-6.4409345e-18 * 3.1517484e-09 = -2.0436068e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011010000110000110100011111;
		b = 32'b01100011010111011000100110010100;
		correct = 32'b00010111011000010110010011000101;
		#400 //0.002976246 * 4.086644e+21 = 7.282861e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011011110000001110111001000;
		b = 32'b11010110100100000100000101111101;
		correct = 32'b00011100010111000010100000100001;
		#400 //-5.7769086e-08 * -79305470000000.0 = 7.284376e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010000110110011110111101010;
		b = 32'b01101101011011011011001010010011;
		correct = 32'b00000100001001110011000111111111;
		#400 //9.036265e-09 * 4.5977394e+27 = 1.9653713e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001010001010000010100001010;
		b = 32'b00111011001001101011110100011100;
		correct = 32'b01101101100101110011111011101001;
		#400 //1.4886386e+25 * 0.0025442308 = 5.851036e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111010011001101011001110101;
		b = 32'b10000110000000000111010110101011;
		correct = 32'b11000000110011000001101011010100;
		#400 //1.5410278e-34 * -2.4160573e-35 = -6.378275
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110110110101100100001111010;
		b = 32'b11001011011010010010010000000001;
		correct = 32'b11101010111100000011110000010111;
		#400 //2.2187243e+33 * -15279105.0 = -1.4521298e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101000001011110011101001100;
		b = 32'b00000101001011001110111111010000;
		correct = 32'b01100111010001100011011111111011;
		#400 //7.611533e-12 * 8.131448e-36 = 9.360612e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010001010110000100000010000;
		b = 32'b00110011001110110111111000011110;
		correct = 32'b11100110011010011000011000101111;
		#400 //-1.2035271e+16 * 4.3654033e-08 = -2.7569666e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111000011001011110101101011;
		b = 32'b10011011011011000110110001000101;
		correct = 32'b11101011000110000110010011011000;
		#400 //36029.418 * -1.9556446e-22 = -1.8423295e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100011110011111110011000110;
		b = 32'b01001011101001111001111101101111;
		correct = 32'b00101000001111101110010100101100;
		#400 //2.328189e-07 * 21970654.0 = 1.05968125e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100101110111110001110011001;
		b = 32'b00110010001001011010001111101101;
		correct = 32'b11010010000100010011000101100001;
		#400 //-1503.1124 * 9.6415365e-09 = -155899670000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101000110110001110110110000;
		b = 32'b11001010000001101000001010111000;
		correct = 32'b11101010100100111001101110100110;
		#400 //1.9663285e+32 * -2203822.0 = -8.922356e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110010100010101010010101;
		b = 32'b00101110011000000111101001000100;
		correct = 32'b11001001111001101000111001000000;
		#400 //-9.640042e-05 * 5.1040297e-11 = -1888712.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110000000000111101100010111;
		b = 32'b00010010010001101010001110011001;
		correct = 32'b01101011001001011001010100001011;
		#400 //0.12546955 * 6.2679433e-28 = 2.001766e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110000111000101010101100110;
		b = 32'b01000100100001011110111011100101;
		correct = 32'b01100001000101010110100001111000;
		#400 //1.8456612e+23 * 1071.4655 = 1.7225579e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110000000100000111101110001;
		b = 32'b10101010001110111101000011111101;
		correct = 32'b00100011001100010100011011001110;
		#400 //-1.6031172e-30 * -1.6681444e-13 = 9.610183e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011101011100001100111111001;
		b = 32'b11010100011111001000110110000011;
		correct = 32'b01010110101100000111101001010101;
		#400 //-4.209515e+26 * -4338823700000.0 = 97019730000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000100111011001100001110100;
		b = 32'b10110000111011000001101000111010;
		correct = 32'b11011111001010101110000001111100;
		#400 //21152113000.0 * -1.7178714e-09 = -1.2312978e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010110011010111001010011;
		b = 32'b11010001011001111111010101000100;
		correct = 32'b11001110011100000011111000111011;
		#400 //6.2742263e+19 * -62265770000.0 = -1007652540.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011101100100110001111101110;
		b = 32'b10101100011010011000111101100011;
		correct = 32'b01100110110000111000011110011000;
		#400 //-1532361400000.0 * -3.3190887e-12 = 4.6168136e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000000110111011100111101100;
		b = 32'b01001111110110101011011100000100;
		correct = 32'b01001111101101100100011000000001;
		#400 //4.4885038e+19 * 7338854400.0 = 6116082000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100110000100001100111111010;
		b = 32'b11111111010000010110101110111011;
		correct = 32'b00100101000000000111001101010000;
		#400 //-2.8644321e+22 * -2.5710037e+38 = 1.11413e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101111011110000000111000010;
		b = 32'b00010100100000100011011010100001;
		correct = 32'b11111000111010101111000110110110;
		#400 //-501233730.0 * 1.3148193e-26 = -3.8121873e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101101111111100000010011;
		b = 32'b00010100001111111111000111110010;
		correct = 32'b11101010111101010101110010111010;
		#400 //-1.4372581 * 9.690751e-27 = -1.4831236e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100001101011010100001101001;
		b = 32'b01010101000110000001111100101010;
		correct = 32'b11001110100110001101101001000101;
		#400 //-1.3403984e+22 * 10453726000000.0 = -1282220700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100001101111101010110100000;
		b = 32'b11110001000001100000010010001100;
		correct = 32'b00011010101011111001010001101110;
		#400 //-48191104.0 * -6.636238e+29 = 7.2618105e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100001111100101001001010000;
		b = 32'b11010010100101011000100010011010;
		correct = 32'b00101001001000101110101000001101;
		#400 //-0.0116163045 * -321120960000.0 = 3.6174233e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001011001010111000011100101;
		b = 32'b11010100001001110100100101111101;
		correct = 32'b10111100101011111000111010100100;
		#400 //61590098000.0 * -2873969900000.0 = -0.021430321
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011011011111101100010110010;
		b = 32'b10101010011000011101011101100101;
		correct = 32'b11011000100001111111000000001010;
		#400 //239.84647 * -2.0058744e-13 = -1195720200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111110100000001011011000;
		b = 32'b11000111000110101111000010011101;
		correct = 32'b11101101010011101000101001110111;
		#400 //1.5846337e+32 * -39664.613 = -3.9950816e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111010001110001111110110000;
		b = 32'b01111101110011110000010100101100;
		correct = 32'b10001000111101100011110000111110;
		#400 //-50975.688 * 3.439713e+37 = -1.4819749e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000010010110011010111101001;
		b = 32'b01111011100010011000100010011100;
		correct = 32'b10011100001111010001111111010100;
		#400 //-893729600000000.0 * 1.4282309e+36 = -6.257599e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100001101111110101110001111;
		b = 32'b00000100101110101001010000011001;
		correct = 32'b01110110111111000101101001000000;
		#400 //0.011225595 * 4.3864396e-36 = 2.5591588e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001001011000101110000111;
		b = 32'b01111100001010101011100000001001;
		correct = 32'b00000110011110000011110111011001;
		#400 //165.54503 * 3.5456926e+36 = 4.6689054e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011110011101101111000001;
		b = 32'b10100100001100000100101111101011;
		correct = 32'b00100011101101010110100011011000;
		#400 //-7.518903e-34 * -3.822822e-17 = 1.9668462e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001010101100111101010110011;
		b = 32'b10111001000010101010100111111000;
		correct = 32'b00111111110001011111110000011010;
		#400 //-0.0002045434 * -0.00013224024 = 1.546756
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111101110100001010110010101;
		b = 32'b11000000000001011010011111111101;
		correct = 32'b00110111001100100011010110011011;
		#400 //-2.2182978e-05 * -2.0883782 = 1.0622108e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110100000111001011000010;
		b = 32'b10111101000001001000100011010100;
		correct = 32'b10011101010010010101000100000110;
		#400 //8.6212185e-23 * -0.032357052 = -2.6644017e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011100110000001000011101001;
		b = 32'b01010010011000010110111001001110;
		correct = 32'b11010000101011001010111111001010;
		#400 //-5.610247e+21 * 242054560000.0 = -23177613000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111001000011110010000110;
		b = 32'b10111101111000000001100001100101;
		correct = 32'b11010101100000100101110110001000;
		#400 //1960535900000.0 * -0.10942153 = -17917278000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100001100101001000111101011;
		b = 32'b01010110000011101000011001001101;
		correct = 32'b01100101101000000101111100111100;
		#400 //3.7087536e+36 * 39176867000000.0 = 9.4666925e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010000011011001111011010000;
		b = 32'b01101100111000110111010010101100;
		correct = 32'b10000100100111110110010010010000;
		#400 //-8.24339e-09 * 2.199817e+27 = -3.7473072e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111001001111001101111101;
		b = 32'b10111110100001011111110011001111;
		correct = 32'b11010101110110101011100001001101;
		#400 //7866701000000.0 * -0.2616944 = -30060638000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011110111000000011100111010;
		b = 32'b01001011000010100110010001100001;
		correct = 32'b10111000010010111000000110000100;
		#400 //-440.05646 * 9069665.0 = -4.8519592e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100001010110011001010101011;
		b = 32'b11010111111001110011101010011110;
		correct = 32'b11010011101111011000100110111000;
		#400 //8.2786235e+26 * -508477900000000.0 = -1628118700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011010000011011101011001100;
		b = 32'b00101100000101010111111001010101;
		correct = 32'b01000110101001011110000001001001;
		#400 //4.5106205e-08 * 2.1244302e-12 = 21232.143
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000100111101000010011100;
		b = 32'b10100101010110100111111000001110;
		correct = 32'b10100111001011010011000010001001;
		#400 //4.5548977e-31 * -1.8951195e-16 = -2.4034884e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101001100101010110010000;
		b = 32'b00000100000110111111010001011000;
		correct = 32'b11111011000010001000010011101011;
		#400 //-1.2994862 * 1.833236e-36 = -7.088483e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101001100000100010010001010;
		b = 32'b10110010100101010101111001000111;
		correct = 32'b10100010000101110000110100100001;
		#400 //3.5596985e-26 * -1.7388755e-08 = -2.0471266e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001110111111111101110011;
		b = 32'b00100001011001100010010011011101;
		correct = 32'b01011100010100010001111001101101;
		#400 //0.18359165 * 7.797582e-19 = 2.354469e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100100011111000011010000000;
		b = 32'b01100001111111001110111110001001;
		correct = 32'b00111010000100010100001110100011;
		#400 //3.2319045e+17 * 5.8322998e+20 = 0.00055413897
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101011111100111110100011010;
		b = 32'b11110110010110111000111010100101;
		correct = 32'b10000110100101000101110101100001;
		#400 //0.062131025 * -1.1132873e+33 = -5.580862e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110001011010100001000001;
		b = 32'b10000111101100110111000001011111;
		correct = 32'b01110000100011001111111011101001;
		#400 //-9.425032e-05 * -2.6998972e-34 = 3.4908855e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011100001000101110000011;
		b = 32'b10001010111000011101001011010110;
		correct = 32'b11101101000010000101100000100100;
		#400 //5.735039e-05 * -2.174602e-32 = -2.6372823e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000110001010011111110000110;
		b = 32'b01011000011110011011000001101011;
		correct = 32'b01010111110010100011101111001011;
		#400 //4.8836274e+29 * 1098144400000000.0 = 444716300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110111011100110010001011111;
		b = 32'b01010010111000011101110111100001;
		correct = 32'b10010011100001110001100100100011;
		#400 //-1.6541773e-15 * 485045080000.0 = -3.4103578e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111010010111001011110001111;
		b = 32'b10101000101010011101000001100001;
		correct = 32'b11111110000110010111010111110011;
		#400 //9.6143616e+23 * -1.8853139e-14 = -5.099608e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100101110100110011111010010;
		b = 32'b11101011000000100001011001110011;
		correct = 32'b00001001001101110110100111111111;
		#400 //-3.472074e-07 * -1.5726637e+26 = 2.2077663e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111001101110001000001110000;
		b = 32'b00010110000111111111101011101000;
		correct = 32'b10111000100100100111100000110111;
		#400 //-9.025762e-30 * 1.292309e-25 = -6.984214e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111110111101111010101101101;
		b = 32'b10111010001100011000111010110101;
		correct = 32'b11001101001000001011101010111110;
		#400 //114154.85 * -0.0006773279 = -168537060.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000010111100010011001101100;
		b = 32'b00101010000100000000101001011000;
		correct = 32'b11000101110001010110100101001110;
		#400 //-8.081773e-10 * 1.2793358e-13 = -6317.163
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100011010000111010101000110;
		b = 32'b01000110010010001011000110111000;
		correct = 32'b00011101100101000100001000110010;
		#400 //5.0406315e-17 * 12844.43 = 3.924372e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001100111001110001000101010;
		b = 32'b01111001010011100011110001100001;
		correct = 32'b00100111110000101011110100101111;
		#400 //3.617486e+20 * 6.692736e+34 = 5.405093e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110011010001100001000001;
		b = 32'b11011000001101011111100101110011;
		correct = 32'b01010000000100000100001101000011;
		#400 //-7.74826e+24 * -800331900000000.0 = 9681309000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010001010101000111101101111;
		b = 32'b01011001000110100010011010010111;
		correct = 32'b11100000100011011010000000110010;
		#400 //-2.2139991e+35 * 2711848500000000.0 = -8.164169e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011001111010011001010010111;
		b = 32'b01110011011000011001101111100100;
		correct = 32'b10001111010101101010111100001111;
		#400 //-189.19762 * 1.7874582e+31 = -1.058473e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000101101110111100001001011;
		b = 32'b01001000011011110011101111101100;
		correct = 32'b10011111110001000101001111101001;
		#400 //-2.036925e-14 * 244975.69 = -8.3148047e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010011110110101110000011011;
		b = 32'b10011011000011111011110111110110;
		correct = 32'b11101110110111111101010011110111;
		#400 //4118278.8 * -1.1890062e-22 = -3.4636308e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010011110101011010100010010;
		b = 32'b00100011101010000101110110100011;
		correct = 32'b00111110001111101001100110100001;
		#400 //3.3977176e-18 * 1.8254253e-17 = 0.18613292
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100111011110001001111111110;
		b = 32'b11101010100000110100001110100101;
		correct = 32'b10010001111010010010000111111110;
		#400 //0.029184338 * -7.934436e+25 = -3.6781867e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011110101000101010111111001;
		b = 32'b00111000100110100011100001011001;
		correct = 32'b00101010101100000011110000101011;
		#400 //2.3021497e-17 * 7.353788e-05 = 3.130563e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110010111101001010111111001;
		b = 32'b01110011100001011001110011010101;
		correct = 32'b00111010010101010011110001011001;
		#400 //1.7221744e+28 * 2.1171766e+31 = 0.00081342977
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101101100010000000111011;
		b = 32'b01101001100011101100001110101101;
		correct = 32'b10100001101000110100101001110110;
		#400 //-23871606.0 * 2.157394e+25 = -1.1065019e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010110011001000011001111010;
		b = 32'b11101011000101010110000011101101;
		correct = 32'b10011111001011110100000100010111;
		#400 //6701885.0 * -1.8058767e+26 = -3.7111532e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001010110010111010111000100;
		b = 32'b11100111101101111100011101111011;
		correct = 32'b01001001000101110111010101010001;
		#400 //-1.0768099e+30 * -1.7357457e+24 = 620373.06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101011100011010101000010011;
		b = 32'b10110110110101101001000111000000;
		correct = 32'b11000110000100000010100111010010;
		#400 //0.059000086 * -6.3946645e-06 = -9226.455
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001110001101110100000011011;
		b = 32'b00110110011000111111110111101001;
		correct = 32'b00111010110111110101011110000000;
		#400 //5.7889458e-09 * 3.397343e-06 = 0.0017039627
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110110001001000111110111;
		b = 32'b11000110011101101010111110100001;
		correct = 32'b00110101111000001011111100111111;
		#400 //-0.026436789 * -15787.907 = 1.674496e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000000101000010100010010010;
		b = 32'b11000001110010100100101011001110;
		correct = 32'b11011101101110110111111001110101;
		#400 //4.2703774e+19 * -25.286526 = -1.6887956e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110010000011010100101011111;
		b = 32'b10101011110000000001110101111110;
		correct = 32'b01101010000000010000011111000011;
		#400 //-53233297000000.0 * -1.3650606e-12 = 3.899702e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111100000000001111001111111;
		b = 32'b10001011100010100000100010010001;
		correct = 32'b11011011011011011001110011010110;
		#400 //3.55602e-15 * -5.3168556e-32 = -6.6882012e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000000100111011111110011111;
		b = 32'b10110111011100110000101001010100;
		correct = 32'b10100000000110111010000001111110;
		#400 //1.9096049e-24 * -1.4486333e-05 = -1.3182113e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111111111101011100111000;
		b = 32'b00011010101010011010001001110110;
		correct = 32'b00101101110000010000110001000101;
		#400 //1.5397852e-33 * 7.015923e-23 = 2.1947008e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101101001100001011011000001;
		b = 32'b00111101110111001010000001111100;
		correct = 32'b10101111010000001011011111001001;
		#400 //-1.888212e-11 * 0.107727975 = -1.7527592e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111001011110101101101010100;
		b = 32'b00101010011001010010110011111000;
		correct = 32'b11111100010000111110000110111010;
		#400 //-8.2809884e+23 * 2.0354887e-13 = -4.0683047e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100000010111101111001001011;
		b = 32'b11001001000000010101110100000000;
		correct = 32'b00010010100010100110010011110100;
		#400 //-4.627855e-22 * -529872.0 = 8.733911e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101100110100110000100110001;
		b = 32'b01111011001101001111111100010110;
		correct = 32'b00101001110110100101101001111010;
		#400 //9.112966e+22 * 9.397872e+35 = 9.69684e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100010011000011110000110;
		b = 32'b11010100000010000000101110100011;
		correct = 32'b10110001000000010110010101101100;
		#400 //4400.9404 * -2337243100000.0 = -1.8829622e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001110101111100111110000;
		b = 32'b01100011001101101011001001010011;
		correct = 32'b11000010100000101111111110011010;
		#400 //-2.2074267e+23 * 3.370157e+21 = -65.49922
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100111101000000000100010;
		b = 32'b11001001111011100101001011111000;
		correct = 32'b00010001001010100100000110010000;
		#400 //-2.622171e-22 * -1952351.0 = 1.3430838e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001010001001011100000001;
		b = 32'b01101101011010011111101101010010;
		correct = 32'b00001010001110000111010001100000;
		#400 //4.0194955e-05 * 4.5258647e+27 = 8.8811654e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001110000010000011001001;
		b = 32'b01000111111110011000100101001101;
		correct = 32'b10101111101111001110010111000010;
		#400 //-4.3899552e-05 * 127762.6 = -3.4360254e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100001111000111100110000;
		b = 32'b00011000110110101101110101000011;
		correct = 32'b01101000000111101000111101101111;
		#400 //16.944916 * 5.6575096e-24 = 2.9951191e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000111001110001110001101;
		b = 32'b10011111100010111000001110010010;
		correct = 32'b10101101000011111111000011100101;
		#400 //4.8345116e-31 * -5.9086455e-20 = -8.182098e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010100001000101101000110000;
		b = 32'b00001111111101010001101001010110;
		correct = 32'b01011010000010100011110010010010;
		#400 //2.351049e-13 * 2.416901e-29 = 9727536000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100000000001110101000010;
		b = 32'b10101100110100110011110010000011;
		correct = 32'b01000101000110110100001101101000;
		#400 //-1.4914466e-08 * -6.003699e-12 = 2484.213
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101100100100111110001001101;
		b = 32'b10100000010100010111110101010101;
		correct = 32'b10101100101100110000001000001001;
		#400 //9.027869e-31 * -1.7744457e-19 = -5.087712e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110011001000110000010100000;
		b = 32'b11101001101101100010101111100011;
		correct = 32'b10110100001000000111011101001001;
		#400 //4.1140822e+18 * -2.7528969e+25 = -1.4944557e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110111011001110101010011010;
		b = 32'b01110111111111111100010010001011;
		correct = 32'b00010110011011010010000110101101;
		#400 //1987398900.0 * 1.03751724e+34 = 1.9155334e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111010110101011101010111100;
		b = 32'b11011110101011101100111000010000;
		correct = 32'b10110000001000000010100111011010;
		#400 //3669671000.0 * -6.2980114e+18 = -5.8267136e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010011011000010110101001100;
		b = 32'b00100001010100000110101110101011;
		correct = 32'b01001000100100010000101111011111;
		#400 //2.0976726e-13 * 7.061564e-19 = 297054.97
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011110000100111000000001100;
		b = 32'b00110011011011000110110100111110;
		correct = 32'b10110111110100101000100011100111;
		#400 //-1.3815628e-12 * 5.5047387e-08 = -2.5097701e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111110101110001110100111101;
		b = 32'b11100000000101101110101101010010;
		correct = 32'b10011111001101100111001000110010;
		#400 //1.6805798 * -4.3499504e+19 = -3.863446e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001000000100111001110100010;
		b = 32'b00100101101011111100000101001111;
		correct = 32'b10011010101111100000001100100110;
		#400 //-2.3960191e-38 * 3.0488652e-16 = -7.8587245e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001110011100011001000010100;
		b = 32'b10110101100010011010001111001001;
		correct = 32'b01101011101111111100000100100011;
		#400 //-4.7545472e+20 * -1.0254963e-06 = 4.636338e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101101011101111110010100;
		b = 32'b10100110100011110010011010000101;
		correct = 32'b10111011101000101001111111100111;
		#400 //4.929687e-18 * -9.933059e-16 = -0.0049629095
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111100101111000010110100;
		b = 32'b11011010111111101110111000111100;
		correct = 32'b01001000011100111111010110011000;
		#400 //-8.962913e+21 * -3.5878293e+16 = 249814.38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100011100010101010100000101;
		b = 32'b11110000000111000110111000100101;
		correct = 32'b10110011110001010111100010110001;
		#400 //1.7807166e+22 * -1.9365127e+29 = -9.195481e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110001101001011101001111000;
		b = 32'b11000001000111110010001110111110;
		correct = 32'b11111100100100010101110101001001;
		#400 //6.005731e+37 * -9.946226 = -6.038201e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111100111111010101010111000;
		b = 32'b01001010001111000011011000000111;
		correct = 32'b11100100110110010010110011001000;
		#400 //-9.882901e+28 * 3083649.8 = -3.2049362e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101000000001100010101001000;
		b = 32'b10111011001111010000110100010000;
		correct = 32'b10100001001011100101111101010110;
		#400 //1.704265e-21 * -0.0028846897 = -5.907967e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110111100110011101101111001;
		b = 32'b00110000100111011010111000010010;
		correct = 32'b01100101110001010111001011101100;
		#400 //133718380000000.0 * 1.1472727e-09 = 1.1655327e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011010111010011011111111010;
		b = 32'b00011111000001000000110110100000;
		correct = 32'b01110011110101100110110110111001;
		#400 //950126900000.0 * 2.7963358e-20 = 3.3977569e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101001011000001100100100;
		b = 32'b01111000000001101011100010110101;
		correct = 32'b10011000000111010100000100101010;
		#400 //-22214680000.0 * 1.0929908e+34 = -2.0324674e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001111110101101000111010100;
		b = 32'b10100000111011110110000011101100;
		correct = 32'b11010000100001100001111000100011;
		#400 //7.2998123e-09 * -4.0552312e-19 = -18000976000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111111111100100110011100100;
		b = 32'b01011001100110001011100000000001;
		correct = 32'b10100101110101010010001111001001;
		#400 //-1.9867215 * 5373314000000000.0 = -3.697386e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101110010101100110110011;
		b = 32'b10110011001111111111000100111111;
		correct = 32'b01000101111101110011010101000011;
		#400 //-0.0003535278 * -4.4690065e-08 = 7910.6577
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111000010110000110000001101;
		b = 32'b10111100110110000011000001001000;
		correct = 32'b11101001101001001010011100011100;
		#400 //6.5663124e+23 * -0.02639021 = -2.4881623e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111100101010101100000000110;
		b = 32'b00100001111001011100010111001011;
		correct = 32'b01000101001001100110010000000011;
		#400 //4.1451243e-15 * 1.5569999e-18 = 2662.2507
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000010011101101011110010;
		b = 32'b11011010011111101101100101110111;
		correct = 32'b10110001000010100111101001000101;
		#400 //36137930.0 * -1.7933437e+16 = -2.0151145e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010000101100000100110101000;
		b = 32'b00101001000110101101110001100100;
		correct = 32'b11010000011110000000011011011101;
		#400 //-0.0005723485 * 3.4386028e-14 = -16644797000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000000010011010001010010;
		b = 32'b11001100110001000011001110110001;
		correct = 32'b00110000101010001001010101000100;
		#400 //-0.12617615 * -102866310.0 = 1.2266033e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101110011011010000010011;
		b = 32'b10101100010011100011111011110110;
		correct = 32'b00111001111001101000000001111010;
		#400 //-1.2885763e-15 * -2.930931e-12 = 0.0004396474
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000010110100010010010110;
		b = 32'b10110110001001001110010110011101;
		correct = 32'b01011111010110000011011000011011;
		#400 //-38281673000000.0 * -2.4571557e-06 = 1.557967e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000110111110010010000111110;
		b = 32'b10001010001011000011101101000010;
		correct = 32'b11000110001001011101010111101110;
		#400 //8.801383e-29 * -8.292644e-33 = -10613.482
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110101110111001010111001011;
		b = 32'b00011010000100011001000011011010;
		correct = 32'b11110100001001001111001011011111;
		#400 //-1573578100.0 * 3.0102307e-23 = -5.2274334e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000100010100111110001011010;
		b = 32'b01001111111010101100000001111011;
		correct = 32'b11001000000101110000010101000001;
		#400 //-1218133500000000.0 * 7876966000.0 = -154645.02
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100010010100100001011010001;
		b = 32'b11000101100101010110001101010011;
		correct = 32'b10100110001011010100110110011011;
		#400 //2.8743017e-12 * -4780.4155 = -6.0126607e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010000000000000110011100010;
		b = 32'b01110000110110010111110010001111;
		correct = 32'b10101000100101101011100111011100;
		#400 //-9010740000000000.0 * 5.3847063e+29 = -1.6733949e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000101101010100111110101;
		b = 32'b11111011011001110111001110011001;
		correct = 32'b00000010001001101010010011001101;
		#400 //-0.14713271 * -1.2017652e+36 = 1.2243049e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010110011010100011111000001;
		b = 32'b11111100101101110110111001001010;
		correct = 32'b10111101100011110011111100101110;
		#400 //5.329381e+35 * -7.619418e+36 = -0.069944724
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001010101000001101000000010;
		b = 32'b00110110011000100011100000001111;
		correct = 32'b10011010011100000000011000101100;
		#400 //-1.6731865e-28 * 3.3709255e-06 = -4.9635822e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001110010001011000111101001;
		b = 32'b10110001000011011111011101110010;
		correct = 32'b00111000001101001111001101100010;
		#400 //-8.912647e-14 * -2.0658857e-09 = 4.3142012e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010111010001011101010111111;
		b = 32'b10011001100000011100100000000110;
		correct = 32'b01101000111001011000100011111100;
		#400 //-116.36474 * -1.3419076e-23 = 8.671591e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001011010011001110111011000;
		b = 32'b00110101011100000000110000011110;
		correct = 32'b11010011011110010010010001010010;
		#400 //-956893.5 * 8.94246e-07 = -1070056200000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110001100000011101011001000;
		b = 32'b11110000100010111001001010010100;
		correct = 32'b01001101001000011001111000011110;
		#400 //-5.8562334e+37 * -3.4556495e+29 = 169468380.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001000111010110101111001011;
		b = 32'b01011110100001010101100100010101;
		correct = 32'b00100010000101110001101110001110;
		#400 //9.838817 * 4.804367e+18 = 2.0478903e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111100011000000010000000101;
		b = 32'b01010111111111000101101101101101;
		correct = 32'b11001111000011100000100101110001;
		#400 //-1.3224109e+24 * 554939200000000.0 = -2382983400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110011101110111111110001100;
		b = 32'b01100000111110101110000001110101;
		correct = 32'b11011100111111001000110101101101;
		#400 //-8.2245394e+37 * 1.4462062e+20 = -5.6869755e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011000000010111101010001010;
		b = 32'b11011000100001101101001011100111;
		correct = 32'b10010001111101011101100111001010;
		#400 //4.6000064e-13 * -1185923000000000.0 = -3.8788407e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101010110101100110011011111;
		b = 32'b10010111100101001001111100000110;
		correct = 32'b11011101001111000111000100010110;
		#400 //8.1509455e-07 * -9.604419e-25 = -8.4866616e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100100101010111001000111010;
		b = 32'b10100101000011000101001111010110;
		correct = 32'b11000111000010000101000101010010;
		#400 //4.2475164e-12 * -1.2171469e-16 = -34897.32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001101100110110011011100010;
		b = 32'b01001010110001000101110100000000;
		correct = 32'b10100110011010011110001100101000;
		#400 //-5.221282e-09 * 6434432.0 = -8.114597e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010011110101110010000000000;
		b = 32'b00010011001000101011011100110001;
		correct = 32'b00111110110001010101110011011111;
		#400 //7.916712e-28 * 2.0537595e-27 = 0.38547418
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111100010100100001010100001;
		b = 32'b00100011001000011110001101100000;
		correct = 32'b10101011110110101010001011100011;
		#400 //-1.3633515e-29 * 8.775976e-18 = -1.5535042e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100100100100011110010010101;
		b = 32'b00011001110100100100110001111110;
		correct = 32'b00111010001100100000010000100010;
		#400 //1.4766128e-26 * 2.1744386e-23 = 0.0006790777
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110101000001001100010000;
		b = 32'b00010000011100011100011110100000;
		correct = 32'b01001001111000001000110000101101;
		#400 //8.771194e-23 * 4.7682655e-29 = 1839493.6
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000111001110000001010100101;
		b = 32'b10101100100000000000001111010000;
		correct = 32'b00110011111001101111101111000100;
		#400 //-3.9134672e-19 * -3.638402e-12 = 1.07560055e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111110110111010011111001111;
		b = 32'b00000001001000111010111000001001;
		correct = 32'b01100110001010111100011000010111;
		#400 //6.096665e-15 * 3.0063236e-38 = 2.027947e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110011110001010111100001100;
		b = 32'b10101010011000101101011010100101;
		correct = 32'b00101011100011000101001110101100;
		#400 //-2.0088516e-25 * -2.0147302e-13 = 9.970822e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000001010000001011101101001;
		b = 32'b00110000111100011000101011010001;
		correct = 32'b00001110001010011111011011110010;
		#400 //3.681818e-39 * 1.7574512e-09 = 2.0949758e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101011101101100111101100;
		b = 32'b01000000100100101101001111111000;
		correct = 32'b00111011100110000110111000000110;
		#400 //0.021344148 * 4.588375 = 0.0046517877
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010100101010110111000001010;
		b = 32'b01111101100101110011000110010100;
		correct = 32'b10100100011111010000001101110101;
		#400 //-1.378247e+21 * 2.5121356e+37 = -5.4863558e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111010100011001101111000000;
		b = 32'b10100010111100010111101110101001;
		correct = 32'b10100011110111100011010110001101;
		#400 //1.5769183e-34 * -6.545411e-18 = -2.4091968e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001110001010100111001000;
		b = 32'b00000000000011001010100111111011;
		correct = 32'b11110001111010010100111011100100;
		#400 //-2.6872033e-09 * 1.163003e-39 = -2.3105722e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110110101101001111010011101;
		b = 32'b01001100001001011010010100111010;
		correct = 32'b01100010001001011101100000010100;
		#400 //3.3210772e+28 * 43422950.0 = 7.648207e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001101110100111100001010;
		b = 32'b11100001111010000000110111111010;
		correct = 32'b10111110110010100011100101100001;
		#400 //2.113406e+20 * -5.3508147e+20 = -0.39496902
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000110111010011001100010010;
		b = 32'b00111010110001101001111000011010;
		correct = 32'b10011101100011101000110110010010;
		#400 //-5.717873e-24 * 0.0015153319 = -3.7733467e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010000011110101010101100010;
		b = 32'b00101100110001001010111101101100;
		correct = 32'b11101100101110101000111100010100;
		#400 //-1.00862e+16 * 5.590131e-12 = -1.804287e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000001110001111011010000;
		b = 32'b00111110111111110001010001000000;
		correct = 32'b10000010100001111001101110110010;
		#400 //-9.927076e-38 * 0.49820137 = -1.9925832e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111100100000011001101110010;
		b = 32'b11101010011000000000100111100001;
		correct = 32'b00010100101001001100010111010000;
		#400 //-1.12657 * -6.771151e+25 = 1.6637791e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101101110110001011011001100;
		b = 32'b10010000101011101001101000011100;
		correct = 32'b01111100100010010010011101111010;
		#400 //-392354180.0 * -6.886834e-29 = 5.697163e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100001011111000100110100000;
		b = 32'b01000010101101110010101001110101;
		correct = 32'b00111000111101010101011010100101;
		#400 //0.010713965 * 91.582924 = 0.00011698649
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010111101101100101110110101;
		b = 32'b11101111101100100110111100101110;
		correct = 32'b00010010101100010000101000000101;
		#400 //-123.397865 * -1.1044548e+29 = 1.117274e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010001110100101111101000;
		b = 32'b01000111000111000111000100011000;
		correct = 32'b00110001101000110001000001000110;
		#400 //0.00019006396 * 40049.094 = 4.7457744e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100000110001111111011111000;
		b = 32'b00011010111100001011101101000010;
		correct = 32'b11000000101000101011001100101000;
		#400 //-5.062212e-22 * 9.9564205e-23 = -5.0843697
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010101011010001001100000101;
		b = 32'b10011101000000011011110110001110;
		correct = 32'b11111101001010101100000010100110;
		#400 //2.4358042e+16 * -1.7171005e-21 = -1.4185565e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000010010001000011101101100;
		b = 32'b00101101101001101100001111001100;
		correct = 32'b00010001110111101010110110001011;
		#400 //6.660736e-39 * 1.8958966e-11 = 3.5132378e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100001111001111011011000;
		b = 32'b00111010010101100001011100000010;
		correct = 32'b01110011101000100010101101100011;
		#400 //2.0986253e+28 * 0.00081668806 = 2.569678e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110011110010100110100111;
		b = 32'b11010000010111001000101000101001;
		correct = 32'b00100010111100000111100011011111;
		#400 //-9.646765e-08 * -14800168000.0 = 6.5180108e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011111011010100011110010001;
		b = 32'b00111000011100011100000011101000;
		correct = 32'b11011010111110110100001100101010;
		#400 //-2038215900000.0 * 5.7638536e-05 = -3.5362033e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111100101001001110101010100;
		b = 32'b11011100011011001000000101100011;
		correct = 32'b11010010101000001101110101010001;
		#400 //9.198796e+28 * -2.6628143e+17 = -345453920000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000010111101101110000110111;
		b = 32'b01100001001100011010100110010011;
		correct = 32'b00101110101000001001000001000110;
		#400 //14955896000.0 * 2.048308e+20 = 7.301586e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011101001000110111111001001;
		b = 32'b01000010111000001100011110010010;
		correct = 32'b00111000001110110100011010011110;
		#400 //0.0050182086 * 112.389786 = 4.465004e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100110010110111011101001;
		b = 32'b11110011110000100001000001000111;
		correct = 32'b01000100010010100110011011111011;
		#400 //-2.4895967e+34 * -3.0750602e+31 = 809.6091
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100010100010101101110010001;
		b = 32'b00110110011110011101010000110000;
		correct = 32'b00011101010101101000011101110101;
		#400 //1.0569862e-26 * 3.72274e-06 = 2.8392694e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110101101111000001100010010;
		b = 32'b00000001011101001011001101011100;
		correct = 32'b01001100101111111111110001100100;
		#400 //4.52392e-30 * 4.4944406e-38 = 100655900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101101100100111011111110100;
		b = 32'b11010011111100101011010011010011;
		correct = 32'b00011001001111000011111001100111;
		#400 //-2.0289527e-11 * -2084831600000.0 = 9.731974e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001111111110000000110111011;
		b = 32'b01101100111101111001001101010111;
		correct = 32'b11001100100000111101011110010000;
		#400 //-1.6550885e+35 * 2.3944038e+27 = -69123200.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110001010001000110010100;
		b = 32'b10111010000110100000001110000011;
		correct = 32'b10101011001000111100100001100010;
		#400 //3.4185964e-16 * -0.0005875157 = -5.818732e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001001011110000101001010011;
		b = 32'b10001111000000110110101111101100;
		correct = 32'b11110001101010100111101110101111;
		#400 //10.940021 * -6.479584e-30 = -1.6883832e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001111001000001010101001111;
		b = 32'b11000001101010110111001011110101;
		correct = 32'b01011111101010100100100000100101;
		#400 //-5.2592414e+20 * -21.431131 = 2.4540196e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000100010101010001110001010;
		b = 32'b10101010010010110110000100000110;
		correct = 32'b01100101101011101000001001100110;
		#400 //-18607788000.0 * -1.8063684e-13 = 1.0301215e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110011010100000111101110;
		b = 32'b10010111011010011000110001101110;
		correct = 32'b11010110111000001111110101000100;
		#400 //9.334032e-11 * -7.546361e-25 = -123689190000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001101110001100110110001110;
		b = 32'b00000011011111000011001101110100;
		correct = 32'b10111101101110111001011000110011;
		#400 //-6.788588e-38 * 7.411521e-37 = -0.091595076
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110101000000000100011100111;
		b = 32'b01001110011000000001000100100001;
		correct = 32'b10100111101101101101011110011111;
		#400 //-4.769408e-06 * 939804740.0 = -5.0748924e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000101100110010101110010010;
		b = 32'b10000101100001101001100100001111;
		correct = 32'b11000010101010100110001100101101;
		#400 //1.0783414e-33 * -1.2657524e-35 = -85.1937
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111110100111010010010000001;
		b = 32'b01011001000010100000000010000101;
		correct = 32'b10100110010001000100110110100100;
		#400 //-1.6534578 * 2427757400000000.0 = -6.8106383e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101100000111001001100011;
		b = 32'b01000111011111100110011001110111;
		correct = 32'b01011010101100011000111001101111;
		#400 //1.6274347e+21 * 65126.465 = 2.498884e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111011100000100011010101011;
		b = 32'b11110110100111011001000111001110;
		correct = 32'b10111000010000110010111110001111;
		#400 //7.4361835e+28 * -1.597945e+33 = -4.6535915e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111110010001100010001110;
		b = 32'b10101001111100100001110100111100;
		correct = 32'b11000001100000111011000011101010;
		#400 //1.7699329e-12 * -1.075203e-13 = -16.461384
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011000111100110100000001101;
		b = 32'b01110110110111101111010111010011;
		correct = 32'b10001011101101011110000101010100;
		#400 //-158.40645 * 2.2610856e+33 = -7.00577e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011101000010100100001000101;
		b = 32'b11010000010001010011000110001001;
		correct = 32'b10101010110100010110000100100101;
		#400 //0.0049219453 * -13233432000.0 = -3.7193266e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010010000010110000011010;
		b = 32'b00010101000000110100100111110000;
		correct = 32'b01101000110000110010100001101100;
		#400 //0.19548073 * 2.6513566e-26 = 7.372857e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110000111000100010101011001;
		b = 32'b01111110011110111100100111010101;
		correct = 32'b10101111000111101110001010000001;
		#400 //-1.2090874e+28 * 8.367105e+37 = -1.4450487e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000111001011101011101101011;
		b = 32'b00010001000101001110001001111001;
		correct = 32'b11010111010001011001100111000110;
		#400 //-2.551753e-14 * 1.1744929e-28 = -217264240000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110100111101000001010001001;
		b = 32'b00011010100101010010001010101000;
		correct = 32'b11111011100010000000101111000101;
		#400 //-87141740000000.0 * 6.1680946e-23 = -1.4127822e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010010101010000111110100110;
		b = 32'b11110011110011111100101001011100;
		correct = 32'b00011110000000110011111100101011;
		#400 //-228772640000.0 * -3.2925714e+31 = 6.948145e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001100010101010101100110011;
		b = 32'b11111101111010010100100111110110;
		correct = 32'b00100011000110000010101100011100;
		#400 //-3.1974836e+20 * -3.876177e+37 = 8.249065e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101111010101000000001010100;
		b = 32'b10000111100111011110000100101011;
		correct = 32'b01100101101111100001111011100011;
		#400 //-2.665971e-11 * -2.3755076e-34 = 1.1222742e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010001111001001010011000000;
		b = 32'b11111011010110000101101110100001;
		correct = 32'b10111110010111110010001000111100;
		#400 //2.447922e+35 * -1.1233946e+36 = -0.21790403
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111111010001010001101000011;
		b = 32'b10001010110110011001110101110111;
		correct = 32'b11110100100010001101011000010100;
		#400 //1.8174824 * -2.0955572e-32 = -8.673027e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001001011100011011101100;
		b = 32'b10100001010100001110111110010100;
		correct = 32'b01101001010010110001111010010000;
		#400 //-10864364.0 * -7.079022e-19 = 1.5347267e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110101101100010111111101101;
		b = 32'b01000011000010111001010101010100;
		correct = 32'b11110011001001110001000110000100;
		#400 //-1.8475978e+33 * 139.58331 = -1.3236524e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011101100011110101110110000;
		b = 32'b11110001100011010010000011001111;
		correct = 32'b00100001101000010101111010110101;
		#400 //-1528326800000.0 * -1.3976656e+30 = 1.0934853e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001111111111001010000001000;
		b = 32'b01001100000011000000110011010101;
		correct = 32'b10001101011010011001011010000001;
		#400 //-2.6426171e-23 * 36713300.0 = -7.197983e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010100001000011000101100110;
		b = 32'b10101001110000100100110000001000;
		correct = 32'b11011000001011100010110001101110;
		#400 //66.09648 * -8.62852e-14 = -766023400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011110010010101110111100;
		b = 32'b11000010110011111010000110111001;
		correct = 32'b11001111000110011001101110011101;
		#400 //267545150000.0 * -103.815865 = -2577112300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111100101010001010101010001;
		b = 32'b00101000101101101001101101010101;
		correct = 32'b00110110010100010000000010110100;
		#400 //6.313922e-20 * 2.0273424e-14 = 3.1143836e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101011100101000001001010;
		b = 32'b11011000110000000011011000000000;
		correct = 32'b10111100011010000010100111000010;
		#400 //23957483000000.0 * -1690705300000000.0 = -0.014170112
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001011011100000100000110;
		b = 32'b01000110011110000101110101001101;
		correct = 32'b01011010001100110001100010000100;
		#400 //2.0032472e+20 * 15895.325 = 1.2602744e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000001111010010010101010;
		b = 32'b11000001100101100100100011001011;
		correct = 32'b10010111111001110000111101001100;
		#400 //2.805036e-23 * -18.785543 = -1.4931887e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010010101011011110011011;
		b = 32'b00011110011110100110010001010001;
		correct = 32'b00111100010011110100000111101111;
		#400 //1.6768375e-22 * 1.3255635e-20 = 0.012649997
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011100010111000100000000;
		b = 32'b10110101110111000000000111011110;
		correct = 32'b10111100000011000111100001101000;
		#400 //1.40537395e-08 * -1.6391821e-06 = -0.008573629
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110001011010110000001011001;
		b = 32'b11101111001000110001101000001010;
		correct = 32'b10101110100010000001000000111011;
		#400 //3.1232708e+18 * -5.0477536e+28 = -6.187447e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111010010010010000000001010;
		b = 32'b00111100010100000110000000101101;
		correct = 32'b01100010011101110001011110100101;
		#400 //1.4492595e+19 * 0.012718243 = 1.1395124e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000001000100000101010010111;
		b = 32'b10011110000010110001001110101000;
		correct = 32'b00111001100101010010001010110101;
		#400 //-2.0943356e-24 * -7.3626635e-21 = 0.00028445353
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000110110100101111110010001;
		b = 32'b10110100010110010101101000111101;
		correct = 32'b00100100000000001001100111100110;
		#400 //-5.6448177e-24 * -2.0242528e-07 = 2.7885933e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010000100110101001111101;
		b = 32'b11000110001011000001111010111011;
		correct = 32'b00010111100100001001010010101100;
		#400 //-1.0292296e-20 * -11015.683 = 9.343312e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100011100000001001111110101;
		b = 32'b01111000011001110111000100001110;
		correct = 32'b10010011100001001100011011000000;
		#400 //-62934996.0 * 1.8776775e+34 = -3.3517467e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010111001111010011000111000;
		b = 32'b01101011111111101011010110011011;
		correct = 32'b00110110011010001101001010110011;
		#400 //2.1365876e+21 * 6.1584953e+26 = 3.4693337e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100100101111000110100111011;
		b = 32'b10001110000001101011111000001000;
		correct = 32'b10110110000011111111011111100000;
		#400 //3.562963e-36 * -1.6608272e-30 = -2.1452943e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101111100110010011001110111;
		b = 32'b01000101110011101000110000000010;
		correct = 32'b10111111100101101010111100000001;
		#400 //-7780.808 * 6609.501 = -1.1772157
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011011001110010011011111001;
		b = 32'b10101010000100010000010011100000;
		correct = 32'b01000000110011000000011001011100;
		#400 //-8.212177e-13 * -1.2880278e-13 = 6.3757763
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000001111011111110110100001;
		b = 32'b00110010010001111100011001011010;
		correct = 32'b11001101011100110111011001010111;
		#400 //-2.9686053 * 1.16284244e-08 = -255288690.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011011000010001010010000100;
		b = 32'b11000100000111101000001010111111;
		correct = 32'b11001110101101011100000110000010;
		#400 //966711840000.0 * -634.0429 = -1524678900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110000111000100000110000101;
		b = 32'b11011010100100110011011000000000;
		correct = 32'b10100011000001111101110101011000;
		#400 //0.15259369 * -2.0718098e+16 = -7.365236e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011010010011010011110001011;
		b = 32'b11111110000110001011000010001001;
		correct = 32'b00011100101010010000110000011111;
		#400 //-5.6760686e+16 * -5.073982e+37 = 1.1186615e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100100010111000111100101;
		b = 32'b10010110101010100010110001111111;
		correct = 32'b11111101010110101100110010011001;
		#400 //4997448700000.0 * -2.7493062e-25 = -1.8177127e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000100001100001010101110011;
		b = 32'b10110101110000110000110101010001;
		correct = 32'b01100010001011111111101100100011;
		#400 //-1179413500000000.0 * -1.4532508e-06 = 8.115691e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100110111011100001100001101;
		b = 32'b00011010011001001110011001010001;
		correct = 32'b01111001111110000000010001100110;
		#400 //7619681500000.0 * 4.7335343e-23 = 1.6097235e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010101010000000010001110011;
		b = 32'b10101100110011000111110010100001;
		correct = 32'b00110101010100100101011111100111;
		#400 //-4.55412e-18 * -5.8118653e-12 = 7.835901e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110000000010100100010000000;
		b = 32'b11101111111000010000011011100001;
		correct = 32'b00111101100100110001001111110111;
		#400 //-1.0002803e+28 * -1.3928489e+29 = 0.07181542
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110000010100000100001011000;
		b = 32'b01010100000010011110000110100011;
		correct = 32'b00101001100000000010001111101111;
		#400 //0.13479745 * 2368784300000.0 = 5.6905754e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101100000010011011110100;
		b = 32'b10011111100000101111100000001111;
		correct = 32'b10100011101011000010100010101110;
		#400 //1.03532935e-36 * -5.546752e-20 = -1.8665506e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011001100110110110000111011;
		b = 32'b10011010010110111101001000000110;
		correct = 32'b01000000010100001111010000010101;
		#400 //-1.4841504e-22 * -4.5457794e-23 = 3.2648976
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000000001100011101000001110;
		b = 32'b10101100010110101110011111110101;
		correct = 32'b00110011000111001111100011000000;
		#400 //-1.136945e-19 * -3.1108425e-12 = 3.6547817e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000100101110011110011011101;
		b = 32'b11100101111001111001011001001011;
		correct = 32'b01000010001001110010111000111011;
		#400 //-5.7136005e+24 * -1.3670488e+23 = 41.795147
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001001011110100110011000110;
		b = 32'b11011001101010101100000001110100;
		correct = 32'b10110111000000110110100011001110;
		#400 //47056708000.0 * -6007794000000000.0 = -7.83261e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010011011100110000011000001;
		b = 32'b01110110011110011100111000110111;
		correct = 32'b00111011011101000100100111111111;
		#400 //4.7215616e+30 * 1.2666645e+33 = 0.003727555
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100010001000100100010101100;
		b = 32'b00111011111110111101000000010011;
		correct = 32'b11001111110001111000110000111000;
		#400 //-51454640.0 * 0.0076847165 = -6695710700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111111000110000010100100101;
		b = 32'b10111001110101010111010111010111;
		correct = 32'b10011101100010000010000110001011;
		#400 //1.467083e-24 * -0.00040714323 = -3.6033583e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110000100011000111001000;
		b = 32'b01001010001001111011110011110010;
		correct = 32'b01000011000101000011000001010000;
		#400 //407255300.0 * 2748220.5 = 148.18872
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000110110110101010001010010;
		b = 32'b00101000001100101001010011000010;
		correct = 32'b11000000000111010011010011110001;
		#400 //-2.4350452e-14 * 9.913242e-15 = -2.4563563
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100011000101100101111001111;
		b = 32'b00101010100101101000101010100100;
		correct = 32'b11110001010000001101011000100011;
		#400 //-2.5534974e+17 * 2.6741554e-13 = -9.5487996e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101111111010011101101011;
		b = 32'b01101111001101101011010100100101;
		correct = 32'b10100001000001100100010010000001;
		#400 //-25723361000.0 * 5.654526e+28 = -4.549163e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010100010100101001101111001;
		b = 32'b00000101110000110100100011011111;
		correct = 32'b11000100001101010101010100100101;
		#400 //-1.3320316e-32 * 1.836448e-35 = -725.3304
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011100000100010111010000;
		b = 32'b11011101000100001100111101001001;
		correct = 32'b10101011110101000110000110101011;
		#400 //984157.0 * -6.5216495e+17 = -1.5090614e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011110011100100001001110001;
		b = 32'b11010111000111101000011111000010;
		correct = 32'b00010100001001101000100110010001;
		#400 //-1.4655622e-12 * -174305910000000.0 = 8.4079884e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001100001010011100111101110;
		b = 32'b00011101010010000011101100111001;
		correct = 32'b11101011101010100101010100100111;
		#400 //-1091389.8 * 2.6500397e-21 = -4.1183902e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101010000010001110100001;
		b = 32'b01011000000110011000010110111100;
		correct = 32'b00101001000011000010111111010010;
		#400 //21.017397 * 675198660000000.0 = 3.1127722e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010100110101111101101110001;
		b = 32'b01011011010111001000110110110100;
		correct = 32'b00011110101100111110001111101011;
		#400 //0.0011824203 * 6.20803e+16 = 1.9046627e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100110001101001100000000;
		b = 32'b01000001011101010111010101010110;
		correct = 32'b01010010100111110110001100110101;
		#400 //5251000000000.0 * 15.341146 = 342282100000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111010010000110001010000111;
		b = 32'b11000011110111101000000000010100;
		correct = 32'b00001010111001101000111000001011;
		#400 //-9.879737e-30 * -445.0006 = 2.2201625e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101111100100110110001001011;
		b = 32'b11101100011001010100111110000110;
		correct = 32'b00110001000001110101000110111011;
		#400 //-2.1835524e+18 * -1.1088782e+27 = 1.9691544e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100110110111010100101001011;
		b = 32'b11100100011110000100110010001001;
		correct = 32'b00101111111000100111100101100001;
		#400 //-7547505000000.0 * -1.832123e+22 = 4.1195405e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000010000001001000001001001;
		b = 32'b01101100110011100111010101100110;
		correct = 32'b00000010111011101100010101010100;
		#400 //7.0054235e-10 * 1.996745e+27 = 3.5084218e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100001000000111000101100;
		b = 32'b00000100100100101000100101010001;
		correct = 32'b11100101011001101011001110011000;
		#400 //-2.3457744e-13 * 3.445054e-36 = -6.8091076e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101110100001100110100101011;
		b = 32'b10110100001011010000111100011101;
		correct = 32'b00100001000110100110111110101100;
		#400 //-8.433423e-26 * -1.6117379e-07 = 5.2325026e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011010100001001000001110;
		b = 32'b01000100100100101011111111000110;
		correct = 32'b10000011010011000010101000111011;
		#400 //-7.0438037e-34 * 1173.9929 = -5.999869e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010110101010001001110010011;
		b = 32'b00101100100111101111001110010101;
		correct = 32'b11101101101010111001010111101010;
		#400 //-2.9987846e+16 * 4.517673e-12 = -6.6378965e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011010000010110110111111100;
		b = 32'b11001111011000101111110011101111;
		correct = 32'b00011011010110100010011100000100;
		#400 //-6.872001e-13 * -3808227000.0 = 1.8045144e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011000010001101101001001;
		b = 32'b10100110001101010101001100100100;
		correct = 32'b11000111100111101110100000000001;
		#400 //5.118331e-11 * -6.2909666e-16 = -81360.01
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110000110100111101011110;
		b = 32'b00000100011010100001011011101101;
		correct = 32'b11001011110101011001011100111100;
		#400 //-7.703622e-29 * 2.7517095e-36 = -27995768.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101110001110110111010000001;
		b = 32'b11001101011000001001001111000010;
		correct = 32'b11100111111000110101011000001100;
		#400 //5.056193e+32 * -235486240.0 = -2.147129e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010111001001111010010100000;
		b = 32'b11001001111010011000010111110110;
		correct = 32'b10100000011110101111111000011101;
		#400 //4.0670679e-13 * -1913022.8 = -2.1259903e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000101011100111011000101;
		b = 32'b00011011101101111011100100011010;
		correct = 32'b11011010110100001011111000000110;
		#400 //-8.929234e-06 * 3.039443e-22 = -2.9377864e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010110000010001000001011101;
		b = 32'b11110110110010100100101111010010;
		correct = 32'b00101011011101000101000100011101;
		#400 //-1.7807004e+21 * -2.0515269e+33 = 8.679878e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110010100111010101101101101;
		b = 32'b11001010111111011011110010110011;
		correct = 32'b10111010110101011000111010101111;
		#400 //13546.856 * -8314457.5 = -0.0016293133
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011010000111101011101101001;
		b = 32'b10101000101011010100000111100100;
		correct = 32'b11110010000100001010111101001101;
		#400 //5.5124466e+16 * -1.9235434e-14 = -2.865777e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111111000100010110011001;
		b = 32'b01001101101110000011000100110100;
		correct = 32'b01100001101011110100111101110011;
		#400 //1.5614872e+29 * 386279040.0 = 4.0423814e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101011010110001110100101110;
		b = 32'b10100111111100100101000011000000;
		correct = 32'b00100100111110000110010001010001;
		#400 //-7.245009e-31 * -6.7256042e-15 = 1.077228e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000011101010001001111010111;
		b = 32'b10100011101111011011000001011000;
		correct = 32'b01100100001001010110000000101100;
		#400 //-250959.36 * -2.0566106e-17 = 1.2202571e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111110110001010101001001;
		b = 32'b01000000001101100110001101100111;
		correct = 32'b01100101001100000011010111000011;
		#400 //1.4821333e+23 * 2.849817 = 5.2008014e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110100011010101110110011001;
		b = 32'b10111000011110101111000100100000;
		correct = 32'b10011101100100000011011100001101;
		#400 //2.2838847e-25 * -5.982921e-05 = -3.8173404e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010111011100011111011000101;
		b = 32'b10110101010110011101100001110010;
		correct = 32'b10111101000010111111110001111110;
		#400 //2.773539e-08 * -8.115377e-07 = -0.034176342
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011001110100010111110101011;
		b = 32'b11001100000010001111011011110000;
		correct = 32'b11000110101011011111111111111101;
		#400 //799663650000.0 * -35904450.0 = -22271.994
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010101011111100000101010;
		b = 32'b01000010101110011001110011000000;
		correct = 32'b01100011000100111000111000101001;
		#400 //2.5261047e+23 * 92.80615 = 2.721915e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010111111010000111110111100;
		b = 32'b10101001110011100000001010110010;
		correct = 32'b01010000100111010011101111101010;
		#400 //-0.0019307057 * -9.148705e-14 = 21103596000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111000000011101011100100;
		b = 32'b10100011011101010001101000110111;
		correct = 32'b01010001111010100011001100011011;
		#400 //-1.670644e-06 * -1.3287028e-17 = 125734970000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000011110001100101110001011;
		b = 32'b11011111100100001010111111110010;
		correct = 32'b10111000010111000001100111000111;
		#400 //1094212400000000.0 * -2.0851635e+19 = -5.2476094e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111101111001111110011001;
		b = 32'b01000011100011010110111111100010;
		correct = 32'b00011010111000000001100100101001;
		#400 //2.621815e-20 * 282.87408 = 9.268488e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111001100110010110000000001;
		b = 32'b00001001110101001101011010101001;
		correct = 32'b01101100110101111000000110010001;
		#400 //1.0679477e-05 * 5.123901e-33 = 2.0842473e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100011000100011110000111;
		b = 32'b00110111011010100100001111001010;
		correct = 32'b10111111100110010100101101101010;
		#400 //-1.6722608e-05 * 1.396327e-05 = -1.197614
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001000000100000101010000111;
		b = 32'b00110001110010011101001100111001;
		correct = 32'b10101110101001001111001010001010;
		#400 //-4.4059646e-19 * 5.873883e-09 = -7.50094e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101001100111001001100100101;
		b = 32'b11100110011011110001010100110011;
		correct = 32'b00011110010000000100100000000001;
		#400 //-2873.1965 * -2.8225916e+23 = 1.01792854e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011011000101001101101100010;
		b = 32'b00010111011001001110001001011111;
		correct = 32'b10110011011111010111001111110010;
		#400 //-4.3642914e-32 * 7.3956494e-25 = -5.9011604e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101010001100110010011111;
		b = 32'b01011100000111010111011100110110;
		correct = 32'b10110100000010010011011001111100;
		#400 //-22655859000.0 * 1.7729058e+17 = -1.277894e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100100100000011110001100;
		b = 32'b11001001010100111010010110011111;
		correct = 32'b00101000101100001010000110110010;
		#400 //-1.7000069e-08 * -866905.94 = 1.961005e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010100101001100011011111111;
		b = 32'b11010011110001111001111110001101;
		correct = 32'b10101110001111101100101101011101;
		#400 //74.388664 * -1714750600000.0 = -4.338162e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110111100010110110101010011;
		b = 32'b01001111011001110001100100010011;
		correct = 32'b10110111000001011011100010010111;
		#400 //-30902.662 * 3877180200.0 = -7.970396e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010010001100100000000111001;
		b = 32'b11111110100001111001111111111010;
		correct = 32'b10111011001110110001101011100111;
		#400 //2.5734434e+35 * -9.013821e+37 = -0.002854997
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001110110101000110010001;
		b = 32'b01110001110110101101000010111110;
		correct = 32'b00100001110110110010011010011010;
		#400 //3218109400000.0 * 2.1670428e+30 = 1.4850235e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001000001000101101000111011;
		b = 32'b10100111001110010101111101111011;
		correct = 32'b11111001001101101100011101011001;
		#400 //1.52592e+20 * -2.5725668e-15 = -5.931508e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011100101101000110000101;
		b = 32'b10100000011010011100111110011110;
		correct = 32'b01011100100001001110111001011110;
		#400 //-0.059281845 * -1.9804562e-19 = 2.9933428e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000110010010100011011101000;
		b = 32'b00110101101010010010000110111110;
		correct = 32'b00111010100110000101001111100010;
		#400 //1.4644828e-09 * 1.2601301e-06 = 0.0011621679
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101000100001011100001011;
		b = 32'b00100011010010111001001110110100;
		correct = 32'b01001001110010111101010001101011;
		#400 //1.84275e-11 * 1.1035929e-17 = 1669773.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000100000111110110011000101;
		b = 32'b01011011001110011110010101100100;
		correct = 32'b00011100101101011010110011110001;
		#400 //6.2906685e-05 * 5.232509e+16 = 1.202228e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101011100110001001010011000;
		b = 32'b00100000001010111110011000100011;
		correct = 32'b10110100101101001111111101100001;
		#400 //-4.9088127e-26 * 1.4560409e-19 = -3.3713425e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100100101010011100111010110;
		b = 32'b11100101000110111010010001011010;
		correct = 32'b10111110111101010111001001100100;
		#400 //2.202186e+22 * -4.593741e+22 = -0.47938836
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001101001101101001101110101;
		b = 32'b00010111010011100111110111000110;
		correct = 32'b10111001110011101101001100010001;
		#400 //-2.6320503e-28 * 6.672094e-25 = -0.0003944864
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011100000110100010011111;
		b = 32'b01110111110110001100010100110111;
		correct = 32'b00010110000011011111010101000110;
		#400 //1008347100.0 * 8.793251e+33 = 1.1467284e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100001011100100100111101100;
		b = 32'b11000010101000111000000001110110;
		correct = 32'b01110001000010000111000111011011;
		#400 //-5.523431e+31 * -81.7509 = 6.756417e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111010110011110011011100;
		b = 32'b11111110111101101011100101010110;
		correct = 32'b00100100011101000001010011111001;
		#400 //-8.6787405e+21 * -1.639762e+38 = 5.292683e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001010101111110101110011000;
		b = 32'b00001010001010100011100001000100;
		correct = 32'b11000110101000100101110110001000;
		#400 //-1.7033107e-28 * 8.195785e-33 = -20782.766
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000010010011111111111101010;
		b = 32'b10000111101011100100011101111010;
		correct = 32'b01101000000101000101110000000001;
		#400 //-7.348705e-10 * -2.622262e-34 = 2.8024296e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010011010000010100110111;
		b = 32'b11001010010001011000111101010000;
		correct = 32'b11010001100001001101010101101111;
		#400 //2.3083242e+17 * -3236820.0 = -71314560000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000100011000111101010000010;
		b = 32'b00110010010010011100101000111100;
		correct = 32'b00100101101100100011011110101111;
		#400 //3.6312853e-24 * 1.1745723e-08 = 3.091581e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101000100000100000001001;
		b = 32'b11110111000001110100000000001011;
		correct = 32'b00000010000110010101100001111001;
		#400 //-0.00030905035 * -2.7431993e+33 = 1.1266055e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111010110001101110010000;
		b = 32'b11000111010010101100111101111011;
		correct = 32'b10111011000101000110001000111110;
		#400 //117.55383 * -51919.48 = -0.0022641565
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101101110101101101100010110;
		b = 32'b10101100001001111100100100111100;
		correct = 32'b00100001000011101000110001000000;
		#400 //-1.1515878e-30 * -2.3843835e-12 = 4.829709e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100000100011100100100101110;
		b = 32'b11000100100110001011111000010111;
		correct = 32'b00000110111101000101011100100111;
		#400 //-1.1230934e-31 * -1221.9403 = 9.191066e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010000100011111010101100001;
		b = 32'b11101000111000001101100001011100;
		correct = 32'b00110000101001100010111011000111;
		#400 //-1.0270917e+16 * -8.49441e+24 = 1.2091385e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111011111100010001000001111;
		b = 32'b00010110000100100010001001010110;
		correct = 32'b01011000110111101001100011011010;
		#400 //2.3113265e-10 * 1.180462e-25 = 1957984600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000110000100101001101111101;
		b = 32'b10011010100110001101011101011000;
		correct = 32'b00100101101000101011111000001111;
		#400 //-1.7846036e-38 * -6.321363e-23 = 2.823131e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111000011101110010100011111;
		b = 32'b00000111111101001101000100100101;
		correct = 32'b10111110100101010110110000011110;
		#400 //-1.0750225e-34 * 3.6835964e-34 = -0.2918405
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100110001010101010100101001;
		b = 32'b11110101111100101000011000011010;
		correct = 32'b11000110010100000100110000110111;
		#400 //8.196878e+36 * -6.1487097e+32 = -13331.054
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100001110110110100010011100;
		b = 32'b01111110001010110111001011010111;
		correct = 32'b00101101100010111110101001011010;
		#400 //9.062525e+26 * 5.6973567e+37 = 1.5906543e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110000110100010000011010001;
		b = 32'b10101000111110000100101110100011;
		correct = 32'b00100100100111101110100100100111;
		#400 //-1.8997766e-30 * -2.7566333e-14 = 6.891655e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110001011011001011100111;
		b = 32'b01001011100111111110101010100100;
		correct = 32'b01001110100111100011110111011001;
		#400 //2.7823638e+16 * 20960584.0 = 1327426700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110110110010011010111010110;
		b = 32'b11000101011000001000001000001101;
		correct = 32'b11110000111101111010110110111011;
		#400 //2.2027741e+33 * -3592.1282 = -6.132226e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000100001111101000100100111;
		b = 32'b10111001101110010000010000111000;
		correct = 32'b01110110001110111110110010110100;
		#400 //-3.362666e+29 * -0.00035289093 = 9.52891e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010010010101101101010100;
		b = 32'b11001101100111010011110001110100;
		correct = 32'b00111000001000111110101010111011;
		#400 //-12886.832 * -329748100.0 = 3.9080838e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010001000011000010110010111;
		b = 32'b10010111011001010101101001101111;
		correct = 32'b11100010001101000100100110101100;
		#400 //0.0006161569 * -7.4108034e-25 = -8.3143064e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101001100000111111000000101;
		b = 32'b00001101101011010100000110010100;
		correct = 32'b01110111000000100110010000001011;
		#400 //2823.8762 * 1.0677736e-30 = 2.6446395e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000010011011001000001111001;
		b = 32'b00110101101011000000001110010110;
		correct = 32'b11000010000110001111011100110110;
		#400 //-4.901036e-05 * 1.2816042e-06 = -38.241417
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001001111001011100101111001;
		b = 32'b00001011011100011111001101100001;
		correct = 32'b11111101010001111010111011100010;
		#400 //-773015.56 * 4.659801e-32 = -1.6589026e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011011001010110111110010101;
		b = 32'b11100000101011101111110110100111;
		correct = 32'b00000010001001111101001100100010;
		#400 //-1.2437743e-17 * -1.00875345e+20 = 1.2329814e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100100001100010011111001101;
		b = 32'b00101110111001100000110101010001;
		correct = 32'b00010101000101010100100110000000;
		#400 //3.15398e-36 * 1.04615545e-10 = 3.0148292e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010010101110101100001000101;
		b = 32'b10100110000100001000000110101111;
		correct = 32'b01111011101111101011111100100000;
		#400 //-9.931026e+20 * -5.013579e-16 = 1.9808258e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111011001101001010011110101;
		b = 32'b01011010111101000100101101101110;
		correct = 32'b10010011111100011010000101010011;
		#400 //-2.0971298e-10 * 3.4381415e+16 = -6.099603e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010110111011010001101100;
		b = 32'b01011010011110100001001011101011;
		correct = 32'b11001100011000001110100101000101;
		#400 //-1.03752646e+24 * 1.7597386e+16 = -58959124.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100110000001010010011110101;
		b = 32'b00110011001100110000110010010100;
		correct = 32'b00100001000010011011100000010100;
		#400 //1.945211e-26 * 4.1688125e-08 = 4.666103e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011001100000011101000100001;
		b = 32'b01000101111101011000101001010010;
		correct = 32'b01011100101101111011101111101110;
		#400 //3.2508156e+21 * 7857.29 = 4.137324e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111111011010011011001111000;
		b = 32'b11001100101100110110111101111111;
		correct = 32'b01100010101010010011011100011101;
		#400 //-1.4682759e+29 * -94075896.0 = 1.5607355e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001111111011010100000011010;
		b = 32'b00110110011000111111111111001010;
		correct = 32'b10101011000011100110011101111101;
		#400 //-1.7188443e-18 * 3.3974525e-06 = -5.0592153e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111010100010000000111010100;
		b = 32'b00101001110111011111001110010101;
		correct = 32'b10100100111100010001000111100110;
		#400 //-1.0304848e-29 * 9.856626e-14 = -1.0454741e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111010000100101011111100111;
		b = 32'b11011010010011101000101010001100;
		correct = 32'b00001100011100001110000110011010;
		#400 //-2.697056e-15 * -1.4534045e+16 = 1.8556817e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011100110111000001110101010;
		b = 32'b01011010010111000100001111010011;
		correct = 32'b11001000101101001011111010010100;
		#400 //-5.7374655e+21 * 1.5499767e+16 = -370164.62
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110001111111101101111110010;
		b = 32'b10111010100110011010101011000100;
		correct = 32'b10100011000111111101000000011000;
		#400 //1.01569394e-20 * -0.0011723866 = -8.663473e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110011100001100101101011;
		b = 32'b01010101001100101000111110011111;
		correct = 32'b01000000000100111011110110010111;
		#400 //28326070000000.0 * 12270620000000.0 = 2.3084466
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111001000011001010000100;
		b = 32'b10001111000001001111110011001110;
		correct = 32'b00110110010110111010001110011100;
		#400 //-2.1459573e-35 * -6.556791e-30 = 3.2728776e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100100101100101100111100001;
		b = 32'b01110001001111101000000000101110;
		correct = 32'b00100010110010100000101110111110;
		#400 //5166024000000.0 * 9.433138e+29 = 5.4764642e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110100011011100010100100100;
		b = 32'b00111110011010110001010111000101;
		correct = 32'b10110111100110100110001000001110;
		#400 //-4.2250776e-06 * 0.22957523 = -1.840389e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001110101010100110101111010;
		b = 32'b01101000000111110011111001100001;
		correct = 32'b10111001001010110111001111011101;
		#400 //-4.918424e+20 * 3.0080278e+24 = -0.00016350993
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001000010100100011010010101;
		b = 32'b10010011111000011101001111110000;
		correct = 32'b00111100100111001100000000010010;
		#400 //-1.090803e-28 * -5.700697e-27 = 0.019134555
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111010110111010101000010011;
		b = 32'b00100100100110110010001000010001;
		correct = 32'b11010010001101010011111010100000;
		#400 //-1.3093016e-05 * 6.7278245e-17 = -194609940000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000101110010111101111100111;
		b = 32'b10010010000101010001110010010111;
		correct = 32'b01000110000111110011100011111101;
		#400 //-4.794649e-24 * -4.705135e-28 = 10190.247
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010111110110010011101011011;
		b = 32'b10000110001001100011000101011100;
		correct = 32'b11100100010000010110111110100000;
		#400 //4.4613865e-13 * -3.1257393e-35 = -1.427306e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011000011101010111011100011;
		b = 32'b11111101011100000111001001011100;
		correct = 32'b10010101000101111110100110100000;
		#400 //612819500000.0 * -1.9975532e+37 = -3.0678505e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001001001110011010111110110;
		b = 32'b10110100111100010000101100010100;
		correct = 32'b00110011101100011001011000010010;
		#400 //-3.7128253e-14 * -4.4897808e-07 = 8.2695024e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100110010010001010111110;
		b = 32'b00000000101110111001011011011101;
		correct = 32'b11100101010100001111101101010100;
		#400 //-1.0625925e-15 * 1.7227357e-38 = -6.1680526e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110110010111000101001100;
		b = 32'b00111101111000011010010011110101;
		correct = 32'b10001101011101101011000111100000;
		#400 //-8.375583e-32 * 0.11017791 = -7.601871e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100010000101111010011101101;
		b = 32'b00100000011100001000001100111010;
		correct = 32'b01110011010011111000001010111010;
		#400 //3349331300000.0 * 2.037221e-19 = 1.6440688e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100111100001000111011010110;
		b = 32'b10010110000110001011010000010000;
		correct = 32'b11110110010010011010010001011100;
		#400 //126121650.0 * -1.233528e-25 = -1.02244656e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010111010000011100000100101;
		b = 32'b00100011101101010011100011110001;
		correct = 32'b10101110101001000000010100010100;
		#400 //-1.4655099e-27 * 1.9648175e-17 = -7.4587586e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011001101110001101010010001;
		b = 32'b11010101111100100100100011011100;
		correct = 32'b10111100110000010111100000010010;
		#400 //786424700000.0 * -33299343000000.0 = -0.023616824
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100011001100101110110001111;
		b = 32'b01011010101101000111101110111000;
		correct = 32'b01001001001000110110000001110110;
		#400 //1.6997971e+22 * 2.5400763e+16 = 669191.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010001101010111010111100100;
		b = 32'b00111011100010001111001111110111;
		correct = 32'b00101110001010011001100100010011;
		#400 //1.6116931e-13 * 0.0041794735 = 3.856211e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000100000001111011011111001;
		b = 32'b11000110101110100001111000101011;
		correct = 32'b10000001001100010110001100110001;
		#400 //7.761783e-34 * -23823.084 = -3.2580932e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110011101011010011010100;
		b = 32'b10111011100001101001011111000101;
		correct = 32'b00001111110001001001010011000101;
		#400 //-7.9620394e-32 * -0.004107448 = 1.9384396e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110110110000010001111101000;
		b = 32'b00010101001100101011100001101010;
		correct = 32'b11011001000110101100110011011100;
		#400 //-9.828921e-11 * 3.609229e-26 = -2723274500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101100100100010111110110000;
		b = 32'b00011001111101100011001010111101;
		correct = 32'b11101011000110000000000110100000;
		#400 //-4677.961 * 2.5456297e-23 = -1.837644e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110100110000100110001111;
		b = 32'b01101111000101011101110011011000;
		correct = 32'b00011111001101000100000000001110;
		#400 //1770309500.0 * 4.638025e+28 = 3.8169467e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101000000110100101010100;
		b = 32'b11001011011101001110100110110110;
		correct = 32'b00110100101001111010110001010101;
		#400 //-5.0128574 * -16050614.0 = 3.1231562e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101111000010111111110111001;
		b = 32'b01010100000101000011111111001001;
		correct = 32'b10011001010000101011001011000101;
		#400 //-2.5636259e-11 * 2546901200000.0 = -1.0065667e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000110110001100000011100;
		b = 32'b01101110111100101011010010011100;
		correct = 32'b10000111101000111001011011110011;
		#400 //-9.244333e-06 * 3.7556858e+28 = -2.4614234e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000101100101110101111001;
		b = 32'b11000100011110101101100101100000;
		correct = 32'b10100010000110010111001111100100;
		#400 //2.0867353e-15 * -1003.3965 = -2.0796719e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110110100010110100101100111;
		b = 32'b01110011010101110100101011101100;
		correct = 32'b11001010111110010000000111010001;
		#400 //-1.3917797e+38 * 1.7057242e+31 = -8159464.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000010111000010001000001111;
		b = 32'b11001010010000010011011011001110;
		correct = 32'b10101101100100011101010101001101;
		#400 //5.2483807e-05 * -3165619.5 = -1.6579316e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000011001010000100101000100;
		b = 32'b00110010111100101111111100000100;
		correct = 32'b01010100111100010100101100000001;
		#400 //234533.06 * 2.8288476e-08 = 8290764000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111001000011111111111100011;
		b = 32'b11110001101001111001010111011101;
		correct = 32'b10100100111101110111011110011001;
		#400 //178120400000000.0 * -1.6596854e+30 = -1.0732178e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110010000100010000111000100;
		b = 32'b11100101100111000100011110010010;
		correct = 32'b00111000000111110000000010110101;
		#400 //-3.4971694e+18 * -9.225118e+22 = 3.7909213e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101101010111101100100111111;
		b = 32'b11111110100010101001100010101001;
		correct = 32'b00001110100111101011010111000010;
		#400 //-360392670.0 * -9.211306e+37 = 3.9125034e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100110100011100111100101101;
		b = 32'b00100011010100010101010100011111;
		correct = 32'b11001001000000000100101010100010;
		#400 //-5.9631384e-12 * 1.1347938e-17 = -525482.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011001001001010110000100011;
		b = 32'b10111001110010001001111011000101;
		correct = 32'b10110000110100100010000100001011;
		#400 //5.850339e-13 * -0.00038265265 = -1.5288902e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111110011000110100110101101;
		b = 32'b01000010001001110111001111100001;
		correct = 32'b00111101000111000100000010001101;
		#400 //1.596975 * 41.863163 = 0.038147498
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110000111101011010000101;
		b = 32'b11000111111000110111100011011000;
		correct = 32'b00000111010111000110011000001010;
		#400 //-1.9311114e-29 * -116465.69 = 1.6580947e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001001101000001011011101110;
		b = 32'b10010001100001011010000110011001;
		correct = 32'b10111111001011001000000000100101;
		#400 //1.4206562e-28 * -2.1083292e-28 = -0.67383033
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000010101010101110110110010;
		b = 32'b01011001101011101110100101110000;
		correct = 32'b00010110000111000010010000000000;
		#400 //7.76221e-10 * 6154164000000000.0 = 1.2612939e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000100001110000010111010110;
		b = 32'b11010110111010111101100110000000;
		correct = 32'b01011001000100101000111100001110;
		#400 //-3.3430025e+29 * -129659690000000.0 = 2578289800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010001001101101011011000100;
		b = 32'b00010110011111110010001000001001;
		correct = 32'b11101011001001110110011111101010;
		#400 //-41.709732 * 2.0609476e-25 = -2.0238133e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010001110011101101010110;
		b = 32'b11100100111001111000010011001110;
		correct = 32'b00100000110111000100110010000110;
		#400 //-12750.834 * -3.416614e+22 = 3.7320089e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010001111111110000001000000;
		b = 32'b01110101100110001000010111000010;
		correct = 32'b10100100001000010000011010111000;
		#400 //-1.3502072e+16 * 3.8669046e+32 = -3.4917e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110000101111111110101111011;
		b = 32'b10001011011100011011011011110110;
		correct = 32'b11101010001000001111100100000111;
		#400 //2.2648298e-06 * -4.6552556e-32 = -4.8651032e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011101110001010000010111;
		b = 32'b10110011000110010101101100001011;
		correct = 32'b11000001110011100011101000010001;
		#400 //9.2043905e-07 * -3.570589e-08 = -25.778353
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100000100001111000010101000;
		b = 32'b01110010010010011010101010111010;
		correct = 32'b10111001001101111111110101100101;
		#400 //-7.0088714e+26 * 3.9944245e+30 = -0.00017546637
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000001001100000011111001011;
		b = 32'b01110100111111011000111100100100;
		correct = 32'b00100010101001111010000011110011;
		#400 //730209600000000.0 * 1.607122e+32 = 4.5435852e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100001100000100010101100001;
		b = 32'b00111001101111000101101101111001;
		correct = 32'b01011001111011111001001011000010;
		#400 //3028313000000.0 * 0.00035926307 = 8429235000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110111100110011001000011101;
		b = 32'b10000000110100111110000001010011;
		correct = 32'b11110101100100101110101111000010;
		#400 //7.2477983e-06 * -1.9457762e-38 = -3.724888e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111000110001000110001010010;
		b = 32'b01000110110100011010010011011010;
		correct = 32'b00001111101110100100011101111110;
		#400 //4.929096e-25 * 26834.426 = 1.8368554e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111011100011101010010110101;
		b = 32'b00000001011110100111000100110001;
		correct = 32'b11111101011101110011001010011000;
		#400 //-0.9446519 * 4.599896e-38 = -2.0536376e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011010111000011110000110111;
		b = 32'b00001110110000101101100110011110;
		correct = 32'b01000100000100001010110100000111;
		#400 //2.7797592e-27 * 4.803425e-30 = 578.70355
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011001110000101111111000101;
		b = 32'b10111110010111110010011011011001;
		correct = 32'b00111100010100111000001110100100;
		#400 //-0.0028133255 * -0.21792163 = 0.012909804
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100000101110111010000110011;
		b = 32'b00111001101111111101101010011000;
		correct = 32'b10001001110010100001011110100011;
		#400 //-1.780332e-36 * 0.00036593224 = -4.865196e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100101110111111100100010111;
		b = 32'b00101001000011111000010101111111;
		correct = 32'b10101011001001111010010011101100;
		#400 //-1.8980423e-26 * 3.1868168e-14 = -5.9559194e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011000100110111010100101101;
		b = 32'b10000000101001100010001110110011;
		correct = 32'b11001001111000110011011010111100;
		#400 //2.8399323e-32 * -1.5257499e-38 = -1861335.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100110011111101100101101100;
		b = 32'b11000000100001000110000110100101;
		correct = 32'b01000011110010001111100001011010;
		#400 //-1662.7944 * -4.1369195 = 401.94025
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110010101001010111000111111;
		b = 32'b10101010111010111010100000000010;
		correct = 32'b11100010111001110000101001111010;
		#400 //892047300.0 * -4.1860965e-13 = -2.1309764e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100101111001000001100101101;
		b = 32'b00100011101111001110001100101011;
		correct = 32'b01111000011111110111110111100111;
		#400 //4.244922e+17 * 2.047921e-17 = 2.0727958e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000111110000101101010101010;
		b = 32'b11101111111101000000010001010011;
		correct = 32'b00011000100000100100011001101111;
		#400 //-508629.3 * -1.5103914e+29 = 3.3675332e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010000010011011101001001011;
		b = 32'b11001110011100000101000101110001;
		correct = 32'b00000011000100101011011100001111;
		#400 //-4.34592e-28 * -1007967300.0 = 4.3115685e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111100100111001000010001111;
		b = 32'b00011101111110100000001111100110;
		correct = 32'b01010001000101110001100011010111;
		#400 //2.684186e-10 * 6.617848e-21 = 40559800000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111100000011101111111100;
		b = 32'b10000000110100010011111101100111;
		correct = 32'b11000100100100101111010001111011;
		#400 //2.2591526e-35 * -1.9216363e-38 = -1175.64
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111110110110110100110000001;
		b = 32'b00111001011111011001010000010111;
		correct = 32'b10110101110111011000000111100100;
		#400 //-3.9910833e-10 * 0.00024183128 = -1.6503586e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010001000010001001110101;
		b = 32'b11011000111101010100110001001000;
		correct = 32'b00000001110011001011000100010011;
		#400 //-1.6223874e-22 * -2157663800000000.0 = 7.5191854e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101100111110110110010111111;
		b = 32'b00010111010111010011101101100100;
		correct = 32'b10101101101110000111101010111010;
		#400 //-1.4992235e-35 * 7.1483913e-25 = -2.097288e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110001000001100111000000;
		b = 32'b00010111101100010100011000111001;
		correct = 32'b10110100100011011001011111101010;
		#400 //-3.021408e-31 * 1.1456084e-24 = -2.637383e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100010101101101101101110110;
		b = 32'b10000101101101101111100000010111;
		correct = 32'b01000110000101100100111011011101;
		#400 //-1.6552002e-31 * -1.7206332e-35 = 9619.716
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010010001001000100101110;
		b = 32'b11011000111010111100010110110101;
		correct = 32'b10110010110110011100011001000010;
		#400 //52577464.0 * -2073875000000000.0 = -2.5352282e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101111100101000001010010110;
		b = 32'b00100111001011101000010000101011;
		correct = 32'b01000110001100011101111011010111;
		#400 //2.7570207e-11 * 2.4219e-15 = 11383.71
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100010000011000011011100;
		b = 32'b01010010111000110111101010011100;
		correct = 32'b10010111000110010100010000101101;
		#400 //-2.4192356e-13 * 488507300000.0 = -4.9523016e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010010011010010010001110010;
		b = 32'b01101111110110110110100000000011;
		correct = 32'b10101001111011110101101101101000;
		#400 //-1.4435611e+16 * 1.3580592e+29 = -1.06295886e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010001001100010010110110100;
		b = 32'b11011011010010111011011110101000;
		correct = 32'b10101110010100001100100110101011;
		#400 //2722157.0 * -5.7341352e+16 = -4.747284e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001001101110001101101110100;
		b = 32'b00101001101011101100010000100100;
		correct = 32'b00011111000001100001101111101011;
		#400 //2.2040732e-33 * 7.761177e-14 = 2.8398697e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110001000011000101111011111;
		b = 32'b01011101000010000110110111101011;
		correct = 32'b01011000100101111001000010101101;
		#400 //8.191374e+32 * 6.1442325e+17 = 1333181100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110011000100011010110011001;
		b = 32'b11100011110110111101110011000001;
		correct = 32'b00110010000000111011000111110101;
		#400 //-62179957000000.0 * -8.111488e+21 = 7.665666e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111110111001110011010101011;
		b = 32'b00000010000100010111101110100011;
		correct = 32'b01111111110111001110011010101011;
		#400 //nan * 1.06884e-37 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101000001110101011110001010;
		b = 32'b01010101000101100111001010000000;
		correct = 32'b11010111011001100100110000000010;
		#400 //-2.617894e+27 * 10338657000000.0 = -253214130000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110111010000011000110111101;
		b = 32'b10110111111101111111011010100010;
		correct = 32'b11110110011011111011100001000101;
		#400 //3.5930326e+28 * -2.9559542e-05 = -1.2155238e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100011010100100110000000110;
		b = 32'b10111011100010110011110101100110;
		correct = 32'b00011000010101110110001001000100;
		#400 //-1.1828974e-26 * -0.0042492626 = 2.783771e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011010000110011011001000000;
		b = 32'b00111100010111110101010101011000;
		correct = 32'b11000110010111111100001111101000;
		#400 //-195.21191 * 0.013631187 = -14320.977
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100111011010101101100101101;
		b = 32'b01100110101010010101010111000011;
		correct = 32'b10011101101100110110101011000100;
		#400 //-1898.8492 * 3.9983098e+23 = -4.74913e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001110111000011011001001101;
		b = 32'b10101001100000010010010101111000;
		correct = 32'b01011111110110100100000111100110;
		#400 //-1803977.6 * -5.7352506e-14 = 3.1454209e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011001010000101010001100111;
		b = 32'b00000110100110011001100011100101;
		correct = 32'b11110100000011000100011011111011;
		#400 //-0.0025685073 * 5.777686e-35 = -4.445564e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001010011001001110001010100;
		b = 32'b10001010111000100101110110010000;
		correct = 32'b11100101111001110110010110101100;
		#400 //2.977477e-09 * -2.1798203e-32 = -1.3659277e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011101000001001011110100;
		b = 32'b01010001110100011100101101010010;
		correct = 32'b00001101000101001110101000110100;
		#400 //5.1684687e-20 * 112632414000.0 = 4.5887933e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000101000000100010001010000;
		b = 32'b01011110001101000101110011010001;
		correct = 32'b01011001111000110111101000010100;
		#400 //2.6004782e+34 * 3.249123e+18 = 8003631000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000001111000010101111010100;
		b = 32'b10110010111111011011100101101101;
		correct = 32'b10111100101111011101101111100011;
		#400 //6.8456285e-10 * -2.9537398e-08 = -0.02317614
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111010111110100101011101111;
		b = 32'b10110101010100100101010010001101;
		correct = 32'b10101001100001111110001101110101;
		#400 //4.728407e-20 * -7.8354134e-07 = -6.034662e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101101000000110000100001;
		b = 32'b01001110000111011101011011000011;
		correct = 32'b01000001000100100000001010010001;
		#400 //6041387500.0 * 662024400.0 = 9.125627
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100000110000001101111101;
		b = 32'b11110101011111000111010101111001;
		correct = 32'b10100100100001001101100111101110;
		#400 //1.8438529e+16 * -3.2002965e+32 = -5.761506e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010000001011001100111111;
		b = 32'b11110111110000101011000000101000;
		correct = 32'b10111111111111010110001011010010;
		#400 //1.5633696e+34 * -7.897488e+33 = -1.9795783
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110101100011001110000001110;
		b = 32'b01100010001011111000110110010001;
		correct = 32'b10101100000000010111111111100000;
		#400 //-1489897200.0 * 8.095953e+20 = -1.8402987e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111100110011110101110111011;
		b = 32'b00011101000010101100000010110100;
		correct = 32'b11100010000011011111111000011100;
		#400 //-1.2025064 * 1.8363773e-21 = -6.5482536e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011111100011001010101001;
		b = 32'b11010000110011000010111010110111;
		correct = 32'b00100001000111110101101010101011;
		#400 //-1.4796265e-08 * -27404909000.0 = 5.3991294e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111000101010000000000111001;
		b = 32'b00100011111011000001111110000111;
		correct = 32'b10101010101000011000101100110100;
		#400 //-7.34631e-30 * 2.5600524e-17 = -2.8695937e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001111010000000000101101;
		b = 32'b11110000000001010100101101110101;
		correct = 32'b10001101101101010111111001000001;
		#400 //0.18457098 * -1.6501091e+29 = -1.1185381e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101111110000000011000001101;
		b = 32'b00111101011001001010111100110100;
		correct = 32'b10110000000010101101001100011011;
		#400 //-2.8197023e-11 * 0.05583115 = -5.0504106e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110110001010000011011001111;
		b = 32'b11111001110101101000101000010000;
		correct = 32'b10001100011010110001101001010110;
		#400 //25219.404 * -1.3924397e+35 = -1.8111667e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010101111001000000011001;
		b = 32'b01011000101010111010001111010000;
		correct = 32'b10011000001000001100000101100101;
		#400 //-3.1368528e-09 * 1509760500000000.0 = -2.0777155e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101010110001100111010100110;
		b = 32'b11011101101110000111011001011000;
		correct = 32'b11001111000101100111000111000111;
		#400 //4.1936615e+27 * -1.6614885e+18 = -2524039000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111110010010101000110000101;
		b = 32'b01001100001001111001000000111011;
		correct = 32'b11001011000110011100100011111110;
		#400 //-442703920000000.0 * 43925740.0 = -10078462.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111101101000001111110000100;
		b = 32'b11110111101101110000101101001010;
		correct = 32'b10101111011110111110101000110000;
		#400 //1.7012147e+24 * -7.425151e+33 = -2.2911517e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101001011110100110101001110;
		b = 32'b00101000111000101111111111001110;
		correct = 32'b10100011110001011011001010110011;
		#400 //-5.401909e-31 * 2.5201978e-14 = -2.1434465e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000010000010010100001010000;
		b = 32'b00011111000011000100100100100010;
		correct = 32'b00110000101100000011110111010010;
		#400 //3.8093594e-29 * 2.9706647e-20 = 1.2823256e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100000101011010011010111000;
		b = 32'b10010100100111100011110011011000;
		correct = 32'b00101110111100100001101111010101;
		#400 //-1.759142e-36 * -1.5977922e-26 = 1.100983e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010100011001000010001101000;
		b = 32'b00111011111100110110000010110010;
		correct = 32'b01001110000100111100111000001010;
		#400 //4604468.0 * 0.0074272985 = 619938400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101001101100101001011101010;
		b = 32'b10110110001010101001010110111101;
		correct = 32'b11001110100010001100111011110110;
		#400 //2917.1821 * -2.5419133e-06 = -1147632400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100100011010100111001110;
		b = 32'b11001000101001100000010101111111;
		correct = 32'b00110101011000001001101110111011;
		#400 //-0.28449863 * -340011.97 = 8.367312e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101110001001000100111000111;
		b = 32'b10010101111111101100011011110010;
		correct = 32'b01000111010001010111101101000110;
		#400 //-5.2023226e-21 * -1.02903663e-25 = 50555.273
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011111100101010000110001;
		b = 32'b11100101011100010011100111001110;
		correct = 32'b10100011100001101111001111101010;
		#400 //1041731.06 * -7.119729e+22 = -1.463161e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011100000101001111111011000;
		b = 32'b11100000110111011001001111111010;
		correct = 32'b01001010000101101110101010110010;
		#400 //-3.158304e+26 * -1.2773104e+20 = 2472620.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011101111101101001010000110;
		b = 32'b01011100001011011001001101000110;
		correct = 32'b10100111000011001011011111110011;
		#400 //-381.6447 * 1.954284e+17 = -1.9528622e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000111010100101010001011101;
		b = 32'b11110000110110110011101010011101;
		correct = 32'b00010111100010001101000100010011;
		#400 //-479906.9 * -5.427846e+29 = 8.841572e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010101100001111110010111111;
		b = 32'b10111101111110000010000000100010;
		correct = 32'b01010100001101101001101010101001;
		#400 //-380077300000.0 * -0.12115504 = 3137115300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010110101101000011001111000;
		b = 32'b00111011001000100100101101011100;
		correct = 32'b01000111001010010011000110101010;
		#400 //107.262634 * 0.0024764156 = 43313.664
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000011100100101101010010;
		b = 32'b10010001101011110110100000001110;
		correct = 32'b01010101110011111010110001111100;
		#400 //-7.898916e-15 * -2.767426e-28 = 28542465000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111010111101111111111001000;
		b = 32'b10100010111111111100100011010100;
		correct = 32'b11000011110111110010111111100010;
		#400 //3.0947348e-15 * -6.9330524e-18 = -446.37408
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000111000101100110111011011;
		b = 32'b00100001011011000010010001000001;
		correct = 32'b11101110111101011110000010010101;
		#400 //-30441134000.0 * 8.000789e-19 = -3.8047665e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111111110101001011100111011;
		b = 32'b00101001001001011011111000110011;
		correct = 32'b00100110010000011000011010111001;
		#400 //2.4710155e-29 * 3.680233e-14 = 6.714291e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111100011101100101101000100;
		b = 32'b01011010111101111000110101101010;
		correct = 32'b11000100000100111010101010110010;
		#400 //-2.0578785e+19 * 3.4839903e+16 = -590.6671
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100011100101111001111010;
		b = 32'b11101001010000000010010100011011;
		correct = 32'b00110000101111011010111010100101;
		#400 //-2.0036662e+16 * -1.4518061e+25 = 1.3801197e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010110101110011001101010010;
		b = 32'b11010010101010111110000000110011;
		correct = 32'b01011111101000000100001111010011;
		#400 //-8.524969e+30 * -369100420000.0 = 2.3096612e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011010001010100010100100011;
		b = 32'b00111101101000101101001011001010;
		correct = 32'b10001101000110110001010001011001;
		#400 //-3.7992833e-32 * 0.07950361 = -4.7787555e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000101111011011111001111000101;
		b = 32'b00010011001011110010101110000100;
		correct = 32'b00110010001011011110000001001100;
		#400 //2.237692e-35 * 2.210956e-27 = 1.01209245e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001010001110110101001100010;
		b = 32'b01001110101011001011100000010111;
		correct = 32'b10101010000100111100100011001111;
		#400 //-0.0001901775 * 1448872800.0 = -1.3125892e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101010010110011100010101001;
		b = 32'b10111100110001011110001101101011;
		correct = 32'b01010000000000110111001100010100;
		#400 //-213093010.0 * -0.024156293 = 8821428000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011110001000111111110100111;
		b = 32'b00100010110101110111010010000101;
		correct = 32'b11001000011010010111100111101001;
		#400 //-1.3962068e-12 * 5.8399237e-18 = -239079.64
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010010000110010011100110111;
		b = 32'b10100000100110110111110110110010;
		correct = 32'b11010001001000001010011001011101;
		#400 //1.135941e-08 * -2.63412e-19 = -43124118000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010110001100110100111001111;
		b = 32'b11110000000110010111001010000000;
		correct = 32'b00011010001001011000001001001110;
		#400 //-6501607.5 * -1.8995851e+29 = 3.422646e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000000110001100110010010111;
		b = 32'b11101101111100011001100001000101;
		correct = 32'b10010001101000011110100011101111;
		#400 //2.3874872 * -9.346246e+27 = -2.5544878e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011000101100110110101011;
		b = 32'b00100010011001001000001101101110;
		correct = 32'b01001101011111100001010110010101;
		#400 //8.2510593e-10 * 3.096934e-18 = 266426700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000110111011110110000000001;
		b = 32'b00010100011011010100100101001100;
		correct = 32'b11000011111011110110110010000010;
		#400 //-5.7365464e-24 * 1.19798975e-26 = -478.84772
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110101100101110010100011111;
		b = 32'b01010101101110001111110100010101;
		correct = 32'b00001000011101111001000100111000;
		#400 //1.8941245e-20 * 25424640000000.0 = 7.4499563e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011101011001011111001101;
		b = 32'b01101011010101011010110101000111;
		correct = 32'b11001011100100110001111001101111;
		#400 //-4.9812172e+33 * 2.5831948e+26 = -19283166.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011011000110001101011101101;
		b = 32'b00000111001010111010011110000011;
		correct = 32'b10111011101010010101100101001101;
		#400 //-6.6740214e-37 * 1.2913837e-34 = -0.005168116
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010110011000111000001101101;
		b = 32'b00101110011111101110110111111010;
		correct = 32'b00100011110011010100110000101101;
		#400 //1.2901925e-27 * 5.796428e-11 = 2.2258406e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110110110011101110111111;
		b = 32'b11100010011101101011110011101111;
		correct = 32'b00011000111000110111011010000001;
		#400 //-0.006690472 * -1.1378783e+21 = 5.8797783e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100100101101001000110110110;
		b = 32'b10111100100010110011101101101110;
		correct = 32'b00110111100010100110110000100110;
		#400 //-2.8045696e-07 * -0.016996112 = 1.6501242e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111110101001011011010001111;
		b = 32'b11110111000110111000000011101101;
		correct = 32'b01000000001011110001011101001010;
		#400 //-8.628669e+33 * -3.153988e+33 = 2.7357965
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110110101100011101001110101;
		b = 32'b11101101001001100110111011000011;
		correct = 32'b01010001001001001100001000111010;
		#400 //-1.4237916e+38 * -3.219276e+27 = 44227076000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111000111010100100100001000;
		b = 32'b11101000011010101000100101010111;
		correct = 32'b10010110001010111010110111011111;
		#400 //0.6143956 * -4.430269e+24 = -1.3868134e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001000101110110000101101010;
		b = 32'b10011101010011000000011011100010;
		correct = 32'b11101011001111011111000101010100;
		#400 //620054.6 * -2.7002734e-21 = -2.2962662e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001110110101110110110100;
		b = 32'b01001010000110000111111011010111;
		correct = 32'b00111101100111010100010011101111;
		#400 //191862.81 * 2498485.8 = 0.07679164
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111000011101010000000110110;
		b = 32'b01101111100101110111111111110100;
		correct = 32'b10010110111100010000000101000111;
		#400 //-36512.21 * 9.377384e+28 = -3.8936456e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101000010001110001110011111;
		b = 32'b00101110010110010110010011111100;
		correct = 32'b11100110001000010011001011000100;
		#400 //-9406950000000.0 * 4.942978e-11 = -1.9030937e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001100010111010110010010011;
		b = 32'b11110110001000101111001010000010;
		correct = 32'b00101010110110110110111110111010;
		#400 //-3.220666e+20 * -8.2624095e+32 = 3.897974e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101010011011101000111011;
		b = 32'b00110001001110110001100111000101;
		correct = 32'b11001110111010000011101010101011;
		#400 //-5.303983 * 2.722673e-09 = -1948079500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111101100011010111101110100;
		b = 32'b11010111100000000110000111000011;
		correct = 32'b00101111101100010010100000100110;
		#400 //-90974.91 * -282314740000000.0 = 3.222464e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101101100110010101000010;
		b = 32'b10010111100101101001011100000110;
		correct = 32'b01101001100110110000100011010010;
		#400 //-22.799442 * -9.731646e-25 = 2.3428144e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001000100110011111100100;
		b = 32'b00111110010100000001100100001110;
		correct = 32'b01100010010001111100101001000011;
		#400 //1.8724117e+20 * 0.20322058 = 9.2136914e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101110000111010011101010;
		b = 32'b11001001110101010111001111011100;
		correct = 32'b11000101010111010011100101110001;
		#400 //6189339600.0 * -1748603.5 = -3539.59
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011000100001110011100101;
		b = 32'b10111011100000110111101001110110;
		correct = 32'b00001100010111000010000110000001;
		#400 //-6.8043367e-34 * -0.004012401 = 1.6958266e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100111000100011011101100001;
		b = 32'b10111011110011100111010101110011;
		correct = 32'b00101000100011000011111111001111;
		#400 //-9.810569e-17 * -0.006300622 = 1.5570795e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000011000011000011001011;
		b = 32'b01111000001101100100001110011111;
		correct = 32'b10010010010001001110011111001000;
		#400 //-9187531.0 * 1.4787024e+34 = -6.2132387e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100010000110111110110011001;
		b = 32'b11010000100110110001001111110001;
		correct = 32'b10010011001000010101101100111000;
		#400 //4.239027e-17 * -20814203000.0 = -2.0366031e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100100000110001101011111011;
		b = 32'b00110010001000001111111100001001;
		correct = 32'b11101001110100000111100001111001;
		#400 //-2.952231e+17 * 9.371214e-09 = -3.1503186e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011100010010001001111101100;
		b = 32'b11110011110001011111110111001100;
		correct = 32'b10110111001100010011110101011001;
		#400 //3.3143383e+26 * -3.1372989e+31 = -1.0564306e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001100011100011011001010010;
		b = 32'b11010011101011011001010111100011;
		correct = 32'b10111101010100011011101100111010;
		#400 //76349590000.0 * -1491088000000.0 = -0.051203944
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111000000101011101100100110;
		b = 32'b01011001010000101100110101110110;
		correct = 32'b10000101001010111100110011100011;
		#400 //-2.7683376e-20 * 3427003300000000.0 = -8.078013e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011001010011100100110010010;
		b = 32'b11110110000001000101001110010000;
		correct = 32'b10010100101001000011110001110110;
		#400 //11127186.0 * -6.7097464e+32 = -1.6583616e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101000100000010101010010011;
		b = 32'b01111110111110000110001000001110;
		correct = 32'b00000101100101001001011001011100;
		#400 //2306.661 * 1.6507884e+38 = 1.3973086e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111011101110111100110011010;
		b = 32'b01111011010100001011111100001110;
		correct = 32'b00100011100101111011111101110010;
		#400 //1.7832454e+19 * 1.0838728e+36 = 1.6452533e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000110100010010110100010001;
		b = 32'b10111101011100011000000100010011;
		correct = 32'b00101010110111011011101100111110;
		#400 //-2.3223206e-14 * -0.058960985 = 3.9387412e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110101111010111100010011000;
		b = 32'b00101001110011110101010111011100;
		correct = 32'b10110100011010011111000101010011;
		#400 //-2.006103e-20 * 9.207541e-14 = -2.1787609e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000000100110010000000101101;
		b = 32'b10111101000100000000101111000010;
		correct = 32'b01011010100000101011110010011000;
		#400 //-647065600000000.0 * -0.035167463 = 1.8399554e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000000111110111000101000100;
		b = 32'b00100010101010001111000011010011;
		correct = 32'b10011100001111101001010011111111;
		#400 //-2.887532e-39 * 4.5791474e-18 = -6.30583e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010101101001000000101001010;
		b = 32'b10011111101001110010100010010000;
		correct = 32'b10111010100010100011100001010011;
		#400 //7.465513e-23 * -7.0794356e-20 = -0.001054535
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010110111000010111001010;
		b = 32'b01000110011010010101000001101011;
		correct = 32'b11110011011100001101111000010100;
		#400 //-2.8495664e+35 * 14932.1045 = -1.9083489e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100111010000000100011001001;
		b = 32'b10010001011100100101010110000111;
		correct = 32'b11110010111101010001111010010000;
		#400 //1856.2745 * -1.9116789e-28 = -9.710179e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000011100001110011010101;
		b = 32'b10001101010010000001000101111100;
		correct = 32'b11010101001101011101011110010001;
		#400 //7.703941e-18 * -6.1650804e-31 = -12496091000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101100111000101001011000101;
		b = 32'b11010110000110101110001000011100;
		correct = 32'b10110111000000010011000010101100;
		#400 //327833760.0 * -42573980000000.0 = -7.7003315e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000100100001100000000001000;
		b = 32'b01010100100101110010000101100011;
		correct = 32'b01001011011101010011000101000010;
		#400 //8.344276e+19 * 5192801600000.0 = 16068930.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001001010110111000001111;
		b = 32'b01111110001010110101000000001011;
		correct = 32'b10011111011101110011010110001011;
		#400 //-2.9801204e+18 * 5.69284e+37 = -5.2348574e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001100100110010110100101100;
		b = 32'b01001100111000011101111000001110;
		correct = 32'b11011100001001101100111110011111;
		#400 //-2.2240677e+25 * 118419570.0 = -1.8781251e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110110101011000010101110001;
		b = 32'b11101001010101101111111110110011;
		correct = 32'b10011100111111100011110110011011;
		#400 //27330.72 * -1.6244852e+25 = -1.6824235e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111111011000111001101011110;
		b = 32'b10001110110110011000110010110111;
		correct = 32'b01111111111011000111001101011110;
		#400 //nan * -5.3630134e-30 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100001111101101010000111001;
		b = 32'b11100100001011111100000101101011;
		correct = 32'b10000111100010101111101001001111;
		#400 //2.7118431e-12 * -1.296847e+22 = -2.091105e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000100001011101110101111;
		b = 32'b00100111100001101111001011000011;
		correct = 32'b01110101000010010100011111110010;
		#400 //6.518201e+17 * 3.7455674e-15 = 1.7402439e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001101110000000001001010;
		b = 32'b00101000000110101000001010101001;
		correct = 32'b00111001100101111001101000110110;
		#400 //2.4801278e-18 * 8.57705e-15 = 0.0002891586
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000100000100110001100110;
		b = 32'b11110110001001001011010010101001;
		correct = 32'b00101100011000000100011111111111;
		#400 //-2.6618362e+21 * -8.351571e+32 = 3.187228e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111110011100010011000010;
		b = 32'b11001111100100011010110001000111;
		correct = 32'b00100110110110110111011110000001;
		#400 //-7.443684e-06 * -4887973400.0 = 1.5228569e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000111011110000110101111111;
		b = 32'b00110000111111000001110101100001;
		correct = 32'b11001111011100101011110010010110;
		#400 //-7.4703975 * 1.8343763e-09 = -4072445400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000011000000010111101110010;
		b = 32'b00111010101011111010011000101100;
		correct = 32'b00111101001000110101111010011101;
		#400 //5.344995e-05 * 0.0013400964 = 0.039885152
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100110101110011010100101010;
		b = 32'b01001011011000100010100100001100;
		correct = 32'b11001000111100111001101000101100;
		#400 //-7394479300000.0 * 14821644.0 = -498897.38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100000111101000101110111010;
		b = 32'b01001100000100101010101011100010;
		correct = 32'b00011111100010100101110111010000;
		#400 //2.2530714e-12 * 38448010.0 = 5.860047e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110100000001100011011111010;
		b = 32'b00110011101110100010011001001111;
		correct = 32'b10100010001100010001100101101110;
		#400 //-2.0805087e-25 * 8.668268e-08 = -2.4001435e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111000000010100111101011100;
		b = 32'b01001111010010100000100101100011;
		correct = 32'b01010111001000111101100100101001;
		#400 //6.106492e+23 * 3389612800.0 = 180153090000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101010000101110011110000010;
		b = 32'b11101110001111111001110111011001;
		correct = 32'b01000110100000100011001000111011;
		#400 //-2.4707059e+32 * -1.4825616e+28 = 16665.115
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001010110100010111011010010;
		b = 32'b01111100100100111101011010100011;
		correct = 32'b00001100001111001110011110101011;
		#400 //893677.1 * 6.140968e+36 = 1.4552708e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101101110111110010001100001;
		b = 32'b00101000000111010110011101011000;
		correct = 32'b01010101000110001100101100000101;
		#400 //0.09174419 * 8.73766e-15 = 10499858000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100001010011111000110100001;
		b = 32'b00100011011100010011010011011110;
		correct = 32'b11111000001101000101110111100010;
		#400 //-1.9133978e+17 * 1.3075831e-17 = -1.4633088e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010100000001011101010111001;
		b = 32'b10111010111000101000011011111101;
		correct = 32'b10111111000100010111101001011010;
		#400 //0.0009821273 * -0.0017282661 = -0.5682732
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100010011001010001101011110;
		b = 32'b10110101011100111000010110111001;
		correct = 32'b10001110010101110001111110011010;
		#400 //2.40551e-36 * -9.0719146e-07 = -2.6516012e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011001001101100011010011011;
		b = 32'b10111000110110000100111000100010;
		correct = 32'b01000001110001010110000110011110;
		#400 //-0.0025447968 * -0.00010314236 = 24.672665
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111100010101000100001001000;
		b = 32'b00101000111101000001001000101101;
		correct = 32'b11011110000100010100110110011010;
		#400 //-70928.56 * 2.7097324e-14 = -2.6175485e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011000100100011110101011110;
		b = 32'b11101000001110101100101001101101;
		correct = 32'b10000010010010000110110010010011;
		#400 //5.1954784e-13 * -3.528377e+24 = -1.4724839e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111111010001110110010010;
		b = 32'b10111111010101010010111011100101;
		correct = 32'b01100100000101111111100111101101;
		#400 //-9.338314e+21 * -0.8327468 = 1.121387e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000101100101100001011100010;
		b = 32'b10000011000011110010010111000101;
		correct = 32'b11100101000111111101100001011101;
		#400 //1.9846487e-14 * -4.206728e-37 = -4.7177967e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100110011110110100101111011;
		b = 32'b01100101100010000011001111011010;
		correct = 32'b00011110110000101110101111001001;
		#400 //1659.2963 * 8.039979e+22 = 2.0638067e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100110010100110110001010100;
		b = 32'b11111101101000000110000111010001;
		correct = 32'b10101110101000011000110101111111;
		#400 //1.9577166e+27 * -2.6648046e+37 = -7.346567e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011101100001100001011110110;
		b = 32'b10100100001100111001011100011101;
		correct = 32'b00100110111110111111011110111111;
		#400 //-6.808608e-32 * -3.8942436e-17 = 1.7483775e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010100000101000011011000;
		b = 32'b11101011000101111110001100100110;
		correct = 32'b01001110101011111000110111010011;
		#400 //-2.7040936e+35 * -1.8362048e+26 = 1472653700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011110011100011101000000;
		b = 32'b11000010001000111111100101011010;
		correct = 32'b01010110110000101111101011010101;
		#400 //-4394146700000000.0 * -40.993507 = 107191286000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100110100101111111010000;
		b = 32'b01010100111001101011000010110110;
		correct = 32'b10101001001010110100111110100110;
		#400 //-0.30151224 * 7926457600000.0 = -3.803871e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101101110001101110010100001;
		b = 32'b10001001010101110011110101000110;
		correct = 32'b00111011110110111101111010101010;
		#400 //-1.7384323e-35 * -2.5908494e-33 = 0.0067098932
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001101010011110000000010;
		b = 32'b11100110111100100110010000010111;
		correct = 32'b00010001101111110110100011101001;
		#400 //-0.0001728386 * -5.723295e+23 = 3.0199142e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001111011011000101110011111;
		b = 32'b10111000111010000100111011100011;
		correct = 32'b11011000100000101110001010111100;
		#400 //127531210000.0 * -0.00011077316 = -1151282600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110110101110010100010011;
		b = 32'b11011011100101101001110010100111;
		correct = 32'b01001010101110100000100000000110;
		#400 //-5.168508e+23 * -8.4786975e+16 = 6095875.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110011011011010101001100;
		b = 32'b11011010000010101111000001010010;
		correct = 32'b01011111001111011000001100111100;
		#400 //-1.3351225e+35 * -9776945000000000.0 = 1.3655824e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000000101111101100101110;
		b = 32'b11011111001000101001111110111111;
		correct = 32'b11000010010011100011000000111001;
		#400 //6.04044e+20 * -1.1718295e+19 = -51.547092
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101001111011101001000111;
		b = 32'b10010110100101111100101000110100;
		correct = 32'b01101010100011010111000010011100;
		#400 //-20.965956 * -2.4522974e-25 = 8.549516e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010111011101010001110011011;
		b = 32'b01100011001011011001111100000000;
		correct = 32'b10101111001011111110111100000111;
		#400 //-512473530000.0 * 3.202744e+21 = -1.6001077e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010010000001111101000100000;
		b = 32'b01100110001011110111011101101111;
		correct = 32'b01000011100011001100011000001101;
		#400 //5.8323735e+25 * 2.0715432e+23 = 281.54727
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110100000001011100101010;
		b = 32'b10010101111010110001001001100110;
		correct = 32'b00111001011000101001110111010011;
		#400 //-2.0519306e-29 * -9.494477e-26 = 0.00021611834
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111011100011100111111110111;
		b = 32'b11111000100100110100010000101001;
		correct = 32'b11000110010100100010110101010010;
		#400 //3.2142376e+38 * -2.3895315e+34 = -13451.33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110000000111010111101011101;
		b = 32'b10110001101010011101011101011011;
		correct = 32'b11110011110001100111110011001101;
		#400 //1.5546622e+23 * -4.9430304e-09 = -3.14516e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011010100110110011101000000;
		b = 32'b10110001010101111000111001101110;
		correct = 32'b01001001011110110001000101011000;
		#400 //-0.0032257587 * -3.136758e-09 = 1028373.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100111011111010101000111111;
		b = 32'b10010000100001101110010010011100;
		correct = 32'b01001011111000110110101100001110;
		#400 //-1.5859701e-21 * -5.320591e-29 = 29808156.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001001101001110110001110101;
		b = 32'b01010111100110010001100001100101;
		correct = 32'b10001001000101110100010001001010;
		#400 //-6.129932e-19 * 336660100000000.0 = -1.8208073e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111000010111010100011100010;
		b = 32'b00100110110101000011011001010100;
		correct = 32'b11000111101010000111101000011110;
		#400 //-1.2701976e-10 * 1.4725181e-15 = -86260.234
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101100000101011110111001100;
		b = 32'b00111111001101011011101110101010;
		correct = 32'b11010101101110000010101110001100;
		#400 //-17968960000000.0 * 0.7098948 = -25312146000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011101000000010101101100011;
		b = 32'b10011011110111101000100101010000;
		correct = 32'b11011111001110000100000100111000;
		#400 //0.0048879846 * -3.6815555e-22 = -1.3276955e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100100110110000001100111110;
		b = 32'b10101001000011101110111101001001;
		correct = 32'b10011011000010101101000011100100;
		#400 //3.6443302e-36 * -3.173788e-14 = -1.1482589e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010111000001010101110000101;
		b = 32'b01110100010000111110110110100110;
		correct = 32'b10100110000100101100011011100110;
		#400 //-3.1619491e+16 * 6.209216e+31 = -5.0923483e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011000011001010011001110011;
		b = 32'b11010001110000110011011110101111;
		correct = 32'b01100000101110000111000101010110;
		#400 //-1.1143456e+31 * -104806605000.0 = 1.0632399e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011011100101101001010000111;
		b = 32'b10011111011110101110010001011001;
		correct = 32'b01010011011101111100010000011111;
		#400 //-5.653649e-08 * -5.3128444e-20 = 1064147300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111001000110000100011111110;
		b = 32'b10100111001000100111011001011001;
		correct = 32'b00100111100000000111001110001010;
		#400 //-8.038252e-30 * -2.2546173e-15 = 3.5652404e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111111101010001110001011001;
		b = 32'b11000000110100001011101001101001;
		correct = 32'b01010110100101100100111110101001;
		#400 //-539004200000000.0 * -6.522755 = 82634440000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000111100001011001010110;
		b = 32'b00101101000001000000000010110010;
		correct = 32'b01001110100110010100101100101000;
		#400 //0.00964888 * 7.503486e-12 = 1285919700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110001010110000100011100011;
		b = 32'b00100001111111110101111000011000;
		correct = 32'b11110011101010110111010101010011;
		#400 //-47013664000000.0 * 1.7304379e-18 = -2.7168652e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111000011100100010011010000;
		b = 32'b11000111101100000011010001001111;
		correct = 32'b11100110110011101011001001001100;
		#400 //4.403006e+28 * -90216.62 = -4.8804825e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011011111011011101100000100;
		b = 32'b00100011000000001000000001100111;
		correct = 32'b01010111111111001011110101111011;
		#400 //0.0038716206 * 6.966084e-18 = 555781500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110110101011110101001110000;
		b = 32'b11100011101110110000111010110111;
		correct = 32'b00010010100100100110000011101110;
		#400 //-6.375187e-06 * -6.901203e+21 = 9.23779e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000000011001011100111110010;
		b = 32'b10101010110001010010110101100000;
		correct = 32'b00101100101101101011010101011100;
		#400 //-1.8188454e-24 * -3.5025715e-13 = 5.192886e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111101110010001001100010;
		b = 32'b01001010000010011010011010111001;
		correct = 32'b11111111111101110010001001100010;
		#400 //nan * 2255278.2 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001010111111000000011111011;
		b = 32'b10110111100010101101011001011001;
		correct = 32'b00010001010011100000111011000100;
		#400 //-2.6903295e-33 * -1.6550695e-05 = 1.6255085e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100111101011010111100000101;
		b = 32'b10001111110010011001100111000001;
		correct = 32'b01110100100110111111110100111010;
		#400 //-1965.4694 * -1.9879354e-29 = 9.886988e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111110101110011100100011011;
		b = 32'b01001110000011010000000101000111;
		correct = 32'b00000001010000110101111101110110;
		#400 //2.1222633e-29 * 591417800.0 = 3.5884333e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010000001000111000000111001;
		b = 32'b01111011110110110100101010110111;
		correct = 32'b10101101100110101001101110010110;
		#400 //-4.002704e+25 * 2.2772568e+36 = -1.7576867e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001100000110101101100111010;
		b = 32'b00111011011001101010011001101111;
		correct = 32'b00000101100100011100101100010001;
		#400 //4.8252704e-38 * 0.0035194417 = 1.371033e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011011000110101100001011011;
		b = 32'b11001111000011110101000110001011;
		correct = 32'b10000011110010110000101110100100;
		#400 //2.869499e-27 * -2404486000.0 = -1.193394e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111010101111010010111101100;
		b = 32'b10111011111011001111100000001110;
		correct = 32'b00101010111010001111011110000110;
		#400 //-2.992719e-15 * -0.007231719 = 4.1383233e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010011001110110101100010101;
		b = 32'b00101010001001111111000001110110;
		correct = 32'b10100111101100000110000111100111;
		#400 //-7.3022736e-28 * 1.4916006e-13 = -4.895596e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111011011010110011001011010;
		b = 32'b11011000111001111101110100101111;
		correct = 32'b01000110000000110000111001011000;
		#400 //-1.7106459e+19 * -2039497300000000.0 = 8387.586
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000001110100110010100110000;
		b = 32'b10101111010100000101010011010010;
		correct = 32'b10111000011001010000101101110010;
		#400 //1.0347016e-14 * -1.8947624e-10 = -5.4608514e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101010001001001100110001000;
		b = 32'b00000000000010000110101010111110;
		correct = 32'b11001110001110101101110001001011;
		#400 //-6.058197e-31 * 7.72976e-40 = -783749800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111001000101011011100001;
		b = 32'b11000110010101011011000000010010;
		correct = 32'b00010101000010001100011011000001;
		#400 //-3.777558e-22 * -13676.018 = 2.762177e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111111000001000111010000;
		b = 32'b11110000010110000001100111101100;
		correct = 32'b01000010000101010100110111111001;
		#400 //-9.985505e+30 * -2.675204e+29 = 37.326145
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000111100001110001011111110;
		b = 32'b10111011000110100111010111010100;
		correct = 32'b11000101010001111001111011110011;
		#400 //7.527709 * -0.0023568766 = -3193.9343
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110101011001000100011100010;
		b = 32'b10100111111110100011111101110100;
		correct = 32'b11110110001100001000000000100011;
		#400 //6.2162176e+18 * -6.9457735e-15 = -8.94964e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100111000101010000110010;
		b = 32'b01100101110000110111110000101101;
		correct = 32'b10111010010011001011100011110111;
		#400 //-9.011747e+19 * 1.1539401e+23 = -0.00078095443
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010100001000110110101101110;
		b = 32'b01010011001100110111011001110001;
		correct = 32'b01001110101111001110011110111011;
		#400 //1.2214277e+21 * 770786260000.0 = 1584651600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010001000000100011110001001;
		b = 32'b11110001100110011010001110101101;
		correct = 32'b00010000000001011000100000110000;
		#400 //-40.06986 * -1.5215705e+30 = 2.633454e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110010011111110111011100001;
		b = 32'b00100010100100111000110101010110;
		correct = 32'b00101011001101000110000101000100;
		#400 //2.5629736e-30 * 3.9994075e-18 = 6.408383e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011001110111110001001010;
		b = 32'b00100101000101111111101010000100;
		correct = 32'b00111010110000101111011001110000;
		#400 //1.9607585e-19 * 1.318204e-16 = 0.001487447
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111101101101110101011010010;
		b = 32'b11110101000001010110100010110001;
		correct = 32'b00110010001011111000000001000100;
		#400 //-1.7276047e+24 * -1.6911594e+32 = 1.0215505e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101010011101111100111111110;
		b = 32'b11000001110010000011101110001101;
		correct = 32'b01111011000001000100111110100100;
		#400 //-1.7194938e+37 * -25.029078 = 6.869985e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101100010000001011001011111;
		b = 32'b01000000101111000010100110011110;
		correct = 32'b10010100001110010010011001111111;
		#400 //-5.496526e-26 * 5.88008 = -9.347705e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001111011110000100100010110;
		b = 32'b11010101011010100011000010100011;
		correct = 32'b10111100000000101010010111111100;
		#400 //128331200000.0 * -16093413000000.0 = -0.007974144
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110100101010101001101001010;
		b = 32'b01001101110110001001101001101110;
		correct = 32'b00101000001100000111110000111101;
		#400 //4.450242e-06 * 454249920.0 = 9.7969025e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100110111010010110000111111;
		b = 32'b11001101011101110111110101100010;
		correct = 32'b10101110111001001100011100110011;
		#400 //0.026998637 * -259511840.0 = -1.04036245e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001011001110000000001100011;
		b = 32'b00001011000011000000000110000110;
		correct = 32'b11100101110100110011000101000001;
		#400 //-3.3615144e-09 * 2.6964165e-32 = -1.2466599e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000111110110111000100110011;
		b = 32'b10110101011100100010010000100110;
		correct = 32'b01101011000001001110101010101010;
		#400 //-1.4494655e+20 * -9.020463e-07 = 1.6068638e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111101010010010110111000;
		b = 32'b10100000010011010011101001000100;
		correct = 32'b00101111000110001110010111011010;
		#400 //-2.4173394e-29 * -1.7383454e-19 = 1.3905979e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100100010110111011111111;
		b = 32'b10101011000111011011001101011010;
		correct = 32'b11010011111011000001011000101011;
		#400 //1.1361998 * -5.6026505e-13 = -2027968400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001011010010011100101100;
		b = 32'b10110111111011010011101111110010;
		correct = 32'b11001010101110101101100110010001;
		#400 //173.15302 * -2.8280516e-05 = -6122696.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110101100011010011000011;
		b = 32'b11010011101111010101101001101001;
		correct = 32'b11000010100100001100110011011100;
		#400 //117761050000000.0 * -1626531300000.0 = -72.400116
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111111110100100000011001101;
		b = 32'b00010101110100101111111011101100;
		correct = 32'b11111001100101111101000010111011;
		#400 //-8397101600.0 * 8.522052e-26 = -9.85338e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110001000001001100111011100;
		b = 32'b10010111001010110010110011010100;
		correct = 32'b01101110011100000010111110011100;
		#400 //-10278.465 * -5.530966e-25 = 1.858349e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011110011010000001011100000;
		b = 32'b00110011011010001001110001000001;
		correct = 32'b00101111111000011010000000101101;
		#400 //2.2227362e-17 * 5.415882e-08 = 4.1041073e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011100110111111000010111110;
		b = 32'b01010101001000100100101010000111;
		correct = 32'b00100101111101011111101101110111;
		#400 //0.0047589233 * 11152561000000.0 = 4.2671124e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010010101011111110101100;
		b = 32'b00111100000010111011110100010011;
		correct = 32'b01011111101110011011011110010001;
		#400 //2.2827476e+17 * 0.0085289655 = 2.6764648e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101000100001111000001101;
		b = 32'b11001001011000101000011111110110;
		correct = 32'b00010011101101110011010011110101;
		#400 //-4.2912115e-21 * -927871.4 = 4.6247914e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111111000010111010110000;
		b = 32'b10100111001110110011111001011100;
		correct = 32'b10100110001011000110010001101010;
		#400 //1.5541939e-30 * -2.5985268e-15 = -5.9810574e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011000011101000000101011001;
		b = 32'b00000110110001111010110110001010;
		correct = 32'b11011011101101101011001101110100;
		#400 //-7.725226e-18 * 7.5110473e-35 = -1.0285151e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100111010101011001000100;
		b = 32'b11010010000110111111111011100010;
		correct = 32'b00010100000000010001100111000010;
		#400 //-1.0917446e-15 * -167499040000.0 = 6.5179155e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100001001100001001000101000;
		b = 32'b01100101101000101000110110010001;
		correct = 32'b10011110000000101100010100101000;
		#400 //-664.2837 * 9.595435e+22 = -6.922914e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111000100000010110100111;
		b = 32'b01010111111111000000110011001110;
		correct = 32'b11111111111000100000010110100111;
		#400 //nan * 554263850000000.0 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110111000000110000000110000;
		b = 32'b01001001110010100111010000000000;
		correct = 32'b10001100100011011101110001000111;
		#400 //-3.6249855e-25 * 1658496.0 = -2.1857064e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111100001111000001010010;
		b = 32'b01001001111111010010110110111101;
		correct = 32'b11010100011100111001111110101010;
		#400 //-8.6807334e+18 * 2074039.6 = -4185423000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110000111001100101001111;
		b = 32'b11111101000100011010011100100100;
		correct = 32'b10011000001010111110010010000001;
		#400 //26882903000000.0 * -1.2100369e+37 = -2.2216597e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000011000100100111001110110;
		b = 32'b00000001000111011001111110010000;
		correct = 32'b00111110100111111010100101111101;
		#400 //9.028025e-39 * 2.8950826e-38 = 0.31183997
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111001000101000000100101101;
		b = 32'b00011010000100011100000000100111;
		correct = 32'b01110100100011101011011010101101;
		#400 //2726374700.0 * 3.0140517e-23 = 9.045548e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101110011100001011111001;
		b = 32'b00100111110111010101101111000001;
		correct = 32'b01110011010101101101010100011100;
		#400 //1.0457449e+17 * 6.14393e-15 = 1.7020781e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101011001101110111000000;
		b = 32'b10011001011001000000100110001100;
		correct = 32'b11111011110000100001000001001100;
		#400 //23758551000000.0 * -1.1789252e-23 = -2.0152723e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010000001011110011000111100;
		b = 32'b00011110001111001011110110011011;
		correct = 32'b01110011001101011001110110010100;
		#400 //143773340000.0 * 9.991847e-21 = 1.4389065e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001001010110101100011101111;
		b = 32'b00101111100010010000100001001100;
		correct = 32'b11101001001000000000110110011010;
		#400 //-3014375300000000.0 * 2.492605e-10 = -1.2093273e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110111000110110000011010000;
		b = 32'b00101101100111100001100101100101;
		correct = 32'b10101000101110000001011011101011;
		#400 //-3.6734925e-25 * 1.7973798e-11 = -2.0438043e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101011110001100110100101101;
		b = 32'b11011011010101110100110000001001;
		correct = 32'b00010001100100111110101101011001;
		#400 //-1.4142726e-11 * -6.060072e+16 = 2.3337555e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000000000100000001001001111;
		b = 32'b11000110011111000000100001010011;
		correct = 32'b01010001000001000000111000111101;
		#400 //-571785700000000.0 * -16130.081 = 35448410000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010000011000011101011101;
		b = 32'b10111100101001010100000001011011;
		correct = 32'b01110000000101011110011100101100;
		#400 //-3.7433907e+27 * -0.020172289 = 1.8557094e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011011101100111111110011001;
		b = 32'b10111110011111001011101000010110;
		correct = 32'b11111100011110011011000011011100;
		#400 //1.279893e+36 * -0.24680361 = -5.1858762e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110011111101001000000111001;
		b = 32'b11011001111010010101111110101010;
		correct = 32'b10011100000010111001111100111110;
		#400 //3.7932898e-06 * -8211106700000000.0 = -4.619706e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001101010111101111010011010;
		b = 32'b11110011010101001101110101001011;
		correct = 32'b00100101110011101011001010100001;
		#400 //-6047122000000000.0 * -1.6864857e+31 = 3.5856347e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100111000010010110001000000;
		b = 32'b10101000100100011110001011011000;
		correct = 32'b11011011110001011001000011100001;
		#400 //1801.3828 * -1.6196612e-14 = -1.1121973e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110010001101111010110110;
		b = 32'b10101010110011100111001001110001;
		correct = 32'b00100100011110010001010110010011;
		#400 //-1.9807308e-29 * -3.667236e-13 = 5.4011542e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101010111110100100101011111;
		b = 32'b10010110101010101011001110110010;
		correct = 32'b01111110001001110110111000101100;
		#400 //-15344139000000.0 * -2.7578385e-25 = 5.563828e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010110000000111001111010001;
		b = 32'b00111011111111100101001110101001;
		correct = 32'b00000110010000011011011111110010;
		#400 //2.827834e-37 * 0.007761438 = 3.6434407e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100101100001110111011000;
		b = 32'b11110011100001101001100110000111;
		correct = 32'b10010000100011101100000110001100;
		#400 //1200.9326 * -2.1328176e+31 = -5.630733e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010010110011110011011111110;
		b = 32'b01011010010100010000000111111101;
		correct = 32'b10110111100001010111001001111010;
		#400 //-233970830000.0 * 1.4707614e+16 = -1.5908143e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011101010010011001100110101;
		b = 32'b11101001100100011011011010110100;
		correct = 32'b11001001100101001010000110011000;
		#400 //2.6810815e+31 * -2.201963e+25 = -1217587.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110100010000101110101000100;
		b = 32'b00101001100101010010010111101111;
		correct = 32'b01011100011010100000111010111111;
		#400 //17454.633 * 6.6235097e-14 = 2.6352543e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100110101001000111011001;
		b = 32'b10111001111001111000111011010001;
		correct = 32'b10100100001010101110001010100110;
		#400 //1.6365705e-20 * -0.0004416616 = -3.7054853e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010100101001101101011111;
		b = 32'b10011010100000110001100111011101;
		correct = 32'b11000011010011011010000000010010;
		#400 //1.11494374e-20 * -5.4222115e-23 = -205.62527
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111110111101100011101100;
		b = 32'b01010110001101110101110101101101;
		correct = 32'b10100111001011111100111000010000;
		#400 //-0.12297234 * 50402972000000.0 = -2.4397835e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111000001010001101101001;
		b = 32'b10111001101011011010111000101010;
		correct = 32'b00100001101001011000111000101010;
		#400 //-3.7163293e-22 * -0.00033126894 = 1.1218465e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010010111100011011011100111;
		b = 32'b00011010000100100010011000110011;
		correct = 32'b01001111110000101001111010000111;
		#400 //1.9736609e-13 * 3.022295e-23 = 6530338300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000010100100010100010111;
		b = 32'b10110101010100000111000101001101;
		correct = 32'b01011000001010011101000100100110;
		#400 //-579945900.0 * -7.765091e-07 = 746863000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011001011110010100110011100;
		b = 32'b00000001101000100010111111001110;
		correct = 32'b01110001000010100011110110011101;
		#400 //4.0783206e-08 * 5.9578e-38 = 6.845347e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101010000101010000011010100;
		b = 32'b11001000101011011000100011011011;
		correct = 32'b10010100000011111000111100001100;
		#400 //2.5758832e-21 * -355398.84 = -7.247866e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011010101010110101110000001;
		b = 32'b00110011110101010010101100101010;
		correct = 32'b00011111000000000010011010100010;
		#400 //2.6937383e-27 * 9.926437e-08 = 2.713701e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101101100010000100011010100;
		b = 32'b10101010101011101101001001110000;
		correct = 32'b00111010100000011001111010110010;
		#400 //-3.0710588e-16 * -3.105463e-13 = 0.0009889214
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010110000110100011010111101;
		b = 32'b11010001010101000011000100000101;
		correct = 32'b10011000111010111001011110110011;
		#400 //3.4688043e-13 * -56959717000.0 = -6.0899253e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000010111100000010011000100;
		b = 32'b10111110111000000011001110101001;
		correct = 32'b11001000111111011000000111010111;
		#400 //227347.06 * -0.43789414 = -519182.72
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011111010100001101001100110;
		b = 32'b00111111010111011110010001111000;
		correct = 32'b11101100000001110000101100110110;
		#400 //-5.660266e+26 * 0.8667674 = -6.530317e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100001111110010000101010101;
		b = 32'b01000100100000001101101001001111;
		correct = 32'b10011111001111011101110110000011;
		#400 //-4.1444756e-17 * 1030.8221 = -4.0205537e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111100100011100001010100001;
		b = 32'b00011100001011000111110101000110;
		correct = 32'b11111010110110000101010001111110;
		#400 //-320530220000000.0 * 5.707194e-22 = -5.616249e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001010110110001011110000010;
		b = 32'b10100011101011010101010100101000;
		correct = 32'b10111101001000011100101010100010;
		#400 //7.42312e-19 * -1.8792763e-17 = -0.039499886
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100110001010011011000101101;
		b = 32'b00001001011110101010111101010100;
		correct = 32'b01000010110010010110010010011011;
		#400 //3.0385262e-31 * 3.0175094e-33 = 100.696495
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011011011000001111011100011;
		b = 32'b00111000101000001111111011111101;
		correct = 32'b01110010001110111011101001010101;
		#400 //2.8545235e+26 * 7.67689e-05 = 3.7183333e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110110111111101110010001110;
		b = 32'b00001110111000010100000111000110;
		correct = 32'b11110111011111100110101000000111;
		#400 //-28654.277 * 5.553012e-30 = -5.1601324e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101101000011011001001110;
		b = 32'b11001110011011011100001101000110;
		correct = 32'b10101001110000100000100011110110;
		#400 //8.593184e-05 * -997249400.0 = -8.616885e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101110111000101101110000101;
		b = 32'b11100111000100110110101001100010;
		correct = 32'b00010110001111110101010111000100;
		#400 //-0.107596435 * -6.961503e+23 = 1.545592e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110001100000000000110101000;
		b = 32'b00100101110000100110010011010101;
		correct = 32'b10011111111001111100100100001110;
		#400 //-3.3103138e-35 * 3.3721962e-16 = -9.816492e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101100110101011100101101011;
		b = 32'b01000000011001001001001101110111;
		correct = 32'b11111100101011010100100110100111;
		#400 //-2.5707982e+37 * 3.5715005 = -7.1980896e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011011011001110110110010000;
		b = 32'b10110100100000001011001001101001;
		correct = 32'b10011110011010111010010100011101;
		#400 //2.9904515e-27 * -2.3971668e-07 = -1.2474941e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001010010100100010101101111;
		b = 32'b10101101110010011011100100101101;
		correct = 32'b00011011000000000101100100000000;
		#400 //-2.4347513e-33 * -2.2933289e-11 = 1.0616669e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000110100110101001010111000;
		b = 32'b01100111010010001110100001100110;
		correct = 32'b01010001000001101010001010111100;
		#400 //3.4289137e+34 * 9.487603e+23 = 36140990000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010000000010110111110000;
		b = 32'b00110000101000010000001111100010;
		correct = 32'b01100101000110001100011000110100;
		#400 //52825883000000.0 * 1.1715395e-09 = 4.5090994e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101011000111100110100011000;
		b = 32'b10011110110001011101110010010011;
		correct = 32'b11001110000100110101111001001110;
		#400 //1.2948996e-11 * -2.0949414e-20 = -618107800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011100001110001011011111110;
		b = 32'b00101001111110001101110100100001;
		correct = 32'b10100001000010101111011010101010;
		#400 //-5.2034703e-32 * 1.1051772e-13 = -4.7082676e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001110110000101110100111;
		b = 32'b01001001001111011111000110100001;
		correct = 32'b00010010011111000001011111111101;
		#400 //6.188817e-22 * 778010.06 = 7.9546747e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011011111001000000010010001;
		b = 32'b11010010010100110100111110100100;
		correct = 32'b11001000100110001111001110000001;
		#400 //7.1073054e+16 * -226893560000.0 = -313244.03
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100001111000011111010110111;
		b = 32'b00010001011111100110011111011101;
		correct = 32'b11001010001111010110110010110110;
		#400 //-6.228504e-22 * 2.0069072e-28 = -3103533.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100110001000000000000001101;
		b = 32'b11000000101001011110101111000101;
		correct = 32'b11010011100101110011010001100101;
		#400 //6734515500000.0 * -5.1850305 = -1298838200000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110100100011100000010110100;
		b = 32'b11101000100011100101001010111011;
		correct = 32'b10000101100000110001010110011101;
		#400 //6.6280675e-11 * -5.376817e+24 = -1.232712e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101100111101000100001110001;
		b = 32'b00111110110111110010000101110011;
		correct = 32'b01011110001101011110001011101110;
		#400 //1.4279381e+18 * 0.43580207 = 3.276575e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010101110100010010101010111;
		b = 32'b11101101110000001110101010001011;
		correct = 32'b00101100011101110000010000001010;
		#400 //-2.61977e+16 * -7.4630834e+27 = 3.5103053e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011111001001001110110010;
		b = 32'b01000001110001111101011010101001;
		correct = 32'b01100100001000011100011110100101;
		#400 //2.9819021e+23 * 24.979815 = 1.1937247e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111111000100111011101101;
		b = 32'b10101100111100010000100100110010;
		correct = 32'b10100111100001011111110001110001;
		#400 //2.5476628e-26 * -6.850653e-12 = -3.7188613e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110111001111100011110111111;
		b = 32'b00100100011001001011100000001000;
		correct = 32'b11100010000000011011011010011001;
		#400 //-29667.873 * 4.95955e-17 = -5.981969e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001000111000010001110010110;
		b = 32'b11100100101100000000010010111000;
		correct = 32'b10010011111000110001011001100110;
		#400 //0.00014890576 * -2.5975736e+22 = -5.7324943e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010000110101101110000011111;
		b = 32'b01111010100001111010111010100110;
		correct = 32'b00011111000100100001011110000001;
		#400 //1.0897293e+16 * 3.522512e+35 = 3.0936145e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001101111000000000100000101;
		b = 32'b01000010101001010110001000011010;
		correct = 32'b10001110100100011000000111110000;
		#400 //-2.9661798e-28 * 82.691605 = -3.5870385e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111100000010110111000110100;
		b = 32'b00110011010010110001111001100011;
		correct = 32'b11100011101000110010000010010110;
		#400 //-284620640000000.0 * 4.7292257e-08 = -6.0183347e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101001100011001101111100110;
		b = 32'b00001010100000101010100011111111;
		correct = 32'b10111010001011011111111000110101;
		#400 //-8.351134e-36 * 1.2582114e-32 = -0.0006637306
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010011101010101111101111000;
		b = 32'b10101010111011001100010011001111;
		correct = 32'b01010111000001001010011011001001;
		#400 //-61.34323 * -4.2058585e-13 = 145851870000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010101111100000000110110001;
		b = 32'b01011100001110011011000101001000;
		correct = 32'b00001110000000101111100101001000;
		#400 //3.3751954e-13 * 2.0907117e+17 = 1.6143762e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111101100011001000010010111;
		b = 32'b01100001010011101011101111011100;
		correct = 32'b01000101110110111110000100111010;
		#400 //1.6770522e+24 * 2.3834787e+20 = 7036.1533
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100010011010010001001111110;
		b = 32'b00011111100000111000101110000101;
		correct = 32'b01100100010001111001101101001000;
		#400 //820.53894 * 5.5711474e-20 = 1.4728365e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110110110001110100100101;
		b = 32'b10010010001001101010000011110001;
		correct = 32'b11001000001010000101000101011011;
		#400 //9.062336e-23 * -5.257874e-28 = -172357.42
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100111100111111101000001;
		b = 32'b10111110100100111110111001110110;
		correct = 32'b00100110100010010010010001011101;
		#400 //-2.7494862e-16 * -0.2889287 = 9.516141e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001101101110001010001010111;
		b = 32'b01001111110011001101111111110011;
		correct = 32'b11101001011001001100010000001001;
		#400 //-1.1882536e+35 * 6874457600.0 = -1.7285052e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101000011110011000011000001;
		b = 32'b00011010011101001111010101100001;
		correct = 32'b11100010000101011010010100001110;
		#400 //-0.034958605 * 5.0656233e-23 = -6.901146e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111110101111101011100000;
		b = 32'b00011010000101101000011001010001;
		correct = 32'b00110011010101010110110001001110;
		#400 //1.54678355e-30 * 3.1127773e-23 = 4.969143e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010010110110110000100111110;
		b = 32'b01111101101101010110001000101000;
		correct = 32'b00000100000110101101000001001000;
		#400 //54.844963 * 3.013749e+37 = 1.8198251e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001000111110101010010111111;
		b = 32'b01011001000101110010100100010110;
		correct = 32'b00110111100001101110101100101110;
		#400 //42770100000.0 * 2659243500000000.0 = 1.6083559e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101111100101101101111011;
		b = 32'b01000101001000110000000100011111;
		correct = 32'b11101111000101010111101010100011;
		#400 //-1.206533e+32 * 2608.07 = -4.6261525e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100000000011001100000101001;
		b = 32'b01110001100110111001111001001110;
		correct = 32'b10011001110101010011000001110001;
		#400 //-33972388.0 * 1.5411698e+30 = -2.2043249e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101111101100110010101100;
		b = 32'b00101000001110100001000111110011;
		correct = 32'b10101011000000110100000011011111;
		#400 //-4.8164565e-27 * 1.0328966e-14 = -4.6630576e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100000100011010000100001;
		b = 32'b00111000111011001100011111100011;
		correct = 32'b01001100000011001100010110101000;
		#400 //4166.516 * 0.00011290589 = 36902560.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001001001110000110100111111;
		b = 32'b00001000010011100011000101101101;
		correct = 32'b00111000010011110110011101100110;
		#400 //3.068256e-38 * 6.204897e-34 = 4.9448943e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110110101010000100000001001;
		b = 32'b01010110000110001010001010111000;
		correct = 32'b10100000001100101010010111010110;
		#400 //-6.34883e-06 * 41956160000000.0 = -1.5132057e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110101111101001100111000110;
		b = 32'b11100001101100010100010000000011;
		correct = 32'b00111100100010011010000100000010;
		#400 //-6.867113e+18 * -4.087468e+20 = 0.016800407
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001010100001111111010010111;
		b = 32'b01011000001111001011111110000001;
		correct = 32'b00101000100011011011101011101100;
		#400 //13.062156 * 830122760000000.0 = 1.5735209e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111011001110001110100010010;
		b = 32'b10100000001000111001110000101110;
		correct = 32'b10111110101101001100111110101011;
		#400 //4.89402e-20 * -1.3858313e-19 = -0.35314688
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110001110100100001110010000;
		b = 32'b10110011100100010000111101010001;
		correct = 32'b10010010001001000101101110110111;
		#400 //3.503235e-35 * -6.754875e-08 = -5.1862323e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110110000100001010011101101;
		b = 32'b01001100100011100000001101011111;
		correct = 32'b00111001101011101110111001000010;
		#400 //24842.463 * 74455800.0 = 0.00033365382
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000011110001101001011100000;
		b = 32'b01000110001010000111000011000000;
		correct = 32'b01001001101111010001010110010011;
		#400 //16698278000.0 * 10780.1875 = 1548978.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101000111110101011010011011;
		b = 32'b01001100011111101110011111101110;
		correct = 32'b01110000001000000000010110101100;
		#400 //1.3237308e+37 * 66822070.0 = 1.9809783e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001000011111110110101011001;
		b = 32'b01101010111100011101000000010100;
		correct = 32'b01000101100110000101111100010010;
		#400 //7.126927e+29 * 1.4616687e+26 = 4875.884
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111111011111101101011010;
		b = 32'b00111011101000111001101001111011;
		correct = 32'b11001110110001101011010111010001;
		#400 //-8322477.0 * 0.0049927807 = -1666902100.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101101110111110100010111110;
		b = 32'b10000011010111011110110101010110;
		correct = 32'b11110001110110001100001001011100;
		#400 //1.4000323e-06 * -6.521851e-37 = -2.1466793e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001110000000011000100100001;
		b = 32'b01111010110111110010111111100110;
		correct = 32'b00100110010111000111001010101010;
		#400 //4.4316437e+20 * 5.7942685e+35 = 7.648323e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101011010011010011101000111;
		b = 32'b10101011101100100101110110111100;
		correct = 32'b11110001001001111010110011110000;
		#400 //1.0522815e+18 * -1.2673677e-12 = -8.3028904e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100101011110101111000110001;
		b = 32'b11100101011101000100110110100011;
		correct = 32'b00100110101101111100001110100010;
		#400 //-91943304.0 * -7.21056e+22 = 1.2751202e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000101001001111110010100001;
		b = 32'b11010010001010011011001111011011;
		correct = 32'b00010101111110001110001011011111;
		#400 //-1.8317218e-14 * -182216740000.0 = 1.0052434e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111001011011000101110101110;
		b = 32'b11110101010011101100111101110011;
		correct = 32'b00011001010101101101001011000011;
		#400 //-2911612400.0 * -2.6216326e+32 = 1.1106104e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110110101010000001011111001;
		b = 32'b11010111110010011011101011011101;
		correct = 32'b00100110100001110010100010001010;
		#400 //-0.4160383 * -443608820000000.0 = 9.378495e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101100100111101101001011;
		b = 32'b11011010101100100100111101110001;
		correct = 32'b11000000100000000001111101111011;
		#400 //1.0047622e+17 * -2.5094946e+16 = -4.003843
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110110000000101001000011;
		b = 32'b11111101000101101001010101110101;
		correct = 32'b00111101001101111010001110110100;
		#400 //-5.6087213e+35 * -1.2510014e+37 = 0.044833854
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110001100110111000111101110;
		b = 32'b01100101111101001111010011001000;
		correct = 32'b10010111101110111000100100001001;
		#400 //-0.1752393 * 1.44596605e+23 = -1.2119184e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010111110110101100111011101;
		b = 32'b11100101100111110000000001000011;
		correct = 32'b00110100110010100101100000011100;
		#400 //-3.5374512e+16 * -9.385764e+22 = 3.768954e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010001101110011000100000;
		b = 32'b00011001001001001011111110001000;
		correct = 32'b11000001100110101000100010000000;
		#400 //-1.6452534e-22 * 8.517281e-24 = -19.31665
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111100100101111000010000101;
		b = 32'b11011010101100100010110010011100;
		correct = 32'b01011100010100110001111101000001;
		#400 //-5.9605754e+33 * -2.5075797e+16 = 2.3770234e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011110000010000110010110111;
		b = 32'b11000011010111111101010000101010;
		correct = 32'b10101111110111001100110000000111;
		#400 //8.989576e-08 * -223.82877 = -4.0162737e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101010101000100000011111;
		b = 32'b01010100101110111000100111100100;
		correct = 32'b01000000011010001100100011100001;
		#400 //23437702000000.0 * 6443778400000.0 = 3.6372607
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100110000011101111001001;
		b = 32'b00111111011001011111101001110101;
		correct = 32'b00011110101010010111010101100000;
		#400 //1.6118353e-20 * 0.8983529 = 1.7942116e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011101110001001101010101;
		b = 32'b10001011110110000111111101010010;
		correct = 32'b11100010000100100001010000101010;
		#400 //5.6178468e-11 * -8.3391744e-32 = -6.736694e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011101100011110000000010111;
		b = 32'b00101001100011000111110111110010;
		correct = 32'b11111001101000100000111100110101;
		#400 //-6.562442e+21 * 6.239097e-14 = -1.0518257e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001101011010010110000111011;
		b = 32'b11000111011011010111101111010011;
		correct = 32'b01100001101110101010110011000011;
		#400 //-2.616913e+25 * -60795.824 = 4.304429e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001110010011101101111100011;
		b = 32'b11010001000101110000011001110110;
		correct = 32'b01000000001010110001010101101000;
		#400 //-108372190000.0 * -40540530000.0 = 2.6731815
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