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

    op = 3'b010;

		/* Display the operation */
		$display ("Opcode: 010, Operation: DIV");
		/* Test Cases!*/
		a = 32'b01011001000101001001100110101100;
		b = 32'b00110000100010000001001100001101;
		correct = 32'b01101000000010111100100001011001;
		#400 //2614203800000000.0 * 9.900717e-10 = 2.6404188e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000111010100011010011001111;
		b = 32'b11000100001101011000001100000011;
		correct = 32'b01000100001001010010100011011001;
		#400 //-479654.47 * -726.04706 = 660.63824
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101011101110101010110000011;
		b = 32'b10111101101000011111110001001001;
		correct = 32'b00010111010000110111000100100010;
		#400 //-4.994871e-26 * -0.07909448 = 6.315069e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111001101101010011110101101;
		b = 32'b00110101010111100011010010110010;
		correct = 32'b11011001010100100110111100011110;
		#400 //-3064442000.0 * 8.2778126e-07 = -3701995000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011111100001101010000011110;
		b = 32'b01000101101100001100011000110011;
		correct = 32'b11001101101011100110000110000111;
		#400 //-2068701800000.0 * 5656.775 = -365703400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000011100000011000010010;
		b = 32'b11100110111100100101100100101001;
		correct = 32'b10011100100101100000011000101000;
		#400 //568.09485 * -5.722287e+23 = -9.927759e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110000100110100100010011110;
		b = 32'b10100100101010000010011010010000;
		correct = 32'b11100000111000000011101100101111;
		#400 //9426.154 * -7.2923713e-17 = -1.2926048e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100010011101010100111101000;
		b = 32'b00101101110100100111000001110111;
		correct = 32'b00100101111110110110100000101110;
		#400 //1.043385e-26 * 2.392418e-11 = 4.3612154e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010011011111111010101010001;
		b = 32'b10111011100000010001000101011110;
		correct = 32'b11110110011011011111100100010101;
		#400 //4.752863e+30 * -0.003938838 = -1.20666635e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101011000000100101101100111;
		b = 32'b11010010100010001110111101101111;
		correct = 32'b01001010010100011010100010101101;
		#400 //-1.0101328e+18 * -294066300000.0 = 3435051.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010101111000110100011000;
		b = 32'b11001001111110111011011101000011;
		correct = 32'b00001000110110110011100001000011;
		#400 //-2.720638e-27 * -2062056.4 = 1.319381e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011000110010000010000111000;
		b = 32'b11110000110011001110111001110000;
		correct = 32'b00010001101111110010010111100001;
		#400 //-153.01648 * -5.0738556e+29 = 3.0157831e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111000011111111000110100;
		b = 32'b11110101001100010010000111001101;
		correct = 32'b10110000001000110100111011100010;
		#400 //1.3340271e+23 * -2.2454153e+32 = -5.9411154e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010000000100001110101101101;
		b = 32'b00100100011000001000011111111010;
		correct = 32'b00100101000101000101100111011100;
		#400 //6.264807e-33 * 4.8687434e-17 = 1.2867399e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010001110100110110001011011;
		b = 32'b10101011010111011101110010100010;
		correct = 32'b00011110010101110001101111000011;
		#400 //-8.975954e-33 * -7.882116e-13 = 1.1387746e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000110010100110011100011110;
		b = 32'b11101111100101110000000011001100;
		correct = 32'b00011000101010111001000111011000;
		#400 //-414520.94 * -9.34664e+28 = 4.434973e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010100110110110101000000000;
		b = 32'b10000000000110110001011101010010;
		correct = 32'b11100010101101111001001100111001;
		#400 //4.2125066e-18 * -2.487924e-39 = -1.6931813e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001110110110111101101010000;
		b = 32'b11101001110100100010110100101101;
		correct = 32'b00100111100001011010101011000000;
		#400 //-117833335000.0 * -3.176097e+25 = 3.7100043e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001110011000101101110010;
		b = 32'b01000011111100000111001011100001;
		correct = 32'b11100001110001011000101110000101;
		#400 //-2.1905253e+23 * 480.8975 = -4.5550775e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001100101000111101110110100;
		b = 32'b00110010100011100010010101000110;
		correct = 32'b00110110100001011011010011111001;
		#400 //6.5939794e-14 * 1.6547926e-08 = 3.984777e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101010101011000011001110111;
		b = 32'b01011011100000001010111010010001;
		correct = 32'b00000001010101000110010011001101;
		#400 //2.8259832e-21 * 7.244147e+16 = 3.901057e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000110111001110110101111101;
		b = 32'b10100100111111111010010011101000;
		correct = 32'b11101011010111010011110000110110;
		#400 //29652412000.0 * -1.10867984e-16 = -2.6745694e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001111100001101110110010011;
		b = 32'b10011000111010001100110101000100;
		correct = 32'b11100000100001000110111100000010;
		#400 //0.00045941453 * -6.017786e-24 = -7.634279e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011010111111010001111000;
		b = 32'b00010010001110000110111110101100;
		correct = 32'b00110000101000111100000100011110;
		#400 //6.934093e-37 * 5.819781e-28 = 1.1914698e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000011011010110110000001101;
		b = 32'b01101010100001101010010111011110;
		correct = 32'b00010101011000011011001100101110;
		#400 //3.70972 * 8.138967e+25 = 4.5579736e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001011010111001010010110111;
		b = 32'b11000000010010111100111011010011;
		correct = 32'b01001000100100111111010001101110;
		#400 //-964939.44 * -3.1844985 = 303011.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100011111000100111010001111;
		b = 32'b00111110101111111011001010110101;
		correct = 32'b00010101001010000111100000110001;
		#400 //1.2738242e-26 * 0.3744103 = 3.4022144e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100111010000010111010001011;
		b = 32'b11111101100000011100110101010100;
		correct = 32'b10111110111001001111010101011001;
		#400 //9.644455e+36 * -2.1567067e+37 = -0.44718435
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000010000000110100001001;
		b = 32'b00110010010101100101111110100010;
		correct = 32'b11100001001000100111100000001001;
		#400 //-2337337000000.0 * 1.2478184e-08 = -1.8731387e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001011110100010111110111011;
		b = 32'b00000110000010100001011111101010;
		correct = 32'b11011010111001111110011001101000;
		#400 //-8.4766465e-19 * 2.5972485e-35 = -3.2637027e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101100111001011000000100001;
		b = 32'b00110110101100010000011000010101;
		correct = 32'b10010110011000101001011101111111;
		#400 //-9.656644e-31 * 5.275719e-06 = -1.8303938e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110111000000011000001000001;
		b = 32'b00110010100100000100110000000000;
		correct = 32'b10101011110001101101111001100001;
		#400 //-2.373688e-20 * 1.6798367e-08 = -1.4130469e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100000101001110001110110010;
		b = 32'b01101100011010011100111111001100;
		correct = 32'b00100111001000110000010011001110;
		#400 //2557901000000.0 * 1.130644e+27 = 2.2623399e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011001101001011100001000011;
		b = 32'b00001101001011011010000000100000;
		correct = 32'b10111101100001010011101011100100;
		#400 //-3.4805362e-32 * 5.3502484e-31 = -0.06505373
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100000111010010100111011001;
		b = 32'b01000101010010100000110110101110;
		correct = 32'b00011110010001110001111111110010;
		#400 //3.4079395e-17 * 3232.855 = 1.05415784e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010001110000101111101010110;
		b = 32'b01001001100101001001011011100110;
		correct = 32'b10100000000111101101001100011101;
		#400 //-1.6375559e-13 * 1217244.8 = -1.3452972e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101000011010000011000111110;
		b = 32'b01011100101100001101011111110100;
		correct = 32'b01011111110011000010010111011101;
		#400 //1.1715847e+37 * 3.982163e+17 = 2.9420813e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001110011001011010010100011;
		b = 32'b01000000010101101001100001001110;
		correct = 32'b10100000111101000011001111011100;
		#400 //-1.3871392e-18 * 3.353046 = -4.1369525e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010111101100010111101000;
		b = 32'b01111110101100001001100001011101;
		correct = 32'b10111010001000010111100010000011;
		#400 //-7.2293995e+34 * 1.1736762e+38 = -0.000615962
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010001011001001000100101001;
		b = 32'b11101110011001001110000111011011;
		correct = 32'b10010011010000010000001100111010;
		#400 //43.141758 * -1.7708906e+28 = -2.4361616e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100011000111010110011100000;
		b = 32'b10100100010010010011000110010101;
		correct = 32'b10110111100100001101100100000001;
		#400 //7.5331435e-22 * -4.3626925e-17 = -1.7267188e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011100000000001010100001100;
		b = 32'b10010001101001100000101001110111;
		correct = 32'b00111001010001010111100111001011;
		#400 //-4.9335474e-32 * -2.6196632e-28 = 0.00018832755
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010000010110011100101100110;
		b = 32'b00111011110110111001110000001110;
		correct = 32'b00111101101000100100101101011011;
		#400 //0.0005310982 * 0.006701953 = 0.07924529
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100000010010111011000001010;
		b = 32'b00000011100010011000010000110010;
		correct = 32'b10111111111111111110010110100110;
		#400 //-1.6158473e-36 * 8.082487e-37 = -1.9991958
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110000101000100101010110001;
		b = 32'b01001000011101110011010000000100;
		correct = 32'b01011101000110011001000110011011;
		#400 //1.7507201e+23 * 253136.06 = 6.9161226e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011100100100101001101011011;
		b = 32'b10001001100010100010000010010001;
		correct = 32'b00111001100001111001100011101001;
		#400 //-8.600246e-37 * -3.3252917e-33 = 0.00025863133
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010100100011100011000000010;
		b = 32'b10110111101011111101100001111111;
		correct = 32'b11011010010101000011100001011111;
		#400 //313046140000.0 * -2.096244e-05 = -1.4933669e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100011100001111101001111011;
		b = 32'b10010001001000001010010100000011;
		correct = 32'b11100010110000000000001001011100;
		#400 //2.2442866e-07 * -1.2672623e-28 = -1.7709724e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000011001101011010011001;
		b = 32'b10000001101100110000011000100011;
		correct = 32'b01110110110010010110010100110110;
		#400 //-0.00013431384 * -6.576302e-38 = 2.0423915e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101000100110110111010010110;
		b = 32'b00011110110010100011110110011110;
		correct = 32'b01010101101110101001111101000011;
		#400 //5.492269e-07 * 2.1413066e-20 = 25649148000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100010110110001100010110;
		b = 32'b01011100110101101111110001001110;
		correct = 32'b10001001001001011111101010011111;
		#400 //-9.67192e-16 * 4.8410446e+17 = -1.9978994e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110000000101111011011111101;
		b = 32'b01100100011111111110001111100110;
		correct = 32'b11010001000000110000010101011111;
		#400 //-6.640704e+32 * 1.8881366e+22 = -35170677000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000000010111001111100010110;
		b = 32'b01100110100000011110110111000011;
		correct = 32'b10111001000010011000110001111101;
		#400 //-4.0243137e+19 * 3.067856e+23 = -0.00013117674
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010100000000000100011100;
		b = 32'b01010011100000101010011001000100;
		correct = 32'b10000111010010111100100101000010;
		#400 //-1.7205715e-22 * 1122270400000.0 = -1.5331167e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001010110001000011111100011;
		b = 32'b00110100010001110111100001110010;
		correct = 32'b00111100100010101111001010010101;
		#400 //3.150938e-09 * 1.8577137e-07 = 0.016961375
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000110001100001011010011101;
		b = 32'b00001011010001001001110011001000;
		correct = 32'b11110101000000001111010111111011;
		#400 //-6.1902604 * 3.7866176e-32 = -1.6347731e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001010110001101011110001;
		b = 32'b11001110000001000110110000111101;
		correct = 32'b01001111101001010110001111110110;
		#400 //-3.082358e+18 * -555421500.0 = 5549583400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010001011101111100101001110;
		b = 32'b11001111100101110011011011110000;
		correct = 32'b00001010000101000001110010011001;
		#400 //-3.6183743e-23 * -5073920000.0 = 7.1313194e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011011111011010010110010011;
		b = 32'b00011010110110001010100101110010;
		correct = 32'b11000000000101011101100110011010;
		#400 //-2.098117e-22 * 8.960926e-23 = -2.3414063
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110101111110100100101010000;
		b = 32'b10100101101011001011110101111000;
		correct = 32'b00100000100011011011111000100100;
		#400 //-7.195394e-35 * -2.9965633e-16 = 2.4012154e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001010001101111101011110100;
		b = 32'b00011011010011011011101100101101;
		correct = 32'b01101101011101111001100110000000;
		#400 //815023.25 * 1.7017682e-22 = 4.789273e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110010100101110101001001;
		b = 32'b00101001001011111101001001100101;
		correct = 32'b01100101000100110101001010111111;
		#400 //1697555600.0 * 3.9040294e-14 = 4.348214e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010000000101110011100011011;
		b = 32'b11101001101110000110010110101110;
		correct = 32'b10001111101101011011101110111000;
		#400 //0.0004993544 * -2.7865315e+25 = -1.7920285e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110010011110001101111101;
		b = 32'b00101000100101010100101110100110;
		correct = 32'b01000101101011010001011101011100;
		#400 //9.180832e-11 * 1.657513e-14 = 5538.92
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000100111100000100111011111;
		b = 32'b00110100000010110111000101110101;
		correct = 32'b01010100000100010001000111000010;
		#400 //323662.97 * 1.2986659e-07 = 2492272700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001001100101111110000100011;
		b = 32'b10101001000110111011100001111110;
		correct = 32'b11001111100100110001111101110011;
		#400 //0.00017069331 * -3.4576935e-14 = -4936623600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000101011001001000111011011;
		b = 32'b10110010011111101101000111110001;
		correct = 32'b01110101101011010101111001101011;
		#400 //-6.519501e+24 * -1.4832481e-08 = 4.3954218e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000000101011001100111011100;
		b = 32'b11010100111111101000011101100101;
		correct = 32'b01001010100101100111011100110110;
		#400 //-4.3119556e+19 * -8745546000000.0 = 4930459.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101001111000110001000101111;
		b = 32'b01111100001011001011110011010001;
		correct = 32'b00000000100010111001100000000011;
		#400 //0.045992073 * 3.587619e+36 = 1.2819665e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001101011011111010011111100;
		b = 32'b01000101001101111110011001110001;
		correct = 32'b00001011111100100010100010010010;
		#400 //2.744557e-28 * 2942.4026 = 9.327605e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110111100001100100011101000;
		b = 32'b01101101010101011101001111111100;
		correct = 32'b00100001000100000010001011111001;
		#400 //2019849200.0 * 4.1360363e+27 = 4.8835384e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000111101001001111100001001;
		b = 32'b11110111111100010001011110001011;
		correct = 32'b10111000100000011101111110101110;
		#400 //6.0565283e+29 * -9.779852e+33 = -6.192863e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000000101100110010101101;
		b = 32'b10000111011011001110101101011010;
		correct = 32'b11001011000011010101010101101010;
		#400 //1.650922e-27 * -1.782383e-34 = -9262442.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111011101011000110001011;
		b = 32'b01111101001001010111011011011110;
		correct = 32'b00110010001110001010011000010001;
		#400 //1.4774414e+29 * 1.3746238e+37 = 1.0747969e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111010100000110100110110110;
		b = 32'b10100100100000000110101110100010;
		correct = 32'b00111010010011111011101100001001;
		#400 //-4.4133155e-20 * -5.569349e-17 = 0.0007924294
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001010001111101011110000;
		b = 32'b10100001111111001000100001110111;
		correct = 32'b11011011101010110100110011010011;
		#400 //0.16501975 * -1.7112306e-18 = -9.643338e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000000100110000011010101010;
		b = 32'b11101011011100101110000101011011;
		correct = 32'b11001100000110101111011111001100;
		#400 //1.1928169e+34 * -2.9362426e+26 = -40623920.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100001011001000001100101000;
		b = 32'b10101100101101101110011000101010;
		correct = 32'b11110110111100010111011000111110;
		#400 //1.2729163e+22 * -5.1983045e-12 = -2.4487144e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111010010110001100111101;
		b = 32'b01101110101110111001100111010010;
		correct = 32'b00010011100111110011110110000101;
		#400 //116.693825 * 2.9029827e+28 = 4.0197906e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101001010011000111110110100;
		b = 32'b00111011001011001001110001110100;
		correct = 32'b01010001011110110111101000010001;
		#400 //177797950.0 * 0.002633837 = 67505295000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010010000110000110101000010;
		b = 32'b00010110011100000010000000001110;
		correct = 32'b01010011010011111111001001011110;
		#400 //1.7324079e-13 * 1.939716e-25 = 893124500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101101101000001101111110011;
		b = 32'b11100101101011000011011000101111;
		correct = 32'b11000111100001011101111010111000;
		#400 //6.967636e+27 * -1.0165582e+23 = -68541.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010010100000100011010111111;
		b = 32'b10111101000001101111101010001000;
		correct = 32'b10110100110001011000001000010010;
		#400 //1.2123279e-08 * -0.03295377 = -3.6788748e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100100000000000011111100;
		b = 32'b00100011000000001001001111110010;
		correct = 32'b11001111000011110101101101001010;
		#400 //-1.6764254e-08 * 6.9702225e-18 = -2405124600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011101110100001100011000100;
		b = 32'b01001011010010111101111001000110;
		correct = 32'b10011111111010011010111100100000;
		#400 //-1.3222969e-12 * 13360710.0 = -9.896906e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101101101111101111010100111;
		b = 32'b10101110011001001010111000000000;
		correct = 32'b01000110110011011101011000101100;
		#400 //-1.3699363e-06 * -5.199574e-11 = 26347.086
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001111000110010010000001111;
		b = 32'b00010001101111011110000010000001;
		correct = 32'b11100111100110010001111011010000;
		#400 //-0.0004332368 * 2.9957303e-28 = -1.4461809e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010011100100010001111101;
		b = 32'b10001010111011100111010000000100;
		correct = 32'b01011100110111010111001000101001;
		#400 //-1.1450148e-14 * -2.2962207e-32 = 4.9865192e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111110001110100000000100011;
		b = 32'b10110101010001001010011110101110;
		correct = 32'b10111010000000011011000001111100;
		#400 //3.624346e-10 * -7.3259696e-07 = -0.00049472577
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110001010110011001100101;
		b = 32'b01100011111100101110101010110011;
		correct = 32'b00110110010100000000100000011110;
		#400 //2.7781577e+16 * 8.962048e+21 = 3.099914e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110010111010101110100000;
		b = 32'b11111011010101111101110010000111;
		correct = 32'b00111101111100011000101011000111;
		#400 //-1.3218965e+35 * -1.12081665e+36 = 0.11794048
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010011101001001101111001;
		b = 32'b00111011110101111011100111100101;
		correct = 32'b00001101111101010010010001000110;
		#400 //9.946276e-33 * 0.0065834397 = 1.5108023e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111110011011011111100110011;
		b = 32'b00101110011110100010101010000101;
		correct = 32'b00110000110100101000101110000000;
		#400 //8.713719e-20 * 5.6881184e-11 = 1.5319159e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001001001000010100000100000;
		b = 32'b11001111010000000101101000000011;
		correct = 32'b10100001010110100111100110111110;
		#400 //2.388795e-09 * -3227124500.0 = -7.40224e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100111101111100100101000;
		b = 32'b00100101001011100110111010001011;
		correct = 32'b01011010111010010101000000001101;
		#400 //4.9679146 * 1.5129548e-16 = 3.2835843e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100010010011000001110111;
		b = 32'b10100111000100011111000101000111;
		correct = 32'b01011001111100001010010101011011;
		#400 //-17.148664 * -2.025359e-15 = 8466975600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101010010110110000001000;
		b = 32'b10010010110111000101100110001101;
		correct = 32'b11101001010001001101010100100111;
		#400 //0.020681396 * -1.3906028e-27 = -1.4872253e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010110110000001100000111101;
		b = 32'b11111000010001111000010111011010;
		correct = 32'b00110010000010101010000110011111;
		#400 //-1.3062122e+26 * -1.6187217e+34 = 8.069406e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000110011100101110011011100;
		b = 32'b10101110110110110011001011011010;
		correct = 32'b01000001011100010000001001010010;
		#400 //-1.5014865e-09 * -9.968e-11 = 15.0630665
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111011100100010110000110101;
		b = 32'b01000011111011100001101110010000;
		correct = 32'b00000011000000100010111101101100;
		#400 //1.8219048e-34 * 476.21533 = 3.8258004e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001011001101000110111110000;
		b = 32'b10011010111111101111011010111110;
		correct = 32'b11000101111001110111110111001101;
		#400 //7.8114884e-19 * -1.0545057e-22 = -7407.725
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010101001101101111010011;
		b = 32'b01100101100001011000000001110011;
		correct = 32'b00110110010011000001011000101000;
		#400 //2.3965758e+17 * 7.880553e+22 = 3.0411265e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101101100100010100101101;
		b = 32'b00111101111010010010010110001110;
		correct = 32'b00000010010010000010001011110101;
		#400 //1.6738876e-38 * 0.11384116 = 1.4703712e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111101000011010100001000000;
		b = 32'b01001000111001111110101100001001;
		correct = 32'b11100110001100100111000110000001;
		#400 //-1.0006098e+29 * 474968.28 = -2.1066875e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111001011100110000100011011;
		b = 32'b01101001101001111100110101111001;
		correct = 32'b10000101000001010000010001000111;
		#400 //-1.5859707e-10 * 2.5357616e+25 = -6.2544156e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110001110100101000001011111;
		b = 32'b00101011110000111111111000011000;
		correct = 32'b11110001111100110101101110101011;
		#400 //-3.3563337e+18 * 1.3926109e-12 = -2.4101017e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011100011010111101000011000;
		b = 32'b10011001101001110100111000101100;
		correct = 32'b11110001010110000111101010011111;
		#400 //18543664.0 * -1.7298969e-23 = -1.071952e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001011111101000111100010001;
		b = 32'b11001110010100100000001011111101;
		correct = 32'b11100010100110110010011010101100;
		#400 //1.2605144e+30 * -880852800.0 = -1.431016e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110110001011101000000000001;
		b = 32'b01001100111110100111111100101010;
		correct = 32'b00001001010010100010100010001001;
		#400 //3.1958335e-25 * 131332430.0 = 2.4333925e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100000101001100000100110101;
		b = 32'b01000111010100101101001101001010;
		correct = 32'b00001100001101001010000100010001;
		#400 //7.510194e-27 * 53971.29 = 1.3915165e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111111011111101011111000;
		b = 32'b10111100010110011001101100001001;
		correct = 32'b10001100000101010110010101111000;
		#400 //1.5285886e-33 * -0.013281592 = -1.1509077e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111010100100110101111001111;
		b = 32'b10100011110110000111101011110111;
		correct = 32'b11101010111110001101010110101100;
		#400 //3530280700.0 * -2.3470845e-17 = -1.5041132e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000010001110100100000110001;
		b = 32'b00011010010110001111011010111110;
		correct = 32'b00100101001010000011011011010001;
		#400 //6.546218e-39 * 4.486707e-23 = 1.459025e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011000101111101001000001110;
		b = 32'b01011100001110000100001110010100;
		correct = 32'b00101110010100101110110100001011;
		#400 //9949710.0 * 2.074628e+17 = 4.795901e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111000010101011000000101011;
		b = 32'b11001100000001001000001001010110;
		correct = 32'b10001010100001011111100000000001;
		#400 //4.481256e-25 * -34736470.0 = -1.2900723e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000110100110101101010010;
		b = 32'b00001011001011101110110100001111;
		correct = 32'b11101101011000011111110100100010;
		#400 //-0.00014726564 * 3.3689524e-32 = -4.371259e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000010010001111011111011111;
		b = 32'b11011111101110100100001101100101;
		correct = 32'b00011000000010100001101011110010;
		#400 //-4.7914564e-05 * -2.6843365e+19 = 1.7849686e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110011111011100101010111100;
		b = 32'b10111011000101001010010100000010;
		correct = 32'b11011010110110101000101100111111;
		#400 //69761795000000.0 * -0.002268136 = -3.0757324e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110111100110011000111101100;
		b = 32'b01100111011100110011000111110101;
		correct = 32'b00000110111111111111111111110111;
		#400 //1.10592285e-10 * 1.1484566e+24 = 9.6296446e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100011110011111011101100;
		b = 32'b10111010000100010100001011100111;
		correct = 32'b00011100111111000111001010101011;
		#400 //-9.257042e-25 * -0.000554128 = 1.6705602e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100010001110111110111010;
		b = 32'b00011011100101000101011010111101;
		correct = 32'b01000010011011000101001001101110;
		#400 //1.4498709e-20 * 2.45406e-22 = 59.080498
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111010110101110000101001;
		b = 32'b00001111010010100110110001001111;
		correct = 32'b01111010000101001101001111001010;
		#400 //1928069.1 * 9.9802284e-30 = 1.9318888e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001001100100101000000010010;
		b = 32'b01110011101000101101000101111111;
		correct = 32'b00110101000011000010111001010101;
		#400 //1.3472932e+25 * 2.5799596e+31 = 5.2221486e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101001011000100000100100;
		b = 32'b11110010100101001100100100111000;
		correct = 32'b00001001100011100110100000000101;
		#400 //-0.020206518 * -5.894021e+30 = 3.4283076e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101011010100111111001011011;
		b = 32'b01000011000011100011000001111110;
		correct = 32'b10100001110100110001011111001000;
		#400 //-2.0339076e-16 * 142.18942 = -1.4304211e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001101110101100111000100001;
		b = 32'b10111111110100011111001110101100;
		correct = 32'b11101001011000111100011011010011;
		#400 //2.8229202e+25 * -1.6402488 = -1.7210318e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100100011001111010001011100;
		b = 32'b01010110101010101000110110111111;
		correct = 32'b00011101010100111001001001100100;
		#400 //2.6254827e-07 * 93762886000000.0 = 2.80013e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001000011101000000001000001;
		b = 32'b01010101101111100010011111101111;
		correct = 32'b10001010101111111101100000000101;
		#400 //-4.8281214e-19 * 26134840000000.0 = -1.8473888e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101000110101011101011001001;
		b = 32'b01101001101011001111101011110100;
		correct = 32'b00110010111001001111110101111100;
		#400 //6.968403e+17 * 2.6140042e+25 = 2.6657965e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100101111100100110001101010;
		b = 32'b10000010000001111101001111010000;
		correct = 32'b11111010001100110101010100000010;
		#400 //0.023229796 * -9.979021e-38 = -2.3278633e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011101000000000101111111101;
		b = 32'b10001011101100001001111010100110;
		correct = 32'b11010111011001111111101010000011;
		#400 //1.7352312e-17 * -6.803144e-32 = -255063130000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011110000111100010100011011;
		b = 32'b01110101011001101010101100010010;
		correct = 32'b00100101110110010100010011101011;
		#400 //1.1020868e+17 * 2.9240674e+32 = 3.76902e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001101110010010101011111101;
		b = 32'b10101010111001100101110011000010;
		correct = 32'b10100110010011011100011010011001;
		#400 //2.9214347e-28 * -4.092057e-13 = -7.139281e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111011010100001110000111000;
		b = 32'b11110000110010001010100101101111;
		correct = 32'b10011110000101010101011000011011;
		#400 //3927718000.0 * -4.9681468e+29 = -7.9058005e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000011111110100001011100;
		b = 32'b01110101011001001110111111010000;
		correct = 32'b10000011001000001110101101011100;
		#400 //-0.00013724103 * 2.9021183e+32 = -4.7289953e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000110000000011000101101;
		b = 32'b01000101110100100101111000111000;
		correct = 32'b00111011101110010000000000011011;
		#400 //38.00603 * 6731.7773 = 0.0056457645
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010101110100111111011010111;
		b = 32'b00001001001110101111011100001110;
		correct = 32'b01000000111111110101101101100110;
		#400 //1.795886e-32 * 2.25051e-33 = 7.979907
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100000000000011111100101111;
		b = 32'b01001101110100100100110101100010;
		correct = 32'b00011101100111000001110101000000;
		#400 //1.8224968e-12 * 441035840.0 = 4.13231e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100011001110110111010000;
		b = 32'b01011011010011101100101101110101;
		correct = 32'b11001010101011100111011001000001;
		#400 //-3.327591e+23 * 5.820755e+16 = -5716768.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110110100000010000110010000;
		b = 32'b00011111100110011110100000110001;
		correct = 32'b11101110101011010001100010111100;
		#400 //-1745930200.0 * 6.518215e-20 = -2.6785404e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000011010010000101111111000;
		b = 32'b11011001100100001010001111100001;
		correct = 32'b10111110010011100011110001100001;
		#400 //1024950460000000.0 * -5089073000000000.0 = -0.2014022
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001100101100000111011001001;
		b = 32'b11000110101010000111111100001111;
		correct = 32'b01000010011000111111110001100100;
		#400 //-1229273.1 * -21567.53 = 56.996475
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011100001100101010001110;
		b = 32'b00011001000100111111001010010110;
		correct = 32'b11101011110100000101001101011101;
		#400 //-3852.6597 * 7.648712e-24 = -5.037005e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111000110011001011010111111;
		b = 32'b01100110101001010110000001111111;
		correct = 32'b00000111111011011100000010010110;
		#400 //1.3968825e-10 * 3.9048525e+23 = 3.5772988e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100110111111001111000010010;
		b = 32'b10111101110000011011100100010100;
		correct = 32'b01110110100100111100000010011110;
		#400 //-1.41734405e+32 * -0.09459129 = 1.4983875e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010111100001111011101011000;
		b = 32'b00100101110010011110110101010000;
		correct = 32'b00100100100110001011111100100100;
		#400 //2.32042e-32 * 3.502875e-16 = 6.62433e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001010011000001011011101;
		b = 32'b00010100110101110001101001100000;
		correct = 32'b01100010110010011011110101101010;
		#400 //4.0414616e-05 * 2.1719855e-26 = 1.8607221e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010001110001111101010111101;
		b = 32'b00111100000011011001101011101111;
		correct = 32'b11111101101001110011010011111000;
		#400 //-2.4011705e+35 * 0.008642896 = -2.7782013e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000011101100110101101011001;
		b = 32'b11000001001011011110000000001000;
		correct = 32'b01001110101101010110011101111000;
		#400 //-16536921000.0 * -10.867195 = 1521728500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111110101110100110100000;
		b = 32'b11010000010000000111110011011111;
		correct = 32'b01100111001001101101100111100111;
		#400 //-1.0178224e+34 * -12917636000.0 = 7.879324e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110010110011010001110001011;
		b = 32'b11110000100111100000011000110101;
		correct = 32'b11000101001100000100100110111000;
		#400 //1.10356e+33 * -3.912491e+29 = -2820.6074
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110011101111111111100001;
		b = 32'b00110011100011000101010101000111;
		correct = 32'b00100100101111001100111010110110;
		#400 //5.3508124e-24 * 6.53477e-08 = 8.1882185e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100000011110010001111010111;
		b = 32'b11001011101011111111000000010001;
		correct = 32'b01101111110100000100011011111101;
		#400 //-2.9729015e+36 * -23060514.0 = 1.289174e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011011110101011111001101010;
		b = 32'b00110100110010000100101000100100;
		correct = 32'b00101110001000000011111001110110;
		#400 //1.3592849e-17 * 3.7306847e-07 = 3.6435265e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001101000100111010100101101;
		b = 32'b01110100111001100100111001011011;
		correct = 32'b10100100001101001001010100001010;
		#400 //-5715973000000000.0 * 1.4597382e+32 = -3.915752e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101011100000100101110111111;
		b = 32'b00101110111110001011010101101100;
		correct = 32'b11111101111101110101011100101111;
		#400 //-4.6479984e+27 * 1.1309961e-10 = -4.10965e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010010000101000011000111;
		b = 32'b10111010011000110000001000000101;
		correct = 32'b01101101011000011110011000001110;
		#400 //-3.7838535e+24 * -0.0008659664 = 4.3695154e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010111100110000001110011000;
		b = 32'b11111000101100111110110110001110;
		correct = 32'b10010001101011001110000100010010;
		#400 //7963084.0 * -2.9194979e+34 = -2.7275525e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001010111011101000001011110;
		b = 32'b00110101011011101101110001010110;
		correct = 32'b11011011011011011011101011100110;
		#400 //-59542725000.0 * 8.898254e-07 = -6.6915066e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100001100100100000111101010;
		b = 32'b01100000111100111111101100001001;
		correct = 32'b10111010101110110000101000000011;
		#400 //-2.0070008e+17 * 1.4064524e+20 = -0.0014269951
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001001010101010010110110010;
		b = 32'b10110001010000111101011100100100;
		correct = 32'b11010111010111110001000101011111;
		#400 //698971.1 * -2.8498528e-09 = -245265700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011000101011111101100010101;
		b = 32'b10010101101001001010110110011001;
		correct = 32'b11011100111010010010011011111101;
		#400 //3.4920124e-08 * -6.651296e-26 = -5.250123e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110110101010011010110001000;
		b = 32'b01001010101101010000110001010010;
		correct = 32'b10000011100101101011110011010101;
		#400 //-5.2560103e-30 * 5932585.0 = -8.859561e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100011001101000001010101;
		b = 32'b10100111010110111111110011100101;
		correct = 32'b00111110101000111101110101110111;
		#400 //-9.77092e-16 * -3.052945e-15 = 0.32004902
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100101101101101110011100100;
		b = 32'b01001001100011101110011101101110;
		correct = 32'b01101010101000111100101010010111;
		#400 //1.159031e+32 * 1170669.8 = 9.900581e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001111111000011000100100;
		b = 32'b00000001001011110100111110010100;
		correct = 32'b01011110100010111101011001110101;
		#400 //1.6222713e-19 * 3.2199518e-38 = 5.038185e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111101000010001001011111010;
		b = 32'b00111110010001100101101101110101;
		correct = 32'b10101000110011111110000111100011;
		#400 //-4.470705e-15 * 0.19370826 = -2.307958e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110101101101110110000000;
		b = 32'b10111111000011101000110100010000;
		correct = 32'b01000010010000001110111011000011;
		#400 //-26.858154 * -0.55683994 = 48.233166
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001111011011010111110011010;
		b = 32'b01111010101000111111000100100111;
		correct = 32'b10111110101110011001001110011101;
		#400 //-1.54267e+35 * 4.2561777e+35 = -0.36245432
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101011100110100000111111010;
		b = 32'b10001001010101100000101011110001;
		correct = 32'b01010011100100010111100010001100;
		#400 //-3.2194891e-21 * -2.5764458e-33 = 1249585400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001101010111101101110101;
		b = 32'b10110101101101010011101010111111;
		correct = 32'b00111011000000000010110110110100;
		#400 //-2.6409144e-09 * -1.3502648e-06 = 0.0019558491
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111001010000011010001011000;
		b = 32'b11000011110111100001110010010000;
		correct = 32'b10111010110000011101111000111010;
		#400 //0.6570487 * -444.22314 = -0.001479096
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011010100001101010011100001;
		b = 32'b00010101100110011011010100100111;
		correct = 32'b11010101001011011110011110001010;
		#400 //-7.4191873e-13 * 6.2082016e-26 = -11950623000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011000101010100110110010;
		b = 32'b01000010110000000111000101001111;
		correct = 32'b10101111000101101100001011010011;
		#400 //-1.3193516e-08 * 96.221306 = -1.3711636e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000011101001100010111010111;
		b = 32'b11101111110101110010101110001001;
		correct = 32'b00001000000100011001110000101011;
		#400 //-5.8358386e-05 * -1.3318382e+29 = 4.3817925e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110100010111000110001010100;
		b = 32'b10100101011111101100011001010001;
		correct = 32'b11100000100011000011100000100100;
		#400 //17862.164 * -2.209818e-16 = -8.083092e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101111000111100111101111000;
		b = 32'b10011111110100011001110101000100;
		correct = 32'b01111101100010110001110010000011;
		#400 //-2.0519339e+18 * -8.877512e-20 = 2.3113842e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100001110111000001101001;
		b = 32'b00101110011001001110010000111101;
		correct = 32'b10011101100101110111101011001010;
		#400 //-2.0867698e-31 * 5.2043914e-11 = -4.009633e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000111011010101000001000001;
		b = 32'b01000001011011101111110111001000;
		correct = 32'b01010110111111100011001111100111;
		#400 //2087431500000000.0 * 14.936958 = 139749440000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001100010111110010000110000;
		b = 32'b11001000000001100111110010110001;
		correct = 32'b10000001000001010010010011000011;
		#400 //3.367762e-33 * -137714.77 = -2.4454617e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001110001101011001110100100;
		b = 32'b00111101000000100101101010000101;
		correct = 32'b01000100010000110001110100110100;
		#400 //24.837715 * 0.031824607 = 780.4563
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111111101000100010101010100;
		b = 32'b00010111001110100001110111011101;
		correct = 32'b11101000001001111111111010110111;
		#400 //-1.9083657 * 6.0137534e-25 = -3.1733354e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100011111010101011000001111;
		b = 32'b00111111111000110001010101001100;
		correct = 32'b10000100000011101100110001001011;
		#400 //-2.9779523e-36 * 1.7740874 = -1.6785827e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100011110110010000000011000;
		b = 32'b11110010001010000111111101001011;
		correct = 32'b10111001101111101100010011011100;
		#400 //1.21436776e+27 * -3.3374316e+30 = -0.00036386296
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001101101010101010000100;
		b = 32'b10111011111111111010000110100100;
		correct = 32'b10100010101101101110110111110001;
		#400 //3.8681046e-20 * -0.0078012515 = -4.958313e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110011010100011111110001011;
		b = 32'b10000110001011111110111011110000;
		correct = 32'b01011111101010100110110101001000;
		#400 //-8.1271175e-16 * -3.3089385e-35 = 2.4561102e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111101010101000011000100111;
		b = 32'b00011000101110000111001011111011;
		correct = 32'b01100110011011001010110001010001;
		#400 //1.332219 * 4.7678986e-24 = 2.794143e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100001100110011000010100011;
		b = 32'b01111100111110101001000100101101;
		correct = 32'b10010110101101110001001101000101;
		#400 //-3078460500000.0 * 1.040815e+37 = -2.9577405e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011001001000010110010110010;
		b = 32'b00101010011100100011010100110011;
		correct = 32'b10101000001011011000010111110110;
		#400 //-2.0721747e-27 * 2.1512375e-13 = -9.632477e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110111111001001101110011000;
		b = 32'b00000011100100001000111010011100;
		correct = 32'b01100010110111111010110011001010;
		#400 //1.7528186e-15 * 8.496301e-37 = 2.0630373e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111111101101000011011101011;
		b = 32'b01011001010100001000111001000011;
		correct = 32'b01000110000101110100111000000001;
		#400 //3.5528288e+19 * 3668950800000000.0 = 9683.501
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110101001101101100001010001;
		b = 32'b11001011011100010000101010011101;
		correct = 32'b10001010101100010011001011110101;
		#400 //2.6955261e-25 * -15796893.0 = -1.7063648e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001110101010110010111010;
		b = 32'b01101110111111100111001100110111;
		correct = 32'b00111010101110111100111111010011;
		#400 //5.641897e+25 * 3.937424e+28 = 0.0014328904
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110001001000101001010100100;
		b = 32'b11000100010001001110011010110001;
		correct = 32'b00111001010101011010010010111010;
		#400 //-0.1604715 * -787.60455 = 0.00020374628
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111111000111011010101010;
		b = 32'b01101110001110011001001101011111;
		correct = 32'b10110000001011100010001010110111;
		#400 //-9.0959573e+18 * 1.4358222e+28 = -6.3350164e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000111010000100100110100111;
		b = 32'b00101010110011011111011101010000;
		correct = 32'b10011101100100000101101110011111;
		#400 //-1.3980308e-33 * 3.6586923e-13 = -3.8211217e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001110000010001100011110001;
		b = 32'b00001100010010001001011001000101;
		correct = 32'b10110100111101100111000100000000;
		#400 //-7.093279e-38 * 1.545266e-31 = -4.590329e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111110110010011000101110010;
		b = 32'b11000000101101011001111100000000;
		correct = 32'b00111110100110010001000111100101;
		#400 //-1.6968215 * -5.675659 = 0.29896465
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010001101000011110100011110;
		b = 32'b10011000111011001000101010010001;
		correct = 32'b01001000110000110001000011011001;
		#400 //-2.4426904e-18 * -6.1144486e-24 = 399494.78
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010100011001001010110111000;
		b = 32'b10110010011000101110011110010010;
		correct = 32'b01100111100111101001110010011000;
		#400 //-1.9785557e+16 * -1.3207584e-08 = 1.4980451e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010010101101011011101111;
		b = 32'b00111000010000000100001100100110;
		correct = 32'b01000011100001110000101010111010;
		#400 //0.012380346 * 4.5838904e-05 = 270.0838
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100010110100110111110110000;
		b = 32'b10110011010001100101000000101111;
		correct = 32'b01010000100011001111110100000001;
		#400 //-873.7451 * -4.6173394e-08 = 18923129000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011011001011111110000001101;
		b = 32'b11100010010110100001111010011101;
		correct = 32'b10101000100001101111011001111001;
		#400 //15072269.0 * -1.005899e+21 = -1.4983879e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101110100001101000100001000;
		b = 32'b01000010011011000011101010001011;
		correct = 32'b01101010111000100100101100100111;
		#400 //8.078198e+27 * 59.05717 = 1.3678607e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100100111001111010110110110;
		b = 32'b10101100101101011101000000011111;
		correct = 32'b01101111010111010000000101111000;
		#400 //-3.5344207e+17 * -5.1674355e-12 = 6.8397963e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110011100111100000111101010;
		b = 32'b10011110101011100101111101001010;
		correct = 32'b11011111001100101110111011011110;
		#400 //0.23804441 * -1.8462377e-20 = -1.2893487e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010001110110000000011110110;
		b = 32'b01001001101011011110100001101111;
		correct = 32'b10011000000010011010001110001000;
		#400 //-2.5343734e-18 * 1424653.9 = -1.7789397e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111111001111000101000101;
		b = 32'b11001001001111011111100001011000;
		correct = 32'b11011100001010100110111000011111;
		#400 //1.4931087e+23 * -778117.5 = -1.918873e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100110110010001010001000;
		b = 32'b01111100101111110010010010000011;
		correct = 32'b10111011010011111100011000111011;
		#400 //-2.5172075e+34 * 7.939754e+36 = -0.0031703848
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111001101101110010001101;
		b = 32'b01101010000110111001011000101100;
		correct = 32'b01001010001111011110110110011011;
		#400 //1.4632588e+32 * 4.7023167e+25 = 3111782.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111100010001111101100101;
		b = 32'b00111111110011101100101001011011;
		correct = 32'b01010010100101010100000001000110;
		#400 //517806900000.0 * 1.6155504 = 320514230000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110111000101011101001110;
		b = 32'b00000110001000101101110010111111;
		correct = 32'b11001010001011010010110011000011;
		#400 //-8.6909214e-29 * 3.0630992e-35 = -2837296.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000000000001101110000000000;
		b = 32'b10101001001011010110011011001110;
		correct = 32'b10101110001111100011110110010000;
		#400 //1.6654684e-24 * -3.8502886e-14 = -4.3255677e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011010000111001100000110001;
		b = 32'b01001011101011001000100001011111;
		correct = 32'b01011111000100010001101111111010;
		#400 //2.3645924e+26 * 22614206.0 = 1.0456226e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010100001001010101100110111;
		b = 32'b10101100001110001111111101101110;
		correct = 32'b11111101101101111001011001010000;
		#400 //8.019337e+25 * -2.6289765e-12 = -3.050365e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000001101110000100001011000;
		b = 32'b00111111101101000010001100010100;
		correct = 32'b10001000000000100000111010111001;
		#400 //-5.5079367e-34 * 1.4073205 = -3.913776e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100011110011100000101100000;
		b = 32'b10000101111000001111100101110010;
		correct = 32'b01010110000011100001100101100111;
		#400 //-8.263712e-22 * -2.115649e-35 = 39059940000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001001110001100101001010011;
		b = 32'b10110000100101010001001111100001;
		correct = 32'b01110000000111101010100111010010;
		#400 //-2.1304874e+20 * -1.0846827e-09 = 1.9641573e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001000011000110011011001001;
		b = 32'b01011010111010000100100001000001;
		correct = 32'b00101101100110101011110011010000;
		#400 //575084.56 * 3.269082e+16 = 1.7591623e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010000001101111001011001110;
		b = 32'b01011101000101110011100101010110;
		correct = 32'b00001100011001000111001010101100;
		#400 //1.198583e-13 * 6.810522e+17 = 1.7598989e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001001001011000100110011;
		b = 32'b10111100010001011001111001010100;
		correct = 32'b00111101010101010101100010110001;
		#400 //-0.0006282508 * -0.012061674 = 0.052086536
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110110110001001110000000110;
		b = 32'b11011101001110011010000011000001;
		correct = 32'b11100001000101010101110100000101;
		#400 //1.4396168e+38 * -8.3599394e+17 = -1.7220423e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011111110110010111011000;
		b = 32'b00101110101101000000001001110110;
		correct = 32'b10111111001101011001101101000110;
		#400 //-5.8070743e-11 * 8.1858895e-11 = -0.70940053
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010000100010100100011110001;
		b = 32'b01100001000011101000010010101010;
		correct = 32'b10111000100000100111110000100000;
		#400 //-1.0223518e+16 * 1.6431232e+20 = -6.222003e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110010110111000111010001;
		b = 32'b11000001001010011100010100100000;
		correct = 32'b10110101000110010110001110101011;
		#400 //6.0631214e-06 * -10.610626 = -5.714198e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100111001011000110010001100;
		b = 32'b11010111011001000111011000011010;
		correct = 32'b01010101000000001001110000000001;
		#400 //-2.2200618e+27 * -251195900000000.0 = 8837970000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101001110001101010100010001;
		b = 32'b00100010111010101100000100001110;
		correct = 32'b11111001110010011000111101100011;
		#400 //-8.3241064e+17 * 6.363023e-18 = -1.3081999e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001010000011001101100101101;
		b = 32'b00011111001000101111010010001100;
		correct = 32'b01110001100110000001001101110110;
		#400 //51970757000.0 * 3.450712e-20 = 1.506088e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010101000100010100001101110;
		b = 32'b00011001100000101011111111001001;
		correct = 32'b11011000100111101011111110010101;
		#400 //-1.8877667e-08 * 1.3519146e-23 = -1396365400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100000100010110000111001111;
		b = 32'b10110001110110101010100100001010;
		correct = 32'b00110001101010100011010101010110;
		#400 //-3.152471e-17 * -6.3638526e-09 = 4.9537148e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001011100001101010101101010;
		b = 32'b01011010111000111100000000100010;
		correct = 32'b00000110000001110101101001011100;
		#400 //8.1597614e-19 * 3.2053036e+16 = 2.5457064e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111100010101001111110110;
		b = 32'b01000110110110011110000111011011;
		correct = 32'b10110100100011011100011000010100;
		#400 //-0.0073647453 * 27888.928 = -2.6407417e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111101001000100101111111101;
		b = 32'b01000110111111011110101000011101;
		correct = 32'b00010000001001011010010101110001;
		#400 //1.0617434e-24 * 32501.057 = 3.2667964e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000110110010000010011001000;
		b = 32'b10000010100110001001011011101011;
		correct = 32'b01010101101101100000101111101000;
		#400 //-5.6098013e-24 * -2.2421015e-37 = 25020282000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111111000010101011111010;
		b = 32'b10010111000111110100100110111100;
		correct = 32'b10110010010010101010001011010001;
		#400 //6.070721e-33 * -5.1468737e-25 = -1.1794968e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101110001110111001010110101;
		b = 32'b11101111110000001100000010101001;
		correct = 32'b10011101100001000111001000111101;
		#400 //418272930.0 * -1.1930807e+29 = -3.505823e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110100111100101000001101011;
		b = 32'b10101110000111111110101000110100;
		correct = 32'b01010111111111010110111111111111;
		#400 //-20264.209 * -3.636043e-11 = 557314920000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010000111011000011011101;
		b = 32'b10001010101111110100011000100111;
		correct = 32'b01100110000000101111010010101011;
		#400 //-2.847677e-09 * -1.841902e-32 = 1.5460524e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110001001001111111001111011;
		b = 32'b00000101111000111111101001100110;
		correct = 32'b01100111101110010100011000110111;
		#400 //3.7515307e-11 * 2.1438959e-35 = 1.749866e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101111100011000111000101010;
		b = 32'b00101010001010001101001001100010;
		correct = 32'b10100011001101110010010101110001;
		#400 //-1.48869965e-30 * 1.4994389e-13 = -9.928378e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000111011011110010010101110;
		b = 32'b11010011011001110110100110101000;
		correct = 32'b10000101000000111001010110100101;
		#400 //6.149397e-24 * -993910060000.0 = -6.187076e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110100001001110001111000100;
		b = 32'b10110110111111011000011001011101;
		correct = 32'b00101111000001100010111111100110;
		#400 //-9.221076e-16 * -7.5556295e-06 = 1.2204246e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010100011010000001101111111;
		b = 32'b01001111100110000001010010101001;
		correct = 32'b00011010011011010101111011100011;
		#400 //2.5049057e-13 * 5102981600.0 = 4.90871e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000101010001100000100111;
		b = 32'b11011011100000011101001011001100;
		correct = 32'b00001100000100110000000000010000;
		#400 //-8.276399e-15 * -7.308409e+16 = 1.1324487e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000100101100011001000101;
		b = 32'b00011010010100010011001110100100;
		correct = 32'b11110000001100111001101110011011;
		#400 //-9619013.0 * 4.3261902e-23 = -2.2234373e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101010100000001101101000100;
		b = 32'b11010000010000110011110111101000;
		correct = 32'b10100100100010000110111100011110;
		#400 //7.7525715e-07 * -13102457000.0 = -5.916884e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010011110111111011011110;
		b = 32'b01110110001000001011000111001011;
		correct = 32'b10010010101001010100011101101111;
		#400 //-849901.9 * 8.148179e+32 = -1.0430574e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100011010001000100111110110;
		b = 32'b10001011000101111000100100100110;
		correct = 32'b10111000110001000110110000010100;
		#400 //2.7334817e-36 * -2.918472e-32 = -9.3661394e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011010111000011010011001;
		b = 32'b10100000011111001110100000001000;
		correct = 32'b01111000011011100110100000100100;
		#400 //-4143413200000000.0 * -2.1422003e-19 = 1.9341857e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010011001101000100010100100;
		b = 32'b10110100001000000101100100100111;
		correct = 32'b00101101101110000000011011000110;
		#400 //-3.124315e-18 * -1.4933595e-07 = 2.0921386e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010100010000111111011100;
		b = 32'b10001001000100011110001010001011;
		correct = 32'b01101100101101110110111010001000;
		#400 //-3.1152658e-06 * -1.756026e-33 = 1.7740432e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000011100011011001101010010;
		b = 32'b00010000101110010001101010111011;
		correct = 32'b00111111001001110010001011100010;
		#400 //4.7667013e-29 * 7.301082e-29 = 0.652876
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011110100000000111110111101;
		b = 32'b01001001110101010110010101100011;
		correct = 32'b01101001011110011001100110110100;
		#400 //3.2968657e+31 * 1748140.4 = 1.8859273e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011110111110001010000101110;
		b = 32'b01000111000001001101001001110000;
		correct = 32'b01001100010101101111101011100111;
		#400 //1916232500000.0 * 34002.438 = 56355740.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111101001111011100010011100;
		b = 32'b01101000100111000011100011111000;
		correct = 32'b10111110100010010110101111011011;
		#400 //-1.5840813e+24 * 5.9019205e+24 = -0.268401
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111000111000011001001110010;
		b = 32'b10111111001100000010100011001111;
		correct = 32'b01110111011000101111110101111001;
		#400 //-3.1680526e+33 * -0.6881227 = 4.6039067e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101110111001100100110010110;
		b = 32'b01011001010000001100101010010010;
		correct = 32'b11011100000100101001011001100110;
		#400 //-5.5976267e+32 * 3391620200000000.0 = -1.6504285e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100011001001010011010111100;
		b = 32'b11101000100001010011000000101111;
		correct = 32'b10110011010110111011111010010010;
		#400 //2.5743848e+17 * -5.0317086e+24 = -5.1163234e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110001001011001011111010110;
		b = 32'b01001100000011001110111000110010;
		correct = 32'b10010001100101100110011001011100;
		#400 //-8.766426e-21 * 36944070.0 = -2.372891e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010011010101100110101100110;
		b = 32'b00100000110101011101101000111101;
		correct = 32'b10101001000011001000101000010110;
		#400 //-1.1305321e-32 * 3.6228022e-19 = -3.1206015e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011001111010111100010011000;
		b = 32'b00110101001111111101010100111101;
		correct = 32'b10111101011111001101100100011011;
		#400 //-4.411467e-08 * 7.146335e-07 = -0.061730485
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011100011010100111001010;
		b = 32'b10011000101101111001101001001001;
		correct = 32'b11110000001010000111101000110100;
		#400 //989852.6 * -4.746018e-24 = -2.0856486e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000100000001001011101100101;
		b = 32'b00011101101111010111111111100111;
		correct = 32'b10111010001011011011011110101100;
		#400 //-3.3240094e-24 * 5.016013e-21 = -0.00066267955
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111011101011101010011101100;
		b = 32'b01000010100111100011101001110110;
		correct = 32'b01001100010001101101111000001101;
		#400 //4124372000.0 * 79.11418 = 52131892.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101000000000011011110101000;
		b = 32'b10100010111001101100000001111010;
		correct = 32'b00110001100011100011111100011110;
		#400 //-2.58933e-26 * -6.2545417e-18 = 4.1399195e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000110100001100001111101111;
		b = 32'b00110001111100110110111011110100;
		correct = 32'b01000110010110111000101011010101;
		#400 //9.9547084e-05 * 7.0848447e-09 = 14050.708
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100111100111011000110010110;
		b = 32'b00000100000000010111100000111101;
		correct = 32'b01101000011100001110110101101010;
		#400 //6.9261914e-12 * 1.5219088e-36 = 4.55099e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010100101100000000011011;
		b = 32'b10101100010010101010100000101111;
		correct = 32'b11111001100001010001110010100101;
		#400 //2.4881017e+23 * -2.8799287e-12 = -8.639456e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011111000100000101100101;
		b = 32'b10000110111101101101100101010110;
		correct = 32'b01101001000000101100110110101111;
		#400 //-9.1769997e-10 * -9.285426e-35 = 9.883229e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011011100011010001011011;
		b = 32'b01010111000000010100111000110010;
		correct = 32'b11011111111010111100110010110101;
		#400 //-4.8313615e+33 * 142172850000000.0 = -3.398231e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111111100011001110011001010;
		b = 32'b10110010101110001001010101011101;
		correct = 32'b10110100101001111000110000000101;
		#400 //6.706093e-15 * -2.1488342e-08 = -3.1208052e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000100110111000011010011000;
		b = 32'b01101101011010111111111001010000;
		correct = 32'b00000010101010001011010111101011;
		#400 //1.1315988e-09 * 4.5647764e+27 = 2.4789797e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000110010010010100011011011;
		b = 32'b10101100110111110101111000111110;
		correct = 32'b00010011011001101000110000001001;
		#400 //-1.8473591e-38 * -6.348504e-12 = 2.9099124e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000011101110110001000111001;
		b = 32'b00011011100000111001010100111110;
		correct = 32'b01001100011100001010010111000001;
		#400 //1.3732553e-14 * 2.1768578e-22 = 63084292.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111110000100101011010000;
		b = 32'b01101101011000001001110011101101;
		correct = 32'b10110010000011010111111001111011;
		#400 //-3.5782682e+19 * 4.344647e+27 = -8.2360385e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001110100010101101010011000;
		b = 32'b01000010100110110010110110100000;
		correct = 32'b00001110101011001010111111101110;
		#400 //3.3030219e-28 * 77.58911 = 4.2570688e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010110100100011101101101000;
		b = 32'b00011110100001101010011010101000;
		correct = 32'b01100011110001111101100100001000;
		#400 //105.11603 * 1.425673e-20 = 7.3730816e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000011001000000100101100;
		b = 32'b00111000011111110010111011111111;
		correct = 32'b00100001000011001111010001000000;
		#400 //2.9055666e-23 * 6.0840506e-05 = 4.7757107e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110001100010101100001101100;
		b = 32'b01111010000010101101010000000011;
		correct = 32'b00111011101000111000001101010100;
		#400 //8.99248e+32 * 1.8020927e+35 = 0.0049900208
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101110001110011111100010111;
		b = 32'b00001111110111110111010101011001;
		correct = 32'b11101101011001000100001100011100;
		#400 //-0.0972883 * 2.2034698e-29 = -4.415232e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110010000000111001000111101;
		b = 32'b00111001110000001100101000000101;
		correct = 32'b01000011111111111000101101110000;
		#400 //0.18793578 * 0.0003677161 = 511.08936
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000011000100101111010110111;
		b = 32'b01101111111101010101011101100011;
		correct = 32'b00011111111011000011010001010110;
		#400 //15191432000.0 * 1.5185894e+29 = 1.0003647e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010011000011011110001110110;
		b = 32'b00101000010011110000000100001101;
		correct = 32'b11101001100010111001010100111000;
		#400 //-242382370000.0 * 1.1491036e-14 = -2.109317e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111100110110101100001100000;
		b = 32'b10101110000100010011111101110100;
		correct = 32'b11011001000010001110010111111000;
		#400 //79536.75 * -3.302554e-11 = -2408340600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011101001011000101111001101;
		b = 32'b00100011100000101001100111110000;
		correct = 32'b01000111101000100011111110101110;
		#400 //1.1762758e-12 * 1.4159823e-17 = 83071.36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111110101110011101101101101;
		b = 32'b00011011010100001111110111101011;
		correct = 32'b00101100000000111101001001101011;
		#400 //3.2384532e-34 * 1.7287402e-22 = 1.8733025e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001111101011100001010111000;
		b = 32'b01001101100101111110110110010001;
		correct = 32'b00010011110011110000110111101101;
		#400 //1.6653387e-18 * 318616100.0 = 5.226788e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111101111000010111111110010;
		b = 32'b11111001001100100111110001101010;
		correct = 32'b10111110000001101111010100001100;
		#400 //7.633783e+33 * -5.7922016e+34 = -0.13179415
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101111000010001110110011110;
		b = 32'b00110101001110010011110000011010;
		correct = 32'b11111000000110111000111011101110;
		#400 //-8.7087415e+27 * 6.900533e-07 = -1.262039e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000000101100011011100100010;
		b = 32'b11111001101110101100011111000001;
		correct = 32'b10001101110011011110001001100011;
		#400 //153820.53 * -1.2122734e+35 = -1.2688601e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110011100110100111100101;
		b = 32'b11100101101001101100011000001010;
		correct = 32'b10101011100111100110110010001110;
		#400 //110817485000.0 * -9.844575e+22 = -1.1256705e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000100000101101100110001111;
		b = 32'b00000110101111100100010110111100;
		correct = 32'b01001001001100000000110011110000;
		#400 //5.161116e-29 * 7.157252e-35 = 721103.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000011111100010100011000;
		b = 32'b00111000100100111100010110010100;
		correct = 32'b10111100111110010001000100101111;
		#400 //-2.1423384e-06 * 7.046308e-05 = -0.030403702
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100100100110100010010011001;
		b = 32'b11101001010100100011100100010111;
		correct = 32'b01001010101100110101011000010010;
		#400 //-9.334216e+31 * -1.5884001e+25 = 5876489.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100001011010000011011010010;
		b = 32'b00111110000001100100011010101110;
		correct = 32'b00000101101001001111000001111001;
		#400 //2.0339184e-36 * 0.131129 = 1.5510822e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011110110111110111001000110;
		b = 32'b01000100100101101110111010100011;
		correct = 32'b01001110101110101000001111100001;
		#400 //1889190800000.0 * 1207.4574 = 1564602500.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001101011000001011010010110;
		b = 32'b11110100010110000101010000011100;
		correct = 32'b00111100110010111010010110001011;
		#400 //-1.7042792e+30 * -6.8557255e+31 = 0.02485921
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101011011011001010101101100;
		b = 32'b11101011001110011101100000010101;
		correct = 32'b01001001101000111010001010111000;
		#400 //-3.011731e+32 * -2.246717e+26 = 1340503.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110100000000100111111111;
		b = 32'b11101111100101101110000110011010;
		correct = 32'b00001000101100000111110101100010;
		#400 //-9.920075e-05 * -9.339097e+28 = 1.0622092e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101100011000100111110101010;
		b = 32'b01100111010110011011101100001100;
		correct = 32'b11001101101001001111100100010010;
		#400 //-3.5573112e+32 * 1.0282039e+24 = -345973300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001001100110000010011100;
		b = 32'b11011011000011111011100000101000;
		correct = 32'b11010101100101000010111000000111;
		#400 //8.238609e+29 * -4.0453404e+16 = -20365676000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111101000001011001110101100;
		b = 32'b01110111001111000001010001010111;
		correct = 32'b10100111110110101011110001010000;
		#400 //-2.3159576e+19 * 3.8147045e+33 = -6.0711324e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100001100010101111101100;
		b = 32'b00010100110101101010000100001110;
		correct = 32'b00110111001000000000100010101010;
		#400 //2.0672404e-31 * 2.1672003e-26 = 9.53876e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100100111100110010101110;
		b = 32'b11100111010001100010010011011010;
		correct = 32'b10010100101111101111010010011100;
		#400 //0.018041935 * -9.3570835e+23 = -1.9281579e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101111111010100110001110001;
		b = 32'b01010100001011010110011000110010;
		correct = 32'b11000001001110101111101011110000;
		#400 //-34813094000000.0 * 2978975600000.0 = -11.686264
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100111011000100000010111011;
		b = 32'b00001001110010110000100001110110;
		correct = 32'b11101010100101001111000101101101;
		#400 //-4.4005523e-07 * 4.887843e-33 = -9.003056e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001011001000110111000000000;
		b = 32'b01001011011100000011111110100010;
		correct = 32'b01011101011100110110011111111111;
		#400 //1.7259659e+25 * 15744930.0 = 1.0962042e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011001110000110010111110110;
		b = 32'b01111000110101100001100100101001;
		correct = 32'b00011001110111000111110011000010;
		#400 //791984600000.0 * 3.4739432e+34 = 2.2797856e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001101010010100010100110;
		b = 32'b10111010011011001101101100100101;
		correct = 32'b00100100010000111100110100001110;
		#400 //-3.8361864e-20 * -0.00090353406 = 4.2457573e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110011010011101111001100101;
		b = 32'b01011001100110101001010110011000;
		correct = 32'b10000100010000011010011001001100;
		#400 //-1.23809074e-20 * 5438953300000000.0 = -2.27634e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101001010000001010100111101;
		b = 32'b01111100100011000101101111101010;
		correct = 32'b11000000000110010100100001100010;
		#400 //-1.3963786e+37 * 5.8302864e+36 = -2.395043
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000100100010011000101011010;
		b = 32'b10011111001011010100100110101101;
		correct = 32'b01000000110101100111111010110011;
		#400 //-2.4596614e-19 * -3.6695118e-20 = 6.702966
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011010111000010111010100110;
		b = 32'b00111010111011110101110001111000;
		correct = 32'b01000111111010110111110011100010;
		#400 //220.18222 * 0.0018261811 = 120569.766
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001101000000111011000000;
		b = 32'b10111100011000011000010001111111;
		correct = 32'b11000110010011000110010100111000;
		#400 //180.05762 * -0.0137645 = -13081.305
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000100100001111111111010010;
		b = 32'b10110100010010001100110001111011;
		correct = 32'b11010011101110001101110001011110;
		#400 //296958.56 * -1.8700841e-07 = -1587942300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010001011001011001111001000;
		b = 32'b00011100100111100011010100000100;
		correct = 32'b00101101000010111011101001000001;
		#400 //8.315312e-33 * 1.0469267e-21 = 7.942592e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110110001011001110100100010;
		b = 32'b01011100110010101001100111110101;
		correct = 32'b10100001011110011011001010100110;
		#400 //-0.38596445 * 4.5621778e+17 = -8.460092e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110111111101010011111100101;
		b = 32'b11011110010100001001011010000101;
		correct = 32'b10101000000111000100010100000001;
		#400 //32595.947 * -3.7575868e+18 = -8.6747024e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111010001010001001010000;
		b = 32'b11010000011101010001100100000111;
		correct = 32'b01001110111100101111101101011100;
		#400 //-3.3526097e+19 * -16448232000.0 = 2038279700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111011000101001011111100111;
		b = 32'b11000011110011111010000101000111;
		correct = 32'b11010011000010111011000011001001;
		#400 //249142040000000.0 * -415.25998 = -599966400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010101110011001100010110;
		b = 32'b11000101001110101011111110111011;
		correct = 32'b01000101100100111000000000011010;
		#400 //-14103318.0 * -2987.9832 = 4720.0127
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111000010101011011100110000;
		b = 32'b10101000011100011001001101100001;
		correct = 32'b10100110000100101111111110001001;
		#400 //6.839206e-30 * -1.3410145e-14 = -5.100024e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011101100011000010100000111;
		b = 32'b11000010111000011110001011000000;
		correct = 32'b10100000010010010010111110010111;
		#400 //1.9246718e-17 * -112.94287 = -1.7041108e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100110110100010110010010000;
		b = 32'b01101100000010011110101100011011;
		correct = 32'b00111000010010100111101111101111;
		#400 //3.219681e+22 * 6.669324e+26 = 4.8275975e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000011000110111000011100;
		b = 32'b11101000000101101000110010100100;
		correct = 32'b00111010011011101100101011110110;
		#400 //-2.5904784e+21 * -2.8437973e+24 = 0.0009109223
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011101110010001011111100111;
		b = 32'b11011100100010110100011101111011;
		correct = 32'b01000110101010100001101010011111;
		#400 //-6.82874e+21 * -3.1362892e+17 = 21773.31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100101010101101111010011010;
		b = 32'b10110011110011111110110001010010;
		correct = 32'b10110000010100100110000011110100;
		#400 //7.410285e-17 * -9.682175e-08 = -7.6535334e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011111010111100100101011010;
		b = 32'b11011000001110111111111000001000;
		correct = 32'b00011011001000001000101011000110;
		#400 //-1.0979666e-07 * -826798900000000.0 = 1.327973e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000001011000100101100000011;
		b = 32'b00100100011011111101000100001110;
		correct = 32'b11001011001101111110101101110100;
		#400 //-6.2679834e-10 * 5.200194e-17 = -12053364.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101000010111011010111111010;
		b = 32'b01101011000011010101110010011011;
		correct = 32'b10100001011111010000001010100011;
		#400 //-146497440.0 * 1.7089586e+26 = -8.5723224e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111001010000100110111100101;
		b = 32'b00110101000101101100001100000000;
		correct = 32'b10101001100011101110010011011110;
		#400 //-3.5639817e-20 * 5.6163117e-07 = -6.345769e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000110001111101100011011;
		b = 32'b00110011110001111001110110001101;
		correct = 32'b00101100110001000011000101011010;
		#400 //5.183194e-19 * 9.295318e-08 = 5.576134e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010100000000010101111011;
		b = 32'b10111000101000101101111000101011;
		correct = 32'b01010010001000110111110010011110;
		#400 //-13632891.0 * -7.766144e-05 = 175542600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101100110001011111001001110;
		b = 32'b10011001011111100010110101010100;
		correct = 32'b11111011100110011101011010111110;
		#400 //20992890000000.0 * -1.3140646e-23 = -1.5975538e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001011010001010110000111011;
		b = 32'b11101011000011110011000101111111;
		correct = 32'b01000101110011111111110000111111;
		#400 //-1.1521398e+30 * -1.7311013e+26 = 6655.531
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100001110110011110111000;
		b = 32'b00101110111101000000100011101010;
		correct = 32'b11011011000011100000101101001101;
		#400 //-4436956.0 * 1.1097419e-10 = -3.998187e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011111000111001100110101001;
		b = 32'b00101101000111001010000000101110;
		correct = 32'b00101110001110100000000010111100;
		#400 //3.76533e-22 * 8.90314e-12 = 4.2292156e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111010101110001010111010010;
		b = 32'b11101111010010111000111001001110;
		correct = 32'b10000111100001110011111111111001;
		#400 //1.2820079e-05 * -6.2997493e+28 = -2.0350142e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110000110001100101111011000;
		b = 32'b01010011111001111111001000101001;
		correct = 32'b01000001101010001010010001011111;
		#400 //42000317000000.0 * 1992400400000.0 = 21.08026
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000100101000100001111111;
		b = 32'b01101111011000001010001101101000;
		correct = 32'b00111101001001101111110110011011;
		#400 //2.834364e+27 * 6.952219e+28 = 0.0407692
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110110100000101110101100;
		b = 32'b11110000011010010100000000001000;
		correct = 32'b10001111111011110101000000000001;
		#400 //6.813925 * -2.8874967e+29 = -2.3598036e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110110001100111100110011010;
		b = 32'b00101110110010100111010001010010;
		correct = 32'b01010111011110101111011111011001;
		#400 //25404.8 * 9.206559e-11 = 275942400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001010101000010111000101;
		b = 32'b11010110110100000011011001100000;
		correct = 32'b11001001110100011010100011101000;
		#400 //1.965991e+20 * -114465980000000.0 = -1717533.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111010110011100101010100001;
		b = 32'b10101101111110111010001001101011;
		correct = 32'b11010000110111011001000111101000;
		#400 //0.8507481 * -2.8607524e-11 = -29738615000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001000100000101100111100100;
		b = 32'b00101011001100100111000100111111;
		correct = 32'b00010101010011110001011101101010;
		#400 //2.6513116e-38 * 6.3395464e-13 = 4.1821788e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011001010110000001100110100;
		b = 32'b00100100000010100011111001111111;
		correct = 32'b11111110100111100101011100010111;
		#400 //-3.154624e+21 * 2.9976916e-17 = -1.0523511e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011100101111001100101101100;
		b = 32'b01101100001001001001110000000111;
		correct = 32'b00001110111010111100010001000001;
		#400 //0.0046264436 * 7.960026e+26 = 5.812096e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000101011111100100110101100;
		b = 32'b10011010110011000010100000011111;
		correct = 32'b00101101010111000110110101010110;
		#400 //-1.0579842e-33 * -8.443724e-23 = 1.252983e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110111001011000001010010101;
		b = 32'b01100111000110001010000000110010;
		correct = 32'b00111111010000000111101010110000;
		#400 //5.4191537e+23 * 7.207548e+23 = 0.75187206
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100011001100011101010100100;
		b = 32'b01111001110011101101001001110000;
		correct = 32'b00111010000011100111110010000011;
		#400 //7.2962503e+31 * 1.3423517e+35 = 0.0005435424
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100001101000010000000110100;
		b = 32'b11110001110100110111110110010100;
		correct = 32'b00110001110110100000100011001011;
		#400 //-1.3290938e+22 * -2.0945009e+30 = 6.3456347e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011011101101101110000101110;
		b = 32'b00111001000110000111101100100100;
		correct = 32'b01000001110011110011100111110100;
		#400 //0.0037667858 * 0.00014541723 = 25.903297
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101111110101100111101011111;
		b = 32'b10011100111001111101011101000100;
		correct = 32'b00101000100010100111100100010010;
		#400 //-2.3586063e-35 * -1.5341943e-21 = 1.5373584e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011110111100111110011111010;
		b = 32'b10001100101011001101010110010111;
		correct = 32'b01000110101001001100010111111001;
		#400 //-5.6163915e-27 * -2.6629346e-31 = 21090.986
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001101000000001101011100;
		b = 32'b01001101101111110011100010010000;
		correct = 32'b00110100111100001111111011001111;
		#400 //180.01312 * 401019400.0 = 4.488888e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110111100000000001100100010;
		b = 32'b10000010111011110111011001010110;
		correct = 32'b11110011100000000100101101000011;
		#400 //7.152922e-06 * -3.5185815e-37 = -2.0328994e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110010000111110010001011100;
		b = 32'b11110101000000111111101010101111;
		correct = 32'b10011000101111011111110001011101;
		#400 //821630700.0 * -1.6730355e+32 = -4.9110177e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011110010111010110001100101;
		b = 32'b10000110010011101100010010011001;
		correct = 32'b11111100111111000010101100101100;
		#400 //407.34683 * -3.888873e-35 = -1.04746755e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001100111110110001101111010;
		b = 32'b01100100110010100101011000010010;
		correct = 32'b01010100010010011010100101101001;
		#400 //1.034491e+35 * 2.9859555e+22 = 3464522600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000000110110011001101111010;
		b = 32'b11110111001010000100110100011010;
		correct = 32'b10110000011011000001001011011100;
		#400 //2.9316655e+24 * -3.4135534e+33 = -8.58831e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001000010101101100111001;
		b = 32'b01001000011011001011100100111100;
		correct = 32'b01001001001011100111111011100000;
		#400 //173255050000.0 * 242404.94 = 714734.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101011101010101101110001011;
		b = 32'b00000010101011101100000111010101;
		correct = 32'b01011010001100111011011000000000;
		#400 //3.2472807e-21 * 2.5678256e-37 = 1.2646033e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011000000011010000111100101;
		b = 32'b11000111010111100101100010001100;
		correct = 32'b00110011000101010100000011100011;
		#400 //-0.0019780335 * -56920.547 = 3.475078e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011010011100011101001110;
		b = 32'b01100101001010110111110101001110;
		correct = 32'b11010001101011100111111000011110;
		#400 //-4.741592e+33 * 5.061476e+22 = -93680026000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111011010111100001011010101;
		b = 32'b01101000000000111111001110010010;
		correct = 32'b00100110111001001011001101101111;
		#400 //3955414300.0 * 2.4924924e+24 = 1.5869314e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110000001011110110100000111;
		b = 32'b11000101010011010011001101010111;
		correct = 32'b01100000001001110001010010100001;
		#400 //-1.5811178e+23 * -3283.2087 = 4.81577e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100111011110110011010101101;
		b = 32'b01110000111010110100100010110010;
		correct = 32'b10110011100000100011110101100100;
		#400 //-3.5329363e+22 * 5.825349e+29 = -6.0647636e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001011011110101001100100101;
		b = 32'b00010011011000010111000011000010;
		correct = 32'b00110101100001111110001000011010;
		#400 //2.8807673e-33 * 2.8454586e-27 = 1.0124088e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011100111000001010110101100;
		b = 32'b01010001011001010010111100110100;
		correct = 32'b00010001101011100101100011100111;
		#400 //1.6922732e-17 * 61521215000.0 = 2.750715e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011111111111100100010111;
		b = 32'b11010000110100110110001010111111;
		correct = 32'b01011001000110101111111110110101;
		#400 //-7.7363094e+25 * -28371712000.0 = 2726768700000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011101011100000001000000010;
		b = 32'b00001110110011001100110110010001;
		correct = 32'b11111100010110011000000110110010;
		#400 //-22807556.0 * 5.0487836e-30 = -4.5174358e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010111101100100010101111111;
		b = 32'b10111101101100100110101110111011;
		correct = 32'b00000100101100001010110100101000;
		#400 //-3.618634e-37 * -0.08711954 = 4.153642e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010000000011101101001111110;
		b = 32'b00111100100011011111100100001011;
		correct = 32'b01101100111010100010010110011001;
		#400 //3.924581e+25 * 0.017330667 = 2.2645295e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011000110111101001001110;
		b = 32'b10111110011111101010110011000111;
		correct = 32'b11100001011001001010100101001101;
		#400 //6.5566e+19 * -0.24870597 = -2.6362857e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011101011111010111101011011;
		b = 32'b10111111000000010001011000111100;
		correct = 32'b11010100001011100011010010101111;
		#400 //1509122500000.0 * -0.5042455 = -2992832800000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111100011000001111000001;
		b = 32'b11000000001100110001110001010111;
		correct = 32'b01001010001011001001100010110011;
		#400 //-7913952.5 * -2.7986047 = 2827820.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110101000011111111111010111;
		b = 32'b00111001110001001101111110011101;
		correct = 32'b10110100010100101010011011111001;
		#400 //-7.3668786e-11 * 0.00037550638 = -1.9618518e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111110101001111000111010101;
		b = 32'b01100000000111111110101110111010;
		correct = 32'b10001111001010100111000010101001;
		#400 //-3.8734407e-10 * 4.6094034e+19 = -8.403345e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001001101010101111001111011;
		b = 32'b11111110110001000001010001110001;
		correct = 32'b10100001111011001100101100110010;
		#400 //2.091043e+20 * -1.3031741e+38 = -1.6045767e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011011011111101101000111010;
		b = 32'b11100100000111011100010100100100;
		correct = 32'b00010110110000101001100000010001;
		#400 //-0.003659858 * -1.1641377e+22 = 3.1438358e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001101011001010110110000000;
		b = 32'b11001000001110001010011111010100;
		correct = 32'b00011000111011110110010011110011;
		#400 //-1.1701098e-18 * -189087.31 = 6.1881985e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110100011001100111001001000;
		b = 32'b01001010010000000111101001000000;
		correct = 32'b00101011101110110100011001110111;
		#400 //4.1963394e-06 * 3153552.0 = 1.3306707e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101011100001100000110000;
		b = 32'b10110111010011011110110010111100;
		correct = 32'b11110011110110000110110111110011;
		#400 //4.2093463e+26 * -1.2274071e-05 = -3.4294621e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010000001010111000001110110;
		b = 32'b01010111111001010111000000101001;
		correct = 32'b01000001100101001110001100110001;
		#400 //9389956000000000.0 * 504539770000000.0 = 18.610933
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110111000100001100011011110;
		b = 32'b10000110111001100100101000001001;
		correct = 32'b11001111011110110101011100000100;
		#400 //3.6527963e-25 * -8.662517e-35 = -4216784000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110100000000010000000001;
		b = 32'b01011100110000011000001100010010;
		correct = 32'b00010001100010011001011111110011;
		#400 //9.459456e-11 * 4.3575027e+17 = 2.1708435e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100100101011011101000001011;
		b = 32'b11100011000010000011111100101101;
		correct = 32'b10101001000011001010100111111110;
		#400 //78499930.0 * -2.5133095e+21 = -3.123369e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000010111001111000101111001;
		b = 32'b01100101101000100010010111010110;
		correct = 32'b00101010001011100110100111010000;
		#400 //14827251000.0 * 9.5715165e+22 = 1.5491016e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010010111011010001111101100;
		b = 32'b00110101101011110000000001100111;
		correct = 32'b00111100001000100001110011010100;
		#400 //1.2901165e-08 * 1.3038633e-06 = 0.0098945685
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101010110010101101010101100;
		b = 32'b00010001001111110010101011101101;
		correct = 32'b01110011100100011000100010011111;
		#400 //3477.667 * 1.5080471e-28 = 2.3060731e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111011011110000110111100100;
		b = 32'b00110100000100110101110011001010;
		correct = 32'b11010010110011111010010011100100;
		#400 //-61197.89 * 1.3724198e-07 = -445912320000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110000101011110101010000100;
		b = 32'b01100011000101111111010001001000;
		correct = 32'b01001010011111001001000011111001;
		#400 //1.1599195e+28 * 2.8030607e+21 = 4138046.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111110000000011110100011011;
		b = 32'b01010000010111001100001011111101;
		correct = 32'b00011110110111101110110010010100;
		#400 //3.4968015e-10 * 14815065000.0 = 2.360301e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000010001110010010010100001;
		b = 32'b00100100011111010101001000100001;
		correct = 32'b10110011010010010011111111010000;
		#400 //-2.573864e-24 * 5.4930196e-17 = -4.6856997e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101001111110001101000011110;
		b = 32'b00010011111001111010101100100101;
		correct = 32'b00111000110100110010110001000100;
		#400 //5.8887857e-31 * 5.848136e-27 = 0.00010069509
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001101100001111010011011101;
		b = 32'b01111100110001101111001110110111;
		correct = 32'b00010100011000111011001010001011;
		#400 //95002800000.0 * 8.264143e+36 = 1.1495783e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001011110011100101110010011;
		b = 32'b01101000010100110001000011000010;
		correct = 32'b00000000100101110111110011001111;
		#400 //5.546568e-14 * 3.9869138e+24 = 1.3911933e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110011001111100100011100110;
		b = 32'b10101110000111100001010000110101;
		correct = 32'b01101111101110111010111001100101;
		#400 //-4.175463e+18 * -3.5942988e-11 = 1.1616905e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110010111101101101100111000;
		b = 32'b00011010010000110110000001101001;
		correct = 32'b11110011100100100000000011010010;
		#400 //-934727200.0 * 4.0402934e-23 = -2.313513e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000010010101011111011101011;
		b = 32'b01010101010100110101010101110010;
		correct = 32'b00101010011101011001100011001110;
		#400 //3.1679027 * 14522746000000.0 = 2.1813386e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111110111000011011110001010;
		b = 32'b11000100111001111101110111000010;
		correct = 32'b11100010011100110010001101100001;
		#400 //2.0798903e+24 * -1854.9299 = -1.121277e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100111001111101001001110;
		b = 32'b00001110100101110011000001010001;
		correct = 32'b10111101100001001110011010110000;
		#400 //-2.4186252e-31 * 3.72709e-30 = -0.06489313
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000110101110101111011011001;
		b = 32'b00100100011000111000101001011100;
		correct = 32'b11101011111100100100111011010001;
		#400 //-28906540000.0 * 4.9339974e-17 = -5.858645e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100100001100001101011001100;
		b = 32'b10010101000010000000110010011110;
		correct = 32'b11011110111111000101011101000100;
		#400 //2.4978942e-07 * -2.7474934e-26 = -9.0915384e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100100110000001001011011101;
		b = 32'b11011110101110101101100110111000;
		correct = 32'b00111101010100000101101001100001;
		#400 //-3.424395e+17 * -6.7319974e+18 = 0.050867442
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010110011011000110100100000;
		b = 32'b01001111000010111010101101110000;
		correct = 32'b10000011001111000110000010000111;
		#400 //-1.2972109e-27 * 2343268400.0 = -5.5359042e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100010100110000000011100;
		b = 32'b11110000101011100010001000110111;
		correct = 32'b10101001010010110110111000111010;
		#400 //1.947461e+16 * -4.3113404e+29 = -4.517066e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010010000101010110100100000;
		b = 32'b01001010011001010000000110111111;
		correct = 32'b01010111010110011001111101110101;
		#400 //8.977858e+20 * 3752047.8 = 239278890000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111000000111101010000101111;
		b = 32'b00110011111010011011100100100000;
		correct = 32'b00010010100100000110010011010011;
		#400 //9.9177e-35 * 1.0883582e-07 = 9.112533e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000000011001001001001000001;
		b = 32'b11001010001001000000001010100101;
		correct = 32'b10011101010110110110101000100000;
		#400 //7.803275e-15 * -2687145.2 = -2.9039274e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110111101101100000100111100;
		b = 32'b10100101111101001110011101111001;
		correct = 32'b01001000100000001111011110011101;
		#400 //-1.122111e-10 * -4.2484105e-16 = 264124.9
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110001111100110010101110101;
		b = 32'b11010111111110110101011101001101;
		correct = 32'b10000101110000011110110011110100;
		#400 //1.0079497e-20 * -552704750000000.0 = -1.8236676e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100010110001110111000111001;
		b = 32'b11100000011010101000000001001110;
		correct = 32'b11001011011011001101000110001010;
		#400 //1.0490118e+27 * -6.7590366e+19 = -15520138.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111011010101001011011000;
		b = 32'b01011010111001000100000000101101;
		correct = 32'b10101111100001010001011010000110;
		#400 //-7776620.0 * 3.2123428e+16 = -2.4208563e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000111111000001100000010000;
		b = 32'b11100111110101100111111011110011;
		correct = 32'b11010000100101100110111111000100;
		#400 //4.090459e+34 * -2.0258565e+24 = -20191257000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100000111001010111011011;
		b = 32'b00010100111001001110010111111011;
		correct = 32'b11110101000100110010101001000101;
		#400 //-4311789.5 * 2.3112828e-26 = -1.8655395e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010110111011000001100010011;
		b = 32'b00110111100000111100001111101011;
		correct = 32'b01001010110101110010111010011111;
		#400 //110.756004 * 1.5707648e-05 = 7051087.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000011000000000001011011;
		b = 32'b11010011110001111111110011100010;
		correct = 32'b01011010101100110011011001110011;
		#400 //-4.332833e+28 * -1717882300000.0 = 2.5221944e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010010110010000101010011001;
		b = 32'b10010010011000000110010100110101;
		correct = 32'b10110111011101111001110000111101;
		#400 //1.0450163e-32 * -7.0806684e-28 = -1.4758724e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010101011001011001010110;
		b = 32'b11001010101011101111101101001111;
		correct = 32'b10010000000111000011110101111100;
		#400 //1.7667523e-22 * -5733799.5 = -3.081294e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001101100011100111111001111;
		b = 32'b10010101001110010100101101111100;
		correct = 32'b10110011111101011010100101010110;
		#400 //4.2806622e-33 * -3.742e-26 = -1.14395036e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100101110001000111001000100;
		b = 32'b01101001000001111011100000010111;
		correct = 32'b11000011001011100000111100011100;
		#400 //-1.7849134e+27 * 1.0254645e+25 = -174.05902
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111010111001011010000000000;
		b = 32'b11101000111001110111010011110110;
		correct = 32'b01000101111101000001101100011111;
		#400 //-6.830431e+28 * -8.7441936e+24 = 7811.39
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010010111100000101100001000;
		b = 32'b00111110111000110101001011011000;
		correct = 32'b11000010111110100000110110101001;
		#400 //-55.510773 * 0.44399142 = -125.02668
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000101100010000101011010010;
		b = 32'b11000110101011110110011111010110;
		correct = 32'b00010001100000010011000111000000;
		#400 //-4.5764353e-24 * -22451.918 = 2.0383272e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011000001111111001110001000;
		b = 32'b10101110010001010001100101001001;
		correct = 32'b01100100001100001001010001000010;
		#400 //-583906360000.0 * -4.4815072e-11 = 1.302924e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010010100100011011011000111;
		b = 32'b10110001111110011101010010110010;
		correct = 32'b11011111110101110110011110100101;
		#400 //225715540000.0 * -7.2710344e-09 = -3.1043112e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011100110100100000000010110;
		b = 32'b01101101111111001111011011111011;
		correct = 32'b10111101000111000001100111100100;
		#400 //-3.7295443e+26 * 9.7861004e+27 = -0.03811063
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010101110110001111100111001;
		b = 32'b10100001110011010110001100101111;
		correct = 32'b01001000011010010011101111000100;
		#400 //-3.3239538e-13 * -1.3917594e-18 = 238831.06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010010001101101111100010;
		b = 32'b11100101011111100101011110001101;
		correct = 32'b00010000010010100010101100010100;
		#400 //-2.993031e-06 * -7.5068507e+22 = 3.9870662e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110100001100110000010110110;
		b = 32'b00110101111011001101111100111000;
		correct = 32'b11101000000100010011101010101001;
		#400 //-4.8414697e+18 * 1.7648335e-06 = -2.743301e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000101000011001110001000111;
		b = 32'b11001101111001111001001101000110;
		correct = 32'b11101010001100101010011111100101;
		#400 //2.6222796e+34 * -485648580.0 = -5.3995414e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101110111100010111000010;
		b = 32'b11011110101001101101110000001011;
		correct = 32'b10110110100100000000101011100110;
		#400 //25807255000000.0 * -6.0117486e+18 = -4.292803e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101000011001100101111000;
		b = 32'b11000000010000100110011100100000;
		correct = 32'b00111111110101001100110110000101;
		#400 //-5.049984 * -3.0375443 = 1.662522
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110011010001101100111100110;
		b = 32'b00110101111111110100111001110111;
		correct = 32'b11010111111010010111101111010010;
		#400 //-976648600.0 * 1.9021817e-06 = -513436030000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110101100111101001100101100;
		b = 32'b01011101110011001111010000111110;
		correct = 32'b10110000011000001001110010110101;
		#400 //-1508480500.0 * 1.8460622e+18 = -8.171342e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100011001110001111101100000;
		b = 32'b10001010101010110001111100010001;
		correct = 32'b10111001001011001110000110011111;
		#400 //2.7168326e-36 * -1.6478387e-32 = -0.00016487249
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010010100011100110111101101;
		b = 32'b10111001111010110100010111010101;
		correct = 32'b10100111111001000100100110110011;
		#400 //2.8433798e-18 * -0.00044874722 = -6.3362617e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100100001110001011111010110;
		b = 32'b01011101101000100111110011111110;
		correct = 32'b10010110010101001101011011001000;
		#400 //-2.5163052e-07 * 1.463564e+18 = -1.7192997e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010011110010011011000001000;
		b = 32'b00100100101010010110100000111110;
		correct = 32'b00011101001111000100110001000010;
		#400 //1.8309137e-37 * 7.346866e-17 = 2.4921017e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101100111101011000100010101;
		b = 32'b11111001110100101011010001101101;
		correct = 32'b00000011010000001100111001000010;
		#400 //-0.077486195 * -1.3675523e+35 = 5.66605e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110101001010010000010001110;
		b = 32'b01000000000101110001010110000101;
		correct = 32'b11010110000010111110010111000000;
		#400 //-90779620000000.0 * 2.3606884 = -38454720000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000001100111011101111100111;
		b = 32'b11000110101011011011111100000000;
		correct = 32'b01001001000001000110100101001101;
		#400 //-12061744000.0 * -22239.5 = 542356.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110110011001010100110110101;
		b = 32'b01011101110101110101010100011110;
		correct = 32'b10011000011100110101000010111101;
		#400 //-6.0994303e-06 * 1.9395426e+18 = -3.1447776e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001101100110110111110011110;
		b = 32'b11001110100001100001000100011111;
		correct = 32'b00011010101010110101000011101001;
		#400 //-7.9685594e-14 * -1124634500.0 = 7.085466e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100000001001010011010100100;
		b = 32'b10011010001000111010101111110010;
		correct = 32'b10110001010011110111101011110011;
		#400 //1.0219057e-31 * -3.3846506e-23 = -3.0192353e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101010000100010101110111100;
		b = 32'b00010010110001000100011001101100;
		correct = 32'b01001001111111010100000101100101;
		#400 //2.5698296e-21 * 1.2386699e-27 = 2074668.6
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001000100010011010000001011;
		b = 32'b00011011111011100101010110000101;
		correct = 32'b10101100100110111111011101010101;
		#400 //-1.747821e-33 * 3.9429063e-22 = -4.4328243e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100111010101010111001000100;
		b = 32'b01110001101011000101100101001010;
		correct = 32'b00010010101011100100101011101101;
		#400 //1877.4458 * 1.7068597e+30 = 1.0999414e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111010101000011010100011110;
		b = 32'b00010000100001010011100010100101;
		correct = 32'b10111110010010111110001111111100;
		#400 //-1.0462637e-29 * 5.2546525e-29 = -0.19911188
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010101101010111110110101101;
		b = 32'b00010111001100010110000110101100;
		correct = 32'b10111011000000101111011100100011;
		#400 //-1.1453687e-27 * 5.7315064e-25 = -0.001998373
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000011010010010010000010111;
		b = 32'b01011100010010011100111101101011;
		correct = 32'b01010011100100111101111100101111;
		#400 //2.8861455e+29 * 2.2721812e+17 = 1270209200000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000100001000010010111100;
		b = 32'b01110101111011011100111110111100;
		correct = 32'b01000010100110111001001001011011;
		#400 //4.6898933e+34 * 6.029237e+32 = 77.78585
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011001110000000011001001;
		b = 32'b00000000000111011011100010000101;
		correct = 32'b01100000011110001011011111011011;
		#400 //1.9566721e-19 * 2.729423e-39 = 7.1688136e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010110000011001110111011000;
		b = 32'b01001101010001100110111001011111;
		correct = 32'b10111100111110011100100111100100;
		#400 //-6344428.0 * 208070130.0 = -0.030491777
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100111011001100010011001010;
		b = 32'b11001100000101011010011111011001;
		correct = 32'b00010000010010101000000111101100;
		#400 //-1.5668039e-21 * -39231332.0 = 3.9937564e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110011011010101010101100;
		b = 32'b10001010110101111011010011011101;
		correct = 32'b01000001011101000001010110110100;
		#400 //-3.168797e-31 * -2.077178e-32 = 15.255299
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000110111001001101111001100;
		b = 32'b00101001100110101111100010110001;
		correct = 32'b10110110101101100011011010101011;
		#400 //-3.7372547e-19 * 6.882115e-14 = -5.430387e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110100100001001110010011011;
		b = 32'b01010100101001100100001100101100;
		correct = 32'b11000001010111101010100111101011;
		#400 //-79501145000000.0 * 5712732000000.0 = -13.916484
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000001001111101101110101000;
		b = 32'b01001100001101001000101011111110;
		correct = 32'b00100011011011100000001101110101;
		#400 //6.1066396e-10 * 47328250.0 = 1.2902738e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101100001110101010001100111;
		b = 32'b10100011010111101001100001001111;
		correct = 32'b00101001100110111010001110000110;
		#400 //-8.3403365e-31 * -1.2066897e-17 = 6.9117495e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011100101000111000100001;
		b = 32'b10001101101110001000110011100011;
		correct = 32'b11100010001010000011101100011010;
		#400 //8.8241064e-10 * -1.1373793e-30 = -7.758279e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100101011000000101100101101;
		b = 32'b01001111101001001111100110110101;
		correct = 32'b01000100100001010111101111101011;
		#400 //5911375000000.0 * 5535656400.0 = 1067.8724
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111000011100100010011110;
		b = 32'b00101111100110100101011011000111;
		correct = 32'b00011101101110110100000010001111;
		#400 //1.3914992e-30 * 2.8074096e-10 = 4.956524e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001111100010110101101000;
		b = 32'b01100101010010001111101000110001;
		correct = 32'b10010011011100100011111001001001;
		#400 //-0.00018136727 * 5.931803e+22 = -3.0575403e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101010111000001101101100;
		b = 32'b00011001110011110010110111001010;
		correct = 32'b11001100010100111110111000010110;
		#400 //-1.1901131e-15 * 2.1421792e-23 = -55556184.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111111000001110000010001101;
		b = 32'b11100101110000011001101000111010;
		correct = 32'b10100001100101001010110101011111;
		#400 //115137.1 * -1.1428271e+23 = -1.0074761e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110001010110010001010000111;
		b = 32'b10000110010010001001110110111110;
		correct = 32'b11011111010110100110000100111101;
		#400 //5.9374336e-16 * -3.773171e-35 = -1.5735926e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111010010011000001011000000;
		b = 32'b00110011101001110011010011011010;
		correct = 32'b01001011000110100100001010111010;
		#400 //0.78715134 * 7.786157e-08 = 10109626.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110011100000011110100100111;
		b = 32'b01101111001011010110101000001010;
		correct = 32'b10110110101100010101001100001110;
		#400 //-2.83624e+23 * 5.36691e+28 = -5.28468e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101011110011000010111111001;
		b = 32'b10101000011111110100101001100010;
		correct = 32'b11101100011110100011011101111101;
		#400 //17147113000000.0 * -1.4171473e-14 = -1.209974e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100110011110101101100110010;
		b = 32'b11001111100110001010101100101100;
		correct = 32'b10110100101011011101100111011100;
		#400 //1658.8499 * -5122709500.0 = -3.2382275e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111001110011000100101100011;
		b = 32'b11110110111100001000001010101000;
		correct = 32'b11000111110001010111110001011110;
		#400 //2.4662053e+38 * -2.439065e+33 = -101112.734
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111000001010010111001111011;
		b = 32'b11100010100011111100111100111010;
		correct = 32'b00001011111011010001010010110110;
		#400 //-1.2112793e-10 * -1.3264083e+21 = 9.132024e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000011110001110100000001000;
		b = 32'b00110001110111001110010001011110;
		correct = 32'b11011110000100000011101111000001;
		#400 //-16703824000.0 * 6.428805e-09 = -2.5982782e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100100011011111011010101;
		b = 32'b11110100001101101100111001010011;
		correct = 32'b01000011110011000001100111001011;
		#400 //-2.364855e+34 * -5.793352e+31 = 408.2015
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011111111110100010001111;
		b = 32'b01100000001101011111010110010010;
		correct = 32'b00110001101101000000010100010101;
		#400 //274779590000.0 * 5.2446186e+19 = 5.2392672e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100111001001000111100011110;
		b = 32'b11010101110100110000100110001000;
		correct = 32'b10011110100010101010000010100010;
		#400 //4.257244e-07 * -29004736000000.0 = -1.4677755e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001110000101000000000101101;
		b = 32'b00111101000011001100110001010011;
		correct = 32'b11011100001100001101001000110110;
		#400 //-6843384500000000.0 * 0.034374546 = -1.990829e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101111011111000100100010010;
		b = 32'b00000110111010111101010000111110;
		correct = 32'b01100110100000100000001011111110;
		#400 //2.7232026e-11 * 8.8709037e-35 = 3.0698142e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001001010100111010110011;
		b = 32'b01010011010101000110101100100001;
		correct = 32'b11000100010001110011100100100111;
		#400 //-727029700000000.0 * 912330400000.0 = -796.893
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011111010101101011011101101;
		b = 32'b11101011000011010110011010000010;
		correct = 32'b00110000010101001001010101111111;
		#400 //-1.3220292e+17 * -1.7094262e+26 = 7.73376e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110010000101100010010111101;
		b = 32'b10111010111001100110111000101001;
		correct = 32'b01111010110110000110000110001000;
		#400 //-9.875937e+32 * -0.0017580438 = 5.6175715e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100000010000011010011101111;
		b = 32'b11101110010110100110100010110101;
		correct = 32'b00010101000111111010011001010011;
		#400 //-544.8271 * -1.6898579e+28 = 3.2241e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001000010011010000101101;
		b = 32'b10111100001000111010001000001100;
		correct = 32'b11111100011111000011001100011001;
		#400 //5.231363e+34 * -0.009987365 = -5.2379808e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001100011111110110001100100;
		b = 32'b11110010011101100101001010010100;
		correct = 32'b00001110100101011001001111101011;
		#400 //-17.990425 * -4.8789212e+30 = 3.6873776e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110001010000000101100010100;
		b = 32'b01000111010011000111010101001101;
		correct = 32'b00011110010100100110011110111110;
		#400 //5.830172e-16 * 52341.3 = 1.1138761e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001001001100010010000111;
		b = 32'b10110110001101001110110010101101;
		correct = 32'b10100101011010010010001110001010;
		#400 //5.4517054e-22 * -2.6959854e-06 = -2.022157e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111001000001001011111010101;
		b = 32'b11011001110011010000001110101111;
		correct = 32'b00010100110010001000100000001101;
		#400 //-1.4605857e-10 * -7213302500000000.0 = 2.0248502e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110001001101000101010011;
		b = 32'b01001101111000111101001010111111;
		correct = 32'b00101111010111010010100011100100;
		#400 //0.09610238 * 477779940.0 = 2.011436e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101110100111011101011000000;
		b = 32'b00011001101010011011100010011101;
		correct = 32'b11100011100111111010111010001001;
		#400 //-0.10338354 * 1.7548755e-23 = -5.891218e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001001110011111000000000111;
		b = 32'b00000100011000100111111010111000;
		correct = 32'b01000100010100100010100011000111;
		#400 //2.2381425e-33 * 2.6624359e-36 = 840.63715
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101011110100000101110010101;
		b = 32'b00010100000111001011101010001010;
		correct = 32'b01011000110011000011011000100011;
		#400 //1.42134264e-11 * 7.912776e-27 = 1796263100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111111100010000101111110;
		b = 32'b00001111100001000110100011001100;
		correct = 32'b01011011111101011010101100000011;
		#400 //1.8057081e-12 * 1.3056571e-29 = 1.382988e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001101100010110000100010001;
		b = 32'b01010001101011010010111000110010;
		correct = 32'b10111111100000110001101001110100;
		#400 //-95229714000.0 * 92975550000.0 = -1.0242448
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100011101101101001101111111;
		b = 32'b10001100000101010000101110100110;
		correct = 32'b11101111110100111111100101001110;
		#400 //0.015065073 * -1.1482048e-31 = -1.3120546e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111100110100001001101000101;
		b = 32'b10101111111100100101110001100101;
		correct = 32'b00101111001000101011111011111010;
		#400 //-6.5253416e-20 * -4.4085194e-10 = 1.4801663e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010001000101011011000100010;
		b = 32'b01001001001100100001101111111001;
		correct = 32'b01101000011010011101111001010001;
		#400 //3.2228324e+30 * 729535.56 = 4.4176496e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010011001111001101011101010;
		b = 32'b10011010101011111001101100101111;
		correct = 32'b11001111001010001101000101011110;
		#400 //2.0570668e-13 * -7.2629016e-23 = -2832293400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100000001101101011001001110;
		b = 32'b11101010001010110100011010100000;
		correct = 32'b10000001010010011000100101001010;
		#400 //1.9161508e-12 * -5.176496e+25 = -3.701637e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001110111111011101100111100;
		b = 32'b10110111101100101100101011010100;
		correct = 32'b10011001101000000010110000101100;
		#400 //3.5298588e-28 * -2.1313703e-05 = -1.6561453e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100000100110100111000110;
		b = 32'b11110001111100100101110110001111;
		correct = 32'b11001001000010011011111111101101;
		#400 //1.3542879e+36 * -2.4002713e+30 = -564222.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110100110101010110111111;
		b = 32'b11001000110011001110000101110011;
		correct = 32'b00000011100001000000100001000111;
		#400 //-3.2561304e-31 * -419595.6 = 7.760163e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001001100010001110001100000;
		b = 32'b10010000111111111001010011110101;
		correct = 32'b01000111101100010110011010001101;
		#400 //-9.156416e-24 * -1.0080927e-28 = 90829.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010000001010001110101001;
		b = 32'b11001001101001110100100000110010;
		correct = 32'b00110010000100110110011100011011;
		#400 //-0.01175777 * -1370374.2 = 8.57997e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101110110110010010001101001;
		b = 32'b00000101110011100011100010111100;
		correct = 32'b01010111100010000000010100001100;
		#400 //5.8006465e-21 * 1.9392988e-35 = 299110500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111001011101000000110111;
		b = 32'b10110010100011010111111101101100;
		correct = 32'b01101100110011111110010000011001;
		#400 //-3.3119593e+19 * -1.6472505e-08 = 2.0105984e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010101101001100100000010101;
		b = 32'b01010111111101000010101001111101;
		correct = 32'b10101010001111011000101100100101;
		#400 //-90.390785 * 536926650000000.0 = -1.6834848e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010010101111110100111110;
		b = 32'b11001100101000000011111001001011;
		correct = 32'b11101011001000100010010100010001;
		#400 //1.6468443e+34 * -84013656.0 = -1.9602102e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100100111101101000001001;
		b = 32'b10001001011000111001001100100100;
		correct = 32'b11010100101001100101000110110010;
		#400 //1.5654408e-20 * -2.7393316e-33 = -5714681500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010000011101100111011010001;
		b = 32'b00100011001100110001101100100001;
		correct = 32'b11101110010011000001111001001101;
		#400 //-153338790000.0 * 9.709354e-18 = -1.5792893e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100111010100100101110101110;
		b = 32'b10011011101110101101001100010111;
		correct = 32'b11010000101000001000011000101001;
		#400 //6.659082e-12 * -3.0907532e-22 = -21545175000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001001010101101100100001111;
		b = 32'b11010010111110111100001111000010;
		correct = 32'b00000101101011011011100011010100;
		#400 //-8.832629e-24 * -540660530000.0 = 1.6336737e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110100110011111110100001110;
		b = 32'b00111010111001100011110111101011;
		correct = 32'b10011011001010110011011101000001;
		#400 //-2.4878183e-25 * 0.001756606 = -1.4162642e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101101001101110010001010010;
		b = 32'b11011100011010111110110011001100;
		correct = 32'b10001000101101010001011111000011;
		#400 //2.8951126e-16 * -2.6562792e+17 = -1.0899128e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000001100111010101011110000;
		b = 32'b01111110110111001010110110110000;
		correct = 32'b00000000110100000110110011010101;
		#400 //2.8073082 * 1.46666e+38 = 1.9140825e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011010001001011010000010001;
		b = 32'b01001010010011100011110110101100;
		correct = 32'b00111000011101000010100101010001;
		#400 //196.70338 * 3379051.0 = 5.8212612e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010010101000000000010101100;
		b = 32'b10111000010010000100011100000000;
		correct = 32'b00001001100001110111111001101001;
		#400 //-1.5575493e-37 * -4.774984e-05 = 3.2618943e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000101000011110010111101101;
		b = 32'b10110000101001010101111001010101;
		correct = 32'b10110111011110101010000010110010;
		#400 //1.7974305e-14 * -1.2032141e-09 = -1.4938576e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111100111110110001010001;
		b = 32'b11100000110111011110101011011110;
		correct = 32'b10110010100011001011000101010011;
		#400 //2095283600000.0 * -1.279267e+20 = -1.6378783e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011101000110111011111010100;
		b = 32'b00111010000110101001001100101010;
		correct = 32'b11011001000001110101110101000001;
		#400 //-1404180100000.0 * 0.0005896563 = -2381353500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111000000000111010111010;
		b = 32'b01100100110101011000000101111011;
		correct = 32'b10111110100001100101001101110000;
		#400 //-8.2662637e+21 * 3.1507892e+22 = -0.26235533
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000000101001111100011011000;
		b = 32'b00110011001101001001010001000001;
		correct = 32'b11101100010100110011000100011111;
		#400 //-4.293827e+19 * 4.2044352e-08 = -1.02126126e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000001110001011001101000100;
		b = 32'b11010101000010010010010100110010;
		correct = 32'b00110010101011000110001001000100;
		#400 //-189133.06 * -9424553000000.0 = 2.0068121e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111000111010001110010000;
		b = 32'b11001000101001110110101010111101;
		correct = 32'b00110010101011100000101100001111;
		#400 //-0.0069469884 * -342869.9 = 2.0261295e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010000011001100010100010010;
		b = 32'b11000110001111100100110000111010;
		correct = 32'b10010011001111010101111100111100;
		#400 //2.9110514e-23 * -12179.057 = -2.3902108e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111010010011011011010110100;
		b = 32'b11100010011011011011100111101001;
		correct = 32'b11010100010110010011100000011111;
		#400 //4.0912396e+33 * -1.09631865e+21 = -3731797800000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110010110101111100110001101;
		b = 32'b01010011111110110000100011111000;
		correct = 32'b00000001110111110100111001000010;
		#400 //1.7688644e-25 * 2156374500000.0 = 8.2029557e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111010111110010000000101;
		b = 32'b11101001110100000100001001110001;
		correct = 32'b10101000100100001111101110001100;
		#400 //506571420000.0 * -3.1471291e+25 = -1.6096303e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011110100001000101011100110;
		b = 32'b11010011101111100001110000010010;
		correct = 32'b11001111100011000110100100101011;
		#400 //7.693863e+21 * -1633029500000.0 = -4711405000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010011000111101100001101;
		b = 32'b10011100011101111110110000100101;
		correct = 32'b01000001010100110010010010010010;
		#400 //-1.0825116e-20 * -8.2030654e-22 = 13.196428
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111100100000010010010011111;
		b = 32'b00011010101111001001010101000011;
		correct = 32'b00110100010000111010110001001101;
		#400 //1.4213602e-29 * 7.799612e-23 = 1.8223473e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101011011001000000111010111;
		b = 32'b00101101100010110101000001001111;
		correct = 32'b10010111010110010100110011100101;
		#400 //-1.11205145e-35 * 1.5838135e-11 = -7.0213536e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011111111001001110101001110;
		b = 32'b01001110111101101111010111100101;
		correct = 32'b10111100100000101110111000110010;
		#400 //-33110684.0 * 2071655000.0 = -0.015982721
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000111011111001111011101111;
		b = 32'b11101000010010110100101000110110;
		correct = 32'b10110000000101101110000000100010;
		#400 //2107727100000000.0 * -3.8400374e+24 = -5.4888194e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010100110111101011000100011;
		b = 32'b10011110111000011110111001100010;
		correct = 32'b10110011001100001001001110010101;
		#400 //9.834664e-28 * -2.3921394e-20 = -4.111242e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111010001011001110111011010;
		b = 32'b10001101000100001111101111111011;
		correct = 32'b01110001101011100111011101110111;
		#400 //-0.7719399 * -4.4676736e-31 = 1.7278341e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010100000101100001011111111;
		b = 32'b10001011110111111101100110010011;
		correct = 32'b11000110000101011000101011001011;
		#400 //8.252224e-28 * -8.6223845e-32 = -9570.698
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101101101001100010110111100;
		b = 32'b11100011000101001111100100011011;
		correct = 32'b11001010000110110101001010001110;
		#400 //6.9932935e+27 * -2.748068e+21 = -2544803.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110101000010100111110101;
		b = 32'b11001010001111110000110011010011;
		correct = 32'b00101001000011100010010101010111;
		#400 //-9.879651e-08 * -3130164.8 = 3.156272e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111011110100000001100101100;
		b = 32'b01101000010100101111011110001001;
		correct = 32'b01010110100101111011000010100111;
		#400 //3.3232347e+38 * 3.9850527e+24 = 83392490000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111010101101100110011001;
		b = 32'b00011100010001011111101000010010;
		correct = 32'b00111101000101111101011100001001;
		#400 //2.428292e-23 * 6.550504e-22 = 0.037070308
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010101011100010101100000100;
		b = 32'b10000100000111000110110110001001;
		correct = 32'b01110110000011101000010000100111;
		#400 //-0.0013287966 * -1.8388008e-36 = 7.226431e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000111000011100011110110000;
		b = 32'b10101001111100110010001001111100;
		correct = 32'b00011110011011011011101000011110;
		#400 //-1.3588641e-33 * -1.079735e-13 = 1.2585164e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101001000011000000001111011;
		b = 32'b01010001100111010110111000001101;
		correct = 32'b11101011000000110100111110001111;
		#400 //-1.3417051e+37 * 84519530000.0 = -1.5874499e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110001011110001010110101010;
		b = 32'b00110100101101111101111011111010;
		correct = 32'b10100000111100111100010001010100;
		#400 //-1.4143223e-25 * 3.4248643e-07 = -4.129572e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001011011101110100001010010;
		b = 32'b10000111011011011000000000111111;
		correct = 32'b11100001100000001100001000001111;
		#400 //5.3048122e-14 * -1.7867586e-34 = -2.9689583e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111111011001101001110111111;
		b = 32'b01101111000011100100001010000011;
		correct = 32'b10100000010101010001011010001110;
		#400 //-7946600000.0 * 4.402728e+28 = -1.8049264e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000100010101111010110000000;
		b = 32'b00110101011111011000010000011001;
		correct = 32'b11111010100011000101001000001110;
		#400 //-3.440458e+29 * 9.444207e-07 = -3.642929e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101101001001101111010100;
		b = 32'b01001010010111011111000110111001;
		correct = 32'b11100111110100000101001001100011;
		#400 //-7.154648e+30 * 3636334.2 = -1.967544e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000101001000000001011101101;
		b = 32'b01011001101000011010001111010000;
		correct = 32'b00010110100000011110000011000011;
		#400 //1.1933402e-09 * 5687198000000000.0 = 2.0982919e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000111000111010100000001;
		b = 32'b11001111110001011000101000011110;
		correct = 32'b00111010110010101100001001101011;
		#400 //-10253569.0 * -6628326400.0 = 0.0015469318
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001101111011011000110111;
		b = 32'b01010000110101100111001101110010;
		correct = 32'b00001010110110110100111000100011;
		#400 //6.078513e-22 * 28783120000.0 = 2.1118325e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010101100011011101001010101;
		b = 32'b00110000100000100001011101111010;
		correct = 32'b11110001101011101101111011000111;
		#400 //-1.6392502e+21 * 9.465417e-10 = -1.7318308e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100111011111100111111100;
		b = 32'b00001011111000100000010010110111;
		correct = 32'b01100101001100101110111010101000;
		#400 //4.5977213e-09 * 8.705913e-32 = 5.281148e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010110011010110010010100011;
		b = 32'b10001111011011010011101010101101;
		correct = 32'b11010010110111011010010100010110;
		#400 //5.5671915e-18 * -1.1696303e-29 = -475978730000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001010101110101111101011011;
		b = 32'b10010010111001011001111010110000;
		correct = 32'b10101101111100000001110110100100;
		#400 //3.9557678e-38 * -1.4491051e-27 = -2.7298004e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001000110101011111101111001;
		b = 32'b11111110101101110110011111110011;
		correct = 32'b00110001110101111111111110101100;
		#400 //-7.662747e+29 * -1.2189423e+38 = 6.28639e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001111111111011000101010110;
		b = 32'b11000000101100101000001110010001;
		correct = 32'b10010000101101110101011011101110;
		#400 //4.0341198e-28 * -5.5785604 = -7.231471e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000011110110011001011111010;
		b = 32'b11011001001101110111010001111011;
		correct = 32'b11001110101011110100010000101111;
		#400 //4.7450174e+24 * -3227374500000000.0 = -1470240600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010100111110101101110000011;
		b = 32'b00011010011011101011001100110101;
		correct = 32'b00111111101010101110100000110011;
		#400 //6.5908704e-23 * 4.936201e-23 = 1.3352112
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111010111000010001011001;
		b = 32'b11011110010011000011101111101110;
		correct = 32'b10111001000100111001101100100001;
		#400 //517907320000000.0 * -3.6791545e+18 = -0.00014076802
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000100000001111100110111010;
		b = 32'b11001111010011111000011001111100;
		correct = 32'b10111000100111110001101000100111;
		#400 //264141.8 * -3481697300.0 = -7.586582e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001001101100111110111101001;
		b = 32'b11010101110100100100011101100111;
		correct = 32'b01010010110111100010101111010001;
		#400 //-1.3788693e+25 * -28900514000000.0 = 477108930000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100000001011011001111011111;
		b = 32'b10111000101100000001000000111100;
		correct = 32'b11110010110000100110100000010000;
		#400 //6.465462e+26 * -8.395358e-05 = -7.7012347e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000000110110110011000010001;
		b = 32'b01001101111001001001011100101101;
		correct = 32'b00001001101011100000100000110001;
		#400 //2.008481e-24 * 479389100.0 = 4.189668e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001111110011001101101001;
		b = 32'b00010010011000001111011011001111;
		correct = 32'b01100101010110011001010000101010;
		#400 //4.5585828e-05 * 7.098615e-28 = 6.4217917e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101001010111010001000110001;
		b = 32'b00100111001111111110010100000111;
		correct = 32'b01101101011001001111100001101100;
		#400 //11794568000000.0 * 2.663073e-15 = 4.4289316e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101010111111111010100100111;
		b = 32'b00110100010010011101100000111001;
		correct = 32'b01000000100011100000010111100011;
		#400 //8.343072e-07 * 1.8798245e-07 = 4.4382186
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110101101001110111110100011;
		b = 32'b11010011110000011110001110101100;
		correct = 32'b00001010011011101110010110110100;
		#400 //-1.9157353e-20 * -1665496800000.0 = 1.15024855e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001001010111001001011010110;
		b = 32'b10110000000010000011110000000001;
		correct = 32'b00111000101000010011010000000100;
		#400 //-3.8096987e-14 * -4.956178e-10 = 7.686767e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101001101001100001000011101;
		b = 32'b11001110010001100111011010111000;
		correct = 32'b01011110011010010010100101011011;
		#400 //-3.496373e+27 * -832417300.0 = 4.200265e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001100011001110100001111010;
		b = 32'b11111111011111010101111001111101;
		correct = 32'b10001001100011100101111100001011;
		#400 //1154319.2 * -3.367853e+38 = -3.4274634e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011001000000000101111010;
		b = 32'b00010010001111101100100011111110;
		correct = 32'b11000100100110001111100011000110;
		#400 //-7.3672637e-25 * 6.020117e-28 = -1223.7742
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100000010101111110010011000;
		b = 32'b01001100000100100100101111011111;
		correct = 32'b11100111011100110011010110000001;
		#400 //-4.404664e+31 * 38350716.0 = -1.148522e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110110010111011001100011111;
		b = 32'b01110000011100111011001011010000;
		correct = 32'b10100101110101011111101101101101;
		#400 //-111985090000000.0 * 3.0168411e+29 = -3.7119983e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000010101010110010100110010;
		b = 32'b11111010101101011110010010010010;
		correct = 32'b10110101000101100010101100101010;
		#400 //2.6417058e+29 * -4.7222084e+35 = -5.5942166e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100110001010101110110100;
		b = 32'b11001000000001010111001101011000;
		correct = 32'b10110100000100100110111101100101;
		#400 //0.018636562 * -136653.38 = -1.3637835e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101010110010010111111010001;
		b = 32'b10111101100011110110010001110110;
		correct = 32'b00010111010000011101111101111000;
		#400 //-4.386052e-26 * -0.07001583 = 6.264372e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011101000001010111001101011;
		b = 32'b11000001010000110000100111000110;
		correct = 32'b10110001110100101110011110001010;
		#400 //7.482307e-08 * -12.189886 = -6.1381273e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010101000001000100000010111;
		b = 32'b00101011001010111000111010010111;
		correct = 32'b01000110111011111000110000111001;
		#400 //1.8688338e-08 * 6.0949287e-13 = 30662.111
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110100001111000101111010110;
		b = 32'b10110000100111010011101001010100;
		correct = 32'b11100101010111001011001010100010;
		#400 //74517330000000.0 * -1.1439831e-09 = -6.513849e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001100011011011000010001011;
		b = 32'b00101100000111000000100100110011;
		correct = 32'b00011100111010000111011001110111;
		#400 //3.4110535e-33 * 2.217404e-12 = 1.5383095e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000110010011001011101000;
		b = 32'b11000000101101010000010110001100;
		correct = 32'b01001100110110001010011100110010;
		#400 //-642562560.0 * -5.656927 = 113588620.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011111011001101011001010010;
		b = 32'b01111000011011010000011110110110;
		correct = 32'b10011010111111111100101010101000;
		#400 //-2034416000000.0 * 1.9230168e+34 = -1.0579294e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001011111111000000100011;
		b = 32'b00100011011000101001110010001011;
		correct = 32'b11010101010001101100000100111111;
		#400 //-0.00016778758 * 1.2284634e-17 = -13658330000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101001001100000010011100001;
		b = 32'b11000111111010100001000101001001;
		correct = 32'b10111100101101011001001101000111;
		#400 //2656.305 * -119842.57 = -0.022164954
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111010000001100011100010101;
		b = 32'b01010010000101010000001101101100;
		correct = 32'b10000100101001011001011111000010;
		#400 //-6.2289823e-25 * 160001880000.0 = -3.893068e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001101000111110100100001;
		b = 32'b00111010110001110001010000100100;
		correct = 32'b11001111111010000001100001000110;
		#400 //-11828513.0 * 0.0015188497 = -7787810000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111111111110001010001001100;
		b = 32'b00101111111111100100100010110101;
		correct = 32'b01011111100000000110011001111011;
		#400 //8559040500.0 * 4.6253992e-10 = 1.8504435e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000101111000111101111110011;
		b = 32'b01000111101100001110010110110000;
		correct = 32'b01010000100010000110001001010111;
		#400 //1657924400000000.0 * 90571.375 = 18305170000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011100001000111111110001001;
		b = 32'b11101011010001100011110001010000;
		correct = 32'b01000111101010110001101101110001;
		#400 //-2.0995175e+31 * -2.3965213e+26 = 87606.88
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100100101010001001100111100;
		b = 32'b11001001001100110111101110111011;
		correct = 32'b00101010110101001010000011011001;
		#400 //-2.7767408e-07 * -735163.7 = 3.7770375e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110010001001101010111000;
		b = 32'b00100000100100010011000000001101;
		correct = 32'b10101111101100001101101100110111;
		#400 //-7.912447e-29 * 2.4595753e-19 = -3.2169975e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101111111111001001000110;
		b = 32'b00000110111100110010001111010111;
		correct = 32'b11111010010010100001100101000011;
		#400 //-23.993298 * 9.14591e-35 = -2.6233908e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101010100011111001000101011;
		b = 32'b00111010111010100101100001000111;
		correct = 32'b01111001111001010101100010110100;
		#400 //2.6613813e+32 * 0.0017879092 = 1.4885439e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111111100011110100110111010;
		b = 32'b01001001001010111010101001011111;
		correct = 32'b00110110001101000110000100001010;
		#400 //1.8899453 * 703141.94 = 2.6878574e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110011110110101011110001010;
		b = 32'b01011101101110010111100111100111;
		correct = 32'b01011000001011010111010001111010;
		#400 //1.2744551e+33 * 1.6706209e+18 = 762863100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101010000101101100011010110;
		b = 32'b11001000011010001101010000101000;
		correct = 32'b11100100010101100011110100000010;
		#400 //3.7688894e+27 * -238416.62 = -1.5807997e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110001000110110011111010;
		b = 32'b10111111011100001001010111011001;
		correct = 32'b10011000110100010000001011001111;
		#400 //5.077485e-24 * -0.9397865 = -5.402807e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100101111100001001000010111;
		b = 32'b01000100111110111100101100011010;
		correct = 32'b10011111010000010011111100000001;
		#400 //-8.243001e-17 * 2014.3469 = -4.0921455e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101010010000101111101111011;
		b = 32'b00010000011111100011101011101110;
		correct = 32'b11001100010010011100010010010010;
		#400 //-2.6519142e-21 * 5.0138065e-29 = -52892230.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100100011001111101101100101;
		b = 32'b11011110100101010100100100100100;
		correct = 32'b01011101011100011100001010110100;
		#400 //-5.8561636e+36 * -5.3785844e+18 = 1.08879276e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111101011001110001001101;
		b = 32'b10100001111011101111000011100111;
		correct = 32'b11110101100000111001001010100110;
		#400 //540103300000000.0 * -1.6191274e-18 = -3.335768e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001111100100100001010111111;
		b = 32'b11010001001111011001101100010101;
		correct = 32'b11101000001000111000101111101011;
		#400 //1.572362e+35 * -50896916000.0 = -3.089307e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000010001111111111001101100;
		b = 32'b11000110111000011000001111110010;
		correct = 32'b11000000111000110000011101001011;
		#400 //204793.69 * -28865.973 = -7.0946403
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110101000100110111010111011;
		b = 32'b01101100011001111010101101001111;
		correct = 32'b10010001101100110111110111101010;
		#400 //-0.31725106 * 1.1202834e+27 = -2.831882e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101010011001011000010100100;
		b = 32'b00111001111000000101000001100101;
		correct = 32'b01101010111010011001101010011011;
		#400 //6.0413825e+22 * 0.00042784508 = 1.4120491e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010000110100100000010000010;
		b = 32'b00001000000110101000110111100100;
		correct = 32'b11111001011111110111111111010011;
		#400 //-38.562996 * 4.650948e-34 = -8.291427e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111011100010111111110011;
		b = 32'b11011010001100010100010101100111;
		correct = 32'b10101111001010111111110000101010;
		#400 //1951230.4 * -1.2474345e+16 = -1.5641946e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111110110011110010011011;
		b = 32'b11110110011011011110000111001110;
		correct = 32'b10011100000001110010111110011000;
		#400 //539526800000.0 * -1.2062053e+33 = -4.4729267e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100111000011001111110011111;
		b = 32'b10001111010110111001100111000111;
		correct = 32'b11010101000000111000001010110100;
		#400 //9.7848604e-17 * -1.082715e-29 = -9037337000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110000111000011101110101;
		b = 32'b10110110100110101111010000000010;
		correct = 32'b10101101101000011000010010011110;
		#400 //8.479724e-17 * -4.617964e-06 = -1.8362475e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011111010011011111001101011;
		b = 32'b01011001101111110111001001110001;
		correct = 32'b10001001100111000100011110000000;
		#400 //-2.5342556e-17 * 6735944000000000.0 = -3.7622872e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011011010001101001000011111;
		b = 32'b00011010011110101011100001010101;
		correct = 32'b11000000011011011011100101001011;
		#400 //-1.9258484e-22 * 5.184769e-23 = -3.7144344
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001101000100010110001101101;
		b = 32'b10011100110101001101010100110010;
		correct = 32'b01110100010000110001000011100000;
		#400 //-87066255000.0 * -1.4084093e-21 = 6.1818857e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001000011010001100010010000;
		b = 32'b10111110100111000111000110100011;
		correct = 32'b00111001111001101110001010010101;
		#400 //-0.00013455958 * -0.30555448 = 0.00044037835
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101000001101000001110101100;
		b = 32'b01010101011000101101000001111001;
		correct = 32'b11011111000101111101001010111011;
		#400 //-1.7051719e+32 * 15586563000000.0 = -1.0940012e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110111111001010000111010011;
		b = 32'b10101100010000001010010101110011;
		correct = 32'b10101010001001111101101100111101;
		#400 //4.081492e-25 * -2.7376684e-12 = -1.4908643e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111010110100010000110100;
		b = 32'b11111001110101110101001110010100;
		correct = 32'b00000001100010111101101001101101;
		#400 //-0.0071797613 * -1.3975487e+35 = 5.137396e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001011011100010100101000001;
		b = 32'b10001111100111000010010011111110;
		correct = 32'b01010001010000110011101111000010;
		#400 //-8.0692136e-19 * -1.5397037e-29 = 52407575000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001100011101111001011111101;
		b = 32'b10101110001001110101110100100011;
		correct = 32'b00110010110110101010011111000011;
		#400 //-9.686613e-19 * -3.8054126e-11 = 2.545483e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001000100011100100011100101;
		b = 32'b10110100110011101111001110000010;
		correct = 32'b11111011101101000101011000110001;
		#400 //7.218911e+29 * -3.8547665e-07 = -1.8727232e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110100011000101010110101000;
		b = 32'b00111011101100101101101001110001;
		correct = 32'b10010010010010001101110111011011;
		#400 //-3.459515e-30 * 0.005458169 = -6.338233e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010011011111100010000001010;
		b = 32'b01100000001101111001001111011011;
		correct = 32'b00100001101001110010110101101010;
		#400 //59.941444 * 5.291263e+19 = 1.1328381e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100100001111111110000100001;
		b = 32'b00011011110000111101010100001100;
		correct = 32'b11110000001100011100001111011100;
		#400 //-71295240.0 * 3.2397722e-22 = -2.200625e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010110010111001110111111;
		b = 32'b11110010111001011000110100010011;
		correct = 32'b11000100111100101000000111001100;
		#400 //1.7641813e+34 * -9.093455e+30 = -1940.0562
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011001100110010101101001110;
		b = 32'b10101000111100010110111000101001;
		correct = 32'b00110001101111011111101101000111;
		#400 //-1.4820525e-22 * -2.680415e-14 = 5.529191e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000001110011110100010110111;
		b = 32'b00101011100111000100100010111100;
		correct = 32'b01010100000110000100001101110001;
		#400 //2.9048288 * 1.1104655e-12 = 2615866000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110110101001000011110000;
		b = 32'b00010101001000000100001010010011;
		correct = 32'b10110111001011101001000110110111;
		#400 //-3.367545e-31 * 3.236426e-26 = -1.0405135e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000100000000101101101111101;
		b = 32'b01100101011100000111011111111111;
		correct = 32'b00000010100010001010010111001101;
		#400 //1.4250531e-14 * 7.0973843e+22 = 2.007857e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011000011111110001110000011;
		b = 32'b11011010110111101011001000011100;
		correct = 32'b00010111101001010110100001001000;
		#400 //-3.3501703e-08 * -3.134164e+16 = 1.0689199e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010010011110001011001110001;
		b = 32'b01000010110010011000111000100110;
		correct = 32'b10100111000000111000001101101111;
		#400 //-1.8393079e-13 * 100.77763 = -1.8251152e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100010101111001001001001110;
		b = 32'b01010010000001110101000101111001;
		correct = 32'b00011001110010111110100110111011;
		#400 //3.0634553e-12 * 145296870000.0 = 2.1084111e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010011101111101110110001;
		b = 32'b10100110110000110010101100110010;
		correct = 32'b01100100000001111011111110011000;
		#400 //-13564849.0 * -1.3542551e-15 = 1.0016465e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010111101000011111100110110;
		b = 32'b10110010011100000111111110101110;
		correct = 32'b11001000000000011111111010110000;
		#400 //0.0018634561 * -1.399887e-08 = -133114.75
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101101011001010100100110111;
		b = 32'b10011001011010001100111001011111;
		correct = 32'b00101011101111011101110011011110;
		#400 //-1.6236962e-35 * -1.2035795e-23 = 1.3490561e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010001110010100100000111010;
		b = 32'b11101000101111011000000110001001;
		correct = 32'b00100000111110100100101101001000;
		#400 //-3035662.5 * -7.159334e+24 = 4.2401464e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111110111111000000001111010;
		b = 32'b11000011111001011100110011100000;
		correct = 32'b00000011011110001111101111000101;
		#400 //-3.3628822e-34 * -459.6006 = 7.3169667e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001001111101101010111100000;
		b = 32'b01110010010000100110001000010000;
		correct = 32'b10111110011110110101001111101110;
		#400 //-9.449714e+29 * 3.850153e+30 = -0.24543735
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110111000011110000001101101;
		b = 32'b01101111001001010101101101100000;
		correct = 32'b10011111001011101101100011101000;
		#400 //-1894790800.0 * 5.117549e+28 = -3.7025354e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111110001011100011100111;
		b = 32'b10001010010010101010000101100011;
		correct = 32'b11111111111110001011100011100111;
		#400 //nan * -9.7563e-33 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110010101101010110101110010;
		b = 32'b00110100011101001101010100001001;
		correct = 32'b00111001011000000111100001001001;
		#400 //4.8812017e-11 * 2.2801773e-07 = 0.00021407114
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000101100111110111010111;
		b = 32'b10001010100010001000001110101110;
		correct = 32'b00111000000011010001101011111110;
		#400 //-4.4225495e-37 * -1.3145856e-32 = 3.3642158e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100101011111100000010000111;
		b = 32'b10100000100011110110000100110100;
		correct = 32'b11101011100111001110011001100001;
		#400 //92144696.0 * -2.4289466e-19 = -3.7936072e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110100100111000011011001;
		b = 32'b00101110110011001001011100111010;
		correct = 32'b01100010100000111010100011111000;
		#400 //112979550000.0 * 9.303709e-11 = 1.2143495e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100100010010010010110000;
		b = 32'b11101100101101100101100001000110;
		correct = 32'b11000001010010111100010110000101;
		#400 //2.245984e+28 * -1.7635309e+27 = -12.735723
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011000110001010011100100011;
		b = 32'b11000001000110010101110100110101;
		correct = 32'b11110001011111101101000000010101;
		#400 //1.2094407e+31 * -9.585256 = -1.261772e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101011101111100101000000100;
		b = 32'b01110011010011001110101111101000;
		correct = 32'b00001001100110101100011011000000;
		#400 //0.06049539 * 1.6235555e+31 = 3.7261055e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110010111100010010110110101;
		b = 32'b00010110001001111101011101100011;
		correct = 32'b01001111101010010110101001000010;
		#400 //7.7072825e-16 * 1.3558117e-25 = 5684626400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011100010100101011000010011;
		b = 32'b10110101000100100110100001010010;
		correct = 32'b00101101111100011110001100010100;
		#400 //-1.4998444e-17 * -5.4541044e-07 = 2.749937e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011000000101001011001001011;
		b = 32'b10010000101010110011110111110001;
		correct = 32'b01011001110000110011100011111001;
		#400 //-4.639385e-13 * -6.7543043e-29 = 6868783000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100011111101011011011001011;
		b = 32'b00100110011100000101100110111010;
		correct = 32'b10110101100001111010011000111110;
		#400 //-8.4277805e-22 * 8.338833e-16 = -1.0106667e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100100010010010111111001;
		b = 32'b11000100111101111011010010000101;
		correct = 32'b00111001000101100000001001000110;
		#400 //-0.28349283 * -1981.6412 = 0.00014305962
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110110001100000101001111000;
		b = 32'b10111000110010111110100111000111;
		correct = 32'b10100101011110001010000010110001;
		#400 //2.0968395e-20 * -9.723339e-05 = -2.1565015e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001100101011110011010111100;
		b = 32'b10110101111110100000111111101111;
		correct = 32'b01000011000110010111010111110011;
		#400 //-0.00028591405 * -1.8631089e-06 = 153.46074
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001010010100001001101100010;
		b = 32'b10110101110111111101011010100111;
		correct = 32'b01001010111001110001110000111110;
		#400 //-12.629732 * -1.6677267e-06 = 7573023.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010100000011000111011011110;
		b = 32'b11110000001010011011111000000010;
		correct = 32'b01001001110000110110010101000000;
		#400 //-3.36352e+35 * -2.1013069e+29 = 1600680.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101000100110001001010111101;
		b = 32'b11011100101100001100111100000000;
		correct = 32'b01000111110101001111001001000010;
		#400 //-4.3408346e+22 * -3.9813756e+17 = 109028.516
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000000100111001011100001101;
		b = 32'b01001100100001010010010110101001;
		correct = 32'b10111011000011011110001001110110;
		#400 //-151132.2 * 69807430.0 = -0.0021649874
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011101101100100010000111011;
		b = 32'b11111010100000000101011110010001;
		correct = 32'b01000000101101011100011111011111;
		#400 //-1.8927638e+36 * -3.3319503e+35 = 5.6806483
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011001000011100001010001;
		b = 32'b10100010111111111100000000001100;
		correct = 32'b10011111111001000111000101100011;
		#400 //6.7067826e-37 * -6.9321226e-18 = -9.674934e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111011011001110110101110110;
		b = 32'b01001100011010111111100110001101;
		correct = 32'b00000010100000001000010001001110;
		#400 //1.1681432e-29 * 61859380.0 = 1.8883849e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000100001110010110100100100;
		b = 32'b10111001011111111110111001011111;
		correct = 32'b00010110100001110011011001110100;
		#400 //-5.331766e-29 * -0.00024407495 = 2.184479e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111011011010011101001111011;
		b = 32'b11011011011001000101110010001100;
		correct = 32'b01001011100001001111100001010101;
		#400 //-1.1202796e+24 * -6.427805e+16 = 17428650.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011101010000001101010011111;
		b = 32'b01000000001101100110100001010010;
		correct = 32'b01000010111010111110110011111100;
		#400 //336.20798 * 2.8501172 = 117.96286
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000110101110001101010000001;
		b = 32'b11000101110110010010101110011001;
		correct = 32'b10000010011111011001000001001110;
		#400 //1.2946073e-33 * -6949.4497 = -1.8628918e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011000011100110101010010;
		b = 32'b11111011100011100101010010101100;
		correct = 32'b00101110010010110001000100011111;
		#400 //-6.8244477e+25 * -1.478047e+36 = 4.6172063e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101100000000010100010101010;
		b = 32'b01000100101100010111101100001111;
		correct = 32'b00100000001110001101101110001111;
		#400 //2.2232016e-16 * 1419.8456 = 1.5658052e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101011010011011000110111101;
		b = 32'b11010010001011110010010001111001;
		correct = 32'b01000010101010101100101010101001;
		#400 //-16059349000000.0 * -188057800000.0 = 85.39582
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101100001011110100001010111;
		b = 32'b01010010010011100001010011010110;
		correct = 32'b00001010101001100101011111111100;
		#400 //3.544504e-21 * 221278200000.0 = 1.6018315e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110110011100101010100111;
		b = 32'b01111100000101100000010110001010;
		correct = 32'b10101100001110011101001001110001;
		#400 //-8.2279344e+24 * 3.1158275e+36 = -2.64069e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111001001000100011100010101;
		b = 32'b11100101011000111010100111111000;
		correct = 32'b00000001001110001011100101110001;
		#400 //-2.2798106e-15 * -6.7194535e+22 = 3.392851e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000110110111100000110010010;
		b = 32'b10111001111100100011110100100000;
		correct = 32'b11001110011010000011110101111011;
		#400 //450060.56 * -0.0004620338 = -974085800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001000011111001000111001110;
		b = 32'b01110011111100000100100001110011;
		correct = 32'b10010100100110001111010111100010;
		#400 //-588060.9 * 3.8074362e+31 = -1.5445061e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100111111000100001010111;
		b = 32'b10110010111001111010011000101110;
		correct = 32'b11001001001100000100110101110110;
		#400 //0.019474192 * -2.696751e-08 = -722135.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010100111010010001111000111;
		b = 32'b00101100011000011101000001111001;
		correct = 32'b01001101101100100010010100110110;
		#400 //0.0011988812 * 3.2090149e-12 = 373597900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110010001001100110011011110;
		b = 32'b10101011010011000101011011101010;
		correct = 32'b00100010011101101000111000000001;
		#400 //-2.4257505e-30 * -7.2595977e-13 = 3.3414393e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110000100111111011001111010;
		b = 32'b01010101100000001111010110110011;
		correct = 32'b01100000000100101101110010010010;
		#400 //7.502605e+32 * 17724095000000.0 = 4.2329975e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010101011000000101100000;
		b = 32'b10110011101001001010001001010010;
		correct = 32'b01010101001001011111111100011110;
		#400 //-874518.0 * -7.666371e-08 = 11407196000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001101111111001011010101111;
		b = 32'b10110100000000101100011000101100;
		correct = 32'b00001101001110111000011001000010;
		#400 //-7.037854e-38 * -1.2179288e-07 = 5.778543e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111011110000100010110000111;
		b = 32'b11000111000110000100010010110100;
		correct = 32'b10001111110100001011001111001100;
		#400 //8.022088e-25 * -38980.703 = -2.0579639e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101010010011011010000110010;
		b = 32'b10000110000011011000100101010000;
		correct = 32'b11101110101101100110100111000101;
		#400 //7.5140554e-07 * -2.6620034e-35 = -2.822707e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001000110001101101001000100;
		b = 32'b00010001100000101000011110111001;
		correct = 32'b01010111000101011110001111000110;
		#400 //3.3940095e-14 * 2.059403e-28 = 164805510000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000010111110110101101000000;
		b = 32'b10101101110010111000111001101010;
		correct = 32'b11001010000011000111110101110001;
		#400 //5.3267227e-05 * -2.3141673e-11 = -2301788.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111111100010110100010100001;
		b = 32'b11101001010111111000110000110100;
		correct = 32'b01111111111100010110100010100001;
		#400 //nan * -1.6890784e+25 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010101001010110100101111011;
		b = 32'b00110000010100001100100110110011;
		correct = 32'b01000001110010101101000011011000;
		#400 //1.9256495e-08 * 7.595659e-10 = 25.351974
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111001101000110011111110111;
		b = 32'b00000111110101000001010010110101;
		correct = 32'b01111110110110011100010000001100;
		#400 //46183.965 * 3.1910385e-34 = 1.447302e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011001000101001001101010010;
		b = 32'b10001010101101111010101101000101;
		correct = 32'b01000111111000101001100101111101;
		#400 //-2.051991e-27 * -1.7686683e-32 = 116018.98
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010100101100000110111000110;
		b = 32'b11100100111010010111000100010001;
		correct = 32'b10101101001001001000110111010111;
		#400 //322238100000.0 * -3.444991e+22 = -9.3538155e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110111110001110101010101110;
		b = 32'b11011110000111110011101011101101;
		correct = 32'b11010000010010000001100010011011;
		#400 //3.8517996e+28 * -2.868436e+18 = -13428223000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110000110010110111011110110;
		b = 32'b00101010111101100000000000100101;
		correct = 32'b11110010100111111010101110010011;
		#400 //-2.7640112e+18 * 4.3698479e-13 = -6.325189e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101011000001001010011000001;
		b = 32'b11000011101010010111101000111010;
		correct = 32'b01111001001010011001111000100010;
		#400 //-1.8657465e+37 * -338.9549 = 5.5044093e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101000101000110011111011010;
		b = 32'b10111010000001100111110110110110;
		correct = 32'b11000010100011010011111000111000;
		#400 //0.036231853 * -0.0005130427 = -70.62152
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100011001101110100000001000;
		b = 32'b11111011110111100011011110100010;
		correct = 32'b00100000000001010000000101001000;
		#400 //-2.5997746e+17 * -2.3076365e+36 = 1.1265962e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101011110011010010100111100;
		b = 32'b01010010101010101010011110110010;
		correct = 32'b10000010001110110011111100110000;
		#400 //-5.0415496e-26 * 366478950000.0 = -1.3756724e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101111111111000010111110110;
		b = 32'b11010000110110110111111010001111;
		correct = 32'b00000100100101010000001010110101;
		#400 //-1.0320503e-25 * -29460036000.0 = 3.5032218e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100011111111101000100110001;
		b = 32'b10001001000111011010000100001001;
		correct = 32'b11111010110011111011101101100100;
		#400 //1023.2686 * -1.8973906e-33 = -5.393031e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010101011110101100101010111;
		b = 32'b11000010011011010001100001100011;
		correct = 32'b00000111101111010101010010010101;
		#400 //-1.6885493e-32 * -59.273815 = 2.8487272e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011101011100011010100010011;
		b = 32'b11000101001011010111100000010000;
		correct = 32'b10001110000000001000101101111000;
		#400 //4.397611e-27 * -2775.504 = -1.584437e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011010101110100001000111100;
		b = 32'b01010010111001101101000101110000;
		correct = 32'b00110111111011101011111000111100;
		#400 //14107196.0 * 495678130000.0 = 2.8460396e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001000011001110010111101010;
		b = 32'b01001010110111011111001101000001;
		correct = 32'b11001101101000101000001101110111;
		#400 //-2478705600000000.0 * 7272864.5 = -340815580.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010111110111011001010011100;
		b = 32'b00111010010001001000100110100010;
		correct = 32'b10011000001000111110110010100011;
		#400 //-1.5884358e-27 * 0.00074973155 = -2.1186727e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101011011101010001110010;
		b = 32'b10101111111000011111100111011110;
		correct = 32'b10010000010001001110110011101110;
		#400 //1.5963752e-38 * -4.1104803e-10 = -3.8836708e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001010101101001101001001100;
		b = 32'b01101001011011011110000010100010;
		correct = 32'b10111111011001101111001110111100;
		#400 //-1.6214923e+25 * 1.7973514e+25 = -0.9021566
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101110010101010000110000111;
		b = 32'b10000000000111011010000011010110;
		correct = 32'b01101101110110101101100111111101;
		#400 //-2.3036474e-11 * -2.720926e-39 = 8.466408e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001000101100101011011010101;
		b = 32'b11010000010101010100110111011100;
		correct = 32'b01000000001101000110111010000101;
		#400 //-40356370000.0 * -14314598000.0 = 2.8192456
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110110100110001111101100000;
		b = 32'b00110110110101110000111001000010;
		correct = 32'b00100111011110110101000101101011;
		#400 //2.235347e-20 * 6.409159e-06 = 3.4877384e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011000000010101010100111111;
		b = 32'b10111110001101100100000010111001;
		correct = 32'b10001100001101011010101010100101;
		#400 //2.4908628e-32 * -0.17798127 = -1.3995084e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100110010000010100010111111;
		b = 32'b11100011101011010100100000011001;
		correct = 32'b10100000100100111101101010011100;
		#400 //1601.2733 * -6.392964e+21 = -2.5047432e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110111011010010100110011;
		b = 32'b11001111101011001011000011111000;
		correct = 32'b11011011101001000100100011111010;
		#400 //5.3590547e+26 * -5794558000.0 = -9.248427e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100100110011000000011100110;
		b = 32'b00101001010001010000101100011011;
		correct = 32'b11110010110001110110111011000111;
		#400 //-3.4565917e+17 * 4.375242e-14 = -7.900344e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100000011001000100101010;
		b = 32'b00010010000001110101001110100000;
		correct = 32'b01101001111101010001101010111100;
		#400 //0.01581629 * 4.2701565e-28 = 3.7039134e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111101101000110101100101010;
		b = 32'b01101011011010111001111001110010;
		correct = 32'b00111011110001000000011001011100;
		#400 //1.7040056e+24 * 2.848458e+26 = 0.0059822034
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111010110001011000110000010;
		b = 32'b01100110000100011010110110011001;
		correct = 32'b00101000101111100110010111000101;
		#400 //3635511800.0 * 1.7198636e+23 = 2.1138373e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111011011110000101101100;
		b = 32'b10011111000011101100100001000110;
		correct = 32'b01011110010101010100000010101111;
		#400 //-0.116152614 * -3.0235332e-20 = 3.8416186e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111001000000101110100011;
		b = 32'b01010001111101011011001101000010;
		correct = 32'b11111111111001000000101110100011;
		#400 //nan * 131909304000.0 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001000010101001001000100001;
		b = 32'b11101100011111110011100000011100;
		correct = 32'b00100100000010101111111010101001;
		#400 //-37197320000.0 * -1.2341642e+27 = 3.0139686e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000010111100101010001111111;
		b = 32'b11100111110011001001110101111000;
		correct = 32'b00111000000010110001010011110100;
		#400 //-6.4082278e+19 * -1.9325351e+24 = 3.3159697e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100100110000110011111000111;
		b = 32'b01011100000111011010011010010110;
		correct = 32'b11010111111101110111101101111101;
		#400 //-9.659839e+31 * 1.7749894e+17 = -544219500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000000000111010001110000101;
		b = 32'b01111000101100101110100110100110;
		correct = 32'b10111110101111000101101101111011;
		#400 //-1.0679804e+34 * 2.9030244e+34 = -0.36788544
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010111000001010001101111001;
		b = 32'b01110001100001101100000111001001;
		correct = 32'b10001000110101010101111111110000;
		#400 //-0.0017138562 * 1.3345684e+30 = -1.2842026e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110100110100111110111110101;
		b = 32'b01001111001000011110011101110001;
		correct = 32'b01101110111101000100011110111011;
		#400 //1.0267756e+38 * 2716299500.0 = 3.780053e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101000101111110011010111110;
		b = 32'b00101101010001101001000111010101;
		correct = 32'b10010111010000111101010110010010;
		#400 //-7.1423665e-36 * 1.1287378e-11 = -6.327746e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100011011101011011101001;
		b = 32'b11010000011100110110101110000001;
		correct = 32'b00001010100101010010101101111010;
		#400 //-2.3465376e-22 * -16335635000.0 = 1.4364532e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111110001000011110011101001;
		b = 32'b01001011010111110111101111111110;
		correct = 32'b10110011111000001100101000010110;
		#400 //-1.5331088 * 14646270.0 = -1.0467572e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010100111111100111000000001;
		b = 32'b10100011001000001111101111011010;
		correct = 32'b11011110111111100001111111111111;
		#400 //79.90235 * -8.726949e-18 = -9.1558175e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111100001010111100000101;
		b = 32'b10010000011000111011011011001100;
		correct = 32'b10111001000001110100101001010011;
		#400 //5.7942486e-33 * -4.4908678e-29 = -0.00012902291
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011001001100110111100011010;
		b = 32'b10000101011101111011110010100100;
		correct = 32'b01101101001010111111110000111101;
		#400 //-3.8750933e-08 * -1.1648532e-35 = 3.3266796e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011010101010010110100101100;
		b = 32'b10001101111010111111111011001111;
		correct = 32'b01100100111001110011111100101111;
		#400 //-4.963401e-08 * -1.4544336e-30 = 3.4126006e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111000010111110101011001111;
		b = 32'b01110100111101011111000001010010;
		correct = 32'b10000001100100011010010000100100;
		#400 //-8.339716e-06 * 1.558822e+32 = -5.350012e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011111010000000111011101;
		b = 32'b01110010110001111001011110000011;
		correct = 32'b00011011001000100100000101111011;
		#400 //1061189440.0 * 7.9066475e+30 = 1.3421484e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011011101101011100010110100;
		b = 32'b11010111000110110100000101000101;
		correct = 32'b10111011110010110110100011011101;
		#400 //1059660760000.0 * -170704630000000.0 = -0.006207569
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110001111100111001111000;
		b = 32'b00101110100100011001100101000101;
		correct = 32'b01111100101011111010011111011000;
		#400 //4.831025e+26 * 6.621063e-11 = 7.29645e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100100011000111101001010;
		b = 32'b01010100011100011010000101011000;
		correct = 32'b01100011100110100011011101010110;
		#400 //2.3618415e+34 * 4151176000000.0 = 5.689572e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001010011101000111001010000;
		b = 32'b01000101010010100011101010000000;
		correct = 32'b01100011100000101011110100110000;
		#400 //1.5606923e+25 * 3235.6562 = 4.823418e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000101010100010011110100100;
		b = 32'b11001000000001110100110101010000;
		correct = 32'b01100000001000001111100011001110;
		#400 //-6.4282683e+24 * -138549.25 = 4.639699e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011011111101100000100101;
		b = 32'b11010101100011001001111101110000;
		correct = 32'b10101011010110100101000010100110;
		#400 //14.99027 * -19327050000000.0 = -7.756108e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101100010111100001011101100;
		b = 32'b00110010000110001010110111000111;
		correct = 32'b00110010111010100101011101010010;
		#400 //2.424474e-16 * 8.887077e-09 = 2.7280894e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010111100110111110010001;
		b = 32'b01110110110011000000010101110101;
		correct = 32'b10101100000010111000110110010000;
		#400 //-4.1032164e+21 * 2.069022e+33 = -1.983167e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101101101011010100010110110;
		b = 32'b01001000010001011111110001110100;
		correct = 32'b00000100111010101110001110000011;
		#400 //1.1195602e-30 * 202737.81 = 5.5222072e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001110100000001111111010001;
		b = 32'b11010000001101011111001111100011;
		correct = 32'b00101001000100100110100101000100;
		#400 //-0.00039696557 * -12210638000.0 = 3.2509816e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100110110001010011000000100;
		b = 32'b00110110101001110110000111001001;
		correct = 32'b11111101101001011010110011001101;
		#400 //-1.373173e+32 * 4.9883715e-06 = -2.7527482e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001110010001100011110100001;
		b = 32'b10001100110010011110001001101100;
		correct = 32'b01010100011111101001100101100111;
		#400 //-1.3605368e-18 * -3.1105226e-31 = 4373981400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011000010101001101111001010;
		b = 32'b01101001111110101101001011000001;
		correct = 32'b01010000100011010111100000100100;
		#400 //7.1969674e+35 * 3.790334e+25 = 18987688000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010000011101001000010110;
		b = 32'b10100100010010101011011000111111;
		correct = 32'b11100111011101001100010101111110;
		#400 //50808920.0 * -4.3956136e-17 = -1.1559005e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011100110110100011110011010;
		b = 32'b11101001011001101001111010110111;
		correct = 32'b10011001101011000101111001010001;
		#400 //310.5594 * -1.7425153e+25 = -1.7822477e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000111011100100011001000001;
		b = 32'b00110110111111101111101101111011;
		correct = 32'b01111001011011110011100110110100;
		#400 //5.899389e+29 * 7.599066e-06 = 7.763308e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011110100110001000101100101;
		b = 32'b11111100111100111000101101101110;
		correct = 32'b10111110010111011101110011000101;
		#400 //2.1918549e+36 * -1.0116449e+37 = -0.21666248
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000001110110010010001010;
		b = 32'b01010111011000011011101011000001;
		correct = 32'b00101100000110011000110010001011;
		#400 //541.5709 * 248192220000000.0 = 2.1820625e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011110011101100110001010;
		b = 32'b00100110100110010101100001110011;
		correct = 32'b11111010010100001000110110111110;
		#400 //-2.8805716e+20 * 1.0640482e-15 = -2.7071815e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010110101011101100100000101;
		b = 32'b11001001000010111110010101011000;
		correct = 32'b11110001010000111010100111011000;
		#400 //5.5518045e+35 * -573013.5 = -9.688785e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010000111111000000101111111;
		b = 32'b00101001010110100110100000110111;
		correct = 32'b01010000001110101111010111100011;
		#400 //0.0006084665 * 4.8496116e-14 = 12546706000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101010100001110001000000110;
		b = 32'b10100000011000100111111001011100;
		correct = 32'b01011100011011000001100001010111;
		#400 //-0.050996803 * -1.9184753e-19 = 2.6581943e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001001111100001000000010101;
		b = 32'b00110101011000001010001010101010;
		correct = 32'b01011011010110001001100110101001;
		#400 //51019600000.0 * 8.368321e-07 = 6.0967546e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100110011000011001101000001;
		b = 32'b01001010101000010101000110110001;
		correct = 32'b10111001101000100000011000111101;
		#400 //-1633.6017 * 5286104.5 = -0.00030903696
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111000110000111010101111000;
		b = 32'b00110000100100001111001000011110;
		correct = 32'b11010110000001101010001001111110;
		#400 //-39029.47 * 1.0546193e-09 = -37008114000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011001110100011110110110110;
		b = 32'b10010111011011001011111100001000;
		correct = 32'b11001011010010010110001100101110;
		#400 //1.0096148e-17 * -7.649683e-25 = -13198126.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000111001101101111011110001;
		b = 32'b01000000001111011011011110011001;
		correct = 32'b11110000000110111100010000010011;
		#400 //-5.7160858e+29 * 2.964331 = -1.9282886e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110100011101000011110010;
		b = 32'b11001110100000111111111110110101;
		correct = 32'b10110001110010110111010110111011;
		#400 //6.556756 * -1107286700.0 = -5.921462e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101101100110011011100111110;
		b = 32'b00000000001001001111011000110001;
		correct = 32'b11001101100110110010100001111010;
		#400 //-1.1045026e-30 * 3.394395e-39 = -325390140.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111101001000100011111101100;
		b = 32'b10011000111010110111010111101100;
		correct = 32'b11000110001100101001110001111100;
		#400 //6.9575686e-20 * -6.0865147e-24 = -11431.121
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000010111110000100000100100;
		b = 32'b01011010000110100111011010111000;
		correct = 32'b10110101101110001101001000001110;
		#400 //-14967411000.0 * 1.086942e+16 = -1.3770202e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111001101001110011010011010;
		b = 32'b10100111111111000111010010100111;
		correct = 32'b10101110101101110111000011000110;
		#400 //5.8452197e-25 * -7.0070525e-15 = -8.341909e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101111001110011100100110101;
		b = 32'b00011000001011011110001100011011;
		correct = 32'b01111101001010100011010010110001;
		#400 //31779110000000.0 * 2.2474385e-24 = 1.4140147e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001000110111011110100101110;
		b = 32'b00100100011100011110111001000010;
		correct = 32'b01110100001001001100101110111110;
		#400 //2739789200000000.0 * 5.2460357e-17 = 5.2225895e+31
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