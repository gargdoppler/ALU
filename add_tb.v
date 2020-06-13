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

    op = 3'b000;
		/* Display the operation */
		$display ("Opcode: 000, Operation: ADD");
		/* Test Cases!*/
		a = 32'b11001101101110011101000111101010;
		b = 32'b11010001101001010011010101110111;
		correct = 32'b11010001101001011110111101001001;
		#400 //-389692740.0 * -88695824000.0 = -89085520000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000011001010001010011101101;
		b = 32'b10110101100110011100011000000001;
		correct = 32'b11011000011001010001010011101101;
		#400 //-1007512150000000.0 * -1.1457015e-06 = -1007512150000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000011001100111100001100110;
		b = 32'b11010010000110111100011110110111;
		correct = 32'b11111000011001100111100001100110;
		#400 //-1.8697973e+34 * -167267650000.0 = -1.8697973e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100010001010111011001101110;
		b = 32'b10110110011010100100110101101110;
		correct = 32'b10110110011010100100110101111010;
		#400 //-2.8061125e-12 * -3.4913787e-06 = -3.4913814e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111110111111100000010010010;
		b = 32'b00011001011110001011111000100000;
		correct = 32'b00011001011110001011111000111100;
		#400 //2.2063673e-29 * 1.2859695e-23 = 1.2859717e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010010011001001010011110100;
		b = 32'b10001111010111100001010111010110;
		correct = 32'b10110010010011001001010011110100;
		#400 //-1.1908231e-08 * -1.09496505e-29 = -1.1908231e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100011101111011111001111110;
		b = 32'b10100000101011111111111110101110;
		correct = 32'b10100000101011111111111110101110;
		#400 //-1.9085512e-31 * -2.9815348e-19 = -2.9815348e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101110111001001111111011001;
		b = 32'b11111110111010100001010101111100;
		correct = 32'b11111110111010100001010101111100;
		#400 //8.534993e+27 * -1.5557545e+38 = -1.5557545e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111011010111100000011100010;
		b = 32'b00101010110101000111100111100001;
		correct = 32'b00101111011011000010101100011111;
		#400 //2.1441651e-10 * 3.7743335e-13 = 2.1479395e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001001000000011111101011011;
		b = 32'b01000001101010011010011010110111;
		correct = 32'b11010001001000000011111101011011;
		#400 //-43016106000.0 * 21.206404 = -43016106000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001111111101001011101110111;
		b = 32'b10010000100110000001010110010111;
		correct = 32'b10100001111111101001011101110111;
		#400 //-1.7251802e-18 * -5.9986693e-29 = -1.7251802e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000110101001010101000111010;
		b = 32'b00001111110110111010001100001011;
		correct = 32'b11110000110101001010101000111010;
		#400 //-5.265329e+29 * 2.1657869e-29 = -5.265329e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011001010101111111110010100;
		b = 32'b10111111111010010100100111101010;
		correct = 32'b10111111111010010100100111101010;
		#400 //-5.02519e-37 * -1.8225682 = -1.8225682
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110011100100100111110100;
		b = 32'b11011001010110000111101011011110;
		correct = 32'b11100110110011100100100111110100;
		#400 //-4.8708584e+23 * -3808355600000000.0 = -4.8708584e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001000110111000110001011011;
		b = 32'b10100010110000010010010000101011;
		correct = 32'b10100010110000010010010000101011;
		#400 //2.8569704e-38 * -5.235105e-18 = -5.235105e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101110001101101110011100010;
		b = 32'b11100110000111001011001001001000;
		correct = 32'b11100110000111001011001001001000;
		#400 //-1.4816435e-06 * -1.8499447e+23 = -1.8499447e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100010000001001100000011;
		b = 32'b00111101011001011101001010101011;
		correct = 32'b11110110100010000001001100000011;
		#400 //-1.379957e+33 * 0.05610911 = -1.379957e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010101000001011000111110000;
		b = 32'b11010011101111100111001111010001;
		correct = 32'b11010011101111100111001111010001;
		#400 //-1.0141285e-27 * -1635973700000.0 = -1635973700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000101010010001111001111111;
		b = 32'b10100000011000000111011111000010;
		correct = 32'b01000000101010010001111001111111;
		#400 //5.2849727 * -1.9013163e-19 = 5.2849727
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010101010111010000100010000;
		b = 32'b11001000100110101010110100100001;
		correct = 32'b11111010101010111010000100010000;
		#400 //-4.4557475e+35 * -316777.03 = -4.4557475e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001110001111000010101111111;
		b = 32'b11011001010001110100010110100000;
		correct = 32'b01100001110001111000010100011011;
		#400 //4.600652e+20 * -3505629600000000.0 = 4.6006167e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011010101110010010011000;
		b = 32'b01001100011101010111010010011000;
		correct = 32'b01001100011101010111010010011000;
		#400 //1.9896206e-19 * 64344670.0 = 64344670.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111111001011000001001011001;
		b = 32'b01101111101100101000011101101011;
		correct = 32'b11111111111001011000001001011001;
		#400 //nan * 1.1050408e+29 = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100100001011011011101001;
		b = 32'b11000000110001100100000000001000;
		correct = 32'b11000000110001100100000000001000;
		#400 //-2.5706458e-13 * -6.1953163 = -6.1953163
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101011001111100101010011101;
		b = 32'b11011110010101111010000110011000;
		correct = 32'b11011110010101111010000110011000;
		#400 //-8.6349047e-07 * -3.8844668e+18 = -3.8844668e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001011011011100011110001111;
		b = 32'b00101011010100110000011001111111;
		correct = 32'b00111001011011011100011110001111;
		#400 //0.00022676423 * 7.4971274e-13 = 0.00022676423
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100001101011001111010111100;
		b = 32'b10010101010100110111110110011100;
		correct = 32'b11101100001101011001111010111100;
		#400 //-8.782607e+26 * -4.27102e-26 = -8.782607e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110110101110110111111101;
		b = 32'b11100101101100010110110100000110;
		correct = 32'b11100101101100010110110100000110;
		#400 //-1.0194706e-07 * -1.0473375e+23 = -1.0473375e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110001010010000110000000100;
		b = 32'b10000001000111101000011100001001;
		correct = 32'b01100110001010010000110000000100;
		#400 //1.995754e+23 * -2.91169e-38 = 1.995754e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000100011100111000110111011;
		b = 32'b01101100100100010100001000000111;
		correct = 32'b11111000100011100111000110111010;
		#400 //-2.3112903e+34 * 1.4048484e+27 = -2.31129e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010111111001100000001100;
		b = 32'b00010100110100011010010011101011;
		correct = 32'b01100000010111111001100000001100;
		#400 //6.4446563e+19 * 2.1168656e-26 = 6.4446563e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000111101101010001000011101;
		b = 32'b10000010100011011111000101110011;
		correct = 32'b10011000111101101010001000011101;
		#400 //-6.3753202e-24 * -2.0856673e-37 = -6.3753202e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111111101010001100101101010;
		b = 32'b10110011010101110000101000010100;
		correct = 32'b00110111111101001010110111100101;
		#400 //2.921811e-05 * -5.0067754e-08 = 2.9168043e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011101011110100000100101001;
		b = 32'b11101010000010000111000110001010;
		correct = 32'b01110011101011110100000100011000;
		#400 //2.777019e+31 * -4.123752e+25 = 2.7770148e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001110101010010001100111010;
		b = 32'b00010100111111100010110101010111;
		correct = 32'b00010100111111100010110101010100;
		#400 //-5.131101e-33 * 2.5665329e-26 = 2.5665325e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101110000110101111111001010;
		b = 32'b00001011010011011101101001111101;
		correct = 32'b10111101110000110101111111001010;
		#400 //-0.09539755 * 3.9645936e-32 = -0.09539755
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001000100101100010110101111;
		b = 32'b01010001011111100111010010000110;
		correct = 32'b01110001000100101100010110101111;
		#400 //7.2678074e+29 * 68304790000.0 = 7.2678074e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111000001101101111001110001;
		b = 32'b11110100010101100000001101100100;
		correct = 32'b01110111000000111000011001100011;
		#400 //2.7354665e+33 * -6.7823505e+31 = 2.667643e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001100001000111010111101011;
		b = 32'b00011000111101000100100101100111;
		correct = 32'b11110001100001000111010111101011;
		#400 //-1.3118264e+30 * 6.314664e-24 = -1.3118264e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000101011110111011000010011;
		b = 32'b00001011111010001110010011001111;
		correct = 32'b00001011111001100010011011110111;
		#400 //-1.05601885e-33 * 8.970742e-32 = 8.8651405e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000011111101001010010110001;
		b = 32'b01110000010110010111011010111001;
		correct = 32'b01110000010110010111011010111001;
		#400 //2.1563835e-19 * 2.692071e+29 = 2.692071e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111010111000000000101100101;
		b = 32'b10111010110101000000000001011100;
		correct = 32'b10111010110101000000000001011100;
		#400 //1.0847106e-29 * -0.0016174424 = -0.0016174424
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000010101001110100000000001;
		b = 32'b01010011011110000100010101100111;
		correct = 32'b01111000010101001110100000000001;
		#400 //1.7273008e+34 * 1066316300000.0 = 1.7273008e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001010001110111111011101111;
		b = 32'b10100000111010000010001000100111;
		correct = 32'b00101001010001110111111001111011;
		#400 //4.4296974e-14 * -3.932493e-19 = 4.429658e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111001010101110010011001;
		b = 32'b10110010111010100000111111000000;
		correct = 32'b10110010111010100000111111000000;
		#400 //2.4284616e-20 * -2.7248348e-08 = -2.7248348e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000000111111101001001100111;
		b = 32'b00000100110010111101011111010101;
		correct = 32'b10001000000111100011101010110111;
		#400 //-4.809465e-34 * 4.792328e-36 = -4.7615414e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100111100001000001001100010;
		b = 32'b01011010111101100000111101101100;
		correct = 32'b01101100111100001000001001100010;
		#400 //2.3260633e+27 * 3.46299e+16 = 2.3260633e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110001000011100001001011101;
		b = 32'b10110110110011100110000001110010;
		correct = 32'b10110110110011100110000001110010;
		#400 //8.5634624e-21 * -6.150506e-06 = -6.150506e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010110110100011001011100101;
		b = 32'b00011010010001111011000001000001;
		correct = 32'b00011010010001111010111010001101;
		#400 //-1.3770281e-27 * 4.1294612e-23 = 4.1293236e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111010010010011011001110110;
		b = 32'b10110010010110010101100010101100;
		correct = 32'b10110010010110010101100010101100;
		#400 //1.5137564e-34 * -1.2651224e-08 = -1.2651224e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100011010111111001111110101;
		b = 32'b10101111011011001000010101010010;
		correct = 32'b01000100011010111111001111110101;
		#400 //943.8118 * -2.151144e-10 = 943.8118
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100000101111001100010111;
		b = 32'b01111111000111011011111001000000;
		correct = 32'b01111111000111011011111001000000;
		#400 //-1.5610405e-05 * 2.0967663e+38 = 2.0967663e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010101010010100001110000111;
		b = 32'b11101001001001101010100100010010;
		correct = 32'b01111010101010010100001110000111;
		#400 //4.394339e+35 * -1.2592506e+25 = 4.394339e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001001110001001000010111000;
		b = 32'b11010100100011111111010010010001;
		correct = 32'b11010100100011111111010010010001;
		#400 //-11.535332 * -4946267700000.0 = -4946267700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000101001110110000001100000;
		b = 32'b00101001000000100010111000111111;
		correct = 32'b11000000101001110110000001100000;
		#400 //-5.2305145 * 2.890591e-14 = -5.2305145
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100101110010001100100010101;
		b = 32'b00111001000101011001110101001010;
		correct = 32'b01111100101110010001100100010101;
		#400 //7.688669e+36 * 0.00014268342 = 7.688669e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000111000000101010100010110;
		b = 32'b00011001101101001000011110110010;
		correct = 32'b00011001101101001000011110110010;
		#400 //-2.0601674e-38 * 1.866637e-23 = 1.866637e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111001110001010001001101010;
		b = 32'b01001101010001010110111100100000;
		correct = 32'b11101111001110001010001001101010;
		#400 //-5.714159e+28 * 207024640.0 = -5.714159e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111111010100110011001110;
		b = 32'b11000001011111111010000011000010;
		correct = 32'b11000001011111111010000011001010;
		#400 //-7.548929e-06 * -15.9767475 = -15.976755
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011110101011111001111110011;
		b = 32'b10111111100011101110011110110111;
		correct = 32'b01101011110101011111001111110011;
		#400 //5.1730643e+26 * -1.1164464 = 5.1730643e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000010101001111011110010;
		b = 32'b00010011111001011101000100101111;
		correct = 32'b00010011111001011101000100101111;
		#400 //-1.0184254e-37 * 5.8014e-27 = 5.8014e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001101001011000111100010000;
		b = 32'b00110010100010111100100111011010;
		correct = 32'b11011001101001011000111100010000;
		#400 //-5825084000000000.0 * 1.6273521e-08 = -5825084000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001100101111011101110000101;
		b = 32'b10000110000101000010011111100111;
		correct = 32'b11001001100101111011101110000101;
		#400 //-1242992.6 * -2.7865022e-35 = -1242992.6
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001111000001111000001100;
		b = 32'b01001101011000100011110100000110;
		correct = 32'b01001101011000100011110100000110;
		#400 //-1.4152378e-34 * 237228130.0 = 237228130.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001100001100110111110100;
		b = 32'b01110100000001101001110110000000;
		correct = 32'b01111001001100001110111110011011;
		#400 //5.737634e+34 * 4.266127e+31 = 5.7419e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100011110111111110010100001;
		b = 32'b01010011000110011001100010111110;
		correct = 32'b01010011000110011001100010111110;
		#400 //-3.5809483e-12 * 659692600000.0 = 659692600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100111110010110100001011010;
		b = 32'b01001100010011011001110101011111;
		correct = 32'b01001100010011011001110101011111;
		#400 //2.5183734e-26 * 53900668.0 = 53900668.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011010101100001011001010100;
		b = 32'b11010100001110010100000111101111;
		correct = 32'b11110011010101100001011001010100;
		#400 //-1.6961737e+31 * -3182700500000.0 = -1.6961737e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111110101111000010000100011;
		b = 32'b01100001100011000010101011111111;
		correct = 32'b01100001100011000010101011110010;
		#400 //-473925050000000.0 * 3.232053e+20 = 3.2320484e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001001011100010111001100;
		b = 32'b10010110101100100110000001111011;
		correct = 32'b10111001001001011100010111001100;
		#400 //-0.00015809311 * -2.8818339e-25 = -0.00015809311
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000101110101011001011001101;
		b = 32'b10111000111010110001000000001111;
		correct = 32'b11011000101110101011001011001101;
		#400 //-1642216900000000.0 * -0.000112086644 = -1642216900000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000001011000011101011111111;
		b = 32'b10101010111111100010001010010110;
		correct = 32'b10101010111111100010001010010110;
		#400 //2.2260264e-24 * -4.5143463e-13 = -4.5143463e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110100000111111111000010001;
		b = 32'b11010010111000101001001001010001;
		correct = 32'b11010010111000101001001001010001;
		#400 //1.3975244e-20 * -486558700000.0 = -486558700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100111001111011100110000000;
		b = 32'b10011101011110110110111011100011;
		correct = 32'b00100100111001111011011110001001;
		#400 //1.0049453e-16 * -3.32769e-21 = 1.004912e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000010011101101101011100010;
		b = 32'b10100100010000100000111010000110;
		correct = 32'b10100100010000101101110101100001;
		#400 //-1.7521301e-19 * -4.2079346e-17 = -4.225456e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010100001001111110111101;
		b = 32'b00110111111111000110000001110011;
		correct = 32'b01010110010100001001111110111101;
		#400 //57346122000000.0 * 3.0085654e-05 = 57346122000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101101100011000110001010110;
		b = 32'b01111111110000100111111111010010;
		correct = 32'b01111111110000100111111111010010;
		#400 //-0.08669345 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100001011111101101110011110;
		b = 32'b11111011010000111101010010011100;
		correct = 32'b11111011010000111101010010011100;
		#400 //46100090.0 * -1.0168101e+36 = -1.0168101e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010101011011101011010011;
		b = 32'b01001010100100100100101000110110;
		correct = 32'b01001010100100100100101000110110;
		#400 //-3.1101777e-09 * 4793627.0 = 4793627.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011010110000010100111000000;
		b = 32'b10101110011000011101100110110011;
		correct = 32'b01110011010110000010100111000000;
		#400 //1.7126204e+31 * -5.1352433e-11 = 1.7126204e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100000000000010001111011001;
		b = 32'b10101011100011001100001000110010;
		correct = 32'b10110100000000000010010000011111;
		#400 //-1.193397e-07 * -1.0001498e-12 = -1.193407e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001000101100100000100001111;
		b = 32'b00100111111110001011111100000000;
		correct = 32'b01010001000101100100000100001111;
		#400 //40333537000.0 * 6.904091e-15 = 40333537000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100000111110111101110101011;
		b = 32'b10110111111111011011101101000001;
		correct = 32'b10110111111111011011101101000001;
		#400 //-8.051838e-27 * -3.0247147e-05 = -3.0247147e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101011011011001100000011010;
		b = 32'b10111111110010111111101110101110;
		correct = 32'b01011101011011011001100000011010;
		#400 //1.0700289e+18 * -1.5936182 = 1.0700289e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111001111101010001010110011;
		b = 32'b11001001001010000101001110111101;
		correct = 32'b11010111001111101010001010110011;
		#400 //-209606000000000.0 * -689467.8 = -209606000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100100000001111001101110;
		b = 32'b00100011010011000000111101111111;
		correct = 32'b01000001100100000001111001101110;
		#400 //18.014858 * 1.10621436e-17 = 18.014858
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100001100100100101001010;
		b = 32'b11000101000000000101101111111001;
		correct = 32'b11000101000000000101101111111001;
		#400 //-8.678048e-25 * -2053.7483 = -2053.7483
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100101000110000000110101000;
		b = 32'b10010001100000010101010110010110;
		correct = 32'b01100100101000110000000110101000;
		#400 //2.405551e+22 * -2.0405358e-28 = 2.405551e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101101110010101101111100000;
		b = 32'b10010011010111101100000011110111;
		correct = 32'b10010011010111101010100111001100;
		#400 //1.1423623e-30 * -2.8115478e-27 = -2.8104056e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011111000010101100000010;
		b = 32'b00000111011000011011001100011100;
		correct = 32'b10010111011111000010101100000010;
		#400 //-8.1479875e-25 * 1.6979754e-34 = -8.1479875e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110001011010010001111100000;
		b = 32'b11110100001101100101101001100110;
		correct = 32'b11110100001101100101101001100110;
		#400 //-2.044078e+23 * -5.779001e+31 = -5.779001e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101010111100001110001100001;
		b = 32'b01101001010101110110100110010000;
		correct = 32'b01101001010101110110100110001111;
		#400 //-1.00029836e+18 * 1.6276097e+25 = 1.6276096e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111101110100101100010100100;
		b = 32'b00011111101111001101011110101100;
		correct = 32'b10110111101110100101100010100100;
		#400 //-2.2214204e-05 * 7.9977896e-20 = -2.2214204e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011010000000001000000111001;
		b = 32'b00000100011101011000111011100111;
		correct = 32'b10010011010000000001000000111001;
		#400 //-2.4241805e-27 * 2.886523e-36 = -2.4241805e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001000001101111011110110000;
		b = 32'b00100101001110110010111000011100;
		correct = 32'b00100101001110110010111000011100;
		#400 //1.0647061e-28 * 1.6235287e-16 = 1.6235287e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010101100000110111111110001;
		b = 32'b01010110011101011001110011111101;
		correct = 32'b01010110011101011001110011111101;
		#400 //-1.6990291e-32 * 67513650000000.0 = 67513650000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101100100101011110100101111;
		b = 32'b11101111101000000111011001000010;
		correct = 32'b11101111101000000111011001000010;
		#400 //-5.926741e-26 * -9.932113e+28 = -9.932113e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111111110011001010111001000;
		b = 32'b10110000101010001010001001011000;
		correct = 32'b00111111111110011001010111001000;
		#400 //1.9498835 * -1.226975e-09 = 1.9498835
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110010001001001110000101011;
		b = 32'b11110111001100110100100101001010;
		correct = 32'b11110111001100110100100101001010;
		#400 //2.4234057e-30 * -3.636358e+33 = -3.636358e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011111000111110001010010011;
		b = 32'b10011100000011111001011000001001;
		correct = 32'b00111011111000111110001010010011;
		#400 //0.0069545 * -4.7508647e-22 = 0.0069545
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001101110011101100100110111;
		b = 32'b10001010010100110001111110101111;
		correct = 32'b11010001101110011101100100110111;
		#400 //-99776650000.0 * -1.01652395e-32 = -99776650000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110010001101011011110010100;
		b = 32'b10101101101000001110001111100111;
		correct = 32'b01001110010001101011011110010100;
		#400 //833479940.0 * -1.8291103e-11 = 833479940.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111100111111100000101011110;
		b = 32'b11111010101010110001011100110101;
		correct = 32'b11111010101010110001011100110101;
		#400 //-1.5088465e+24 * -4.4417673e+35 = -4.4417673e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111100011000110001110111101;
		b = 32'b00010101101000010011110110111101;
		correct = 32'b00010101101000010100011010000011;
		#400 //1.3843484e-29 * 6.512479e-26 = 6.513863e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110110001010111100101111;
		b = 32'b11110111000101111000010000101101;
		correct = 32'b11110111000101111000010000101101;
		#400 //6.7713847 * -3.073116e+33 = -3.073116e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110000110010010111010000110;
		b = 32'b01001011010010110111100011111100;
		correct = 32'b01001011010010110111100011111100;
		#400 //2.8810282e-35 * 13334780.0 = 13334780.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101101101100111011000001;
		b = 32'b00101100111101011000011001010111;
		correct = 32'b10111100101101101100111011000001;
		#400 //-0.022315385 * 6.9782335e-12 = -0.022315385
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101100011011000110111011100;
		b = 32'b10100001100110101111001001010111;
		correct = 32'b10100001100110110111111111100101;
		#400 //-3.746907e-21 * -1.0499593e-18 = -1.0537062e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110001100110101011101011110;
		b = 32'b11100110010010100000000110010000;
		correct = 32'b11100110010010100000000011011101;
		#400 //3.2307253e+18 * -2.3848671e+23 = -2.3848349e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100010100010001010110010000;
		b = 32'b11011000000111100011100010000000;
		correct = 32'b11011000000111100011100010000000;
		#400 //-2.4577733e-36 * -695862000000000.0 = -695862000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011000110110001000100111;
		b = 32'b11011110001101011001000001001011;
		correct = 32'b11011110001101011001000001001011;
		#400 //-61037770000.0 * -3.2707598e+18 = -3.2707598e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100011011011010001010101101;
		b = 32'b11010001000110011110011001100110;
		correct = 32'b11100100011011011010001010101101;
		#400 //-1.7534401e+22 * -41312215000.0 = -1.7534401e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101001101101101010010111111;
		b = 32'b00000101001111100000001000011001;
		correct = 32'b11001101001101101101010010111111;
		#400 //-191712240.0 * 8.934142e-36 = -191712240.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000100110110011101001100100;
		b = 32'b00100010111111000011001100111011;
		correct = 32'b00100010111100100111111110010101;
		#400 //-2.629666e-19 * 6.835898e-18 = 6.5729314e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101010101101111010000111100;
		b = 32'b11000001001001111111011010101101;
		correct = 32'b11111101010101101111010000111100;
		#400 //-1.7857683e+37 * -10.497724 = -1.7857683e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000011010010100101011101101;
		b = 32'b11010100111001000001111011101100;
		correct = 32'b11010100111000111010101001000111;
		#400 //15656007000.0 * -7838170600000.0 = -7822515000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111100100101100011000111;
		b = 32'b00010101110110001101111101010111;
		correct = 32'b01110100111100100101100011000111;
		#400 //1.5360552e+32 * 8.7594073e-26 = 1.5360552e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001100100010011110110101;
		b = 32'b10101010111000001110111101011100;
		correct = 32'b10101010111000001110111101011100;
		#400 //5.894658e-22 * -3.9956482e-13 = -3.9956482e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010110100100010100110011010;
		b = 32'b11010001011001001100001011000100;
		correct = 32'b11010001011001001100001011000100;
		#400 //-8.6921175e-23 * -61407510000.0 = -61407510000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101011100111001111101100000;
		b = 32'b10100110100110001001111110111110;
		correct = 32'b01100101011100111001111101100000;
		#400 //7.190469e+22 * -1.0590417e-15 = 7.190469e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110011101001001011000100;
		b = 32'b11100101011110000011010001000110;
		correct = 32'b11100101011110000011010001000110;
		#400 //113564874000000.0 * -7.3256948e+22 = -7.3256948e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010000100111111100110111101;
		b = 32'b10110001011101100101100101010110;
		correct = 32'b11100010000100111111100110111101;
		#400 //-6.824167e+20 * -3.5848493e-09 = -6.824167e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111010100110010010011011001;
		b = 32'b00010010000100111010110011000101;
		correct = 32'b01101111010100110010010011011001;
		#400 //6.5345883e+28 * 4.6597976e-28 = 6.5345883e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111000111011010001101010;
		b = 32'b11001111010000010001011100000101;
		correct = 32'b11001111010000010001011100000101;
		#400 //-8.5653004e-35 * -3239511300.0 = -3239511300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001001111001010111011101110;
		b = 32'b11010001011110001101111100000000;
		correct = 32'b11010001011110001101111100000000;
		#400 //-2.7457037e-09 * -66805826000.0 = -66805826000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101101011110001011110111101;
		b = 32'b01011010101000111110101000000110;
		correct = 32'b11100101101011110001011110111010;
		#400 //-1.033565e+23 * 2.3068866e+16 = -1.0335648e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000100101110111110011010011;
		b = 32'b10110010110110011011000111100111;
		correct = 32'b11100000100101110111110011010011;
		#400 //-8.732665e+19 * -2.5343025e-08 = -8.732665e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000101000110110000101010010;
		b = 32'b00111100100010111101100010110101;
		correct = 32'b01001000101000110110000101010011;
		#400 //334602.56 * 0.017071107 = 334602.6
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101001010010001110100111;
		b = 32'b11101101110101101010101000000101;
		correct = 32'b11101101110101101010101000000101;
		#400 //9.296514e+16 * -8.3044166e+27 = -8.3044166e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010001010010110101010000;
		b = 32'b11010010111011101011101100111101;
		correct = 32'b11100001010001010010110101010000;
		#400 //-2.273296e+20 * -512671780000.0 = -2.273296e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001010111011111000001110;
		b = 32'b01010101010001101101100001111000;
		correct = 32'b01010101010001101101010111001001;
		#400 //-720339840.0 * 13664564000000.0 = 13663844000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000100101000010100010000111;
		b = 32'b01011111010010011010100001010111;
		correct = 32'b01011111010010011010100001010111;
		#400 //-3.8298025e-24 * 1.453096e+19 = 1.453096e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101000101011111100001010110;
		b = 32'b11001100011010111010000110010100;
		correct = 32'b11001100011010111010000110010100;
		#400 //3.0286213e-26 * -61769296.0 = -61769296.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111010011011001101100010;
		b = 32'b01111111110110100100110001011101;
		correct = 32'b01111111110110100100110001011101;
		#400 //2.4744026e-20 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000101001100100100001110011;
		b = 32'b11100010101011110001001110000101;
		correct = 32'b01110000101001100100100001110011;
		#400 //4.1169678e+29 * -1.6147934e+21 = 4.1169678e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101011110111110000001101001;
		b = 32'b10001100111111010111110100001001;
		correct = 32'b11010101011110111110000001101001;
		#400 //-17308828000000.0 * -3.9056075e-31 = -17308828000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000100110100011011101111000;
		b = 32'b10100011110100001101100001111101;
		correct = 32'b10100011110100001101100001111101;
		#400 //-1.4162565e-38 * -2.2643092e-17 = -2.2643092e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011101011010011011100001100;
		b = 32'b10000110110011001000101101100010;
		correct = 32'b10100011101011010011011100001100;
		#400 //-1.8780011e-17 * -7.6941076e-35 = -1.8780011e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101101111000110000011000010;
		b = 32'b11111010100010011001010000000111;
		correct = 32'b11111010100010011001010000000111;
		#400 //-395057200.0 * -3.571735e+35 = -3.571735e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000101110010010111001001011;
		b = 32'b11111110001010010000101010011101;
		correct = 32'b11111110001010010000101010011101;
		#400 //-1.7006174e-38 * -5.617366e+37 = -5.617366e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010111100010110010100110010;
		b = 32'b10000010011101000100001111110111;
		correct = 32'b10111010111100010110010100110010;
		#400 //-0.0018416999 * -1.7945794e-37 = -0.0018416999
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111010001100111011000110101;
		b = 32'b01100000001000110011000100011111;
		correct = 32'b01111111010001100111011000110101;
		#400 //2.638009e+38 * 4.7036857e+19 = 2.638009e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011000010110001101101111;
		b = 32'b10010101010001111111000100011111;
		correct = 32'b10110010011000010110001101101111;
		#400 //-1.3119332e-08 * -4.037794e-26 = -1.3119332e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101000110100110110000100000;
		b = 32'b01010000101101111111100111010100;
		correct = 32'b01111101000110100110110000100000;
		#400 //1.2828908e+37 * 24692826000.0 = 1.2828908e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000110000111001011011101011;
		b = 32'b01000000010000101111101001101111;
		correct = 32'b01000000010000101111101111110110;
		#400 //9.326435e-05 * 3.0465353 = 3.0466285
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111010011100000110011101;
		b = 32'b01100010010101011011111001110110;
		correct = 32'b01100101111010110110110100011010;
		#400 //1.3798537e+23 * 9.8572016e+20 = 1.3897109e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100000001110001010010101110;
		b = 32'b01011000111000101111011110010110;
		correct = 32'b01011000111000101111011110010110;
		#400 //4.469448e-22 * 1996424000000000.0 = 1996424000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111111011111000011011001110;
		b = 32'b10110000100111101100111000010101;
		correct = 32'b10110000100111101100111000010101;
		#400 //-1.5479042e-24 * -1.1554585e-09 = -1.1554585e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110101011110110011111000;
		b = 32'b01111101011110001011101111010010;
		correct = 32'b01111101011110001011101111010010;
		#400 //9.728213e-11 * 2.0663985e+37 = 2.0663985e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001001100001000101100110100;
		b = 32'b10111011010101100100010111111111;
		correct = 32'b01000001001100000111110111010000;
		#400 //11.033985 * -0.003269553 = 11.030716
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000100111110110001011100010;
		b = 32'b11111101110011101011000011011000;
		correct = 32'b11111101110011101011000011011000;
		#400 //-1401976400000000.0 * -3.43424e+37 = -3.43424e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000011001110111010101010101;
		b = 32'b01110101011111001011100000011110;
		correct = 32'b01110101011111001011100000011110;
		#400 //-3.6165364 * 3.2035966e+32 = 3.2035966e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000000100100001111101011110;
		b = 32'b00100110001000100111110000101011;
		correct = 32'b11010000000100100001111101011110;
		#400 //-9806117000.0 * 5.637332e-16 = -9806117000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010010010100101101100101110;
		b = 32'b01010001001011011000101111000000;
		correct = 32'b01011010010010100101101101011001;
		#400 //1.423955e+16 * 46585872000.0 = 1.4239596e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001111010100101000001111;
		b = 32'b11000000100010010101100011010100;
		correct = 32'b01101010001111010100101000001111;
		#400 //5.720918e+25 * -4.2920933 = 5.720918e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001111000010101001010101110;
		b = 32'b10110011001011000000110011010010;
		correct = 32'b10110011001011000000110011010010;
		#400 //-8.2770586e-38 * -4.005853e-08 = -4.005853e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100100010111101001001001000;
		b = 32'b00000010101000100110011101000011;
		correct = 32'b11100100100010111101001001001000;
		#400 //-2.0633998e+22 * 2.386303e-37 = -2.0633998e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010000010101100100101101010;
		b = 32'b00010001111100001000111010000000;
		correct = 32'b00010001111100001000111010000000;
		#400 //-1.0196442e-37 * 3.7953146e-28 = 3.7953146e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100010110010111111010110011;
		b = 32'b10010010010000100011000001100101;
		correct = 32'b11010100010110010111111010110011;
		#400 //-3736534300000.0 * -6.1275257e-28 = -3736534300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011111111101100001110000;
		b = 32'b11110101111110111110101001000100;
		correct = 32'b11110101111110111110101001000110;
		#400 //-7.7324545e+25 * -6.3868066e+32 = -6.3868073e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111100010100000011010110101;
		b = 32'b10101001011101001000111000111001;
		correct = 32'b01100111100010100000011010110101;
		#400 //1.3036206e+24 * -5.4302242e-14 = 1.3036206e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111011110001011111000111111;
		b = 32'b10010101110101101110001010011100;
		correct = 32'b11100111011110001011111000111111;
		#400 //-1.1746563e+24 * -8.679144e-26 = -1.1746563e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110110011000100100000110;
		b = 32'b10101101101000110100111101111111;
		correct = 32'b10101101101000110100111101111111;
		#400 //-8.5802526e-29 * -1.8566258e-11 = -1.8566258e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101001001011000101010100001;
		b = 32'b00111001011100010110111100100011;
		correct = 32'b00111001011100010110111100100011;
		#400 //2.1909238e-21 * 0.00023024953 = 0.00023024953
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100000111010001000111001001;
		b = 32'b01010000010100001001010001111001;
		correct = 32'b11011100000111010001000111001000;
		#400 //-1.768445e+17 * 13997565000.0 = -1.7684449e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001100110110111001010111;
		b = 32'b10110011100011011111011100100011;
		correct = 32'b11001110001100110110111001010111;
		#400 //-752588200.0 * -6.610778e-08 = -752588200.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001101101010101111010000;
		b = 32'b00011011110001111000101001110011;
		correct = 32'b01000011001101101010101111010000;
		#400 //182.67114 * 3.301126e-22 = 182.67114
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010010001001010110001111001;
		b = 32'b01010011111000001000000010010011;
		correct = 32'b01010011111000001000000001111010;
		#400 //-3222302.2 * 1928459600000.0 = 1928456300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101010011111110111011110001;
		b = 32'b00000111101010010110001100111110;
		correct = 32'b01111101010011111110111011110001;
		#400 //1.7274428e+37 * 2.5486623e-34 = 1.7274428e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001001010000011110000111010;
		b = 32'b11100011010011110100101100000000;
		correct = 32'b11100011010011110100101100000000;
		#400 //-3.0899937e-38 * -3.8238803e+21 = -3.8238803e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111101011011100101001110000;
		b = 32'b11101101101010011110010011000110;
		correct = 32'b11101101101010011110010011000110;
		#400 //7.3603255e-20 * -6.572442e+27 = -6.572442e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100111100110010000000010;
		b = 32'b11100011110110111111100101100000;
		correct = 32'b11100011110110111111100101100000;
		#400 //-1.0235756e-24 * -8.1156126e+21 = -8.1156126e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101111001111011011111100100;
		b = 32'b10101000110010101001000111011001;
		correct = 32'b11100101111001111011011111100100;
		#400 //-1.36782355e+23 * -2.2489756e-14 = -1.36782355e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010010011101001111001010011;
		b = 32'b10010101111000111000001110001100;
		correct = 32'b10010101111000011110011001001111;
		#400 //6.519729e-28 * -9.1892114e-26 = -9.124014e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111100100011000010010110100;
		b = 32'b10000100000111010110110011001011;
		correct = 32'b10001111100100011000010010110101;
		#400 //-1.434922e-29 * -1.8505217e-36 = -1.4349221e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001001111011000110101111010;
		b = 32'b10110001111010011011000001111110;
		correct = 32'b11011001001111011000110101111010;
		#400 //-3334645400000000.0 * -6.8012573e-09 = -3334645400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000110110101010100000111010;
		b = 32'b11001110111001010001101001011101;
		correct = 32'b11111000110110101010100000111010;
		#400 //-3.5479149e+34 * -1921855100.0 = -3.5479149e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011100011101001011100010000;
		b = 32'b01100100011011010111000110010010;
		correct = 32'b01100100011011010111000110010010;
		#400 //-3.59948e-27 * 1.7520248e+22 = 1.7520248e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001111100101100100000001011;
		b = 32'b11110111000000101110001000010111;
		correct = 32'b11110111000000101110001000010111;
		#400 //8542112000000000.0 * -2.654626e+33 = -2.654626e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110101011111010110001011011;
		b = 32'b00101011011001110110101101010110;
		correct = 32'b11000110101011111010110001011011;
		#400 //-22486.178 * 8.2216645e-13 = -22486.178
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100001001000100010011110001;
		b = 32'b11101011001111100111010010101000;
		correct = 32'b11101011001111100111001000010111;
		#400 //1.2120935e+22 * -2.302468e+26 = -2.3023468e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011100101100001010100001011;
		b = 32'b00011111010001100100001001001001;
		correct = 32'b00100011100101100111100000101100;
		#400 //1.6271945e-17 * 4.198296e-20 = 1.6313927e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010110000110001111011001010;
		b = 32'b10001110101111100111100010110000;
		correct = 32'b00101010110000110001111011001010;
		#400 //3.4660323e-13 * -4.6954834e-30 = 3.4660323e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011001111001100110100001010;
		b = 32'b11101010010110000001000000011001;
		correct = 32'b11101010010110000001000000011001;
		#400 //0.0028808736 * -6.5301e+25 = -6.5301e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000111010111011010000110010;
		b = 32'b00110001001101100111101000010000;
		correct = 32'b00110001001101100111101000010000;
		#400 //9.296879e-29 * 2.655387e-09 = 2.655387e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011011111001101100001101111;
		b = 32'b00101000001001110011011101111111;
		correct = 32'b11001011011111001101100001101111;
		#400 //-16570479.0 * 9.282396e-15 = -16570479.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011110111111000110001110010;
		b = 32'b01011110001100010000011100011000;
		correct = 32'b01011110001100010000011100011000;
		#400 //-1.5884084e-12 * 3.1890477e+18 = 3.1890477e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000001111000000000100010001;
		b = 32'b11101100101110011100111000100000;
		correct = 32'b11101100101110100010110000100001;
		#400 //-3.5512983e+24 * -1.7969974e+27 = -1.8005488e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010010101100111011110111011;
		b = 32'b11100000000000010011001010101000;
		correct = 32'b11100000000000010010010101000001;
		#400 //1.5091823e+16 * -3.7238752e+19 = -3.7223663e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010100001100110010111110;
		b = 32'b10111010000100001100100101000010;
		correct = 32'b10111010000100011001101000001111;
		#400 //-3.111359e-06 * -0.0005523154 = -0.00055542676
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110101100111010000010011;
		b = 32'b01110101001010010010111101100011;
		correct = 32'b01110101001010010010111101100011;
		#400 //5.543491e-24 * 2.144676e+32 = 2.144676e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111010100111000100011000100;
		b = 32'b10100010100110011000000001100100;
		correct = 32'b01111111010100111000100011000100;
		#400 //2.8117723e+38 * -4.160667e-18 = 2.8117723e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100111111111010011111111011;
		b = 32'b01011011111000101100101000000000;
		correct = 32'b01011011111000101100110111111111;
		#400 //8784279000000.0 * 1.2767089e+17 = 1.2767968e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110000001110111110000011011;
		b = 32'b10000010101010110001111110001101;
		correct = 32'b00100110000001110111110000011011;
		#400 //4.700573e-16 * -2.51443e-37 = 4.700573e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011001010111111000011111;
		b = 32'b00010111100101110101110101000100;
		correct = 32'b10111010011001010111111000011111;
		#400 //-0.000875445 * 9.78169e-25 = -0.000875445
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100110011011000110110011100;
		b = 32'b11001010101101000100100010111101;
		correct = 32'b11101100110011011000110110011100;
		#400 //-1.9879882e+27 * -5907550.5 = -1.9879882e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010000101111111111010101100;
		b = 32'b10100100011101001111000101110101;
		correct = 32'b01110010000101111111111010101100;
		#400 //3.0105674e+30 * -5.3113588e-17 = 3.0105674e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101111001001101111010000001;
		b = 32'b11111110000011010101011110010010;
		correct = 32'b11111110000011010101011110010010;
		#400 //7323.813 * -4.696896e+37 = -4.696896e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100010100100110100001001100;
		b = 32'b10111110111111001010000111011101;
		correct = 32'b10111110111111001010000111100100;
		#400 //-1.9595717e-07 * -0.49342242 = -0.49342263
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000100100011001100010100;
		b = 32'b10011001001101000010010111100111;
		correct = 32'b11101001000100100011001100010100;
		#400 //-1.1046524e+25 * -9.313436e-24 = -1.1046524e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101111001000010111100000100;
		b = 32'b11101010110011110001000011110100;
		correct = 32'b11101010110011110001000011110100;
		#400 //-7301.877 * -1.2516385e+26 = -1.2516385e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101000011110001110010011011;
		b = 32'b00111100001110101011110000110111;
		correct = 32'b00111100001110101011110000110111;
		#400 //1.8940681e-21 * 0.011397413 = 0.011397413
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000100000100100001000011;
		b = 32'b10010011000000110000000100111001;
		correct = 32'b11010110000100000100100001000011;
		#400 //-39660010000000.0 * -1.6535127e-27 = -39660010000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110001010110110001110111001;
		b = 32'b10000011101110100111111000010101;
		correct = 32'b10001110001010110110001110111111;
		#400 //-2.1125392e-30 * -1.09610445e-36 = -2.1125403e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010001101100101110011110011;
		b = 32'b01111100101000110000100110100011;
		correct = 32'b01111100101000110000100110100011;
		#400 //-45.59077 * 6.772319e+36 = 6.772319e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000001011000101110111010001;
		b = 32'b10011101100110100111110010110101;
		correct = 32'b01101000001011000101110111010001;
		#400 //3.2559106e+24 * -4.0892405e-21 = 3.2559106e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111100110100110000101111;
		b = 32'b11100000101101111011011011101000;
		correct = 32'b01110100111100110100110000101111;
		#400 //1.5420817e+32 * -1.0590419e+20 = 1.5420817e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111110101000110100010010011;
		b = 32'b01010010111110101000000010000011;
		correct = 32'b11110111110101000110100010010011;
		#400 //-8.616312e+33 * 537948950000.0 = -8.616312e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111100101110010100100011;
		b = 32'b10100101010001010010101110111110;
		correct = 32'b01100101111100101110010100100011;
		#400 //1.4337994e+23 * -1.7101847e-16 = 1.4337994e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100101110000101111010001101;
		b = 32'b00011000010111111001010100001101;
		correct = 32'b00011000010111111001010100001110;
		#400 //2.8406594e-31 * 2.8897326e-24 = 2.8897328e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110100001100101101000010100;
		b = 32'b01010001000110011010000000101100;
		correct = 32'b11110110100001100101101000010100;
		#400 //-1.3624898e+33 * 41238577000.0 = -1.3624898e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111101000011011011001001;
		b = 32'b10000110100100000101011110010100;
		correct = 32'b10111101111101000011011011001001;
		#400 //-0.11924512 * -5.4295464e-35 = -0.11924512
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000001011010000101101001010;
		b = 32'b10100100101111110001000000111100;
		correct = 32'b10100100101111110001000000111100;
		#400 //4.136647e-39 * -8.286055e-17 = -8.286055e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110001111010000111000110001;
		b = 32'b11100111101010011001000101100100;
		correct = 32'b11100111101010011001000101100100;
		#400 //51967162000000.0 * -1.6015238e+24 = -1.6015238e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010111010000001011101000111;
		b = 32'b10111010110010110000010011110101;
		correct = 32'b11011010111010000001011101000111;
		#400 //-3.2663894e+16 * -0.0015489148 = -3.2663894e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000001101010010111101000000;
		b = 32'b11001101110101000011101110111000;
		correct = 32'b11001101110101000011101110111000;
		#400 //-6.591456e-10 * -445085440.0 = -445085440.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001110001111010011010000100;
		b = 32'b00100000110010101000110000101001;
		correct = 32'b11100001110001111010011010000100;
		#400 //-4.603626e+20 * 3.431288e-19 = -4.603626e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000111101011100000101010011;
		b = 32'b00110110011100010100100100000101;
		correct = 32'b01100000111101011100000101010011;
		#400 //1.4166821e+20 * 3.5954301e-06 = 1.4166821e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000011011110111110101001001;
		b = 32'b10001101110110000111001001000011;
		correct = 32'b01111000011011110111110101001001;
		#400 //1.9429688e+34 * -1.3339535e-30 = 1.9429688e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111000010011000100010110100;
		b = 32'b01010000010010101101100011001010;
		correct = 32'b01010111000010011000101111011111;
		#400 //151220230000000.0 * 13612820000.0 = 151233830000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100011111111101000101110011;
		b = 32'b00101101101100100111010100011110;
		correct = 32'b00101101100100100111101011110000;
		#400 //-3.6353947e-12 * 2.0288268e-11 = 1.6652874e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010000000001011011011111110;
		b = 32'b00011111011000111111011011000101;
		correct = 32'b01010010000000001011011011111110;
		#400 //138206480000.0 * 4.8273243e-20 = 138206480000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110010111110111100101010111;
		b = 32'b01011001101101010101111110101010;
		correct = 32'b01011001101101010101111110101100;
		#400 //937317800.0 * 6381519300000000.0 = 6381520400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010101000100101111000101001;
		b = 32'b00000011011010111100010000000100;
		correct = 32'b11101010101000100101111000101001;
		#400 //-9.814532e+25 * 6.928531e-37 = -9.814532e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110010010111000100100101111;
		b = 32'b00100111110011100010001010001111;
		correct = 32'b01000110010010111000100100101111;
		#400 //13026.296 * 5.7213954e-15 = 13026.296
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000010111000100000000111100;
		b = 32'b01000011110101100111010001001001;
		correct = 32'b01000011110101100111010001001001;
		#400 //-8.471909e-39 * 428.90848 = 428.90848
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010111100100000111100000100;
		b = 32'b00110100010011011001011110000101;
		correct = 32'b00110100010011011001011110000101;
		#400 //-1.00113113e-22 * 1.9147235e-07 = 1.9147235e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001010110110100011011100010;
		b = 32'b11111110100011110011110011100110;
		correct = 32'b11111110100011110011110011100110;
		#400 //-1.1336349e-23 * -9.51979e+37 = -9.51979e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010110100010101011101011;
		b = 32'b01011111111110010100111100100110;
		correct = 32'b01011111111110010100111100100110;
		#400 //0.00020806088 * 3.5929238e+19 = 3.5929238e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100101111001111011101111110;
		b = 32'b10110110001011001001110101101111;
		correct = 32'b11001100101111001111011101111110;
		#400 //-99073010.0 * -2.5721636e-06 = -99073010.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011111001001101111010011;
		b = 32'b00111010100000001100001111101010;
		correct = 32'b01001110011111001001101111010011;
		#400 //1059517630.0 * 0.0009824012 = 1059517630.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111110111101100110000100000;
		b = 32'b01001111010101000000001001110101;
		correct = 32'b01001111010101000000001001110101;
		#400 //-1.4397942e-24 * 3556930800.0 = 3556930800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111110011100101010001110101;
		b = 32'b10011000100001100001011011011011;
		correct = 32'b00100111110011100101010001110101;
		#400 //5.7268054e-15 * -3.4661266e-24 = 5.7268054e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010100101100010011010100111100;
		b = 32'b10011001011101001110000110100010;
		correct = 32'b01010100101100010011010100111100;
		#400 //6088818700000.0 * -1.26600705e-23 = 6088818700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010010101011111011101101101;
		b = 32'b11111101011111010000100011100001;
		correct = 32'b11111101011111010000100011100001;
		#400 //-53.491627 * -2.1021299e+37 = -2.1021299e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010000001100101010110110;
		b = 32'b10001101101101011101010000110010;
		correct = 32'b10101000010000001100101010110110;
		#400 //-1.0702097e-14 * -1.120607e-30 = -1.0702097e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001010101110010101111011111;
		b = 32'b10101110001001010010000001011111;
		correct = 32'b10101110001001010010000001011111;
		#400 //-3.952074e-38 * -3.7545408e-11 = -3.7545408e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111010010111000001010010100;
		b = 32'b01100110010000101010110000101011;
		correct = 32'b01100110010000101010110000101011;
		#400 //-1.5310396e-34 * 2.2982876e+23 = 2.2982876e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000011001111101100001011;
		b = 32'b10101111111111101001010001001111;
		correct = 32'b01101101000011001111101100001011;
		#400 //2.726962e+27 * -4.630771e-10 = 2.726962e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011010100000011011011000;
		b = 32'b11011111100111101011011000111000;
		correct = 32'b11011111100111101011011000111000;
		#400 //-3.0247246e-24 * -2.287278e+19 = -2.287278e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010000010101101000001010001;
		b = 32'b11011000010101101011111111101000;
		correct = 32'b11011000010101101011111111101000;
		#400 //-6.683638e-33 * -944478900000000.0 = -944478900000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000100111001001010110110111;
		b = 32'b00100001100001101001001101111011;
		correct = 32'b00110000100111001001010110110111;
		#400 //1.1393045e-09 * 9.119231e-19 = 1.1393045e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000111011000101111101110011;
		b = 32'b10101101000001011110001101001001;
		correct = 32'b10101101000001011110001101001001;
		#400 //1.4226173e-33 * -7.610642e-12 = -7.610642e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010110010111110011011110110;
		b = 32'b01000100110010111011010010001001;
		correct = 32'b01000100110010111011010010001001;
		#400 //-1.2868037e-27 * 1629.6417 = 1629.6417
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010111000011101001110010100;
		b = 32'b00000101100011110110111100001011;
		correct = 32'b10110010111000011101001110010100;
		#400 //-2.6289662e-08 * 1.3488446e-35 = -2.6289662e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010011011100011010010101110;
		b = 32'b11010110010010111110010000000101;
		correct = 32'b01011010011011010110100011001010;
		#400 //1.6762242e+16 * -56045050000000.0 = 1.6706197e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010000101000100001001011010;
		b = 32'b11111101100111110110010001110010;
		correct = 32'b11111101100111110110010001110010;
		#400 //2429078.5 * -2.64836e+37 = -2.64836e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111100100100101101110010101;
		b = 32'b00110101000000101101110110101110;
		correct = 32'b11001111100100100101101110010101;
		#400 //-4910951000.0 * 4.875136e-07 = -4910951000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110111010010110101111010011;
		b = 32'b00011011101110101101100000000011;
		correct = 32'b00101110111010010110101111010011;
		#400 //1.0614767e-10 * 3.0910713e-22 = 1.0614767e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001011001011000001010000000;
		b = 32'b11110001010000101000000101110111;
		correct = 32'b11110001010000101000000101110111;
		#400 //-7.7760933e-19 * -9.631457e+29 = -9.631457e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110100110111100100111110;
		b = 32'b00010011001001011100110100100100;
		correct = 32'b01000101110100110111100100111110;
		#400 //6767.1553 * 2.092707e-27 = 6767.1553
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001000000010010111101100101;
		b = 32'b10100001111011000101011011111110;
		correct = 32'b10101001000000010011000100111110;
		#400 //-2.8684862e-14 * -1.6015009e-18 = -2.8686465e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000010001000011011000010001;
		b = 32'b10111101101010001110111110101011;
		correct = 32'b10111101101010001110111110101011;
		#400 //1.08919094e-14 * -0.08248838 = -0.08248838
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111111000111110011100101000;
		b = 32'b10001101110011011011010001001110;
		correct = 32'b10110111111000111110011100101000;
		#400 //-2.716815e-05 * -1.2677507e-30 = -2.716815e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000101001101000100100110010;
		b = 32'b00111101100111010001000000101100;
		correct = 32'b11011000101001101000100100110010;
		#400 //-1464865400000000.0 * 0.076691 = -1464865400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110001110011010101101100001;
		b = 32'b10110001010101000111011010101011;
		correct = 32'b10111110001110011010101101100001;
		#400 //-0.18131782 * -3.0917515e-09 = -0.18131782
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000001111100100100111101;
		b = 32'b11101001001111111110101001001000;
		correct = 32'b11101001001111111110101001001000;
		#400 //-569528100.0 * -1.45007e+25 = -1.45007e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110101111001110001101110011;
		b = 32'b01000001101001101010011110011111;
		correct = 32'b11010110101111001110001101110011;
		#400 //-103842540000000.0 * 20.831846 = -103842540000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111111010110010100101010011;
		b = 32'b11111010111001110011111000000110;
		correct = 32'b11111010111001110011111000000110;
		#400 //2.2210368e+24 * -6.0033928e+35 = -6.0033928e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010001110001100001010100;
		b = 32'b00010000010000000010010011010001;
		correct = 32'b01011001010001110001100001010100;
		#400 //3502516800000000.0 * 3.7893686e-29 = 3502516800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101101101011110010100111101;
		b = 32'b11100011010111101101111011010000;
		correct = 32'b11100011010111101101111011010000;
		#400 //-24999522000000.0 * -4.1112325e+21 = -4.1112325e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110101110011010100111101011;
		b = 32'b01010100000011001101000111011101;
		correct = 32'b01010100000011001101000111011101;
		#400 //5.5332107e-06 * 2419265400000.0 = 2419265400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110110110101100001110011000;
		b = 32'b01100001010010110110011111010111;
		correct = 32'b11111110110110101100001110011000;
		#400 //-1.4539364e+38 * 2.3451072e+20 = -1.4539364e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110001000010001110010110;
		b = 32'b10000110100101110000111111110010;
		correct = 32'b01000000110001000010001110010110;
		#400 //6.129344 * -5.6823317e-35 = 6.129344
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101001111100101000111010001;
		b = 32'b00001011111000110001010010000110;
		correct = 32'b11011101001111100101000111010001;
		#400 //-8.5712326e+17 * 8.74681e-32 = -8.5712326e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100001110010001111001100;
		b = 32'b01111011110101111001010101110100;
		correct = 32'b01111011110101111001010101110100;
		#400 //-1.5732347e-08 * 2.2387502e+36 = 2.2387502e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101000111010001111000111001;
		b = 32'b11100101100010011000011100101000;
		correct = 32'b01110101000111010001111000111001;
		#400 //1.991708e+32 * -8.1182175e+22 = 1.991708e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101000011110100110011010110;
		b = 32'b00000100100100110101101011110011;
		correct = 32'b11000101000011110100110011010110;
		#400 //-2292.8022 * 3.4643058e-36 = -2292.8022
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100110011110111101001111011;
		b = 32'b10100110111111001001010101111101;
		correct = 32'b11110100110011110111101001111011;
		#400 //-1.3150508e+32 * -1.7526532e-15 = -1.3150508e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111000000010000110001101111;
		b = 32'b01000110111000111111101001101011;
		correct = 32'b01101111000000010000110001101111;
		#400 //3.9938598e+28 * 29181.209 = 3.9938598e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000110111110010000001110;
		b = 32'b11101101100001001010011100111110;
		correct = 32'b11101101100001001010011100111110;
		#400 //2.561369e-39 * -5.1317756e+27 = -5.1317756e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101001101010000101000100;
		b = 32'b01001001000001011000111110110010;
		correct = 32'b01001111101001101010010101110000;
		#400 //5591173000.0 * 547067.1 = 5591720000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000000100101011000010010001;
		b = 32'b00110111000111011001101011101001;
		correct = 32'b00110111000111011001101011101001;
		#400 //1.716379e-39 * 9.393997e-06 = 9.393997e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011011011110010001010110101;
		b = 32'b00111110010001001110111011100001;
		correct = 32'b01101011011011110010001010110101;
		#400 //2.8909717e+26 * 0.1923175 = 2.8909717e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011001101011100011001011010;
		b = 32'b11000100001100100100110111100110;
		correct = 32'b11000100001100100100110111100110;
		#400 //-2.2943207e-27 * -713.21716 = -713.21716
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000111000011100101011011000;
		b = 32'b00100111100001111110011001001111;
		correct = 32'b01001000111000011100101011011000;
		#400 //462422.75 * 3.771973e-15 = 462422.75
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000000101011101011010110010;
		b = 32'b00000101001110011111010111111001;
		correct = 32'b11100000000101011101011010110010;
		#400 //-4.318805e+19 * 8.743836e-36 = -4.318805e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111001001101010100111001111;
		b = 32'b11000001011000001101011101101100;
		correct = 32'b11000001011000001101011101101100;
		#400 //1.515794e-10 * -14.052593 = -14.052593
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110011010111011001010010;
		b = 32'b10110000101111111100000110010110;
		correct = 32'b11111010110011010111011001010010;
		#400 //-5.3341034e+35 * -1.39521e-09 = -5.3341034e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110101010101010110010010101;
		b = 32'b11111011000010011100001101111111;
		correct = 32'b11111110101010111100000000011100;
		#400 //-1.1343243e+38 * -7.153098e+35 = -1.1414774e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100000011000110110110111101;
		b = 32'b01000010010011000111110011010110;
		correct = 32'b11111100000011000110110110111101;
		#400 //-2.9165893e+36 * 51.12191 = -2.9165893e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110010001011010001111011100;
		b = 32'b10101011011101110000100110001110;
		correct = 32'b11101110010001011010001111011100;
		#400 //-1.529166e+28 * -8.776529e-13 = -1.529166e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001001010110010111101110101;
		b = 32'b10100100010100001010101001011001;
		correct = 32'b00111001001010110010111101110101;
		#400 //0.0001632551 * -4.52471e-17 = 0.0001632551
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110100100100011000101011001;
		b = 32'b00011100111010000110100000111100;
		correct = 32'b00100110100100100011000101101000;
		#400 //1.0144161e-15 * 1.5379416e-21 = 1.0144177e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011011010000110101101010;
		b = 32'b10110101010111100101010001001111;
		correct = 32'b01000001011011010000110101101001;
		#400 //14.815775 * -8.282413e-07 = 14.815774
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110000111100011100110011;
		b = 32'b10110101011110110101110110101011;
		correct = 32'b10110101011110110101110110101011;
		#400 //-7.541099e-32 * -9.364109e-07 = -9.364109e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101110110100010101010010010;
		b = 32'b00011110100111000101101101001111;
		correct = 32'b01111101110110100010101010010010;
		#400 //3.6249093e+37 * 1.6554907e-20 = 3.6249093e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110011001011100011000100101;
		b = 32'b00010100001110111101011100010010;
		correct = 32'b10101110011001011100011000100101;
		#400 //-5.224456e-11 * 9.4835025e-27 = -5.224456e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101100110111011010001100100;
		b = 32'b10000111001011001101100011110110;
		correct = 32'b11111101100110111011010001100100;
		#400 //-2.5870873e+37 * -1.3003601e-34 = -2.5870873e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111010100110010100101100010;
		b = 32'b10100001110000110011100111110110;
		correct = 32'b11110111010100110010100101100010;
		#400 //-4.282867e+33 * -1.3229056e-18 = -4.282867e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001100100011001101100111011;
		b = 32'b11111100111000011101011101010100;
		correct = 32'b11111100111000011101011101010100;
		#400 //0.0002777221 * -9.3810733e+36 = -9.3810733e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110001011001001010011001000;
		b = 32'b10110000101110000001100011011001;
		correct = 32'b10110000101110000001100011011001;
		#400 //2.1272272e-30 * -1.3394824e-09 = -1.3394824e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100100101101010010010100001;
		b = 32'b00001010000010101001100011101101;
		correct = 32'b01101100100101101010010010100001;
		#400 //1.4569305e+27 * 6.6732205e-33 = 1.4569305e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010000011011010110101110;
		b = 32'b01010001010100010101001100110110;
		correct = 32'b11101101010000011011010110101110;
		#400 //-3.7468903e+27 * 56190263000.0 = -3.7468903e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001001011010011010101100101;
		b = 32'b00100011111011001011010011111110;
		correct = 32'b01101001001011010011010101100101;
		#400 //1.308727e+25 * 2.5663824e-17 = 1.308727e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111100010010101001110000100;
		b = 32'b01101011100011001001010010101000;
		correct = 32'b01101011100011001001010010100111;
		#400 //-1.9790796e+19 * 3.3990325e+26 = 3.399032e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001111001001111010001111010;
		b = 32'b01101010000011101010011001101101;
		correct = 32'b01101010000011101010011001101101;
		#400 //-0.00043669698 * 4.3113347e+25 = 4.3113347e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110100001100011001001000;
		b = 32'b10111100110101000110101010111000;
		correct = 32'b10111100110101000110101010111000;
		#400 //3.621661e-16 * -0.025929794 = -0.025929794
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101100000000101100000111100;
		b = 32'b00111001000100000111100010111000;
		correct = 32'b01101101100000000101100000111100;
		#400 //4.965094e+27 * 0.00013777881 = 4.965094e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101000101000111111111110000;
		b = 32'b01111110111010011011010010011011;
		correct = 32'b01111110111010011011010010101110;
		#400 //1.882458e+32 * 1.5532394e+38 = 1.5532413e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000110001001101000101101;
		b = 32'b10011001110010011101101100100011;
		correct = 32'b10011001110010011101101100100011;
		#400 //-2.8701293e-35 * -2.0871422e-23 = -2.0871422e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111001001010010110110011010;
		b = 32'b11111011100100100011100001111010;
		correct = 32'b11111011100100100011100001111010;
		#400 //0.6452271 * -1.5184416e+36 = -1.5184416e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100000111111000100011110110;
		b = 32'b11110011110011000110110010000110;
		correct = 32'b11110011110011000110110010000110;
		#400 //5.2785705e-22 * -3.2392263e+31 = -3.2392263e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111011101001011010011001011;
		b = 32'b10010111111001110111010011111001;
		correct = 32'b10110111011101001011010011001011;
		#400 //-1.45856275e-05 * -1.4957553e-24 = -1.45856275e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101110101101111110001100001;
		b = 32'b01100111001010110101010010110110;
		correct = 32'b01100111000100000111010100101010;
		#400 //-1.2690525e+23 * 8.090873e+23 = 6.821821e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001101001110000011001000011;
		b = 32'b00110101110100010110101001001101;
		correct = 32'b10111001101001100011010011011001;
		#400 //-0.00031857388 * 1.5602651e-06 = -0.00031701362
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010010111110100011010010001;
		b = 32'b10110111010101000001001110100100;
		correct = 32'b01100010010111110100011010010001;
		#400 //1.0296772e+21 * -1.2640758e-05 = 1.0296772e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010000101010111010101101110;
		b = 32'b01101110110101001111101001100000;
		correct = 32'b01110010000101110001111101100011;
		#400 //2.9603347e+30 * 3.2956753e+28 = 2.9932916e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000011011001000101111110010;
		b = 32'b00000010011111111010001110110100;
		correct = 32'b01011000011011001000101111110010;
		#400 //1040343200000000.0 * 1.8781422e-37 = 1040343200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011001001011101010011000;
		b = 32'b10000111111011110001001101110101;
		correct = 32'b01001110011001001011101010011000;
		#400 //959358460.0 * -3.597216e-34 = 959358460.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011111010111000001000000;
		b = 32'b11100101001110001010000000111000;
		correct = 32'b11100101001110001010000000111000;
		#400 //1062998000.0 * -5.4491934e+22 = -5.4491934e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111101010101001000111101011;
		b = 32'b11100110000100000111100111010111;
		correct = 32'b11100110000100000111010010000010;
		#400 //2.4581726e+19 * -1.7056708e+23 = -1.7054249e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011000110100011101110101;
		b = 32'b00000000000111011010010100101101;
		correct = 32'b00110000011000110100011101110101;
		#400 //8.2683665e-10 * 2.722483e-39 = 8.2683665e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010100110111001001101111111;
		b = 32'b00110001000110100000110011000100;
		correct = 32'b01110010100110111001001101111111;
		#400 //6.1630065e+30 * 2.2417206e-09 = 6.1630065e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001111110010111101010101000;
		b = 32'b10011110111101010011101001010011;
		correct = 32'b01000001111110010111101010101000;
		#400 //31.18489 * -2.5964506e-20 = 31.18489
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001101000101000001000101011;
		b = 32'b01111100010111101111101000100010;
		correct = 32'b01111100010111101111101000011101;
		#400 //-1.6094059e+30 * 4.6310528e+36 = 4.6310512e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111110110000111011110110000;
		b = 32'b01111111111000011110111101110001;
		correct = 32'b01111111111000011110111101110001;
		#400 //7263445000.0 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101100011010110001011011000;
		b = 32'b01000010011000000001111111011110;
		correct = 32'b01000010011000000001111111011110;
		#400 //3.742459e-21 * 56.03112 = 56.03112
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101011001011000111101010000;
		b = 32'b00011110100110110010101110101011;
		correct = 32'b11001101011001011000111101010000;
		#400 //-240710910.0 * 1.6429324e-20 = -240710910.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111100000111001110110011001;
		b = 32'b00000101111100001111100111110011;
		correct = 32'b11011111100000111001110110011001;
		#400 //-1.896781e+19 * 2.2661308e-35 = -1.896781e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010010101110011110110110011;
		b = 32'b11111000000110100000101000101001;
		correct = 32'b11111000000110100000101000101001;
		#400 //1.9117242e-13 * -1.2497184e+34 = -1.2497184e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101001010110100001101011001;
		b = 32'b01001100101001111111000011110010;
		correct = 32'b01100101001010110100001101011001;
		#400 //5.054794e+22 * 88049550.0 = 5.054794e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101001011010111001100111100;
		b = 32'b01100110101000110010111011001100;
		correct = 32'b01100110101000110010111011001100;
		#400 //-3.5027976e-26 * 3.853045e+23 = 3.853045e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010101000001001001111000101;
		b = 32'b00110111011110111000010100001101;
		correct = 32'b01100010101000001001001111000101;
		#400 //1.4810635e+21 * 1.4991744e-05 = 1.4810635e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100011011101111100100110000;
		b = 32'b00001011010100100001001010000011;
		correct = 32'b10111100011011101111100100110000;
		#400 //-0.014585778 * 4.0458456e-32 = -0.014585778
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010100000011000010110011101;
		b = 32'b11000000000101111101100000001010;
		correct = 32'b11000000000101111101100000001010;
		#400 //-1.9031537e-37 * -2.372561 = -2.372561
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111101110011000011001110000;
		b = 32'b00001111100111011111000100011001;
		correct = 32'b11110111101110011000011001110000;
		#400 //-7.525794e+33 * 1.5574263e-29 = -7.525794e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001011100110111110110111100;
		b = 32'b01000110000110011111101000100010;
		correct = 32'b01010001011100110111110110111110;
		#400 //65361658000.0 * 9854.533 = 65361666000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100101010000100010001011101;
		b = 32'b10010100010010010011100011110011;
		correct = 32'b10100100101010000100010001011101;
		#400 //-7.29742e-17 * -1.0159138e-26 = -7.29742e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010110111100100001001100101;
		b = 32'b11001000100001000001111010111110;
		correct = 32'b11001000100001000001111010111110;
		#400 //-1.4026537e-27 * -270581.94 = -270581.94
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010000000110000011010111111;
		b = 32'b10101001011101100101000001101110;
		correct = 32'b00110010000000110000011010000001;
		#400 //7.6267375e-09 * -5.4692734e-14 = 7.626682e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110011110100011000101001;
		b = 32'b10111011011011111100001010001110;
		correct = 32'b10111011011011111100010000101101;
		#400 //-9.651951e-08 * -0.003658447 = -0.0036585436
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100010110000100101011010010;
		b = 32'b11100010011000010010011001100110;
		correct = 32'b11100010011000010010011001100110;
		#400 //-3.073698e-12 * -1.0383211e+21 = -1.0383211e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001110111101100011101100100;
		b = 32'b01000001000000001000100110110101;
		correct = 32'b01000001000000001000100110110101;
		#400 //-6.4837185e-09 * 8.03362 = 8.03362
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111001111111100100101110111;
		b = 32'b10001001011100111111111101000100;
		correct = 32'b10110111001111111100100101110111;
		#400 //-1.1431394e-05 * -2.9370086e-33 = -1.1431394e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001100011001100100100100010;
		b = 32'b10100101011001011100000101111011;
		correct = 32'b10110001100011001100100100100010;
		#400 //-4.0974024e-09 * -1.9928138e-16 = -4.0974024e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001001111010101110001000;
		b = 32'b10110000100001000000110000000011;
		correct = 32'b10110000100001000000110000000011;
		#400 //1.4202205e-19 * -9.607678e-10 = -9.607678e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000001000000110111001000011;
		b = 32'b11001001010101010011010001110000;
		correct = 32'b11001001010101010011010001110000;
		#400 //-3.163938e-29 * -873287.0 = -873287.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001010100100110000000000101;
		b = 32'b10111110010110010100111111111000;
		correct = 32'b10111110010110010100111111111000;
		#400 //2.5322979e-33 * -0.21221912 = -0.21221912
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100010111101110110100011110;
		b = 32'b11100010000010000010111100110100;
		correct = 32'b11101100010111101110110100100111;
		#400 //-1.07800514e+27 * -6.280396e+20 = -1.0780058e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010001000111011110000111001;
		b = 32'b11000100101110100001001001010110;
		correct = 32'b11000100101110100001001001010110;
		#400 //-5.1665733e-28 * -1488.573 = -1488.573
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101100001011111100001110101;
		b = 32'b10011101100010011110011100010010;
		correct = 32'b11111101100001011111100001110101;
		#400 //-2.2259673e+37 * -3.650252e-21 = -2.2259673e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000010010110001101010101100;
		b = 32'b00101001111100000101000101110100;
		correct = 32'b01001000010010110001101010101100;
		#400 //207978.69 * 1.0672271e-13 = 207978.69
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111110011101000111111011;
		b = 32'b01101110011111001100100100010001;
		correct = 32'b01101110011111001100100100010001;
		#400 //-6.771391e-18 * 1.9558324e+28 = 1.9558324e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100000101001000110000100110;
		b = 32'b00000110111010110011011000001100;
		correct = 32'b01011100000101001000110000100110;
		#400 //1.6724957e+17 * 8.847659e-35 = 1.6724957e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010110111011011110111011010;
		b = 32'b11011011011101011001101000111100;
		correct = 32'b01110010110111011011110111011010;
		#400 //8.78409e+30 * -6.913095e+16 = 8.78409e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011110110011110000010000;
		b = 32'b11010001101101001000000010100000;
		correct = 32'b11010001101101001000000010100000;
		#400 //7.383122e-37 * -96906510000.0 = -96906510000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001000011101101101100100010;
		b = 32'b11101100100100010001110110100000;
		correct = 32'b11101100100100010001110110100000;
		#400 //2.0788282e-09 * -1.4034732e+27 = -1.4034732e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111010011110100000100001;
		b = 32'b01001100110110000010101100000001;
		correct = 32'b01001100110110000010101100000001;
		#400 //-0.0071382676 * 113334280.0 = 113334280.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111100101110000011010001011;
		b = 32'b11011100111111110111100011110000;
		correct = 32'b11011100111111110111100011110000;
		#400 //6.396181e-20 * -5.7527273e+17 = -5.7527273e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000000010111101110111011;
		b = 32'b10010111100010000010000010111000;
		correct = 32'b10010111100010000010000010110100;
		#400 //3.990013e-31 * -8.797053e-25 = -8.797049e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101100110111100000010000111;
		b = 32'b01000000011111110100001011001001;
		correct = 32'b01000000011111110100001011001001;
		#400 //-1.770696e-11 * 3.9884512 = 3.9884512
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101000010001000011001111;
		b = 32'b01011100101110000001101000110101;
		correct = 32'b01011100101110000001101000110101;
		#400 //5404466700.0 * 4.145617e+17 = 4.145617e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101110111101011111110011100;
		b = 32'b01000001100010100100100111110010;
		correct = 32'b11000101110111100011010101010010;
		#400 //-7127.951 * 17.286106 = -7110.665
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010000010001011110111000;
		b = 32'b10111110110110100010000111111001;
		correct = 32'b10111111000111010101011011101010;
		#400 //-0.18856704 * -0.42604044 = -0.61460745
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011011110100111100011000011;
		b = 32'b10100111100001001001000100111001;
		correct = 32'b01011011011110100111100011000011;
		#400 //7.0501523e+16 * -3.679481e-15 = 7.0501523e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001000110100111000110100;
		b = 32'b00000001011111000010001000101011;
		correct = 32'b01111001001000110100111000110100;
		#400 //5.299566e+34 * 4.6309604e-38 = 5.299566e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111000001000101011111001;
		b = 32'b00111000111101101110100000111110;
		correct = 32'b00111000111101101110100000111110;
		#400 //6.0862465e-18 * 0.000117734526 = 0.000117734526
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000010100100010011011010100;
		b = 32'b11111011011000111010101101000111;
		correct = 32'b11111011011000111010101101000111;
		#400 //3.2836199 * -1.1821253e+36 = -1.1821253e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100111101011101011010000;
		b = 32'b11011101101001010101100001011111;
		correct = 32'b01110111100111101011101011010000;
		#400 //6.438843e+33 * -1.4892972e+18 = 6.438843e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001000001010100000110101;
		b = 32'b01100110000001111000001100100010;
		correct = 32'b01110001001000001010100000110111;
		#400 //7.955352e+29 * 1.5998461e+23 = 7.955354e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111111001011001010011000011;
		b = 32'b10100111100100100111010001110011;
		correct = 32'b10100111100100100111010101011001;
		#400 //-9.723138e-20 * -4.0649395e-15 = -4.065037e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011000011101000100100101010;
		b = 32'b00001011111001000000111111010010;
		correct = 32'b00001011111001000001000000011001;
		#400 //4.1887506e-37 * 8.784621e-32 = 8.7846627e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101100001010001000101000101;
		b = 32'b11001010100011001001110100111111;
		correct = 32'b11110101100001010001000101000101;
		#400 //-3.373661e+32 * -4607647.5 = -3.373661e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001110101010011110110111100;
		b = 32'b11100101010111111000010011000000;
		correct = 32'b01110001110101010011110110111100;
		#400 //2.111838e+30 * -6.5971033e+22 = 2.111838e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010111110000001001100101011;
		b = 32'b01101100000000000110101000101101;
		correct = 32'b01101100000000000110101000101101;
		#400 //-532736740000.0 * 6.209756e+26 = 6.209756e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010011000110001111011101111;
		b = 32'b11110100011101001000110101011001;
		correct = 32'b11110100011101001000110101011001;
		#400 //-7.16667e-28 * -7.7501667e+31 = -7.7501667e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001101101000011100100101011011;
		b = 32'b00001011000110000001101110000011;
		correct = 32'b10001101100111010000100001111111;
		#400 //-9.970866e-31 * 2.9294833e-32 = -9.677917e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011000000100010100010100100;
		b = 32'b10111010101111101000111110010010;
		correct = 32'b10111010101111101000111110010010;
		#400 //-2.5067664e-32 * -0.0014538637 = -0.0014538637
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011011001110011011100010110;
		b = 32'b00110010011101010011101011011001;
		correct = 32'b11101011011001110011011100010110;
		#400 //-2.79522e+26 * 1.4274257e-08 = -2.79522e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001100110101101010000100110;
		b = 32'b11001011001011010101000100010100;
		correct = 32'b01110001100110101101010000100110;
		#400 //1.5333492e+30 * -11358484.0 = 1.5333492e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100010010010000110010000111;
		b = 32'b00011001110111111010000010101111;
		correct = 32'b01111100010010010000110010000111;
		#400 //4.175623e+36 * 2.3122559e-23 = 4.175623e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010010100001000110101000000;
		b = 32'b01010010101010111011101001010011;
		correct = 32'b01010010101010111011101010111011;
		#400 //3416912.0 * 368782700000.0 = 368786100000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010101110011011001011010011;
		b = 32'b00001111111011000110111101011011;
		correct = 32'b10110010101110011011001011010011;
		#400 //-2.1618154e-08 * 2.331429e-29 = -2.1618154e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000101001100011001110011;
		b = 32'b11111111110100100000000111011001;
		correct = 32'b11111111110100100000000111011001;
		#400 //-4.604369e+28 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100011110101110111101101111;
		b = 32'b00011011110100010010101001001111;
		correct = 32'b10100100011110101110111100000110;
		#400 //-5.4412917e-17 * 3.460349e-22 = -5.441257e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110110000000000110000110101;
		b = 32'b00011101101110110100011110011111;
		correct = 32'b11001110110000000000110000110101;
		#400 //-1611012700.0 * 4.9572542e-21 = -1611012700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101000100011011111001010;
		b = 32'b10110010010110011010010110111010;
		correct = 32'b01011011101000100011011111001010;
		#400 //9.132057e+16 * -1.2668744e-08 = 9.132057e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010111011101101110011100011;
		b = 32'b11000111100011100010101110001110;
		correct = 32'b01110010111011101101110011100011;
		#400 //9.462332e+30 * -72791.11 = 9.462332e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111111100110000110001001101;
		b = 32'b10111011001000111000000011011101;
		correct = 32'b10111011001000111000000011011101;
		#400 //-1.5706612e-24 * -0.0024948635 = -0.0024948635
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001111001010110101100110100;
		b = 32'b10001111000100010011111110011010;
		correct = 32'b11110001111001010110101100110100;
		#400 //-2.2720534e+30 * -7.161301e-30 = -2.2720534e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101001111110011010110110011;
		b = 32'b10000000010110100011110111101111;
		correct = 32'b01100101001111110011010110110011;
		#400 //5.643516e+22 * -8.287412e-39 = 5.643516e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101100010011111110010110011;
		b = 32'b00110111001010000011100100011111;
		correct = 32'b00110111001010000011100100011111;
		#400 //-3.6524883e-21 * 1.002688e-05 = 1.002688e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100100100010010110111101010;
		b = 32'b10011110010100111010011001001101;
		correct = 32'b11111100100100010010110111101010;
		#400 //-6.0305143e+36 * -1.1204637e-20 = -6.0305143e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001111000100010110001011010;
		b = 32'b00101001110001101011100110001001;
		correct = 32'b10111001111000100010110001011010;
		#400 //-0.00043139124 * 8.8251516e-14 = -0.00043139124
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101000001110111100100101100;
		b = 32'b00111011001111100000111000101011;
		correct = 32'b00111011001111100001011010100011;
		#400 //5.046775e-07 * 0.0029000144 = 0.0029005192
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110010011101001110010111;
		b = 32'b00101100111010101000101101001001;
		correct = 32'b11001011110010011101001110010111;
		#400 //-26453806.0 * 6.6661438e-12 = -26453806.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100000011100110101011111100;
		b = 32'b11100000100000010100011110101010;
		correct = 32'b11100000100000010100011110101010;
		#400 //3.088196e-17 * -7.452481e+19 = -7.452481e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011100111001001001111010101;
		b = 32'b11010100111111101101100110011100;
		correct = 32'b11010100111111101101100110011100;
		#400 //6.031145e-32 * -8756580600000.0 = -8756580600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110100101010010110000101101;
		b = 32'b10111111111001100010101110001101;
		correct = 32'b10111111111001100010101110001101;
		#400 //-1.579426e-20 * -1.7982041 = -1.7982041
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001100101101110010000011011;
		b = 32'b00010110010110000010110111010010;
		correct = 32'b01100001100101101110010000011011;
		#400 //3.4793104e+20 * 1.74628e-25 = 3.4793104e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001100000011000100101101;
		b = 32'b11000000011101001011111010011001;
		correct = 32'b11000000011101001011111010011001;
		#400 //3.7310127e-20 * -3.8241332 = -3.8241332
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011111100000110111000100100;
		b = 32'b11101100111100011101001000100110;
		correct = 32'b11101100111100011101001000100110;
		#400 //-1.3535019e+17 * -2.3387482e+27 = -2.3387482e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001101000001000000100101010;
		b = 32'b01110001101000001100100010000000;
		correct = 32'b01110001101000001100100100100001;
		#400 //2.4254761e+25 * 1.5923197e+30 = 1.592344e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101111001111011110111100011;
		b = 32'b10000100010101101101101111110001;
		correct = 32'b11011101111001111011110111100011;
		#400 //-2.0873441e+18 * -2.5256571e-36 = -2.0873441e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101100000001100101011000;
		b = 32'b01111110000100010010100000000101;
		correct = 32'b01111110000100010010100000000101;
		#400 //22.012375 * 4.8236463e+37 = 4.8236463e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110101110011111011111011000;
		b = 32'b00111100100001111110010100010000;
		correct = 32'b01100110101110011111011111011000;
		#400 //4.3910485e+23 * 0.016588718 = 4.3910485e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101011101110010111010001101;
		b = 32'b01111011110000111110100000011101;
		correct = 32'b01111011110000111110100000011101;
		#400 //-1.4050661e-11 * 2.0344114e+36 = 2.0344114e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101011101111001110000010000;
		b = 32'b00101110001010000100001000001001;
		correct = 32'b00101110001010000100001001000111;
		#400 //2.1476711e-16 * 3.825743e-11 = 3.8257644e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101010000010100100110010111;
		b = 32'b10111111011011011001011111111000;
		correct = 32'b10111111011011011001011111111000;
		#400 //-1.6765015e-16 * -0.9281001 = -0.9281001
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100000111001111101010110110;
		b = 32'b01101000111101001110010110101111;
		correct = 32'b01101000111101001110010110101111;
		#400 //3.4039468e-17 * 9.2519547e+24 = 9.2519547e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101100100100010111100011010;
		b = 32'b00000101110101110011111110000010;
		correct = 32'b01010101100100100010111100011010;
		#400 //20091375000000.0 * 2.0241832e-35 = 20091375000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011010000110101001011011;
		b = 32'b10100111001100110110010101100001;
		correct = 32'b00110101011010000110101001011011;
		#400 //8.65815e-07 * -2.4896198e-15 = 8.65815e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000010001100011101001111100;
		b = 32'b11010011100101001100101110011111;
		correct = 32'b01011000010001011111000000010110;
		#400 //871817960000000.0 * -1278142700000.0 = 870539800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100110010000101000011110110;
		b = 32'b10111000001110110110111000110000;
		correct = 32'b11010100110010000101000011110110;
		#400 //-6882814000000.0 * -4.4686894e-05 = -6882814000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001010000110111001010010011;
		b = 32'b11000111100000011010101111011100;
		correct = 32'b11000111100000011010101111011100;
		#400 //-6.622021e-19 * -66391.72 = -66391.72
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010100110101001001010010;
		b = 32'b01010010000111101100100110010111;
		correct = 32'b01010010000111101100100110010111;
		#400 //0.012898045 * 170496740000.0 = 170496740000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000010000011111101111000010;
		b = 32'b10101001000101100111100110001110;
		correct = 32'b10101001000101100111100110001110;
		#400 //-6.059621e-39 * -3.3412123e-14 = -3.3412123e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110010101101110111111000101;
		b = 32'b10010101000100101000000110111001;
		correct = 32'b01110110010101101110111111000101;
		#400 //1.089858e+33 * -2.9586798e-26 = 1.089858e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010001010010000000000110001;
		b = 32'b01100011000011110011010011010100;
		correct = 32'b01100011000011110011010011010100;
		#400 //1.2416214e-37 * 2.641691e+21 = 2.641691e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101111010011101101100011110;
		b = 32'b01000000010111001100010010010111;
		correct = 32'b01000000010111001100010010010111;
		#400 //-4.0567537e-16 * 3.449499 = 3.449499
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010001110111101101100000110;
		b = 32'b11110101011100101111110011101100;
		correct = 32'b11110101011100101111110011101100;
		#400 //3.884762e-23 * -3.0802385e+32 = -3.0802385e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100011100000100111011110100;
		b = 32'b00001111100001100001001000010110;
		correct = 32'b01111100011100000100111011110100;
		#400 //4.9910104e+36 * 1.3220387e-29 = 4.9910104e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010111101010001111101010010;
		b = 32'b01000010110101101000111001001011;
		correct = 32'b01000010110101101000111001001011;
		#400 //1.5469395e-27 * 107.277916 = 107.277916
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111001001101000110101110;
		b = 32'b00101000101111100000110111010011;
		correct = 32'b00101000101111011111111110000110;
		#400 //-6.202153e-18 * 2.1100233e-14 = 2.109403e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011010111100100110110001000001;
		b = 32'b00111000110110100110111101000010;
		correct = 32'b11011010111100100110110001000001;
		#400 //-3.4117985e+16 * 0.000104157734 = -3.4117985e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110101011100101011110100;
		b = 32'b00100001111001011001001110100110;
		correct = 32'b11111001110101011100101011110100;
		#400 //-1.3875945e+35 * 1.5556726e-18 = -1.3875945e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010100100011111001100110011;
		b = 32'b01100011100100110000000101001111;
		correct = 32'b01111010100100011111001100110011;
		#400 //3.7890786e+35 * 5.4235313e+21 = 3.7890786e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001100111110000011000101;
		b = 32'b11010110101110010001000001010010;
		correct = 32'b11010110101110010001000010101100;
		#400 //-754463040.0 * -101739870000000.0 = -101740630000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101100100001101101001101;
		b = 32'b11111001001101010010000111101011;
		correct = 32'b11111001001101010111101011111001;
		#400 //-1.128885e+32 * -5.8780854e+34 = -5.8893745e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101110110000010110011110;
		b = 32'b00111110000011001101110100101010;
		correct = 32'b00111110000011001101110100101010;
		#400 //-4.9504296e-21 * 0.13756242 = 0.13756242
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010101001110010100010110110;
		b = 32'b10111111000110000010010011010000;
		correct = 32'b01101010101001110010100010110110;
		#400 //1.0104143e+26 * -0.5943117 = 1.0104143e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101010111101110010101011;
		b = 32'b01100110100100101100010110110111;
		correct = 32'b01100110100100101100010110110111;
		#400 //4.6583284e-18 * 3.4655635e+23 = 3.4655635e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010100111110110111001010;
		b = 32'b10110011101111011001010100000000;
		correct = 32'b11111001010100111110110111001010;
		#400 //-6.877485e+34 * -8.828101e-08 = -6.877485e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110011000101111111011000101;
		b = 32'b10000111001001110011111001101001;
		correct = 32'b11001110011000101111111011000101;
		#400 //-952086850.0 * -1.2582024e-34 = -952086850.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001110000101110000110101000;
		b = 32'b01011111111111011001010000101111;
		correct = 32'b01011111111111011001010000101111;
		#400 //1.3205682e-18 * 3.6544563e+19 = 3.6544563e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100110001010111001110111;
		b = 32'b00000011110100000011110110010110;
		correct = 32'b00010001100110001010111001110111;
		#400 //2.4088894e-28 * 1.2239281e-36 = 2.4088894e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010001110111111001111001;
		b = 32'b11111000111000111111111110011010;
		correct = 32'b11111001100111001011111100100011;
		#400 //-6.4739515e+34 * -3.6994863e+34 = -1.0173438e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001101001001000011110011110;
		b = 32'b01100110000111111011101111011000;
		correct = 32'b01100110000111111011101111011000;
		#400 //7.306589e-14 * 1.8858034e+23 = 1.8858034e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011001001111101101000001110;
		b = 32'b01110100011100100011011101001101;
		correct = 32'b01110100011100100011011101001101;
		#400 //-2.1185873e-27 * 7.676132e+31 = 7.676132e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001110110010111011110111000;
		b = 32'b00000000000011100111111011101111;
		correct = 32'b10110001110110010111011110111000;
		#400 //-6.3291417e-09 * 1.331232e-39 = -6.3291417e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110000010000101011111001000;
		b = 32'b11011101111111111011010100001101;
		correct = 32'b11011101111111111011010100001101;
		#400 //7.217933e-21 * -2.303206e+18 = -2.303206e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001010010101100010001011;
		b = 32'b01100001101100011110101110000000;
		correct = 32'b01100001101100011110101101101011;
		#400 //-744791000000000.0 * 4.102554e+20 = 4.1025467e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100000111011111100101010;
		b = 32'b11011001111100100010101011010101;
		correct = 32'b01110111100000111011111100101010;
		#400 //5.3442825e+33 * -8520505000000000.0 = 5.3442825e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101000011110110101100111;
		b = 32'b10001010100001101100011011011011;
		correct = 32'b11110100101000011110110101100111;
		#400 //-1.0263365e+32 * -1.2978532e-32 = -1.0263365e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011101101011011010101010101;
		b = 32'b10011100101110110011100001001001;
		correct = 32'b10011100101110110011100000011100;
		#400 //4.586963e-27 * -1.2389171e-21 = -1.2389126e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010011010000011110111010001;
		b = 32'b10000000100010000000100110100100;
		correct = 32'b10101010011010000011110111010001;
		#400 //-2.0627186e-13 * -1.2493086e-38 = -2.0627186e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111010010100101110111110;
		b = 32'b11111011010111111010001001001110;
		correct = 32'b11111011010111111010001001001110;
		#400 //500999060000.0 * -1.1611741e+36 = -1.1611741e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111100111110101101000010001;
		b = 32'b01010101000001000101010101000001;
		correct = 32'b01010101000001000101010101000001;
		#400 //-1.029787e-24 * 9093856000000.0 = 9093856000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100011110101100000100111;
		b = 32'b00111100001010100111111110110011;
		correct = 32'b01111000100011110101100000100111;
		#400 //2.325895e+34 * 0.010406422 = 2.325895e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000010001010011110100011110;
		b = 32'b11010010110000011011011110010000;
		correct = 32'b11010010110000011011011110010000;
		#400 //4.702538e-05 * -416004180000.0 = -416004180000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111001000100010010101100110;
		b = 32'b11110000001011101111011010111110;
		correct = 32'b11110111001000100010100000100010;
		#400 //-3.2887134e+33 * -2.1659474e+29 = -3.28893e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111110111111101111110001011;
		b = 32'b00001000111001100100101100111010;
		correct = 32'b01100111110111111101111110001011;
		#400 //2.1144227e+24 * 1.3860307e-33 = 2.1144227e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110001010111011000110010111;
		b = 32'b11000000111001111010000001001111;
		correct = 32'b11000000111001111010000001001111;
		#400 //2.1162884e-30 * -7.238319 = -7.238319
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100110101010000001010010;
		b = 32'b10111111101001111010101101011111;
		correct = 32'b11001010100110101010000001010101;
		#400 //-5066793.0 * -1.3099173 = -5066794.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111001010101101101110000;
		b = 32'b11001100110111110110110001011110;
		correct = 32'b11001100110111110110110001011110;
		#400 //1.4135227e-30 * -117138160.0 = -117138160.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000011010100011011110111010;
		b = 32'b00111111100001100110001110101001;
		correct = 32'b00111111100001100110001110101001;
		#400 //-9.754554e-39 * 1.0499164 = 1.0499164
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111001000010010101010100110;
		b = 32'b00011100101101111011110110111010;
		correct = 32'b01000111001000010010101010100110;
		#400 //41258.65 * 1.2158967e-21 = 41258.65
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101000101000100111100010000;
		b = 32'b10100100101001101100111100010010;
		correct = 32'b11111101000101000100111100010000;
		#400 //-1.2321016e+37 * -7.2341815e-17 = -1.2321016e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000001011011000110001011;
		b = 32'b10100000110010001110101100100101;
		correct = 32'b01100010000001011011000110001011;
		#400 //6.165526e+20 * -3.4036923e-19 = 6.165526e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110010111000010001011101110;
		b = 32'b11011101011011111100001101100010;
		correct = 32'b11011101011011111100001101100010;
		#400 //5.0053232e-11 * -1.0797975e+18 = -1.0797975e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100000110001010110000111;
		b = 32'b11011110110101100100010011101010;
		correct = 32'b11100110100000110001011001011101;
		#400 //-3.0951356e+23 * -7.7198614e+18 = -3.0952127e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111101011001110010111111001;
		b = 32'b10011111110010010110100101000000;
		correct = 32'b11100111101011001110010111111001;
		#400 //-1.6329786e+24 * -8.530093e-20 = -1.6329786e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001110001101101100010001100;
		b = 32'b00110010011011000110111000010001;
		correct = 32'b11111001110001101101100010001100;
		#400 //-1.2905836e+35 * 1.3762034e-08 = -1.2905836e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110011101110011001000001011;
		b = 32'b10110001110110011000101101010001;
		correct = 32'b11111110011101110011001000001011;
		#400 //-8.214479e+37 * -6.3313697e-09 = -8.214479e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110110111011010000110011;
		b = 32'b10011100111011001111011100101000;
		correct = 32'b00101110110110111011010000110011;
		#400 //9.990977e-11 * -1.5681058e-21 = 9.990977e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111101000011111101101010110;
		b = 32'b00001111010111100000111100100001;
		correct = 32'b11110111101000011111101101010110;
		#400 //-6.5707617e+33 * 1.0948359e-29 = -6.5707617e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010100000011110010011010110;
		b = 32'b00100110111101100101001010001001;
		correct = 32'b00100110111101011101000010100100;
		#400 //-3.520781e-18 * 1.709205e-15 = 1.7056842e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101010100110010101110110101;
		b = 32'b10000110100101110011110000010010;
		correct = 32'b00010101010100110010101110110101;
		#400 //4.264559e-26 * -5.688815e-35 = 4.264559e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000110011101100011101001011;
		b = 32'b10110100001110001001001100100110;
		correct = 32'b01011000110011101100011101001011;
		#400 //1818842800000000.0 * -1.7189868e-07 = 1818842800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000000110011110111110001101;
		b = 32'b11000001001001110010001111011101;
		correct = 32'b11000001001001110010001111011101;
		#400 //-1.3038865e-19 * -10.446256 = -10.446256
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111000000110110000101001;
		b = 32'b01011110000101110110101001111100;
		correct = 32'b11011110100101001011011011101011;
		#400 //-8.0856727e+18 * 2.7276673e+18 = -5.3580054e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111111111010010001011011101;
		b = 32'b00101001101000100010110111101001;
		correct = 32'b01010111111111010010001011011101;
		#400 //556652360000000.0 * 7.2022093e-14 = 556652360000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001011100010111100101110011;
		b = 32'b00111001010100011110001011001011;
		correct = 32'b01010001011100010111100101110011;
		#400 //64820294000.0 * 0.0002001628 = 64820294000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000011000010110110101010011;
		b = 32'b00001100100001100111011001010111;
		correct = 32'b01101000011000010110110101010011;
		#400 //4.2581965e+24 * 2.0717192e-31 = 4.2581965e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011001101000001000001010111;
		b = 32'b00000101000010000101111101101100;
		correct = 32'b01100011001101000001000001010111;
		#400 //3.3215913e+21 * 6.4122155e-36 = 3.3215913e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011100100111011101000000100;
		b = 32'b01010101010000110001011101010000;
		correct = 32'b11111011100100111011101000000100;
		#400 //-1.534081e+36 * 13406556000000.0 = -1.534081e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010100111111010001000110010;
		b = 32'b10000110011010010110000111001110;
		correct = 32'b01101010100111111010001000110010;
		#400 //9.649258e+25 * -4.3894285e-35 = 9.649258e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000011100110110001101100110;
		b = 32'b01111110111101010111110101010100;
		correct = 32'b01111110111101010111110101010100;
		#400 //3.1457197e-24 * 1.631558e+38 = 1.631558e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001111101000010001110010010;
		b = 32'b11100010001101001000010001100011;
		correct = 32'b11100010001101001000010011011101;
		#400 //-8589875500000000.0 * -8.3248835e+20 = -8.3249694e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100011001111101111100011110;
		b = 32'b01111101100100011010000011011011;
		correct = 32'b01111101011010010100100111101110;
		#400 //-4.8157837e+36 * 2.4196659e+37 = 1.9380874e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001011010001010001000001101;
		b = 32'b00011100010010000100101110111001;
		correct = 32'b11011001011010001010001000001101;
		#400 //-4092523200000000.0 * 6.627232e-22 = -4092523200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010011011110000101101111111;
		b = 32'b11010110101101010101110001100011;
		correct = 32'b11010110101101010101110001100011;
		#400 //1.7562246e-37 * -99704200000000.0 = -99704200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011010000011001010100011011;
		b = 32'b10000110011000100000111101111101;
		correct = 32'b01010011010000011001010100011011;
		#400 //831430260000.0 * -4.2517255e-35 = 831430260000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000100001001100110000000000;
		b = 32'b00101010011011010000011101010101;
		correct = 32'b01010000100001001100110000000000;
		#400 //17823695000.0 * 2.1052372e-13 = 17823695000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010011011111000011001110011;
		b = 32'b11000101111001101100111100111110;
		correct = 32'b01011010011011111000011001110011;
		#400 //1.6855087e+16 * -7385.9053 = 1.6855087e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000111101010101101001100000;
		b = 32'b10000100111111010010001001111111;
		correct = 32'b10111000111101010101101001100000;
		#400 //-0.00011699344 * -5.9511694e-36 = -0.00011699344
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111010000000010110110101100;
		b = 32'b11111001111100010010011101111011;
		correct = 32'b01111111010000000000111110000111;
		#400 //2.5544892e+38 * -1.5651804e+35 = 2.552924e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010111100011011101010100011;
		b = 32'b01000000010101111001010110111101;
		correct = 32'b11010010111100011011101010100011;
		#400 //-519109180000.0 * 3.3685143 = -519109180000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100100010000001010011111010;
		b = 32'b00010011000011001010111011100101;
		correct = 32'b01011100100010000001010011111010;
		#400 //3.064293e+17 * 1.7756714e-27 = 3.064293e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101000100101110001000100011;
		b = 32'b11111110101001000001001011101011;
		correct = 32'b11111110101001000001001011101011;
		#400 //4.5261926e-31 * -1.0904581e+38 = -1.0904581e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110111000000110111010010;
		b = 32'b01011111000111010110101011100111;
		correct = 32'b01011111000111010110101011100111;
		#400 //-1.0247062e-07 * 1.1343133e+19 = 1.1343133e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110011000010001110001110011;
		b = 32'b00001001000100010111011000111001;
		correct = 32'b11101110011000010001110001110011;
		#400 //-1.741713e+28 * 1.7509328e-33 = -1.741713e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111010101011000111011011010;
		b = 32'b11000100111001100011101101110111;
		correct = 32'b11110111010101011000111011011010;
		#400 //-4.331471e+33 * -1841.8583 = -4.331471e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101100010100111100110001000;
		b = 32'b11000111011000111000101001100100;
		correct = 32'b01111101100010100111100110001000;
		#400 //2.300806e+37 * -58250.39 = 2.300806e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111101100110111110101001110;
		b = 32'b00101111101101000001001110010001;
		correct = 32'b11010111101100110111110101001110;
		#400 //-394701520000000.0 * 3.2755712e-10 = -394701520000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100011100111011011111100;
		b = 32'b00110010000110000010001000100001;
		correct = 32'b00111111100011100111011011111100;
		#400 //1.1130061 * 8.8553245e-09 = 1.1130061
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010001100111010001100101110;
		b = 32'b10111100010011110100110111101010;
		correct = 32'b10111100010011110100110111101010;
		#400 //1.3197673e-37 * -0.0126528535 = -0.0126528535
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000001000001011110010111;
		b = 32'b11011100011110011111010001010110;
		correct = 32'b11011100011110011111010001010110;
		#400 //528.3686 * -2.8142368e+17 = -2.8142368e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110110101011000010100001010;
		b = 32'b11010111010000011000110111100111;
		correct = 32'b01110110110101011000010100001010;
		#400 //2.1653468e+33 * -212815210000000.0 = 2.1653468e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101011100101001001011001111;
		b = 32'b11000100011000111010001011000010;
		correct = 32'b11110101011100101001001011001111;
		#400 //-3.074984e+32 * -910.5431 = -3.074984e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101100011001001010000000001;
		b = 32'b11101111110110101010100101010010;
		correct = 32'b11101111110110101010100101011011;
		#400 //-8.298269e+22 * -1.3534486e+29 = -1.3534494e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010110110100011111000101000;
		b = 32'b11111011110010110110000000110100;
		correct = 32'b11111011110010110110000000110100;
		#400 //-1.3191968e+26 * -2.111975e+36 = -2.111975e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010001011001111100001010010;
		b = 32'b11000101110101110010010111001100;
		correct = 32'b11000101110101011100101111011011;
		#400 //43.2425 * -6884.7246 = -6841.482
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011100010010101101011110011;
		b = 32'b01010111101110000000100110110000;
		correct = 32'b01010111101110000000100110110000;
		#400 //0.00419175 * 404703500000000.0 = 404703500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111000111010011011010111001;
		b = 32'b11110110110010111110101100101110;
		correct = 32'b11111111000111010011011100011111;
		#400 //-2.0897293e+38 * -2.067981e+33 = -2.08975e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101010011111111110011000;
		b = 32'b10111101101111101011000110110000;
		correct = 32'b01000001101010010100000011100110;
		#400 //21.249802 * -0.09311235 = 21.156689
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010000110001010001100101101;
		b = 32'b01011101000110110001001000101111;
		correct = 32'b01011101000110110001001000101101;
		#400 //-163893170000.0 * 6.983778e+17 = 6.983777e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011111001110000111100100;
		b = 32'b01010000110010011110110100011001;
		correct = 32'b01010000110010011110110100011001;
		#400 //-1.4037792e-14 * 27102070000.0 = 27102070000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100000110111011011011100101;
		b = 32'b11110010101001000111000110010010;
		correct = 32'b11110010101001000111000110010010;
		#400 //1.4502037e-07 * -6.5142835e+30 = -6.5142835e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110100000011111010010011;
		b = 32'b00101110110010011000010100010001;
		correct = 32'b01001110110100000011111010010011;
		#400 //1746880900.0 * 9.164059e-11 = 1746880900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011010101111001000001110101;
		b = 32'b10110100101110010101100111000110;
		correct = 32'b11100011010101111001000001110101;
		#400 //-3.9764592e+21 * -3.4524254e-07 = -3.9764592e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111111001011000111101000111;
		b = 32'b11101011000001110110101110001000;
		correct = 32'b11101011000001110110101110001000;
		#400 //9.7222305e-20 * -1.6371279e+26 = -1.6371279e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101111100001111111111101001;
		b = 32'b00001010011100000001011010000000;
		correct = 32'b01111101111100001111111111101001;
		#400 //4.0042935e+37 * 1.15598114e-32 = 4.0042935e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011101110001011100110011111;
		b = 32'b00011010010010000011101101110111;
		correct = 32'b01011011101110001011100110011111;
		#400 //1.0399098e+17 * 4.1407066e-23 = 1.0399098e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010111100100101001001101011;
		b = 32'b11010101101000111110010001110011;
		correct = 32'b11010101101000111110010001110011;
		#400 //-4.3045024e-13 * -22525197000000.0 = -22525197000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101000111111001111100000100;
		b = 32'b10101011000100001011011001011000;
		correct = 32'b10101011000100001011011001011000;
		#400 //2.1125684e-21 * -5.141213e-13 = -5.141213e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011100110011010000110101;
		b = 32'b01000000110110111001011010110001;
		correct = 32'b01000000110110111001011010110001;
		#400 //1.4156332e-08 * 6.862145 = 6.862145
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011010111101011100000000111;
		b = 32'b01100100110110111101111010110111;
		correct = 32'b01100100110110111101111010011011;
		#400 //-6.2689785e+16 * 3.2447082e+22 = 3.244702e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001000110011000000110001111;
		b = 32'b10101001100100110110011111110111;
		correct = 32'b10101001100100110110011111110111;
		#400 //-7.936079e-24 * -6.5461464e-14 = -6.5461464e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111100110111011101001100110;
		b = 32'b11001000111001111011001000001000;
		correct = 32'b11001000111001111011000111100001;
		#400 //1.2166259 * -474512.25 = -474511.03
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011000010110011010011101011;
		b = 32'b00010100011110001001110000110101;
		correct = 32'b00110011000010110011010011101011;
		#400 //3.2411588e-08 * 1.2551607e-26 = 3.2411588e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010010110110110010000100000;
		b = 32'b01010010111110000101110101100101;
		correct = 32'b11110010010110110110010000100000;
		#400 //-4.3454887e+30 * 533359400000.0 = -4.3454887e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100110110010001010000011000;
		b = 32'b11111110110111000101110001011001;
		correct = 32'b11111110110111000101110001011001;
		#400 //-2.1919326e-26 * -1.4645483e+38 = -1.4645483e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011000111101010010011011;
		b = 32'b11111011001100111010011100111011;
		correct = 32'b11111011001100111010011100111011;
		#400 //1.326148e-08 * -9.32813e+35 = -9.32813e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010100000101110010110001000;
		b = 32'b01111010101000111011000011100001;
		correct = 32'b01111010101000111011000011100001;
		#400 //-1.2604885e-32 * 4.2496596e+35 = 4.2496596e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100001100000110000000010110;
		b = 32'b00001110011101011010101000010000;
		correct = 32'b11001100001100000110000000010110;
		#400 //-46235736.0 * 3.0280464e-30 = -46235736.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010011111000110100111001010;
		b = 32'b10001001011011111101111011100010;
		correct = 32'b10101010011111000110100111001010;
		#400 //-2.2418799e-13 * -2.8873378e-33 = -2.2418799e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111010000011101001010110010;
		b = 32'b01110100110110101101111011010110;
		correct = 32'b01110100110110101101111011010110;
		#400 //-0.7571212 * 1.3872563e+32 = 1.3872563e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000010010101001110011111100;
		b = 32'b10011011111100000100111001110110;
		correct = 32'b00110000010010101001110011111100;
		#400 //7.371026e-10 * -3.9755374e-22 = 7.371026e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101010000100010000011011111;
		b = 32'b00100100101000001000010111100010;
		correct = 32'b10101101010000100010000010001111;
		#400 //-1.1034922e-11 * 6.9615745e-17 = -1.1034853e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010111101100111100011110101;
		b = 32'b01000000011110111010010000110110;
		correct = 32'b01111010111101100111100011110101;
		#400 //6.3987916e+35 * 3.9318976 = 6.3987916e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010010100110001010110011011;
		b = 32'b11001111111011010011010001111111;
		correct = 32'b11001111111011010011010001111111;
		#400 //0.00080522307 * -7959281000.0 = -7959281000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110101010000001111111100;
		b = 32'b00000100010100100011110011000011;
		correct = 32'b10111100110101010000001111111100;
		#400 //-0.026002876 * 2.4713282e-36 = -0.026002876
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000111101010000001001001010;
		b = 32'b10001000101111101110101100110000;
		correct = 32'b11011000111101010000001001001010;
		#400 //-2155121400000000.0 * -1.1490501e-33 = -2155121400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011101001110110111010110100;
		b = 32'b01011000011000010010100001011000;
		correct = 32'b01011000011000010010100001011000;
		#400 //0.0051096324 * 990253570000000.0 = 990253570000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000101111011000110011101;
		b = 32'b00011000100010000010110100001111;
		correct = 32'b11101001000101111011000110011101;
		#400 //-1.146166e+25 * 3.5200674e-24 = -1.146166e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101001001110110101001111000;
		b = 32'b01000011111100111111111100110110;
		correct = 32'b01000011111100111111111100110110;
		#400 //9.516492e-12 * 487.99384 = 487.99384
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010010010011000010100011;
		b = 32'b10011010101010011110001001001011;
		correct = 32'b10011010101010011110001001001011;
		#400 //-9.6869455e-33 * -7.026236e-23 = -7.026236e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011000011001110111011000110;
		b = 32'b00000010111001011010101101011100;
		correct = 32'b11000011000011001110111011000110;
		#400 //-140.93271 * 3.3746881e-37 = -140.93271
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101101001111010010111100111;
		b = 32'b11011111101101110000000010010010;
		correct = 32'b11101101101001111010010111100111;
		#400 //-6.48557e+27 * -2.63734e+19 = -6.48557e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001001010011100100101000110;
		b = 32'b10011100110101110100110111101011;
		correct = 32'b01101001001010011100100101000110;
		#400 //1.2828684e+25 * -1.4247648e-21 = 1.2828684e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001010011000010110100010;
		b = 32'b00010010101000010111011001110001;
		correct = 32'b00011111001010011000010110100010;
		#400 //3.589768e-20 * 1.0189727e-27 = 3.589768e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100001100101110001111001111;
		b = 32'b10010011010001100010010011001110;
		correct = 32'b01000100001100101110001111001111;
		#400 //715.5595 * -2.500926e-27 = 715.5595
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111011010001110010100100011;
		b = 32'b11000001000000010010010101011111;
		correct = 32'b11100111011010001110010100100011;
		#400 //-1.09981585e+24 * -8.071624 = -1.09981585e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111100101011010100010001;
		b = 32'b11110001001111011111011100000100;
		correct = 32'b11110001001111011111011100000100;
		#400 //-9.1296336e-35 * -9.4066065e+29 = -9.4066065e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110111110111001010100001111;
		b = 32'b01010101001110100111010110000110;
		correct = 32'b01010101001110100110110110101001;
		#400 //-2110425000.0 * 12813370000000.0 = 12811259000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101110010010000101101010000;
		b = 32'b00110011110000100111100001110010;
		correct = 32'b00110011110000100111100001110010;
		#400 //-3.4875608e-16 * 9.055738e-08 = 9.055738e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101101111001010101100010100;
		b = 32'b00111100000011110110111101000101;
		correct = 32'b00111100000011110111010100101010;
		#400 //1.4056882e-06 * 0.008754556 = 0.008755961
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100100101010110001101100010;
		b = 32'b10111100101000101110110000100001;
		correct = 32'b01001100100101010110001101100010;
		#400 //78322450.0 * -0.019887986 = 78322450.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110011100110110011000000101;
		b = 32'b00010001101100011101110010111101;
		correct = 32'b01001110011100110110011000000101;
		#400 //1020887360.0 * 2.8061717e-28 = 1020887360.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001101100100111111101011111;
		b = 32'b00101000000101111101010111101001;
		correct = 32'b11111001101100100111111101011111;
		#400 //-1.1585153e+35 * 8.428568e-15 = -1.1585153e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111000000111011000111001;
		b = 32'b00101100010010101100101011010110;
		correct = 32'b11110010111000000111011000111001;
		#400 //-8.891848e+30 * 2.8818523e-12 = -8.891848e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001011101000011101010011;
		b = 32'b01111010010101001101101011010111;
		correct = 32'b01111010010101001101101011010111;
		#400 //1.4783148e-19 * 2.7630138e+35 = 2.7630138e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111100011110111110011100111;
		b = 32'b10000001000011111101000100111110;
		correct = 32'b01010111100011110111110011100111;
		#400 //315533230000000.0 * -2.6415076e-38 = 315533230000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011011100100001100101101111;
		b = 32'b10111001111000101101010101100001;
		correct = 32'b01110011011100100001100101101111;
		#400 //1.9181087e+31 * -0.0004326506 = 1.9181087e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110110100101001011111001;
		b = 32'b10101011011011111100101010011000;
		correct = 32'b01010101110110100101001011111001;
		#400 //30006237000000.0 * -8.519101e-13 = 30006237000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011111010110011110011101011;
		b = 32'b00011100011011101110001111001001;
		correct = 32'b10100011111010110011101100001101;
		#400 //-2.550455e-17 * 7.9042e-22 = -2.550376e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110010011110001010000001;
		b = 32'b11001110110101100100010011011010;
		correct = 32'b11111010110010011110001010000001;
		#400 //-5.2412286e+35 * -1797418200.0 = -5.2412286e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001011101101110111101001010;
		b = 32'b11011100001001000100100011101100;
		correct = 32'b11011100001001000100100011101100;
		#400 //-4.5354746e-38 * -1.849683e+17 = -1.849683e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100010101011001001010100011;
		b = 32'b10010100010011100011011101001100;
		correct = 32'b01101100010101011001001010100011;
		#400 //1.0327747e+27 * -1.04112476e-26 = 1.0327747e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100101010000101110010010100;
		b = 32'b00010110110111110110101101111011;
		correct = 32'b00010110111010011111000101000100;
		#400 //1.700018e-26 * 3.6095423e-25 = 3.779544e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100100001011000100011001;
		b = 32'b11010001001010010111100111100001;
		correct = 32'b01110111100100001011000100011001;
		#400 //5.869396e+33 * -45493390000.0 = 5.869396e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111111011101010100110010110;
		b = 32'b10001010011000010001111101011101;
		correct = 32'b01101111111011101010100110010110;
		#400 //1.477249e+29 * -1.0839255e-32 = 1.477249e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111000110001000000000100111;
		b = 32'b10010010100101000101010001001111;
		correct = 32'b10010010100101000101010001001110;
		#400 //1.147287e-34 * -9.360897e-28 = -9.360896e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001001011000001101100110101;
		b = 32'b10111000100010011010000001100101;
		correct = 32'b10111000100010011010000001100101;
		#400 //-5.8311875e-19 * -6.562545e-05 = -6.562545e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011100010001100000011010110;
		b = 32'b11100011111011011001011110100000;
		correct = 32'b11100011111011011001011110100000;
		#400 //-1.4826819e-17 * -8.765608e+21 = -8.765608e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111111001110110000110000101;
		b = 32'b00111011101010100101111010011011;
		correct = 32'b00111011101010010111011100111001;
		#400 //-2.7582757e-05 * 0.005199266 = 0.005171683
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101000010001100001010010101;
		b = 32'b00010010000101101001101101010001;
		correct = 32'b01100101000010001100001010010101;
		#400 //4.0364453e+22 * 4.7523097e-28 = 4.0364453e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110010101111110111010100010;
		b = 32'b00010100100111011111111101100101;
		correct = 32'b00010100100111011111111101100101;
		#400 //-4.0612325e-35 * 1.5953684e-26 = 1.5953684e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111011110100100000101010011;
		b = 32'b00011011001011111101001000111011;
		correct = 32'b01100111011110100100000101010011;
		#400 //1.18179664e+24 * 1.454359e-22 = 1.18179664e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100101100001001000111101000;
		b = 32'b10101010000010111011110100010011;
		correct = 32'b01111100101100001001000111101000;
		#400 //7.3344286e+36 * -1.2411278e-13 = 7.3344286e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000001011101011100010100;
		b = 32'b10100000011101000001111101100100;
		correct = 32'b10101000000001011101100000001000;
		#400 //-7.429621e-15 * -2.067799e-19 = -7.4298274e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101010111011011001110011;
		b = 32'b01011100011010110011111100011100;
		correct = 32'b01011100011010110011111100011100;
		#400 //-1406670.4 * 2.6486404e+17 = 2.6486404e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100000001011110111010000000;
		b = 32'b10100010000000011100111111011111;
		correct = 32'b11101100000001011110111010000000;
		#400 //-6.476537e+26 * -1.7592806e-18 = -6.476537e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000010101011011101111000010;
		b = 32'b01111011100110110010001110101100;
		correct = 32'b01111011100110110010001110101100;
		#400 //1.1864589e-14 * 1.611059e+36 = 1.611059e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111001111101010010011110011;
		b = 32'b00010010111100111101100101110100;
		correct = 32'b00010010111101010101011010111110;
		#400 //9.399491e-30 * 1.5389062e-27 = 1.5483057e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010001100001010000100100001;
		b = 32'b00110001000101110011100011100111;
		correct = 32'b01101010001100001010000100100001;
		#400 //5.3382963e+25 * 2.2005737e-09 = 5.3382963e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001011111010000111101111110;
		b = 32'b01110001011000111001111110111011;
		correct = 32'b01110001011000111001111110111011;
		#400 //-3.6825152e-09 * 1.1271392e+30 = 1.1271392e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010101110100011100110101;
		b = 32'b10100100001011101001011001110110;
		correct = 32'b01001100010101110100011100110101;
		#400 //56433876.0 * -3.785768e-17 = 56433876.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100011000011010101101000101;
		b = 32'b01100010101101011100101001100100;
		correct = 32'b01100010101101011100101001100100;
		#400 //-1.1393374e-26 * 1.6767222e+21 = 1.6767222e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100110100010111000001000000;
		b = 32'b00111011001101001110100110011110;
		correct = 32'b11111100110100010111000001000000;
		#400 //-8.699734e+36 * 0.0027605067 = -8.699734e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100111001000010011110110111;
		b = 32'b11010001100011111000010001111111;
		correct = 32'b01101100111001000010011110110111;
		#400 //2.2065811e+27 * -77050405000.0 = 2.2065811e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000001110011111111100011000;
		b = 32'b11101001011101001110010010010110;
		correct = 32'b11101001011101001110010010010110;
		#400 //190460.38 * -1.8503585e+25 = -1.8503585e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011100010111101100111110000;
		b = 32'b01001111000110001110011101100010;
		correct = 32'b01001111000110001110011101100010;
		#400 //2.313646e-22 * 2565300700.0 = 2565300700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101000000010101011100110111;
		b = 32'b01100111101000011000101000110001;
		correct = 32'b01100111101000011000101000110001;
		#400 //-135623540.0 * 1.5257004e+24 = 1.5257004e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000001100000110000100010011;
		b = 32'b10111100101010101000010001011110;
		correct = 32'b10111100101010101000010001011110;
		#400 //1.4939899e-19 * -0.02081507 = -0.02081507
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101111110110111110110101;
		b = 32'b01010001100100110011001000111101;
		correct = 32'b01010001100100110011001000111101;
		#400 //1.7580653e-38 * 79025380000.0 = 79025380000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100001010010100011001000110;
		b = 32'b01010101111100111011011101110001;
		correct = 32'b01010101110111101000111010101000;
		#400 //-2908113900000.0 * 33496150000000.0 = 30588036000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111110001001011010010110;
		b = 32'b11101100011101100100000110011111;
		correct = 32'b11101100011101100100000110011111;
		#400 //-0.030345242 * -1.19082255e+27 = -1.19082255e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110011101101010111001110;
		b = 32'b00000111110011101001011010001101;
		correct = 32'b11010010110011101101010111001110;
		#400 //-444175160000.0 * 3.108392e-34 = -444175160000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101010010000000100001010100;
		b = 32'b00100110101001100100110001010000;
		correct = 32'b01000101010010000000100001010100;
		#400 //3200.5205 * 1.1539248e-15 = 3200.5205
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110011001111100101000000111;
		b = 32'b11100100111000111000010000110101;
		correct = 32'b11100100111000111000010000110101;
		#400 //-14834.507 * -3.35755e+22 = -3.35755e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000011111100001110110110111;
		b = 32'b00111011000101000001111100100101;
		correct = 32'b00111011000101000001111100100101;
		#400 //-1.1581932e-38 * 0.0022601571 = 0.0022601571
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000110000011010001101101010;
		b = 32'b01000100101000001110111001000111;
		correct = 32'b01011000110000011010001101101010;
		#400 //1703260800000000.0 * 1287.4462 = 1703260800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100010011100100001000101000;
		b = 32'b11010000101011001011010011011001;
		correct = 32'b11010000101011001011010011011001;
		#400 //-1.9209313e-07 * -23180265000.0 = -23180265000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011010101001111000101000;
		b = 32'b10010110010011101101001001100000;
		correct = 32'b10111010011010101001111000101000;
		#400 //-0.0008949959 * -1.670693e-25 = -0.0008949959
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000101001001110001001111100;
		b = 32'b10000000000111011110000001101100;
		correct = 32'b01100000101001001110001001111100;
		#400 //9.504956e+19 * -2.743737e-39 = 9.504956e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111111111000001100001101011;
		b = 32'b01011001101000011101111000000101;
		correct = 32'b01011001101000011101111000000101;
		#400 //3.0052111e-05 * 5695198000000000.0 = 5695198000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001101000110110111011111101;
		b = 32'b01011111011111111101010010110101;
		correct = 32'b01011111011111111101010010110101;
		#400 //3.9345195e-33 * 1.8434558e+19 = 1.8434558e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110111111010100101001101111;
		b = 32'b10010010000011010111101100001010;
		correct = 32'b11010110111111010100101001101111;
		#400 //-139248070000000.0 * -4.4643412e-28 = -139248070000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111011010100000011111000;
		b = 32'b10001110000011100000100001110100;
		correct = 32'b01011101111011010100000011111000;
		#400 //2.1369921e+18 * -1.7506921e-30 = 2.1369921e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011010110100001000010101;
		b = 32'b11000100110001011111100001000000;
		correct = 32'b11000100110001011111100001000000;
		#400 //8.7640484e-07 * -1583.7578 = -1583.7578
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001101101010000100111001001;
		b = 32'b10001100101001011101011001111011;
		correct = 32'b01010001101101010000100111001001;
		#400 //97194160000.0 * -2.555136e-31 = 97194160000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010001100100001010110101111;
		b = 32'b11000100010101100010000101101111;
		correct = 32'b01111010001100100001010110101111;
		#400 //2.3116716e+35 * -856.5224 = 2.3116716e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100001010000010001111111011;
		b = 32'b10111000111100111110101001011011;
		correct = 32'b10111100001010100000101111010000;
		#400 //-0.010262485 * -0.00011630795 = -0.010378793
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000011110010110011000100011;
		b = 32'b10100101110111100010110001101111;
		correct = 32'b01110000011110010110011000100011;
		#400 //3.0874097e+29 * -3.854097e-16 = 3.0874097e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000001111000110100001001;
		b = 32'b11000111000100010011011111110001;
		correct = 32'b11000111000100010011011111110001;
		#400 //-3.9834835e-37 * -37175.94 = -37175.94
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010000101001111100011110111;
		b = 32'b00011000001111100010111101011000;
		correct = 32'b00110010000101001111100011110111;
		#400 //8.671342e-09 * 2.4580827e-24 = 8.671342e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100101000010010110001010001;
		b = 32'b00111111011011110000101110100010;
		correct = 32'b01001100101000010010110001010001;
		#400 //84501130.0 * 0.93377125 = 84501130.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110010111111010100000101101;
		b = 32'b10001111001011100100111101111011;
		correct = 32'b10001111011001100011100110000110;
		#400 //-2.7567846e-30 * -8.59417e-30 = -1.1350954e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100001100100011011101110010;
		b = 32'b11100110001001000100111100011110;
		correct = 32'b11100110000110010010101110100111;
		#400 //1.3150063e+22 * -1.9398189e+23 = -1.8083183e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111011110001001100001010010;
		b = 32'b01111101101010101000111000111011;
		correct = 32'b01111101101010101000111000111011;
		#400 //-5.264204e-20 * 2.8338408e+37 = 2.8338408e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111100101011110010011001000;
		b = 32'b00100001111011001000101010101111;
		correct = 32'b00100001111011001000101010101111;
		#400 //1.4780658e-29 * 1.6028691e-18 = 1.6028691e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111101101011001100100110001;
		b = 32'b00001001100110000000110110100110;
		correct = 32'b10010111101101011001100100110001;
		#400 //-1.1735522e-24 * 3.6605504e-33 = -1.1735522e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100100100011101011111101001;
		b = 32'b10111001101100010110110100000110;
		correct = 32'b10111001101100010110110100000110;
		#400 //-2.2470734e-31 * -0.000338413 = -0.000338413
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011000110101110110000100;
		b = 32'b11011111100001101111101101111000;
		correct = 32'b11111011011000110101110110000100;
		#400 //-1.1805481e+36 * -1.9453e+19 = -1.1805481e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001011011000111011111110010;
		b = 32'b11001101110010100001000010010010;
		correct = 32'b11001101110010100001000010010010;
		#400 //3.44107e-09 * -423760450.0 = -423760450.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000011110111100011010000;
		b = 32'b11001000011101001010100101000001;
		correct = 32'b01100010000011110111100011010000;
		#400 //6.616475e+20 * -250533.02 = 6.616475e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000100011000100101111001011;
		b = 32'b00100101101011111010001011011010;
		correct = 32'b00100101101011111010001011011010;
		#400 //3.6265683e-24 * 3.0468013e-16 = 3.0468013e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110010100110010010000010;
		b = 32'b11101011101011010011000101001100;
		correct = 32'b11101011101011010011000101001100;
		#400 //3.510952e-16 * -4.1875393e+26 = -4.1875393e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101100111001011011111101101;
		b = 32'b01010110010000101101111011010011;
		correct = 32'b01010110010000101101111011010011;
		#400 //5014.9907 * 53565570000000.0 = 53565570000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000011111010011000111110;
		b = 32'b10000000110011100100001111100101;
		correct = 32'b01100010000011111010011000111110;
		#400 //6.6246585e+20 * -1.8942468e-38 = 6.6246585e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010001010101000110101010011;
		b = 32'b10001000100010101000001110001001;
		correct = 32'b01011010001010101000110101010011;
		#400 //1.2001533e+16 * -8.336497e-34 = 1.2001533e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010001010101000010110000;
		b = 32'b01110000001011000110011001110110;
		correct = 32'b01110000001011000110011010000010;
		#400 //2.3294865e+23 * 2.1342116e+29 = 2.1342138e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000100100100110100110011010;
		b = 32'b01010000011111101011110101010110;
		correct = 32'b01011000100100100110101000011001;
		#400 //1287858000000000.0 * 17095285000.0 = 1287875100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001100111001111010110100111;
		b = 32'b01101110010011000001101001100001;
		correct = 32'b11111001100111001111010110100101;
		#400 //-1.0187259e+35 * 1.5791708e+28 = -1.0187257e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101011000111111000010001100;
		b = 32'b11001010000101010111001100101110;
		correct = 32'b11101101011000111111000010001100;
		#400 //-4.4089938e+27 * -2448587.5 = -4.4089938e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111010000110011101000101000;
		b = 32'b11011010001000111011100001111111;
		correct = 32'b01101111010000110011101000101000;
		#400 //6.0419884e+28 * -1.1520819e+16 = 6.0419884e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110111110001000101111110;
		b = 32'b00010111111001001101110011011001;
		correct = 32'b11010010110111110001000101111110;
		#400 //-479035600000.0 * 1.4789904e-24 = -479035600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011110101010001110010110101;
		b = 32'b01110110100000101010001000010110;
		correct = 32'b01110110100000101010001000010110;
		#400 //-8.208781e-32 * 1.3247775e+33 = 1.3247775e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101101101110001001010011110;
		b = 32'b10001010111010110011001101111010;
		correct = 32'b01000101101101110001001010011110;
		#400 //5858.327 * -2.264904e-32 = 5858.327
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010010001010001110100001;
		b = 32'b11110011101101101000000011010010;
		correct = 32'b11110011101101101000000011010010;
		#400 //-0.1959367 * -2.8918787e+31 = -2.8918787e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000100010010001001000000110;
		b = 32'b10000000111000100010110000101100;
		correct = 32'b00100000100010010001001000000110;
		#400 //2.322063e-19 * -2.0770668e-38 = 2.322063e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010111011111010001101001001;
		b = 32'b00111100000011110110001010001000;
		correct = 32'b00111100000011110110001010001000;
		#400 //-1.5123273e-27 * 0.008751519 = 0.008751519
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100111011101011100000101110;
		b = 32'b10001101011110000001010000001001;
		correct = 32'b10001101000000001011011111110010;
		#400 //3.6780555e-31 * -7.6445017e-31 = -3.966446e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011011110100110011011011111;
		b = 32'b11001111111110111111010000111010;
		correct = 32'b11001111111110111111010000111010;
		#400 //-250.40184 * -8454173700.0 = -8454173700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100101000110111011110001011;
		b = 32'b11010010110110010001001010101000;
		correct = 32'b11100100101000110111011110001011;
		#400 //-2.4123466e+22 * -466160450000.0 = -2.4123466e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011010000001101011100000100;
		b = 32'b10001101100101011100111101000000;
		correct = 32'b01100011010000001101011100000100;
		#400 //3.5572684e+21 * -9.232728e-31 = 3.5572684e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111011101010000011011010010;
		b = 32'b11100111010011111000001110110101;
		correct = 32'b01111111011101010000011011010010;
		#400 //3.2569627e+38 * -9.799594e+23 = 3.2569627e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110111101110000010111101;
		b = 32'b00111100000010010100101100001101;
		correct = 32'b11010010110111101110000010111101;
		#400 //-478626600000.0 * 0.00837971 = -478626600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000001001000010101000101110;
		b = 32'b00011010000110100111001000101101;
		correct = 32'b11000000001001000010101000101110;
		#400 //-2.5650744 * 3.1938684e-23 = -2.5650744
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100010111010100101111011010;
		b = 32'b11011001000011101110010100011111;
		correct = 32'b11011001000011101110010100011111;
		#400 //-2.0609824e-07 * -2513835500000000.0 = -2513835500000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000001000001000100000110000;
		b = 32'b10110010001000010001101111110001;
		correct = 32'b10110010001000010001101111110001;
		#400 //-4.8308336e-34 * -9.3777865e-09 = -9.3777865e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010110100110100000011010111;
		b = 32'b00100010001000010010110100010101;
		correct = 32'b01110010110100110100000011010111;
		#400 //8.3686046e+30 * 2.1843435e-18 = 8.3686046e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101000001111010111010000010;
		b = 32'b01101000101110010110101110110110;
		correct = 32'b01101000101110010110101110110110;
		#400 //-1.795732e-21 * 7.004998e+24 = 7.004998e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000001011110111011000010;
		b = 32'b11111001010111101010101011010001;
		correct = 32'b11111001010111101010110011101001;
		#400 //-2.6528094e+30 * -7.2259654e+34 = -7.226231e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101010011100001001100110010;
		b = 32'b11111101011110010001001010010000;
		correct = 32'b11111101111000111001001011100001;
		#400 //-1.712004e+37 * -2.0692135e+37 = -3.7812174e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110101110010111010001100011;
		b = 32'b01011010101101000011110110001011;
		correct = 32'b01011010101101000011110110001011;
		#400 //-6.976028e-35 * 2.5366582e+16 = 2.5366582e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011001111100011110101001;
		b = 32'b01110101100111001001000101010110;
		correct = 32'b01110101100111001001000101010110;
		#400 //-0.056586895 * 3.9694632e+32 = 3.9694632e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101001110101100101010100101;
		b = 32'b11110000111100011111010111010010;
		correct = 32'b11110000111100011111010111010010;
		#400 //-2.472166e-21 * -5.9906453e+29 = -5.9906453e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111000100010010001010011110;
		b = 32'b00111000110111110100100010100010;
		correct = 32'b00111000110111110100100010100010;
		#400 //2.0141558e-15 * 0.000106469975 = 0.000106469975
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001001001101100110010001011;
		b = 32'b00100011000000011001011100100111;
		correct = 32'b01111001001001101100110010001011;
		#400 //5.412937e+34 * 7.025112e-18 = 5.412937e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011001101011100110010011110;
		b = 32'b10100011001100010111001001000010;
		correct = 32'b10100011001100010111001001000010;
		#400 //5.342601e-37 * -9.619384e-18 = -9.619384e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110101001111101110000100101;
		b = 32'b01000010101011011100100010110010;
		correct = 32'b01000010101011010010000011010110;
		#400 //-0.32785144 * 86.89198 = 86.56413
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000110110001111111001100100;
		b = 32'b01001010010100000100011101010101;
		correct = 32'b11111000110110001111111001100100;
		#400 //-3.5209243e+34 * 3412437.2 = -3.5209243e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010011000011001110011010000;
		b = 32'b11101101101010010101100000101001;
		correct = 32'b11101101101010010101100000101001;
		#400 //3696436.0 * -6.551193e+27 = -6.551193e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100010011000010100110011101;
		b = 32'b10110011001100101110010111010000;
		correct = 32'b11000100010011000010100110011101;
		#400 //-816.6502 * -4.1652868e-08 = -816.6502
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110101100101001001011100001;
		b = 32'b01000000110101111000000111110000;
		correct = 32'b01000000110101111000000111100101;
		#400 //-5.3219123e-06 * 6.7346115 = 6.7346063
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110111111011001011000010;
		b = 32'b10111000011101001100001111101000;
		correct = 32'b10111000011101001100001111101000;
		#400 //9.035101e-26 * -5.8356585e-05 = -5.8356585e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110110111001100100001101101;
		b = 32'b01000101110010010010011000000001;
		correct = 32'b01101110110111001100100001101101;
		#400 //3.41645e+28 * 6436.7505 = 3.41645e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110000100110000010010111010;
		b = 32'b00111000010010110000111011100011;
		correct = 32'b11110110000100110000010010111010;
		#400 //-7.454722e+32 * 4.8412836e-05 = -7.454722e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100111111111001011101000001;
		b = 32'b10010000110100000010100011100101;
		correct = 32'b00101100111111111001011101000001;
		#400 //7.2643285e-12 * -8.210454e-29 = 7.2643285e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110010000001001110100011101;
		b = 32'b11000100101110110001110000011100;
		correct = 32'b11001110010000001001110100110100;
		#400 //-807880500.0 * -1496.8784 = -807882000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010110001101000110010100111;
		b = 32'b11110111110000100101100110010010;
		correct = 32'b11110111110000100010011111101111;
		#400 //7.865353e+30 * -7.883768e+33 = -7.8759027e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011100101110010100101010010;
		b = 32'b10111111101101111100110010011010;
		correct = 32'b10111111101101111100110010011010;
		#400 //8.884469e-37 * -1.4359314 = -1.4359314
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011111100100001111100001000;
		b = 32'b11011011111101111100001100001011;
		correct = 32'b11011011111101111100001100001011;
		#400 //484.24243 * -1.3947754e+17 = -1.3947754e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100011111001111001000111;
		b = 32'b11001110001111111001110000110010;
		correct = 32'b11001110001111111001110000100000;
		#400 //1148.9462 * -803671200.0 = -803670000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101111000011000001100001110;
		b = 32'b11001001010001010001010100000110;
		correct = 32'b01010101111000011000001100001110;
		#400 //30994124000000.0 * -807248.4 = 30994124000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111000010011100010000110011000;
		b = 32'b11110000110110001010001010001110;
		correct = 32'b11111000010011100010001101001001;
		#400 //-1.6723352e+34 * -5.3636223e+29 = -1.6723888e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010111010110000100011011110;
		b = 32'b01011001100010100111011110000111;
		correct = 32'b01111010111010110000100011011110;
		#400 //6.101848e+35 * 4871871000000000.0 = 6.101848e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110111011101011110101000100;
		b = 32'b11110011000000011001100000001010;
		correct = 32'b11110011000000011001100000001010;
		#400 //0.46628773 * -1.0267487e+31 = -1.0267487e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001000001001101011111000101;
		b = 32'b00111110011000001111110110010101;
		correct = 32'b11110001000001001101011111000101;
		#400 //-6.578059e+29 * 0.21971734 = -6.578059e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010001011100000100100100011;
		b = 32'b01000011011110001100011011011101;
		correct = 32'b01010010001011100000100100100011;
		#400 //186869400000.0 * 248.77681 = 186869400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010111001011010101111101011100;
		b = 32'b11010111100000101111100001001010;
		correct = 32'b11010111100000101111100001001010;
		#400 //5.6019675e-25 * -288005800000000.0 = -288005800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101111101101011011000011111;
		b = 32'b10101100001101010100000011110111;
		correct = 32'b11101101111101101011011000011111;
		#400 //-9.5441854e+27 * -2.575771e-12 = -9.5441854e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011111101010011000100111010;
		b = 32'b00001100111010100000010001101001;
		correct = 32'b01010011111101010011000100111010;
		#400 //2106185700000.0 * 3.6056063e-31 = 2106185700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010011011101110101100101;
		b = 32'b11001110010110001100001100010111;
		correct = 32'b11100111010011011101110101100101;
		#400 //-9.7216914e+23 * -909166000.0 = -9.7216914e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011000011110001001111101000;
		b = 32'b10000011101111010011100011110001;
		correct = 32'b11000011000011110001001111101000;
		#400 //-143.07776 * -1.1121495e-36 = -143.07776
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011000101101001110011001;
		b = 32'b00001101001001010000000001101111;
		correct = 32'b00011110011000101101001110011001;
		#400 //1.2008098e-20 * 5.0845072e-31 = 1.2008098e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011111111111001001011110110;
		b = 32'b00110010110101011111001011111110;
		correct = 32'b01001011111111111001001011110110;
		#400 //33498604.0 * 2.4906964e-08 = 33498604.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110111101000110100100010100;
		b = 32'b00101110000010011001000000000001;
		correct = 32'b00101110000010011000111000011000;
		#400 //-1.6959383e-15 * 3.1278095e-11 = 3.1276398e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110101111110001011000111001;
		b = 32'b01000100110001010001011111111011;
		correct = 32'b11011110101111110001011000111001;
		#400 //-6.884628e+18 * 1576.7494 = -6.884628e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100101000100111011001110110;
		b = 32'b10101001001011000011100010011101;
		correct = 32'b11011100101000100111011001110110;
		#400 //-3.6583356e+17 * -3.8240776e-14 = -3.6583356e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011011111101100011011100001;
		b = 32'b10011110111011011011110010010010;
		correct = 32'b10011110111011011011110010010010;
		#400 //-7.4872193e-37 * -2.5171342e-20 = -2.5171342e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110011000110001000100000010;
		b = 32'b10010111110000110101101100100110;
		correct = 32'b01110110011000110001000100000010;
		#400 //1.1513636e+33 * -1.2624589e-24 = 1.1513636e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101111010101001011010011100;
		b = 32'b10101001110100101101101111011111;
		correct = 32'b10101001110100101101101111011111;
		#400 //-9.474947e-26 * -9.364015e-14 = -9.364015e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111111001111010011110010100;
		b = 32'b10110111101110110010000110110110;
		correct = 32'b01001111111001111010011110010100;
		#400 //7773038600.0 * -2.2307835e-05 = 7773038600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001110100111101011100100011010;
		b = 32'b01011000110010000110111010011110;
		correct = 32'b01011000110010000110111010011110;
		#400 //-3.9128254e-30 * 1763019400000000.0 = 1763019400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110111011101100100001100110;
		b = 32'b00010011011011100111010011000000;
		correct = 32'b01110110111011101100100001100110;
		#400 //2.4215453e+33 * 3.0097385e-27 = 2.4215453e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110010101111001101100110110;
		b = 32'b01110011110100000000011000110000;
		correct = 32'b01110011110100000000011000110000;
		#400 //2.5454298e+23 * 3.2962745e+31 = 3.2962745e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000111101001100110010110000;
		b = 32'b11010011111010110000111000011000;
		correct = 32'b01110000111101001100110010110000;
		#400 //6.0609436e+29 * -2019107500000.0 = 6.0609436e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000110000111101011001001;
		b = 32'b00111110111111111011010000111100;
		correct = 32'b01111001000110000111101011001001;
		#400 //4.948247e+34 * 0.49942195 = 4.948247e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001011010101000100101010010;
		b = 32'b00000101000000100111110101100011;
		correct = 32'b10100001011010101000100101010010;
		#400 //-7.9464026e-19 * 6.1356005e-36 = -7.9464026e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011111101100011100100101101;
		b = 32'b00100101000101000101010101101010;
		correct = 32'b00100101000101000101010101101010;
		#400 //-1.4471707e-36 * 1.2865893e-16 = 1.2865893e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110100010010110111111000;
		b = 32'b00110000011111010110111111101001;
		correct = 32'b00110000011111010110111111001111;
		#400 //-1.4514748e-15 * 9.21999e-10 = 9.2199753e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100000000010001111110000001;
		b = 32'b11000000011110101000001110001010;
		correct = 32'b11010100000000010001111110000001;
		#400 //-2218317300000.0 * -3.9142785 = -2218317300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001000111010111100010110100;
		b = 32'b01011100100110101001000000100101;
		correct = 32'b01101001000111010111100010110100;
		#400 //1.189821e+25 * 3.4804508e+17 = 1.189821e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110000111110111000010110101;
		b = 32'b01000010010101011101010110000111;
		correct = 32'b01000010010101011101010110000111;
		#400 //5.5316953e-16 * 53.458523 = 53.458523
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011111101011000010101010010;
		b = 32'b00000010011011111011000100011100;
		correct = 32'b10001011111101011000010100110100;
		#400 //-9.4571165e-32 * 1.7609775e-37 = -9.457099e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010100001000110001110011111;
		b = 32'b01010110010001001010000011101101;
		correct = 32'b11101010100001000110001110011111;
		#400 //-8.002433e+25 * 54048863000000.0 = -8.002433e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100110000110110000110001111;
		b = 32'b00110001000010011101010001110000;
		correct = 32'b00110001000010011101010001110000;
		#400 //8.473304e-17 * 2.005688e-09 = 2.005688e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001011110001110111011101111;
		b = 32'b00100111101111011101110010100110;
		correct = 32'b01111001011110001110111011101111;
		#400 //8.0783486e+34 * 5.2697265e-15 = 8.0783486e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101110011110110110011011011;
		b = 32'b11001001011000001011111010001011;
		correct = 32'b01100101110011110110110011011011;
		#400 //1.2244224e+23 * -920552.7 = 1.2244224e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001111111001111000011100100;
		b = 32'b01110101111001101101100010100111;
		correct = 32'b01110101111001101101100010100111;
		#400 //-2.6153484e-23 * 5.852649e+32 = 5.852649e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110100010100010000110001;
		b = 32'b10110010111100101000000100011101;
		correct = 32'b10110010111100101000000100011101;
		#400 //-8.254103e-29 * -2.8231222e-08 = -2.8231222e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010100100111011010100010;
		b = 32'b10000101101110111001010100110100;
		correct = 32'b10011110010100100111011010100010;
		#400 //-1.114184e-20 * -1.7640204e-35 = -1.114184e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111100111010100000011111110;
		b = 32'b00101100001110111101001001101011;
		correct = 32'b10110111100111010100000011111101;
		#400 //-1.8746123e-05 * 2.6691104e-12 = -1.8746121e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110100010100001011110001000;
		b = 32'b01010100111001000111111000011011;
		correct = 32'b11011110100010100001011101111010;
		#400 //-4.9752857e+18 * 7850946000000.0 = -4.975278e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010000000011101011011100011;
		b = 32'b01000000000110100100010101110000;
		correct = 32'b01000000000110100100010101110000;
		#400 //-1.759652e-18 * 2.4104881 = 2.4104881
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110101001110011011000101001;
		b = 32'b00111101000011110100001111100000;
		correct = 32'b00111101000011110100001111100000;
		#400 //7.6039015e-11 * 0.03497684 = 0.03497684
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001110101111001101000111;
		b = 32'b01101000010001000000110010110101;
		correct = 32'b01101000010001000000110010110101;
		#400 //-822216100000000.0 * 3.703273e+24 = 3.703273e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000101110101101110100011;
		b = 32'b00000110111000101010000000001000;
		correct = 32'b00000110111000010111000101010001;
		#400 //-4.4480106e-37 * 8.5246896e-35 = 8.4802097e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011011110010111001110111001;
		b = 32'b00110111110110001011101001001110;
		correct = 32'b00110111110110001011101001001110;
		#400 //7.3307366e-37 * 2.5835961e-05 = 2.5835961e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011101010000101110111111100100;
		b = 32'b00001110010111110110000010010000;
		correct = 32'b11011101010000101110111111100100;
		#400 //-8.779185e+17 * 2.7533365e-30 = -8.779185e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001100011011001001000000;
		b = 32'b01001110001000111100000000010100;
		correct = 32'b01001110001000111100000000010100;
		#400 //2.4082338e-18 * 686818560.0 = 686818560.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001111001010011001010001000;
		b = 32'b01001111000010010011000110010100;
		correct = 32'b01001111000010010011000110010100;
		#400 //-8.4193823e-38 * 2301727700.0 = 2301727700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110010010000010111110011000;
		b = 32'b01000011001101011110110100000110;
		correct = 32'b01000011001101011110110100000110;
		#400 //2.4674819e-30 * 181.92587 = 181.92587
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110101100010011001010101001;
		b = 32'b00010000001010101011001100011101;
		correct = 32'b01010110101100010011001010101001;
		#400 //97415570000000.0 * 3.3664572e-29 = 97415570000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010000000100100100110101111;
		b = 32'b01001100001101110001110111011010;
		correct = 32'b11110010000000100100100110101111;
		#400 //-2.5806163e+30 * 48002920.0 = -2.5806163e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110100011010000001100100011;
		b = 32'b11111100000101011010011101010101;
		correct = 32'b11111100000101011010011101010101;
		#400 //-1.4930253e-20 * -3.1081845e+36 = -3.1081845e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101101100101111010101011001;
		b = 32'b10100100100011010000100010100111;
		correct = 32'b11110101101100101111010101011001;
		#400 //-4.537134e+32 * -6.116366e-17 = -4.537134e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001100101001110111100000;
		b = 32'b10111000000101010100001010111100;
		correct = 32'b11011000001100101001110111100000;
		#400 //-785564550000000.0 * -3.558652e-05 = -785564550000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110110100101101000010000;
		b = 32'b10001111011110000101001001011011;
		correct = 32'b10010000111110010110010001011011;
		#400 //-8.61246e-29 * -1.2243205e-29 = -9.8367805e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011000001011000000000000101;
		b = 32'b00111000011101110110001110000001;
		correct = 32'b01101011000001011000000000000101;
		#400 //1.6139169e+26 * 5.898206e-05 = 1.6139169e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101111011001111000001110011;
		b = 32'b01010000001000110001011000100101;
		correct = 32'b01010000001000110001011000100101;
		#400 //-2.6936875e-11 * 10944550000.0 = 10944550000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110110110101010110110110000;
		b = 32'b10111010011011110011011010010101;
		correct = 32'b10111010011011110011011010010101;
		#400 //-1.5173867e-15 * -0.000912526 = -0.000912526
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100110000100111110000100101;
		b = 32'b01010000010001001110010011101101;
		correct = 32'b01010000010001001110010011101101;
		#400 //4.572319e-36 * 13213349000.0 = 13213349000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011111010110100101000011111;
		b = 32'b01001000100100010101111010001000;
		correct = 32'b11110011111010110100101000011111;
		#400 //-3.7283115e+31 * 297716.25 = -3.7283115e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110101101010000010111111001;
		b = 32'b00101001000110111110010110000111;
		correct = 32'b00101001001000011000110110110111;
		#400 //1.2561017e-15 * 3.4615997e-14 = 3.58721e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010110101100100011111100111;
		b = 32'b00011111001111100100100100011101;
		correct = 32'b11100010110101100100011111100111;
		#400 //-1.9763922e+21 * 4.0294543e-20 = -1.9763922e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000111011000110011110011011;
		b = 32'b10001111100100001100110101110011;
		correct = 32'b00111000111011000110011110011011;
		#400 //0.00011272655 * -1.4278632e-29 = 0.00011272655
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010010000011000011100010100;
		b = 32'b01011111100111000000101011111011;
		correct = 32'b01011111100111000000101011111011;
		#400 //48.381912 * 2.248815e+19 = 2.248815e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001100000011101100011101010;
		b = 32'b00000001110100111011100110110011;
		correct = 32'b10011001100000011101100011101010;
		#400 //-1.3425898e-23 * 7.7775624e-38 = -1.3425898e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011100001101011001011110000;
		b = 32'b11000110000111100101101100001111;
		correct = 32'b01111011100001101011001011110000;
		#400 //1.3987941e+36 * -10134.765 = 1.3987941e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110001101110110000101111001;
		b = 32'b10010101110010011010101111110001;
		correct = 32'b10010101110010011010101111110001;
		#400 //3.4490086e-35 * -8.145453e-26 = -8.145453e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101010011100101000001111;
		b = 32'b01000111010001111010010101000001;
		correct = 32'b01000111010011001111001110010001;
		#400 //1358.3143 * 51109.254 = 52467.566
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101001101110011010011001001;
		b = 32'b01001110110001010011110011010010;
		correct = 32'b01001110110001010011110011010010;
		#400 //6.8249625e-07 * 1654548700.0 = 1654548700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111100110000101100011000111;
		b = 32'b10111110101101000001110010111110;
		correct = 32'b11001111100110000101100011000111;
		#400 //-5111910000.0 * -0.3517818 = -5111910000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110100000001000111001011110;
		b = 32'b01111011110010100010101100001011;
		correct = 32'b01111011110010100100101100101111;
		#400 //1.303714e+33 * 2.099434e+36 = 2.1007377e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110101001011111111000001000;
		b = 32'b10001011100101011001000100000000;
		correct = 32'b01100110101001011111111000001000;
		#400 //3.9193826e+23 * -5.7610884e-32 = 3.9193826e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011000000110010010001111111;
		b = 32'b00101000010100100100001001101010;
		correct = 32'b00101000010100100100001001101010;
		#400 //1.6552519e-27 * 1.1671743e-14 = 1.1671743e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010011111110001110100101010;
		b = 32'b11101101101111010000000110101111;
		correct = 32'b11101101101111010000000110101111;
		#400 //5.2756323e-23 * -7.311838e+27 = -7.311838e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001010000111011111110111001;
		b = 32'b10000010101100011001001010100011;
		correct = 32'b10110001010000111011111110111001;
		#400 //-2.8485216e-09 * -2.6091978e-37 = -2.8485216e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100000001101011001101000;
		b = 32'b10110010101111101110100111111011;
		correct = 32'b11100110100000001101011001101000;
		#400 //-3.04209e+23 * -2.2225313e-08 = -3.04209e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110010101111100101100010;
		b = 32'b10100110101110000111000000111000;
		correct = 32'b00111101110010101111100101100010;
		#400 //0.09910847 * -1.2797982e-15 = 0.09910847
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001010101000000010110000010;
		b = 32'b01100101011100110111001000110000;
		correct = 32'b01100101011100110111001000110000;
		#400 //3.0853191e-09 * 7.185259e+22 = 7.185259e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000010010000110011000110111;
		b = 32'b11010010010000111100111000111111;
		correct = 32'b11010010010000111100111000111111;
		#400 //-7.290483e-10 * -210244710000.0 = -210244710000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010101101101101100101110111;
		b = 32'b10011110111001000101001011011110;
		correct = 32'b11110010101101101101100101110111;
		#400 //-7.243414e+30 * -2.4174712e-20 = -7.243414e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000000111010010011011110110;
		b = 32'b01110110101001010111000001000010;
		correct = 32'b01110110101001010111000001000010;
		#400 //-2.677206e-39 * 1.6777458e+33 = 1.6777458e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000110010110001010111010111;
		b = 32'b11111110101100110111100000100001;
		correct = 32'b11111110101100110111100000100001;
		#400 //-5.2496323e-24 * -1.1927778e+38 = -1.1927778e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101011101010010010100110101;
		b = 32'b10110001000111001101101100110110;
		correct = 32'b10110001000111001101101100110110;
		#400 //4.9506707e-26 * -2.2825595e-09 = -2.2825595e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110000100011100010101010001;
		b = 32'b00100110110011000111001011110101;
		correct = 32'b00100110110011000111001011110101;
		#400 //-2.7416434e-35 * 1.4186503e-15 = 1.4186503e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000000000011100110111011001;
		b = 32'b01000110010100001111000100110010;
		correct = 32'b01000110010100001111000100110010;
		#400 //-3.90615e-34 * 13372.299 = 13372.299
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000010110100100011000001101;
		b = 32'b10011111100000100011000101101001;
		correct = 32'b10011111100000100011000101101001;
		#400 //4.3046884e-29 * -5.5138884e-20 = -5.5138884e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111101011010010100111111101;
		b = 32'b10111101000011000010100000011011;
		correct = 32'b11001111101011010010100111111101;
		#400 //-5810420000.0 * -0.034217935 = -5810420000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100010000010101000001101;
		b = 32'b11100000010011001110100101001110;
		correct = 32'b11100000010011001110100101001110;
		#400 //0.016621614 * -5.9061674e+19 = -5.9061674e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000111100100000001111101;
		b = 32'b10111110101111001001110101001110;
		correct = 32'b10111110101111001001110101001110;
		#400 //1.904888e-33 * -0.36838764 = -0.36838764
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000000000001100100110010001;
		b = 32'b11110010001001110111011100110001;
		correct = 32'b11110010001001110111011100110001;
		#400 //-1.6645377e-24 * -3.3169978e+30 = -3.3169978e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111001000110100010001010000;
		b = 32'b01011001110110110110011000110111;
		correct = 32'b01011001111000001000000001011010;
		#400 //179513800000000.0 * 7719426000000000.0 = 7898940000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110111111111011101100100101;
		b = 32'b01011011001101011100001011101011;
		correct = 32'b01101110111111111011101100100101;
		#400 //3.957246e+28 * 5.1161285e+16 = 3.957246e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100101011100101011000111100;
		b = 32'b01101101110100110110101101101110;
		correct = 32'b01101101110100110110101101101110;
		#400 //-1.1536645e-21 * 8.1789014e+27 = 8.1789014e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010101000111011000011011101;
		b = 32'b00111010101000101100110100101111;
		correct = 32'b00111010101000101100110100101111;
		#400 //-6.770096e-23 * 0.0012420769 = 0.0012420769
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111101110100000011011010111;
		b = 32'b11101011000011011111111000101111;
		correct = 32'b01101111101110011011111111011000;
		#400 //1.1514496e+29 * -1.7165889e+26 = 1.149733e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001111100001101010101100000;
		b = 32'b01100000010111101001001001111110;
		correct = 32'b01110001111100001101010101100000;
		#400 //2.3850994e+30 * 6.415208e+19 = 2.3850994e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000010001100101111000010110;
		b = 32'b10000110010010011010101001011101;
		correct = 32'b10001000010100101111100010111100;
		#400 //-5.9694055e-34 * -3.7929061e-35 = -6.348696e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100011110111011100001000100;
		b = 32'b00100001101110001010011111101101;
		correct = 32'b00100001101110001010011111101101;
		#400 //-1.27086016e-26 * 1.2512775e-18 = 1.2512775e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111111101111000110000011110;
		b = 32'b00000111111010111110001100001000;
		correct = 32'b10010111111101111000110000011110;
		#400 //-1.5997371e-24 * 3.5492307e-34 = -1.5997371e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010101011101110111101110000;
		b = 32'b10101101110000000011001100000001;
		correct = 32'b11101010101011101110111101110000;
		#400 //-1.057419e+26 * -2.1850523e-11 = -1.057419e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010011110001110000111001011;
		b = 32'b00101100100111101100010000100011;
		correct = 32'b11111010011110001110000111001011;
		#400 //-3.2306731e+35 * 4.5124056e-12 = -3.2306731e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101101010000110000001100010;
		b = 32'b11011110111000111001001010000011;
		correct = 32'b11011110111000111001001010000011;
		#400 //4.4568887e-21 * -8.1991566e+18 = -8.1991566e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001001010010010101100001010;
		b = 32'b11001010001010000011001000010100;
		correct = 32'b11010001001010010010110110101011;
		#400 //-45410720000.0 * -2755717.0 = -45413480000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111011100011110111001110110;
		b = 32'b11001010111010000011101011001111;
		correct = 32'b11001111011100100110001010010011;
		#400 //-4058936800.0 * -7609703.5 = -4066546400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011000011011010011111101;
		b = 32'b00111100001111010110011110100010;
		correct = 32'b00111100001111010110011110100010;
		#400 //1.1948828e-20 * 0.0115603525 = 0.0115603525
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110100101110000011100010011;
		b = 32'b00010001010000000000101101101100;
		correct = 32'b00010001010000000000101101100111;
		#400 //-5.681028e-35 * 1.5149649e-28 = 1.5149643e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000110101101010110010010111;
		b = 32'b00010110000100010000011101111000;
		correct = 32'b01011000110101101010110010010111;
		#400 //1888294000000000.0 * 1.1715363e-25 = 1888294000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001110010100110011001101010;
		b = 32'b10001110010000101001011010001011;
		correct = 32'b10011001110010100110011001101100;
		#400 //-2.0927675e-23 * -2.398483e-30 = -2.0927678e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011011101001101111101011101;
		b = 32'b00000000011001101011111011111101;
		correct = 32'b01110011011101001101111101011101;
		#400 //1.9400799e+31 * 9.435734e-39 = 1.9400799e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010001011100000010001110011;
		b = 32'b00001010100111001010010000100000;
		correct = 32'b00001010100111001010010001110111;
		#400 //1.2784778e-37 * 1.508399e-32 = 1.5084118e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100100011001111100000000110;
		b = 32'b00111001101111101110000001101110;
		correct = 32'b00111001101111110000001110101100;
		#400 //2.6257493e-07 * 0.00036406837 = 0.00036433095
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101010111100100101011111100;
		b = 32'b10110011110110110000000010010111;
		correct = 32'b11110101010111100100101011111100;
		#400 //-2.8178974e+32 * -1.01980895e-07 = -2.8178974e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101100001101001111101011111;
		b = 32'b11001011101001111100110100010111;
		correct = 32'b11001011101001111100110100010111;
		#400 //2.3353289e-16 * -21994030.0 = -21994030.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111011001110010111101111011;
		b = 32'b01010110011001110000110001001010;
		correct = 32'b11111111011001110010111101111011;
		#400 //-3.072982e+38 * 63509990000000.0 = -3.072982e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100101000011110101000010000;
		b = 32'b10000010100011110011110011011001;
		correct = 32'b10011100101000011110101000010000;
		#400 //-1.071459e-21 * -2.1046886e-37 = -1.071459e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111011111011000010110110101;
		b = 32'b10101101100111100101001011111101;
		correct = 32'b01011111011111011000010110110101;
		#400 //1.8268206e+19 * -1.7999375e-11 = 1.8268206e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010100111111101001101010110;
		b = 32'b01010111111000001101111010110001;
		correct = 32'b01010111111000001101111010110001;
		#400 //79.912766 * 494494100000000.0 = 494494100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100001000000010010011011011;
		b = 32'b00001011111010000011000001101011;
		correct = 32'b10010100001000000010010001100111;
		#400 //-8.085204e-27 * 8.9436e-32 = -8.085115e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111110011101001001110111001;
		b = 32'b00000010011100100101011001001000;
		correct = 32'b01000111110011101001001110111001;
		#400 //105767.445 * 1.7804114e-37 = 105767.445
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010001101001010010101000100;
		b = 32'b00111110100011001011100110110101;
		correct = 32'b00111110100011001011100110110101;
		#400 //2.448204e-18 * 0.27485433 = 0.27485433
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111000000011100101111111;
		b = 32'b10101001111100011000100111000101;
		correct = 32'b10111011111000000011100101111111;
		#400 //-0.0068427916 * -1.0726449e-13 = -0.0068427916
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100101000110101101110001100;
		b = 32'b10010000100101110001000101010000;
		correct = 32'b11101100101000110101101110001100;
		#400 //-1.5798978e+27 * -5.958567e-29 = -1.5798978e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000010010001010101111000101;
		b = 32'b11110001110001100110000010110001;
		correct = 32'b11110001101011010100101100111000;
		#400 //2.4841863e+29 * -1.9646376e+30 = -1.7162189e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101111000110010000111110011;
		b = 32'b00001101011100011111111011100110;
		correct = 32'b01011101111000110010000111110011;
		#400 //2.0458287e+18 * 7.457068e-31 = 2.0458287e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000111001101011010000110;
		b = 32'b00110001100000001100100100000101;
		correct = 32'b01000011000111001101011010000110;
		#400 //156.83798 * 3.7481436e-09 = 156.83798
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110010011111111110111101010;
		b = 32'b10011010100101000010001001011100;
		correct = 32'b00110110010011111111110111101010;
		#400 //3.09932e-06 * -6.1266876e-23 = 3.09932e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110110111011001000011011;
		b = 32'b10111101000110001111111010100100;
		correct = 32'b10111101000110001111111010100100;
		#400 //9.990605e-11 * -0.03735222 = -0.03735222
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010000101001101011110000;
		b = 32'b11000000110101011111111000000101;
		correct = 32'b11000000110101011111111000000101;
		#400 //1.0302315e-20 * -6.6872582 = -6.6872582
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110110001010000110110001110;
		b = 32'b00010101010001000011001000011000;
		correct = 32'b01101110110001010000110110001110;
		#400 //3.0492467e+28 * 3.9621402e-26 = 3.0492467e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011110110011001100111010101;
		b = 32'b01110011111110110010011111100010;
		correct = 32'b01110011111110110010011100001000;
		#400 //-5.261267e+26 * 3.9797224e+31 = 3.9796697e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011110001110000001011100;
		b = 32'b01111000000001010000110101000010;
		correct = 32'b01111000000001010000110101000010;
		#400 //-66807250000.0 * 1.0794443e+34 = 1.0794443e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010101010000111110011011011;
		b = 32'b11000001000100000101100000010011;
		correct = 32'b11000001000100000101100000010011;
		#400 //1.063307e-27 * -9.0215025 = -9.0215025
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110001101001001101010111101;
		b = 32'b11101010011010011101100111110101;
		correct = 32'b11101010011010011101100111110101;
		#400 //1.4589111e-25 * -7.0677247e+25 = -7.0677247e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011110000110111011110000101;
		b = 32'b11011100001010011111110010101011;
		correct = 32'b11011100001010011111110010101011;
		#400 //-9.1021356e-08 * -1.9138833e+17 = -1.9138833e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110011111000001110110110011;
		b = 32'b01100111100001000010001100000101;
		correct = 32'b11111110011111000001110110110011;
		#400 //-8.3779916e+37 * 1.2479967e+24 = -8.3779916e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100011010000000110101111001;
		b = 32'b10110001010001100010001001100000;
		correct = 32'b10110001010001100010001001100000;
		#400 //1.7876684e-31 * -2.8832332e-09 = -2.8832332e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010110100111011001100011;
		b = 32'b00010101001000111110110100010110;
		correct = 32'b10100100010110100111011001100011;
		#400 //-4.7371492e-17 * 3.3104616e-26 = -4.7371492e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000101101010100100111011001;
		b = 32'b00000001011010101111100000011101;
		correct = 32'b11011000101101010100100111011001;
		#400 //-1594630200000000.0 * 4.3157025e-38 = -1594630200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011111110101011100100000111;
		b = 32'b00000110101010000111010001100010;
		correct = 32'b00111011111110101011100100000111;
		#400 //0.0076514515 * 6.3365585e-35 = 0.0076514515
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111000100000011000110011110;
		b = 32'b01101001001100011110110110000010;
		correct = 32'b01101001001100011110110110000010;
		#400 //158542780000000.0 * 1.3443842e+25 = 1.3443842e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111011100010010011100000;
		b = 32'b11101100001001001101000000010111;
		correct = 32'b11101100001001001101000000010111;
		#400 //-2.3482816e-29 * -7.9698604e+26 = -7.9698604e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010001100101000010110001010;
		b = 32'b01111000011010100110111111100000;
		correct = 32'b01111000011010100110111111100000;
		#400 //2924898.5 * 1.901979e+34 = 1.901979e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011111110001111110110001;
		b = 32'b01001110001001001011000111000011;
		correct = 32'b01001110001001001011000111000011;
		#400 //-8.2434944e-25 * 690778300.0 = 690778300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111001000011001100010001000;
		b = 32'b11111111011011011011111110111011;
		correct = 32'b11111111011011011100000001011101;
		#400 //-3.2775527e+33 * -3.1602256e+38 = -3.1602584e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100111101101100110100010000;
		b = 32'b10110100000110111100000101011101;
		correct = 32'b11011100111101101100110100010000;
		#400 //-5.557465e+17 * -1.4505845e-07 = -5.557465e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100100111001101010100001110;
		b = 32'b10010101100101000001011011011011;
		correct = 32'b11001100100111001101010100001110;
		#400 //-82225260.0 * -5.9812784e-26 = -82225260.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110000001010000110101010101;
		b = 32'b11010111001001101100100100001110;
		correct = 32'b01101110000001010000110101010101;
		#400 //1.0294406e+28 * -183382450000000.0 = 1.0294406e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011010101010000100111010010;
		b = 32'b11100010010101011100011001000100;
		correct = 32'b11100010010101011100011001000100;
		#400 //13961682.0 * -9.8586076e+20 = -9.8586076e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111011110011111110001110;
		b = 32'b11000011101110001110010101100000;
		correct = 32'b11110010111011110011111110001110;
		#400 //-9.4776e+30 * -369.792 = -9.4776e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110011000111110111100100101;
		b = 32'b11001101000000100011001000001110;
		correct = 32'b11001101000000100011001000001110;
		#400 //2.8095054e-30 * -136519900.0 = -136519900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001101011111100110001101100;
		b = 32'b10010001001110011110001101001101;
		correct = 32'b11001001101011111100110001101100;
		#400 //-1440141.5 * -1.4663969e-28 = -1440141.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010000101010001100001110001;
		b = 32'b01011111001011000001111011111000;
		correct = 32'b01011111001011000001111011111000;
		#400 //0.0005687541 * 1.2402623e+19 = 1.2402623e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111000001110010000111011110;
		b = 32'b00010010001110111100011001111011;
		correct = 32'b01110111000001110010000111011110;
		#400 //2.7408085e+33 * 5.925144e-28 = 2.7408085e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101100001100111010110111010;
		b = 32'b01110100110101011000000011110110;
		correct = 32'b01110100110101011000000011110110;
		#400 //-1.0018041e-06 * 1.3532408e+32 = 1.3532408e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011101011011000001000001111;
		b = 32'b10010110110100001100101100000101;
		correct = 32'b01010011101011011000001000001111;
		#400 //1490422700000.0 * -3.3732336e-25 = 1490422700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110010000110110000010000110;
		b = 32'b01000111100100010100001100101001;
		correct = 32'b01000111011100011010111000110000;
		#400 //-12504.131 * 74374.32 = 61870.188
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111010010001110000101100110;
		b = 32'b11000001000011001011111111000101;
		correct = 32'b01100111010010001110000101100110;
		#400 //9.4863116e+23 * -8.796819 = 9.4863116e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010010001111110000001100111;
		b = 32'b11001100110110010111111110010110;
		correct = 32'b11110010010001111110000001100111;
		#400 //-3.9589634e+30 * -114031790.0 = -3.9589634e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010011001000111000001010100;
		b = 32'b01111001100111110000001010001010;
		correct = 32'b01111001100111110000001010001010;
		#400 //7.208257e-28 * 1.0320334e+35 = 1.0320334e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100010000011001100001000101;
		b = 32'b00111010011010011001111111001111;
		correct = 32'b11110100010000011001100001000101;
		#400 //-6.135264e+31 * 0.0008912058 = -6.135264e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110101000010010010010111110;
		b = 32'b00010011100000100100011101100011;
		correct = 32'b11000110101000010010010010111110;
		#400 //-20626.371 * 3.2887006e-27 = -20626.371
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111100100010110100101111;
		b = 32'b11011101010001111111110000100101;
		correct = 32'b11110010111100100010110100101111;
		#400 //-9.5935995e+30 * -9.006521e+17 = -9.5935995e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011110000010011011110100;
		b = 32'b11100101000111011111100000111100;
		correct = 32'b11100101000111011111100000111100;
		#400 //-66612840000.0 * -4.6624416e+22 = -4.6624416e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111001101100110101110010;
		b = 32'b10001100110100000101001100100110;
		correct = 32'b11001010111001101100110101110010;
		#400 //-7562937.0 * -3.2097517e-31 = -7562937.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000111111111001100111010;
		b = 32'b11111010000010001111001011101001;
		correct = 32'b11111010000010001111001011101001;
		#400 //3.093885e+27 * -1.777698e+35 = -1.777698e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111100010100101001000010001;
		b = 32'b00111000011111101011110001111011;
		correct = 32'b11101111100010100101001000010001;
		#400 //-8.561629e+28 * 6.0733855e-05 = -8.561629e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000110101000000100011111110;
		b = 32'b01100010001010110100110100111000;
		correct = 32'b01100010001010110100110100111000;
		#400 //-1.9472351e-38 * 7.8998936e+20 = 7.8998936e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010100100111001101001000101;
		b = 32'b00111000010000011111100111011001;
		correct = 32'b00111000010000100000110001001100;
		#400 //1.7183206e-08 * 4.6247475e-05 = 4.6264657e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010001101110110110001011;
		b = 32'b10010101110111111010101010010101;
		correct = 32'b01010110010001101110110110001011;
		#400 //54680885000000.0 * -9.0338114e-26 = 54680885000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101000000101110001101110001;
		b = 32'b11011000000010000001010000110101;
		correct = 32'b11011000000010000001010000110011;
		#400 //137246480.0 * -598481500000000.0 = -598481350000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000100010100001111111011100;
		b = 32'b00010011001101100000100000101111;
		correct = 32'b01111000100010100001111111011100;
		#400 //2.2411973e+34 * 2.2975664e-27 = 2.2411973e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111011010000010011111110100000;
		b = 32'b11000001101000010000001010001010;
		correct = 32'b11000001101000001111110010000000;
		#400 //0.0029487386 * -20.12624 = -20.123291
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110100110110001101111101111;
		b = 32'b01100101110000011110001101001001;
		correct = 32'b01100101110000011110001101001001;
		#400 //-5.8345565e-35 * 1.14451175e+23 = 1.14451175e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000110011100001010011010;
		b = 32'b11110011101110110111101010110010;
		correct = 32'b11110011101110110111101010110010;
		#400 //-8.535404e-15 * -2.9707278e+31 = -2.9707278e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111100011001101111101100;
		b = 32'b10100011101001001100011101101101;
		correct = 32'b11011111111100011001101111101100;
		#400 //-3.4819537e+19 * -1.7865376e-17 = -3.4819537e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100010101101010111010101001;
		b = 32'b00111101011011100011111100100100;
		correct = 32'b00111101011011100011111100100100;
		#400 //3.0508185e-12 * 0.058165684 = 0.058165684
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101010001001000001011011011010;
		b = 32'b11101100010000001001010110111101;
		correct = 32'b11101100010000001001010110111101;
		#400 //1.4574054e-13 * -9.312835e+26 = -9.312835e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110111010010000100101011101;
		b = 32'b10110000100100110011000111011001;
		correct = 32'b11111110111010010000100101011101;
		#400 //-1.5487937e+38 * -1.0709825e-09 = -1.5487937e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010010010010001111011001100;
		b = 32'b00010111101101110110110010001000;
		correct = 32'b00100010010010010001111011010010;
		#400 //2.7256883e-18 * 1.1853495e-24 = 2.7256896e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110011001011110001100110110;
		b = 32'b10010001100100010101101000011001;
		correct = 32'b11111110011001011110001100110110;
		#400 //-7.639324e+37 * -2.2932493e-28 = -7.639324e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000010110101111000100010;
		b = 32'b10000100100100100101011011100010;
		correct = 32'b01000010000010110101111000100010;
		#400 //34.841927 * -3.4404224e-36 = 34.841927
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101101001010100010111100;
		b = 32'b01101110100100001001111001000010;
		correct = 32'b01101110100100001001111001000010;
		#400 //2.0538564e-11 * 2.2378582e+28 = 2.2378582e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001001001010000001001101100;
		b = 32'b10110011001001010001011110110001;
		correct = 32'b10110011001001010001011110110001;
		#400 //1.9862291e-33 * -3.8438603e-08 = -3.8438603e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100110100010101011101101011;
		b = 32'b11100100000100010000011110010001;
		correct = 32'b11100100000100010000100100110100;
		#400 //-4.713951e+17 * -1.0701292e+22 = -1.0701764e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111111100010001111100110101;
		b = 32'b10110011110000100110010111101110;
		correct = 32'b10110011110000100110010111101110;
		#400 //3.6279992e-34 * -9.05237e-08 = -9.05237e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011001001000100000101111000;
		b = 32'b00110101110111010110010011111110;
		correct = 32'b00110101110110000100001011110010;
		#400 //-3.824377e-08 * 1.6495176e-06 = 1.6112738e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010111111110001010001111001;
		b = 32'b01001101001001000001011011111111;
		correct = 32'b01010010111111110010100011111100;
		#400 //547780070000.0 * 172060660.0 = 547952130000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000101010001010000011000111011;
		b = 32'b11110001111001101101100111100000;
		correct = 32'b11110001111001101101100111100000;
		#400 //-9.26404e-36 * -2.2862383e+30 = -2.2862383e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101000111000010100100111110;
		b = 32'b10001101111100011001100110110100;
		correct = 32'b11100101000111000010100100111110;
		#400 //-4.609062e+22 * -1.4889774e-30 = -4.609062e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101101100010100101000111011;
		b = 32'b01010011011000011010011110111011;
		correct = 32'b01010011011000011010011110111011;
		#400 //3.0754906e-16 * 969181700000.0 = 969181700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100101001011100000111100110;
		b = 32'b11111111110101000010100101111010;
		correct = 32'b11111111110101000010100101111010;
		#400 //4.711109e-12 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111001011010000111111101001;
		b = 32'b10010110101011001110101110110100;
		correct = 32'b10010110101011001110101110110100;
		#400 //-1.3019749e-34 * -2.7936848e-25 = -2.7936848e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001101111010101000001101001;
		b = 32'b11110010100111111010001101000110;
		correct = 32'b11110010100111111010001101000110;
		#400 //1.2828423e-18 * -6.323904e+30 = -6.323904e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011001001011100100111010100;
		b = 32'b00110000100010010001101011000111;
		correct = 32'b11001011001001011100100111010100;
		#400 //-10865108.0 * 9.975673e-10 = -10865108.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010000101110110001011101010;
		b = 32'b11010010010100111101001000011001;
		correct = 32'b11010010101101011001101010000010;
		#400 //-162549890000.0 * -227440740000.0 = -389990650000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011110100010100111001101101;
		b = 32'b10101001110110101110111001101000;
		correct = 32'b01111011110100010100111001101101;
		#400 //2.1735614e+36 * -9.722502e-14 = 2.1735614e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000011110010000000111101111;
		b = 32'b10101111110000110101111101111001;
		correct = 32'b10101111110000110110000101101011;
		#400 //-1.3822696e-14 * -3.553813e-10 = -3.5539513e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100100110000010111100000101;
		b = 32'b01110111110100011110100010100001;
		correct = 32'b01110111110100011110100010100001;
		#400 //2.3447607e-31 * 8.514909e+33 = 8.514909e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001110111011110010000011111;
		b = 32'b00001100110011001011011101101101;
		correct = 32'b11001001110111011110010000011111;
		#400 //-1817731.9 * 3.1541572e-31 = -1817731.9
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110111111110110100000001110;
		b = 32'b11111110000101010000110100111010;
		correct = 32'b11111110000101010000110100111010;
		#400 //-1.7722384e-15 * -4.953091e+37 = -4.953091e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111011101010101111010001;
		b = 32'b01010001110111011000000101001111;
		correct = 32'b11100011111011101010101111010001;
		#400 //-8.8054115e+21 * 118919650000.0 = -8.8054115e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010000000100000001110011010;
		b = 32'b11110000111000101010111110111011;
		correct = 32'b11110000111000101010111110111011;
		#400 //6.25995e-33 * -5.6124846e+29 = -5.6124846e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010110101010100111111100010;
		b = 32'b11111101000110000010111110000001;
		correct = 32'b11111101000110000010111110000001;
		#400 //-1.9674563e+21 * -1.2643082e+37 = -1.2643082e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011100000000000110110001110;
		b = 32'b00111111101011110011000100000110;
		correct = 32'b00111111101011101011000011111000;
		#400 //-0.003907866 * 1.3686836 = 1.3647757
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101010011001111010000101001;
		b = 32'b01111001111010000000111100011011;
		correct = 32'b01111001111010000000111100011011;
		#400 //3.964382e+27 * 1.5061491e+35 = 1.5061491e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111110000001001110001001000;
		b = 32'b01100101001011111001011110001110;
		correct = 32'b01100101001011111001011110001110;
		#400 //-1.8992859e-29 * 5.1825614e+22 = 5.1825614e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001000101110001010001111110;
		b = 32'b10011111011010010111111011011100;
		correct = 32'b10011111011010010111111011011100;
		#400 //1.81856e-33 * -4.9444605e-20 = -4.9444605e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100001110100001110100000001;
		b = 32'b10000101100101000100010000101010;
		correct = 32'b10111100001110100001110100000001;
		#400 //-0.011359454 * -1.3942893e-35 = -0.011359454
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010010010011101101011011111;
		b = 32'b11011010001010101111000110110011;
		correct = 32'b11011010001010101111000110110011;
		#400 //-4.174263e-23 * -1.2029124e+16 = -1.2029124e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101100001110100010110011111;
		b = 32'b11110111001101110100110111110101;
		correct = 32'b11110111001101110100110111110101;
		#400 //0.06605076 * -3.7178573e+33 = -3.7178573e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000001001001000000101100000;
		b = 32'b01001110101011001110010101011010;
		correct = 32'b01010000001110100001111000001011;
		#400 //11039769000.0 * 1450356000.0 = 12490124000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111010000001110001111001010;
		b = 32'b01001101101010001110101110110111;
		correct = 32'b11100111010000001110001111001010;
		#400 //-9.108963e+23 * 354252500.0 = -9.108963e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011010001000010111110010001;
		b = 32'b10011001001110111000111101111001;
		correct = 32'b11010011010001000010111110010001;
		#400 //-842611600000.0 * -9.6966475e-24 = -842611600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011000111110111001001001011;
		b = 32'b01110101100011011110000110100001;
		correct = 32'b01110101100011011110000110100001;
		#400 //-10449483.0 * 3.59712e+32 = 3.59712e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100110011011100110111110100;
		b = 32'b01001010110111110011111011110010;
		correct = 32'b01001010110111110011111011110010;
		#400 //0.02512262 * 7315321.0 = 7315321.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110111101011101111101010;
		b = 32'b01011110011010110110000010110000;
		correct = 32'b01011110011010110110000010110000;
		#400 //-0.0067973034 * 4.2401874e+18 = 4.2401874e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000100100110111011010111;
		b = 32'b00010101100100011110111001100011;
		correct = 32'b11010110000100100110111011010111;
		#400 //-40251188000000.0 * 5.894114e-26 = -40251188000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011101001010111010100101000;
		b = 32'b11101011101011010000001011000011;
		correct = 32'b11101011101011010000001011000011;
		#400 //2.737267e-22 * -4.183144e+26 = -4.183144e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001011000100001110011010;
		b = 32'b10101111010100100101000010101001;
		correct = 32'b10101111010100100101000010101001;
		#400 //5.69974e-22 * -1.9128045e-10 = -1.9128045e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001111111010100111100011011;
		b = 32'b10111000011001001001011111010001;
		correct = 32'b10111000011001001001011111010001;
		#400 //-1.12491796e-13 * -5.4500826e-05 = -5.4500826e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101001001101000011001010;
		b = 32'b11101110010110001000111101001111;
		correct = 32'b11101110010110001000111101001111;
		#400 //-1.1436378e-15 * -1.6755503e+28 = -1.6755503e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111110011101011000111101001;
		b = 32'b10101100101111100000100011110000;
		correct = 32'b10110111110011101011000111101100;
		#400 //-2.463996e-05 * -5.401117e-12 = -2.4639965e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001110101100110001111010110;
		b = 32'b01100111111100110001011001100011;
		correct = 32'b11110001110101100110001111000111;
		#400 //-2.1232156e+30 * 2.295896e+24 = -2.1232133e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001110111110000011001010110;
		b = 32'b00110010110010001001000110010111;
		correct = 32'b11101001110111110000011001010110;
		#400 //-3.3702547e+25 * 2.3349271e-08 = -3.3702547e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001101100011101010100000011;
		b = 32'b11000010011110101100000011100010;
		correct = 32'b11000010011110101100000011100010;
		#400 //-2.8056955e-28 * -62.688362 = -62.688362
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010001111001100001001010;
		b = 32'b10111011110010110100000000010000;
		correct = 32'b01100000010001111001100001001010;
		#400 //5.7529307e+19 * -0.006202705 = 5.7529307e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001011101011001111110010101;
		b = 32'b00010000111110111001001110110100;
		correct = 32'b00010000111110111001001110110100;
		#400 //4.5113888e-38 * 9.9229616e-29 = 9.9229616e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010100111001001011000010;
		b = 32'b10110101001010101110111001101111;
		correct = 32'b01001100010100111001001011000010;
		#400 //55462664.0 * -6.36769e-07 = 55462664.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110111110111010111111010111;
		b = 32'b00101111001001100001101101110101;
		correct = 32'b00101111100100011111100110110000;
		#400 //1.1445394e-10 * 1.5107367e-10 = 2.655276e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110001010101001100011100110;
		b = 32'b01001111001011011111101010111110;
		correct = 32'b01001111001011011111101010111110;
		#400 //-3.2085778e-35 * 2918891000.0 = 2918891000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100101000001101110111111111;
		b = 32'b11001001001111110101000110011000;
		correct = 32'b01111100101000001101110111111111;
		#400 //6.682161e+36 * -783641.5 = 6.682161e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000001101001001101001010001;
		b = 32'b11101101111111101001101101001000;
		correct = 32'b11101101111111101001101101001000;
		#400 //3.5617622e-29 * -9.8496145e+27 = -9.8496145e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011000100010101101110100100;
		b = 32'b00101000000001110101000010000101;
		correct = 32'b10111011000100010101101110100100;
		#400 //-0.0022179866 * 7.511465e-15 = -0.0022179866
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010000111101101100110000010;
		b = 32'b10001000110010000000111110010000;
		correct = 32'b00010010000111101101100101101001;
		#400 //5.012411e-28 * -1.2040721e-33 = 5.012399e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010110000100110011101001010;
		b = 32'b10100001010110100011110000011100;
		correct = 32'b11100010110000100110011101001010;
		#400 //-1.7930556e+21 * -7.3940827e-19 = -1.7930556e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011111000111101001110000001;
		b = 32'b00111110011110000110001001110001;
		correct = 32'b00111110011110000110001001110001;
		#400 //-1.6188024e-12 * 0.24256302 = 0.24256302
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111010000101110110000011101;
		b = 32'b10001100011010100110101101001111;
		correct = 32'b01011111010000101110110000011101;
		#400 //1.4045633e+19 * -1.8058996e-31 = 1.4045633e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000000101010100001011010000;
		b = 32'b01100011101011101001110001001011;
		correct = 32'b01100011101011101001110001001011;
		#400 //-3.5586592e-05 * 6.441991e+21 = 6.441991e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110111100001100000100110101;
		b = 32'b11001010101011101100001101101100;
		correct = 32'b11011110111100001100000100110101;
		#400 //-8.674103e+18 * -5726646.0 = -8.674103e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111111000011101101110100110;
		b = 32'b10100110100010011101101100001000;
		correct = 32'b10100110100010011101011110000001;
		#400 //9.5654584e-20 * -9.565653e-16 = -9.564697e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110001011100001111011001101;
		b = 32'b00011011001101000111011010110001;
		correct = 32'b00110110001011100001111011001101;
		#400 //2.594595e-06 * 1.4927602e-22 = 2.594595e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000100111000111000100010010;
		b = 32'b01001000000101101010111110000111;
		correct = 32'b01001000000101101010111110000111;
		#400 //-1.7368516e-14 * 154302.11 = 154302.11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101010110000010100010000111;
		b = 32'b10110000011010011100011001010000;
		correct = 32'b10110000011010011100011001010011;
		#400 //-1.8748745e-16 * -8.5046725e-10 = -8.504674e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011011100101001001011101101;
		b = 32'b00011000010000010111110101001111;
		correct = 32'b01110011011100101001001011101101;
		#400 //1.9218687e+31 * 2.500793e-24 = 1.9218687e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101110010110010100010010100;
		b = 32'b01001110110101010110101101010111;
		correct = 32'b01001110110101010110101101010111;
		#400 //1.5136488e-06 * 1790290800.0 = 1790290800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010011110101101100010101;
		b = 32'b10101001000010000001110001100110;
		correct = 32'b01011001010011110101101100010101;
		#400 //3647841600000000.0 * -3.0222698e-14 = 3647841600000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010100010010110111000001;
		b = 32'b10000101110100011100110000101001;
		correct = 32'b10011110010100010010110111000001;
		#400 //-1.10738296e-20 * -1.9729262e-35 = -1.10738296e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001000101001101110101010010;
		b = 32'b00000010110001000100101111000101;
		correct = 32'b11110001000101001101110101010010;
		#400 //-7.3714146e+29 * 2.8843101e-37 = -7.3714146e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101110101001011010011010;
		b = 32'b00010000010010111111110110000011;
		correct = 32'b00101101101110101001011010011010;
		#400 //2.1212632e-11 * 4.022999e-29 = 2.1212632e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000001000011001000101000101;
		b = 32'b10010010110010110011110111111111;
		correct = 32'b10010010110010110011110111111010;
		#400 //4.861994e-34 * -1.2826384e-27 = -1.28263795e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101101010101001001001000110;
		b = 32'b11111011101101000110101011101000;
		correct = 32'b11111011101101000110101011101000;
		#400 //1.9391721e-11 * -1.8735635e+36 = -1.8735635e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011100000111111101101010100;
		b = 32'b10001101011101100111101100010011;
		correct = 32'b11000011100000111111101101010100;
		#400 //-263.9635 * -7.595275e-31 = -263.9635
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100000000001101010010010110;
		b = 32'b10000111101011111111100100000110;
		correct = 32'b11100100000000001101010010010110;
		#400 //-9.506007e+21 * -2.6477436e-34 = -9.506007e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110010010111101000000000111;
		b = 32'b01010111000010100110100101001011;
		correct = 32'b01010111000010100110100101001011;
		#400 //1.6463851e-25 * 152184830000000.0 = 152184830000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010100111001001110011111100;
		b = 32'b10010000000010110101000111110011;
		correct = 32'b00010010100110000100001001101100;
		#400 //9.883684e-28 * -2.7476048e-29 = 9.608923e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011110011111110001011010011;
		b = 32'b01101001111011000101010001010101;
		correct = 32'b01101001111011000101010001010101;
		#400 //-1785727400000.0 * 3.5713093e+25 = 3.5713093e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100100111110011110100100;
		b = 32'b10011101101011110011011001100000;
		correct = 32'b01000000100100111110011110100100;
		#400 //4.6220264 * -4.6378337e-21 = 4.6220264
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011100110110011000110001000;
		b = 32'b11101100001001111110110011000111;
		correct = 32'b11101100001001111110110011000111;
		#400 //-3.9176342e-27 * -8.1203505e+26 = -8.1203505e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011010111101011010000101100;
		b = 32'b00001101100000010110000000100000;
		correct = 32'b11000011010111101011010000101100;
		#400 //-222.7038 * 7.97338e-31 = -222.7038
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101011110111000000001101001;
		b = 32'b11010101000010010111111111100101;
		correct = 32'b01010100111001000000000100001000;
		#400 //17283058000000.0 * -9448900000000.0 = 7834159000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011010000001111100010101111;
		b = 32'b00010111100000110101100000100001;
		correct = 32'b01111011010000001111100010101111;
		#400 //1.0019649e+36 * 8.487923e-25 = 1.0019649e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001011101101010110100000010;
		b = 32'b00010111101110000111000000111100;
		correct = 32'b11010001011101101010110100000010;
		#400 //-66216534000.0 * 1.1919053e-24 = -66216534000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100110110101000101000100;
		b = 32'b00001100011010100100100100101011;
		correct = 32'b01000100100110110101000101000100;
		#400 //1242.5396 * 1.8048722e-31 = 1242.5396
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001010101101100110100110011;
		b = 32'b01011011101100001110111110111100;
		correct = 32'b01011011101100001110111110111100;
		#400 //3.125774e-09 * 9.960637e+16 = 9.960637e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000101100111010101101000100;
		b = 32'b11010011000100011110111011010101;
		correct = 32'b11010011000100011110111011010101;
		#400 //-3.0437114e-19 * -626777200000.0 = -626777200000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110101000010010100010001110;
		b = 32'b01011000101110000011001110101000;
		correct = 32'b11100110101000010010100010001110;
		#400 //-3.8052455e+23 * 1620256000000000.0 = -3.8052455e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011001010101111110001000001;
		b = 32'b00110011001010000000011001001110;
		correct = 32'b11111011001010101111110001000001;
		#400 //-8.878068e+35 * 3.9121282e-08 = -8.878068e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110001110111100000011111;
		b = 32'b00000101011000011000001001011100;
		correct = 32'b01010001110001110111100000011111;
		#400 //107089220000.0 * 1.06033924e-35 = 107089220000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010100010101000000001101010;
		b = 32'b01110101111000100000100111001101;
		correct = 32'b01110101111000100000100111001101;
		#400 //4538421.0 * 5.7307513e+32 = 5.7307513e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100111010111001101111100010;
		b = 32'b00110001010111010001100000011111;
		correct = 32'b00110001010111010001100000011111;
		#400 //-5.539139e-36 * 3.2173444e-09 = 3.2173444e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111010011011000001110100111;
		b = 32'b10000111000101111110101011011110;
		correct = 32'b00001111010011011000001100001111;
		#400 //1.0132636e-29 * -1.1428999e-34 = 1.0132521e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000110010110000011110110;
		b = 32'b00000001100011001111101110001110;
		correct = 32'b00100011000110010110000011110110;
		#400 //8.314679e-18 * 5.178884e-38 = 8.314679e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001000010010011000011110100;
		b = 32'b01101111011101100110001110110001;
		correct = 32'b01111001000010010011000100000011;
		#400 //4.4521097e+34 * 7.625383e+28 = 4.452117e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011101001000111110101011100;
		b = 32'b01110000011001001011011010011111;
		correct = 32'b01110000011001001011011010011111;
		#400 //1412955600000.0 * 2.8313343e+29 = 2.8313343e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100001101011100010100000110111;
		b = 32'b11011111001010100111011100000010;
		correct = 32'b01100001101010001101010001111111;
		#400 //4.015789e+20 * -1.2283289e+19 = 3.8929562e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110101100011100101111010010;
		b = 32'b01110011110100111011000100100111;
		correct = 32'b01110011110100111011000100100111;
		#400 //4.383014e-30 * 3.3543937e+31 = 3.3543937e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110011101111111100110101010;
		b = 32'b00001100101100010001000101100100;
		correct = 32'b01101110011101111111100110101010;
		#400 //1.9186156e+28 * 2.7281635e-31 = 1.9186156e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100001110010010000101110111;
		b = 32'b11001100001000101101000000110101;
		correct = 32'b11111100001110010010000101110111;
		#400 //-3.8450147e+36 * -42680532.0 = -3.8450147e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111011101000111011101010100;
		b = 32'b01100100101111100000101000000100;
		correct = 32'b01100100101111100000101000000100;
		#400 //-3.392649e-15 * 2.8044825e+22 = 2.8044825e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110110010001111110000010000;
		b = 32'b11110000111011001101001101010011;
		correct = 32'b11110000111011001101001101010011;
		#400 //5.9898084e-06 * -5.863515e+29 = -5.863515e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110110000101001010101010000;
		b = 32'b10000100111001011000111111010110;
		correct = 32'b01111110110000101001010101010000;
		#400 //1.2932275e+38 * -5.3969734e-36 = 1.2932275e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011001000001010001010100111011;
		b = 32'b00000001010011100100011110000101;
		correct = 32'b10011001000001010001010100111011;
		#400 //-6.880226e-24 * 3.7887537e-38 = -6.880226e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110000011011101000011101111;
		b = 32'b11101101010010111110111110110000;
		correct = 32'b11101101010010111110111110110000;
		#400 //4.920236e-16 * -3.9447013e+27 = -3.9447013e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010111111010001011000011101;
		b = 32'b10001010000000100101010000010001;
		correct = 32'b00011010111111010001011000011101;
		#400 //1.04674073e-22 * -6.2750835e-33 = 1.04674073e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001000011000011000000001111;
		b = 32'b10001001111000001001111101011101;
		correct = 32'b10001001111000001001111100010111;
		#400 //2.574842e-38 * -5.4075903e-33 = -5.4075646e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101001100100001000100011011;
		b = 32'b11001000101011110100101111011010;
		correct = 32'b11001000101011011110011110111000;
		#400 //2849.069 * -359006.8 = -356157.75
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111111111000000111001001000;
		b = 32'b10100000110011111000000111000111;
		correct = 32'b10100000110011111000000111000111;
		#400 //-2.485462e-29 * -3.5153043e-19 = -3.5153043e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110010101000101101001001100;
		b = 32'b10000011000001001000000001111001;
		correct = 32'b01010110010101000101101001001100;
		#400 //58371070000000.0 * -3.8938793e-37 = 58371070000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110100101001001011110011;
		b = 32'b11111100111101000110000110111000;
		correct = 32'b11111100111101000110000110111000;
		#400 //2.9635659e+16 * -1.0151219e+37 = -1.0151219e+37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011001101100011010010011100;
		b = 32'b11000100010000011101011011100101;
		correct = 32'b11011011001101100011010010011100;
		#400 //-5.128629e+16 * -775.3577 = -5.128629e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110011100011001010000100;
		b = 32'b11001010010000110001100101000110;
		correct = 32'b01010101110011100011001010000010;
		#400 //28339545000000.0 * -3196497.5 = 28339540000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001000011000110111010110111101;
		b = 32'b10110110100110011100000010000100;
		correct = 32'b10110110100110011100000010000100;
		#400 //6.844873e-34 * -4.582167e-06 = -4.582167e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111000110110011101010011101;
		b = 32'b10110001001101001110010010000110;
		correct = 32'b01101111000110110011101010011101;
		#400 //4.8041036e+28 * -2.6323348e-09 = 4.8041036e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110110101000011010010001011;
		b = 32'b00001111110001111100000111111001;
		correct = 32'b11100110110101000011010010001011;
		#400 //-5.0105547e+23 * 1.969763e-29 = -5.0105547e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010110011100000000000001111;
		b = 32'b01110110010010000110110010101010;
		correct = 32'b01110110010010000110110010101010;
		#400 //-442382120000.0 * 1.0162728e+33 = 1.0162728e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001011000110000011101111001;
		b = 32'b01000010011010000101110100110000;
		correct = 32'b01000010011010000101110101101001;
		#400 //0.00021651191 * 58.091003 = 58.09122
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001010101011111001101100001;
		b = 32'b01010110010111101101010000101000;
		correct = 32'b01010110010111101101010000101000;
		#400 //3.9296537e-38 * 61250696000000.0 = 61250696000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100101101000000100011001;
		b = 32'b01111010111000111101011101010101;
		correct = 32'b01111010111000111101011101010101;
		#400 //18.813036 * 5.915094e+35 = 5.915094e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001110010010101111101000100;
		b = 32'b11101110111001101010111010000110;
		correct = 32'b11101110111001101010111010000110;
		#400 //4.8478577e-33 * -3.569627e+28 = -3.569627e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011001001000010101010111;
		b = 32'b01101011000111010011010011100111;
		correct = 32'b01101011000111010011010011101011;
		#400 //6.5866653e+19 * 1.9005118e+26 = 1.9005125e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100010100010111011001001001;
		b = 32'b11011100101100000101001110010101;
		correct = 32'b11111100010100010111011001001001;
		#400 //-4.3503566e+36 * -3.9705196e+17 = -4.3503566e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101110010111110100101010001;
		b = 32'b01101100001111100001011000011011;
		correct = 32'b01101100001111100001011000011011;
		#400 //-5.3974896e-21 * 9.192012e+26 = 9.192012e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011010010010101101101100011;
		b = 32'b01001010111010000101010110111011;
		correct = 32'b01001010111010000101010110111011;
		#400 //1.6655859e-22 * 7613149.5 = 7613149.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111011101111110010111001111;
		b = 32'b11100011001101010010000110111101;
		correct = 32'b01111111011101111110010111001111;
		#400 //3.2951255e+38 * -3.3412918e+21 = 3.2951255e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100100110100000101110000001;
		b = 32'b01101000000001100110001000100101;
		correct = 32'b01101000000001100110001000100101;
		#400 //0.018804314 * 2.5384302e+24 = 2.5384302e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101101010001101100000100101;
		b = 32'b00110011101001001100110000101101;
		correct = 32'b01100101101010001101100000100101;
		#400 //9.966809e+22 * 7.6739845e-08 = 9.966809e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101001110010100110101010111;
		b = 32'b10001100100111101101010001101000;
		correct = 32'b10110101001110010100110101010111;
		#400 //-6.9030415e-07 * -2.4471592e-31 = -6.9030415e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100001010000100011011011101;
		b = 32'b00100000110011101111000111101111;
		correct = 32'b00100100001010011110010011000001;
		#400 //3.6489217e-17 * 3.5057856e-19 = 3.6839796e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100011011010100001011101101;
		b = 32'b00001111101010100001100010001000;
		correct = 32'b00001111101010000011111000000010;
		#400 //-1.8277956e-31 * 1.6772743e-29 = 1.6589964e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001011110101011000100100111100;
		b = 32'b01100110011100110011000110011111;
		correct = 32'b01100110011100110011000110011111;
		#400 //8.2251103e-32 * 2.871126e+23 = 2.871126e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100001101001010110111101111;
		b = 32'b01010001010111010111011101110001;
		correct = 32'b11111100001101001010110111101111;
		#400 //-3.752565e+36 * 59449480000.0 = -3.752565e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110001001101000101111100001101;
		b = 32'b01010100101111101000010000111100;
		correct = 32'b01110001001101000101111100001101;
		#400 //8.931554e+29 * 6546098500000.0 = 8.931554e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000101110001101110111000010;
		b = 32'b10000011110100101111000010110011;
		correct = 32'b10000011110100000000110100111100;
		#400 //1.6977283e-38 * -1.23979525e-36 = -1.222818e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000010110100000111100000101;
		b = 32'b00110111011011111000101000110011;
		correct = 32'b00110111011011111000101000110011;
		#400 //1.2104688e-14 * 1.4277687e-05 = 1.4277687e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101110001001101110000001111;
		b = 32'b10010000101011110100001111100101;
		correct = 32'b01000101110001001101110000001111;
		#400 //6299.5073 * -6.912994e-29 = 6299.5073
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101001101101111110100001111;
		b = 32'b01010101101000110001111111111101;
		correct = 32'b01010101101000110001111111111101;
		#400 //-3.6954235e-26 * 22419723000000.0 = 22419723000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100000100110000001110010110;
		b = 32'b11110011100110010000000110111001;
		correct = 32'b01110011100011010000010101110011;
		#400 //4.65906e+31 * -2.4244884e+31 = 2.2345715e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100110110111111010010100110;
		b = 32'b00011011010010001111111111000010;
		correct = 32'b00011011010010001111111111000010;
		#400 //3.3889535e-31 * 1.6626252e-22 = 1.6626252e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010000010110011011011000;
		b = 32'b01100011001010110111100010101001;
		correct = 32'b01100011001010110111100010101001;
		#400 //5.683566e-37 * 3.1630877e+21 = 3.1630877e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000100001000010101110101101;
		b = 32'b11111010110111110000010010010000;
		correct = 32'b11111010110111110000010010010000;
		#400 //2.2390572e-19 * -5.7898737e+35 = -5.7898737e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111011011110001110000011011;
		b = 32'b00110101101000110111010100100111;
		correct = 32'b01100111011011110001110000011011;
		#400 //1.12916404e+24 * 1.2178542e-06 = 1.12916404e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000010011111010010101001111;
		b = 32'b11101001000011100010011001001010;
		correct = 32'b11101001000011100010011001001010;
		#400 //1.7588278e-19 * -1.0740518e+25 = -1.0740518e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010101101011101001100111000;
		b = 32'b01000010010100101010011100110111;
		correct = 32'b01000010010100101010100010100011;
		#400 //0.0013872152 * 52.663296 = 52.664684
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011111011100000001010001011;
		b = 32'b01111000000100011010101101101111;
		correct = 32'b01111000000100011010101101101111;
		#400 //-1.6911623e-12 * 1.1818127e+34 = 1.1818127e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100101111100110110000111011;
		b = 32'b11110110110011001001001010000110;
		correct = 32'b11110110110011001001001010000110;
		#400 //-8.2582715e-17 * -2.0746102e+33 = -2.0746102e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000110101000000111101001010;
		b = 32'b00100110100110011011100100110000;
		correct = 32'b01111000110101000000111101001010;
		#400 //3.4408657e+34 * 1.0666703e-15 = 3.4408657e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111010001110111001010000;
		b = 32'b10001000010001110001010100011001;
		correct = 32'b11011111111010001110111001010000;
		#400 //-3.3568882e+19 * -5.9909184e-34 = -3.3568882e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001000101001001011100100101;
		b = 32'b00010100111010011110011110001110;
		correct = 32'b11010001000101001001011100100101;
		#400 //-39886934000.0 * 2.361832e-26 = -39886934000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101011110011101111001000111;
		b = 32'b10001100100111000101010101001100;
		correct = 32'b01011101011110011101111001000111;
		#400 //1.12530665e+18 * -2.4086942e-31 = 1.12530665e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011101001110010110010100110;
		b = 32'b10111010010011011110000010010111;
		correct = 32'b01110011101001110010110010100110;
		#400 //2.6489842e+31 * -0.0007853596 = 2.6489842e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101010000010011110001001000;
		b = 32'b10100000110110001011000100010000;
		correct = 32'b01011101010000010011110001001000;
		#400 //8.702552e+17 * -3.6708993e-19 = 8.702552e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110101100001111011010000;
		b = 32'b10010010010110000111110011011111;
		correct = 32'b11101000110101100001111011010000;
		#400 //-8.0892385e+24 * -6.83115e-28 = -8.0892385e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000111101001101010010001;
		b = 32'b10111101000000011111011001101011;
		correct = 32'b10111101000000011111011001101011;
		#400 //8.597928e-18 * -0.031729143 = -0.031729143
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000111111001101001101001111;
		b = 32'b11010101010110011111111110110010;
		correct = 32'b01101000111111001101001101001111;
		#400 //9.5514745e+24 * -14980764000000.0 = 9.5514745e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101111001010000111010100001;
		b = 32'b10100010010001000111000101000110;
		correct = 32'b10100010010001001110001111001101;
		#400 //-6.063092e-21 * -2.662292e-18 = -2.668355e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111111010000100011110001;
		b = 32'b00100010000001001111101010000011;
		correct = 32'b11110111111111010000100011110001;
		#400 //-1.0264316e+34 * 1.8021956e-18 = -1.0264316e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100001100100000000101000100;
		b = 32'b11011001001010010100110000000100;
		correct = 32'b11011001001010010100110000000100;
		#400 //3.859867e-17 * -2978303200000000.0 = -2978303200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101100110110111011000111000;
		b = 32'b01011100000011001010011000100101;
		correct = 32'b01011100000011001010011000100101;
		#400 //-4.1150394e-21 * 1.583567e+17 = 1.583567e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100110100101110111110000010;
		b = 32'b00010111101111010010100000001101;
		correct = 32'b00010111101111010010100000001010;
		#400 //-3.2499772e-31 * 1.2223949e-24 = 1.2223946e-24
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
