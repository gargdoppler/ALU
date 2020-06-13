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

    op = 3'b011;

		/* Display the operation */
		$display ("Opcode: 011, Operation: MUL");
		/* Test Cases!*/
		a = 32'b00101110010100101111110001110111;
		b = 32'b10110110110011010000101000010101;
		correct = 32'b10100101101010001111110001111010;
		#400 //4.7972706e-11 * -6.11065e-06 = -2.931444e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000001100010011010000011001;
		b = 32'b10110110111001110011001101110010;
		correct = 32'b11010111101000000000100110011111;
		#400 //5.1075433e+19 * -6.8903255e-06 = -351926370000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001111011000001001000011110;
		b = 32'b01111001011110110111010000001010;
		correct = 32'b01111011111001111110000011000101;
		#400 //29.508846 * 8.1601254e+34 = 2.4079589e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010111111000011101110101;
		b = 32'b10111000100011000111011001011001;
		correct = 32'b01000010011101010100101011010100;
		#400 //-915575.3 * -6.697764e-05 = 61.323074
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011110101001000000100010110;
		b = 32'b00011011110100101011011101001110;
		correct = 32'b01011000001011101110101000001101;
		#400 //2.2067702e+36 * 3.4860044e-22 = 769281050000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000110000110001000010001001;
		b = 32'b00101100110110010100000111010111;
		correct = 32'b01010110001001011000101100101111;
		#400 //7.369332e+24 * 6.1748206e-12 = 45504300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011111001110110010110010010;
		b = 32'b11100101110100011101100010001011;
		correct = 32'b01100010001111011010110110101000;
		#400 //-0.0070616687 * -1.2387114e+23 = 8.74737e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011011111011100110101101;
		b = 32'b01010110110101111011011010100101;
		correct = 32'b11011100110010011111111111111001;
		#400 //-3835.6047 * 118589730000000.0 = -4.5486332e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000011011011000100100101100;
		b = 32'b10000111011010011111000001111101;
		correct = 32'b10001000010110010001000011111110;
		#400 //3.7114973 * -1.7599645e-34 = -6.5321036e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010011100110001100010001000;
		b = 32'b00001111110111000001110101111010;
		correct = 32'b10000010110100010000010100010011;
		#400 //-1.4150039e-08 * 2.1705029e-29 = -3.0712702e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100000000110110101101111110;
		b = 32'b00001110000000000100100001010000;
		correct = 32'b00010010100000111011010110111101;
		#400 //525.67957 * 1.5812035e-30 = 8.312064e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010010110001010000111011001;
		b = 32'b01011101011001111110001010111000;
		correct = 32'b10101000010001000011100111100101;
		#400 //-1.0430462e-32 * 1.04432e+18 = -1.08927395e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110010101101110110100010;
		b = 32'b00011000000110100100001101111001;
		correct = 32'b11010100011101000111110110010111;
		#400 //-2.1066784e+36 * 1.9938098e-24 = -4200316300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011000011100110100110010011;
		b = 32'b10110000011101100001111010001110;
		correct = 32'b10100100000010001110101001110011;
		#400 //3.315797e-08 * -8.95377e-10 = -2.9688885e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000100010101001111010001110;
		b = 32'b10011010000001000111001010101100;
		correct = 32'b00010011000011110110111110110010;
		#400 //-6.609886e-05 * -2.738959e-23 = 1.8104208e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000100000100100110010110010;
		b = 32'b11101111100011101011110000111111;
		correct = 32'b01011000100100010100110010110110;
		#400 //-1.446616e-14 * -8.834889e+28 = 1278069300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110111000100111110011100100;
		b = 32'b10101111100100100101111100001100;
		correct = 32'b01100111000000010111111101010001;
		#400 //-2.2968597e+33 * -2.662478e-10 = 6.1153385e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101101000000011111100100101;
		b = 32'b00101011110101101100010011101110;
		correct = 32'b11010010000001100111000000001110;
		#400 //-9.459293e+22 * 1.5260274e-12 = -144351400000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010111100101010001010110;
		b = 32'b00111011010101110101111111101000;
		correct = 32'b01010101001110110000110000011111;
		#400 //3911260800000000.0 * 0.003286356 = 12853796000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000110110011000111101100110;
		b = 32'b11110011011101100001100110000000;
		correct = 32'b11011100110100010010010101111000;
		#400 //2.4154029e-14 * -1.949802e+31 = -4.7095574e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001010111001010010101101000;
		b = 32'b10001100011110110001011001010101;
		correct = 32'b10100110010110000110100101101100;
		#400 //3881647600000000.0 * -1.9343057e-31 = -7.508293e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000111011101011011111111101;
		b = 32'b01101010111111011110101001100000;
		correct = 32'b11011100011011001100011001100011;
		#400 //-1.7369072e-09 * 1.5348252e+26 = -2.665849e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010000010010010110101110011;
		b = 32'b10101000101110011010000100110110;
		correct = 32'b01100011010001101111000001110101;
		#400 //-1.7806662e+35 * -2.060904e-14 = 3.669782e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111010011001001100111110010;
		b = 32'b01010101111101110101011001101111;
		correct = 32'b01101101110001011010110110011101;
		#400 //224961560000000.0 * 33993825000000.0 = 7.647304e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111111100110001001000010011;
		b = 32'b00011011011111010101110001010100;
		correct = 32'b10110011111100001001000010000111;
		#400 //-534517900000000.0 * 2.0957502e-22 = -1.120216e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101100111110001001100000101;
		b = 32'b00011111100010101100100000110111;
		correct = 32'b00001101101011000111100101010011;
		#400 //1.8084654e-11 * 5.87765e-20 = 1.0629526e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110010111001001100101000011;
		b = 32'b01011100001111000110111011001100;
		correct = 32'b10111011001000100110000000000111;
		#400 //-1.1678397e-20 * 2.1215647e+17 = -0.0024776475
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010011000111000111101011100;
		b = 32'b01101010111010100011111000010010;
		correct = 32'b00110101110100000011100000110111;
		#400 //1.0956615e-32 * 1.4159088e+26 = 1.5513568e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000111010010010101100001110;
		b = 32'b01101111001101101010100111111010;
		correct = 32'b01010000101001100101111101101101;
		#400 //3.9500227e-19 * 5.653176e+28 = 22330173000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101111100111000100010100000;
		b = 32'b01000011011011110000001000000111;
		correct = 32'b01001001111000110101111001111011;
		#400 //7793.078 * 239.00792 = 1862607.4
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000000100010101100101101111001;
		b = 32'b01001010000110110011111101010001;
		correct = 32'b00001011001010000101011100001101;
		#400 //1.2746291e-38 * 2543572.2 = 3.2421113e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011000011000100100100011011;
		b = 32'b00010100100111010010010111011010;
		correct = 32'b11000000001011000011101100100111;
		#400 //-1.6959485e+26 * 1.5867879e-26 = -2.6911104
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110111000101111010111110;
		b = 32'b01110100101000000011100100110011;
		correct = 32'b11110010000010011110110001110100;
		#400 //-0.026900645 * 1.0155367e+32 = -2.7318592e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110101011001110011010110110;
		b = 32'b11101011010010001111010110101010;
		correct = 32'b01010010100001111011101000101010;
		#400 //-1.1997432e-15 * -2.4294528e+26 = 291471950000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001110101001010010011011000;
		b = 32'b01001111110101000101100100101000;
		correct = 32'b11100010001100000110001010010001;
		#400 //-114162336000.0 * 7125225500.0 = -8.1343235e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101110100110001101000100010;
		b = 32'b00000000010001010011100001110000;
		correct = 32'b10100110011001000101001001010101;
		#400 //-1.2461267e+23 * 6.356895e-39 = -7.921497e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011000000101111111000000101;
		b = 32'b11100111100010011101011110111111;
		correct = 32'b11001011000011010001000010101011;
		#400 //7.101105e-18 * -1.301888e+24 = -9244843.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111101000011101100100100000;
		b = 32'b00011011011000000001000101011110;
		correct = 32'b11000011100011011010100011110111;
		#400 //-1.5286125e+24 * 1.8534457e-22 = -283.32004
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011000010010110011110011110;
		b = 32'b11110100111101010111011001101010;
		correct = 32'b00111000100000111011111110111001;
		#400 //-4.037963e-37 * -1.5558038e+32 = 6.282278e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110011010100101001010100100;
		b = 32'b10000010111111010111101000011110;
		correct = 32'b00111001111010000000001101110011;
		#400 //-1.1881578e+33 * -3.72451e-37 = 0.00044253058
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100110001001110011110010111;
		b = 32'b00001101111110110111100010000110;
		correct = 32'b10001011010000010110101111000101;
		#400 //-0.024036212 * 1.5498084e-30 = -3.7251525e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101000100110011001000101110011;
		b = 32'b10011100110011010101100000101101;
		correct = 32'b11000101111101100101110010111100;
		#400 //5.801641e+24 * -1.3588555e-21 = -7883.592
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010001110110110000011111011;
		b = 32'b10011101011000100011100011111011;
		correct = 32'b01000000001001011001010101010011;
		#400 //-8.641323e+20 * -2.994031e-21 = 2.587239
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000110110011100011101010000;
		b = 32'b11101000001100010101111011000001;
		correct = 32'b00110001100101101110001101101010;
		#400 //-1.3107071e-33 * -3.350427e+24 = 4.3914286e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110001110011010011001000001;
		b = 32'b00110100001111000011000011110100;
		correct = 32'b00100011000010000111100110011000;
		#400 //4.2211793e-11 * 1.7526673e-07 = 7.398323e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011100110010001011001011110;
		b = 32'b10110001101010000111011111000000;
		correct = 32'b01101101110010010111110010010100;
		#400 //-1.5897502e+36 * -4.9030575e-09 = 7.7946366e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111111011010001000100011;
		b = 32'b00101100111101110011111101001010;
		correct = 32'b01010011011101001111011000100100;
		#400 //1.497187e+23 * 7.0271887e-12 = 1052101600000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011000000000100100011100010;
		b = 32'b01000110101100111011010011001111;
		correct = 32'b01110010001101000001101100100010;
		#400 //1.5508668e+26 * 23002.404 = 3.5673666e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010101101000000010000010000;
		b = 32'b00010101111100001101101011011110;
		correct = 32'b10100001001010010101110110110111;
		#400 //-5898760.0 * 9.728054e-26 = -5.738346e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000001011011101000110011010;
		b = 32'b01001010101101000110000010000111;
		correct = 32'b01000011011101001111000111010101;
		#400 //4.144162e-05 * 5910595.5 = 244.94466
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000101010011000000111100100;
		b = 32'b11010011011110111010001100110110;
		correct = 32'b11011100101001101001111001101100;
		#400 //347151.12 * -1080775000000.0 = -3.7519226e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111000011001101101100110010;
		b = 32'b11100001110100000001011000110111;
		correct = 32'b10101001011001001111110010100011;
		#400 //1.0596845e-34 * -4.7981544e+20 = -5.0845297e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100101010100101101101101100;
		b = 32'b10110010110001010110000011000101;
		correct = 32'b10111000000000110101100010111111;
		#400 //1362.8569 * -2.2977824e-08 = -3.1315485e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110110001101001111010101000;
		b = 32'b00111000101000000111101001110011;
		correct = 32'b01000111111110010000010001010100;
		#400 //1666143200.0 * 7.6522025e-05 = 127496.66
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010100011001101001110101;
		b = 32'b11001011000101111000100011101111;
		correct = 32'b01010100111110000010010001110010;
		#400 //-858535.3 * -9930991.0 = 8526106700000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010101110111011100010000;
		b = 32'b01100111001001110011101000101100;
		correct = 32'b11010000000011001011111110100001;
		#400 //-1.1960715e-14 * 7.897083e+23 = -9445475000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011111010011010000010101110;
		b = 32'b11001111011100111001000000001011;
		correct = 32'b11111011110111100100011011111010;
		#400 //5.64877e+26 * -4086303500.0 = -2.308259e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100101101100110010010101010;
		b = 32'b00111110011011011001010111011000;
		correct = 32'b11000011101010010100010111110100;
		#400 //-1459.1458 * 0.23201692 = -338.5465
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100011010111111101000011010;
		b = 32'b00011110110110110111010000001001;
		correct = 32'b10010011110010100100100111101010;
		#400 //-2.1977067e-07 * 2.3235518e-20 = -5.1064854e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001011001010011010101000111;
		b = 32'b01110011000111011011001000111111;
		correct = 32'b11000101000011010011000101000100;
		#400 //-1.8081332e-28 * 1.2493986e+31 = -2259.079
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101111010000101110000010010;
		b = 32'b10101101011100001001111100000101;
		correct = 32'b00111011110110100110011010100111;
		#400 //-487293500.0 * -1.367773e-11 = 0.006665069
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011110101000100010010011000;
		b = 32'b00010101110001110101001100100011;
		correct = 32'b00100010001001010100011001000001;
		#400 //27822384.0 * 8.0506627e-26 = 2.2398862e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110001111010101110000110100;
		b = 32'b00000110001101011111111110110000;
		correct = 32'b11000101000001101001111101010010;
		#400 //-6.292571e+37 * 3.4230166e-35 = -2153.9575
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100011010000111000100101;
		b = 32'b01010100110001101110111101000011;
		correct = 32'b01010110110110110011100110001011;
		#400 //17.631907 * 6835341400000.0 = 120520100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011000011101010011010001;
		b = 32'b11001111100010001110000011100001;
		correct = 32'b11110110011100010111111011011111;
		#400 //2.6661456e+23 * -4592878000.0 = -1.2245281e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010111001111100111001000110;
		b = 32'b00011100110000000001000101110010;
		correct = 32'b00111000001011011110101010000000;
		#400 //3.262376e+16 * 1.2710004e-21 = 4.146481e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100001010111111111111101001;
		b = 32'b00111110101100001001100010101010;
		correct = 32'b10111011011011010100110100000101;
		#400 //-0.010498025 * 0.34491473 = -0.0036209237
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010010100000101001100011001;
		b = 32'b00110010100001000111010101000011;
		correct = 32'b11010101010101111001010010001011;
		#400 //-9.6072765e+20 * 1.5420147e-08 = -14814562000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010110011110100000110000011;
		b = 32'b01011001001110000111010011111100;
		correct = 32'b10110100100101010101010111001100;
		#400 //-8.5719033e-23 * 3245001300000000.0 = -2.7815838e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100101011111111110100010;
		b = 32'b01001101001110101100111010110000;
		correct = 32'b00111111010110101110100110101101;
		#400 //4.365533e-09 * 195881730.0 = 0.8551281
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011010100010100100001011001;
		b = 32'b00101100110111111100001111000010;
		correct = 32'b11011000101101101110111000001110;
		#400 //-2.5300715e+26 * 6.3597747e-12 = -1609068400000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111110001101100101110101;
		b = 32'b00110011011111111011011010110101;
		correct = 32'b10101010111110001001001000110110;
		#400 //-7.4162913e-06 * 5.9537985e-08 = -4.4155104e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110011010011010100011001001;
		b = 32'b00011000000010110100010001110101;
		correct = 32'b11001110111111100011101001000010;
		#400 //-1.1847935e+33 * 1.799989e-24 = -2132615400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110001110001111101011010010;
		b = 32'b10111000001111010110011100101001;
		correct = 32'b11101111000010001101101110111000;
		#400 //9.3795885e+32 * -4.5157187e-05 = -4.2355585e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110110100101011010001011000;
		b = 32'b01001110001010000101001101110000;
		correct = 32'b11001101100010101000101100000110;
		#400 //-0.41153216 * 706010100.0 = -290545860.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100011001110101010110110001;
		b = 32'b00010000110111000010110001001111;
		correct = 32'b00010101110001101111010110101110;
		#400 //925.3389 * 8.684297e-29 = 8.035918e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111011111101010011110101101;
		b = 32'b00011110001001011010110001111111;
		correct = 32'b11011110001001001100110110101001;
		#400 //-3.3849453e+38 * 8.770699e-21 = -2.9688334e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010111111110001011001101011;
		b = 32'b11001101101101110111000111110010;
		correct = 32'b10101001001101101100101010010001;
		#400 //1.05501746e-22 * -384712260.0 = -4.0587816e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110100111011110100111110110;
		b = 32'b11101110011111011011111000011110;
		correct = 32'b01011101100111001000010101111110;
		#400 //-7.181093e-11 * -1.9632386e+28 = 1.4098199e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100111011101011001110110100;
		b = 32'b00100111010110100110010101111011;
		correct = 32'b01001100110010111010001110100111;
		#400 //3.5226193e+22 * 3.030859e-15 = 106765624.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000101100100001010100011001;
		b = 32'b11100001011010000111010010011111;
		correct = 32'b10111010101000011011010000111111;
		#400 //4.6033225e-24 * -2.68003e+20 = -0.0012337043
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011001110010000011001100100;
		b = 32'b11011000111111101000101100101100;
		correct = 32'b11111100101101111111100011101101;
		#400 //3.4131081e+21 * -2238989500000000.0 = -7.641913e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110100101101111101001111;
		b = 32'b00001101001000101001001001011110;
		correct = 32'b10001001100001011110100111100001;
		#400 //-0.006435312 * 5.0096287e-31 = -3.2238524e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000101001011010110100100110;
		b = 32'b10101101111100100011000010000011;
		correct = 32'b00100111000111001011110100010011;
		#400 //-7.9000645e-05 * -2.7533758e-11 = 2.1751846e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100011001101010011010111001;
		b = 32'b10001111110101110001111100001111;
		correct = 32'b11001100110000011101001000000001;
		#400 //4.7904393e+36 * -2.12126e-29 = -101617670.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010000110100010111011100010;
		b = 32'b01111011011000011111111001011000;
		correct = 32'b11011110000010000001110001100100;
		#400 //-2.0895711e-18 * 1.1734255e+36 = -2.451956e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001100110001110010101010001;
		b = 32'b10010100010111101010000101001011;
		correct = 32'b00000110100001001111011100110001;
		#400 //-4.4498525e-09 * -1.1239945e-26 = 5.0016097e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100101001000000111010000001;
		b = 32'b00100001110000001100100110001111;
		correct = 32'b10100110111101110001100000011000;
		#400 //-1312.4532 * 1.3063778e-18 = -1.7145599e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110101101011101010110011100;
		b = 32'b00111100100101000011100111001100;
		correct = 32'b10011011110100101001000100010111;
		#400 //-1.9252467e-20 * 0.018093966 = -3.4835348e-22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100100110101001010100011000;
		b = 32'b01010000010011011111010011100000;
		correct = 32'b11000101011110001011101010000011;
		#400 //-2.8793215e-07 * 13821510000.0 = -3979.657
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001011110110000101101000111;
		b = 32'b00010001000011011111011010011111;
		correct = 32'b10110011000010110011011100001111;
		#400 //-2.8943409e+20 * 1.1198935e-28 = -3.2413535e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011011011001111100101100101100;
		b = 32'b10110010110101001111000110100111;
		correct = 32'b10001110110000001100111100001110;
		#400 //1.917352e-22 * -2.4789939e-08 = -4.753104e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000110010101100000011001100;
		b = 32'b10100001111100000101101010001001;
		correct = 32'b00110011001111100101110001110100;
		#400 //-27213062000.0 * -1.6286997e-18 = 4.4321908e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010001000000110110110100010;
		b = 32'b00001000011110001000000010111100;
		correct = 32'b00000011000110111011101011100010;
		#400 //0.0006119852 * 7.478111e-34 = 4.5764937e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111011010001110011000100011;
		b = 32'b00011011011100010101111000110100;
		correct = 32'b11011011010110111001011001011011;
		#400 //-3.0957583e+38 * 1.9965491e-22 = -6.1808337e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011010100011001011110010;
		b = 32'b10100100010001110111101110101100;
		correct = 32'b00100010001101100111111010111110;
		#400 //-0.05717749 * -4.3256e-17 = 2.4732696e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100100001111011110001100000;
		b = 32'b11011000110000110101010111011100;
		correct = 32'b10110101110011110010010000000111;
		#400 //8.982244e-22 * -1718188200000000.0 = -1.5433187e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000010111011101100111100100;
		b = 32'b01010110010101110010000000001011;
		correct = 32'b10011111001110100110110111000011;
		#400 //-6.6760898e-34 * 59133156000000.0 = -3.9477825e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000001101000110001100001011;
		b = 32'b01101011011101111001000000001000;
		correct = 32'b11110100001011100111000100001101;
		#400 //-184716.17 * 2.9928485e+26 = -5.528275e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010000000110100111101111101;
		b = 32'b01101011001100011111011110101000;
		correct = 32'b10110101101101101001000111111011;
		#400 //-6.322371e-33 * 2.151494e+26 = -1.3602543e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010000100101111101001011;
		b = 32'b01110110000100000110111000010000;
		correct = 32'b01010100110110110101001001010111;
		#400 //1.0289981e-20 * 7.3234676e+32 = 7535834000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001010111101010001010001101;
		b = 32'b11111001101011010110011111110001;
		correct = 32'b01001011100101101100111000111110;
		#400 //-1.7562802e-28 * -1.1254694e+35 = 19766396.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101100111111111010101101001;
		b = 32'b10001111111100011000111111001010;
		correct = 32'b11001110000101101110111111100000;
		#400 //2.6577687e+37 * -2.381982e-29 = -633075700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011010111111100011110110001;
		b = 32'b10101111101011111101110011001100;
		correct = 32'b11000011100110011011101010000100;
		#400 //961128000000.0 * -3.19892e-10 = -307.45715
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100000000110001010001001110;
		b = 32'b10100111000101000110110001111011;
		correct = 32'b10110011100101111111111010010001;
		#400 //34361656.0 * -2.0597933e-15 = -7.077791e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101110010100010011001011100;
		b = 32'b00111100011010110000110000110110;
		correct = 32'b10110010101110011001101011011011;
		#400 //-1.5061337e-06 * 0.014346173 = -2.1607255e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100111010011011011000011100010;
		b = 32'b10011111011010000100010110101011;
		correct = 32'b11000111001110101010000001000111;
		#400 //9.7134804e+23 * -4.918554e-20 = -47776.277
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000010110111101001010111111;
		b = 32'b01000100100101010010101011110000;
		correct = 32'b10110101100000000001011010001000;
		#400 //-7.9971224e-10 * 1193.3418 = -9.543301e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101110011110110100101111100;
		b = 32'b00011001110100000101101101100111;
		correct = 32'b00110000001010001100111111000011;
		#400 //28506495000000.0 * 2.1543613e-23 = 6.141329e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001001001111011000001111;
		b = 32'b11010011111011010111101111000000;
		correct = 32'b10110011100110010000011110001010;
		#400 //3.4931886e-20 * -2039966900000.0 = -7.125989e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101001100000011001100000111;
		b = 32'b11001011111011010110011010010100;
		correct = 32'b00100001101000110110010111011000;
		#400 //-3.558317e-26 * -31116584.0 = 1.1072267e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010111011010010001101011010011;
		b = 32'b01100111101101011011000011011010;
		correct = 32'b10111111101001010111000100000000;
		#400 //-7.5320217e-25 * 1.7160213e+24 = -1.292511
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101101000011001001110011111;
		b = 32'b10110010000100110101110101100110;
		correct = 32'b11110000001110100000010101101111;
		#400 //2.6846525e+37 * -8.5777625e-09 = -2.3028312e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100100101111110111001101110;
		b = 32'b10110111110010000000001110001100;
		correct = 32'b10001100111011010110100011000010;
		#400 //1.5341148e-26 * -2.384351e-05 = -3.657868e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000100010011110100000010011;
		b = 32'b10111101000001000110111101100001;
		correct = 32'b00001110000011101010111101010011;
		#400 //-5.439454e-29 * -0.03233278 = 1.7587267e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011001101110011101101000100;
		b = 32'b00101111011000101111010101011100;
		correct = 32'b10101011001000100111000111110000;
		#400 //-0.002795891 * 2.064175e-10 = -5.771208e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010010011001100010101001001;
		b = 32'b11001011011101111110000110101000;
		correct = 32'b00110110010001100100011011011001;
		#400 //-1.8187287e-13 * -16245160.0 = 2.9545538e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110011001100001110101110;
		b = 32'b10111011000110010001010010111111;
		correct = 32'b01110111011101001110001100010110;
		#400 //-2.1263948e+36 * -0.0023358313 = 4.9668995e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000101101000101000111100100;
		b = 32'b11001010000001100011010010010111;
		correct = 32'b11101011001111010000111111010001;
		#400 //1.0394734e+20 * -2198821.8 = -2.2856167e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000011110001010000000001010;
		b = 32'b01001001011101110110100001000000;
		correct = 32'b11001010011100000100011110101001;
		#400 //-3.884768 * 1013380.0 = -3936746.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110000000111111110111001000111;
		b = 32'b11000010101001101100000100101100;
		correct = 32'b01110011010100000101101001100000;
		#400 //-1.979847e+29 * -83.37729 = 1.6507428e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010001100011001100010100;
		b = 32'b11100110110001100000110110010011;
		correct = 32'b10101010100110010101011000000100;
		#400 //5.8245605e-37 * -4.6763948e+23 = -2.7237945e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010011000001000110101000100;
		b = 32'b10110101111011001100001010110000;
		correct = 32'b00110000110011111010110100000000;
		#400 //-0.0008565972 * -1.7640032e-06 = 1.5110402e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101000110110001000011010010;
		b = 32'b10100100001011100010110101001100;
		correct = 32'b10001001110100110000000110111101;
		#400 //1.3449806e-16 * -3.7768604e-17 = -5.0798037e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010101011111011001010001100;
		b = 32'b10101110011111110001110111010010;
		correct = 32'b11001001101011110001011101010001;
		#400 //2.4727218e+16 * -5.8006773e-11 = -1434346.1
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001000101010011101101011000;
		b = 32'b01000100001111011111010010110000;
		correct = 32'b00100101110111010111011011100110;
		#400 //5.0561704e-19 * 759.82324 = 3.8417958e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011000111110101110000110;
		b = 32'b10101100010100110111101101100100;
		correct = 32'b10011101001111000100100011111011;
		#400 //8.291682e-10 * -3.00534e-12 = -2.4919323e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111000011011001110100011;
		b = 32'b01001000101101001111110110010000;
		correct = 32'b11000111000111111001000111011100;
		#400 //-0.11020591 * 370668.5 = -40849.86
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110011101010101111110001;
		b = 32'b01000110100100011011011110010011;
		correct = 32'b00011100111010110100011100101110;
		#400 //8.3474013e-26 * 18651.787 = 1.5569395e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011101100001000110000011110;
		b = 32'b01100001000111011100000011010010;
		correct = 32'b11001101010110011001010111010001;
		#400 //-1.2544442e-12 * 1.8187706e+20 = -228154640.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101100010001110000001111000;
		b = 32'b01010110111101111000101010001001;
		correct = 32'b01010101000001000101101010100110;
		#400 //0.06683439 * 136087190000000.0 = 9095304000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100011101011110001101111;
		b = 32'b10100000000111010001000111011110;
		correct = 32'b00101011001011110010011100001101;
		#400 //-4677175.5 * -1.3304329e-19 = 6.2226683e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110100000010011110110110100;
		b = 32'b00011001010100001011110011000011;
		correct = 32'b11000000010100101100001011011100;
		#400 //-3.0516175e+23 * 1.0791468e-23 = -3.2931433
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100010110001100000100101110;
		b = 32'b00000011001011101111010010010011;
		correct = 32'b10110000000101000010001001100010;
		#400 //-1.048161e+27 * 5.141476e-37 = -5.389095e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110111100000001100000011010;
		b = 32'b10100101101101001110111000111111;
		correct = 32'b00011101001010011011000001100100;
		#400 //-7.155363e-06 * -3.1386464e-16 = 2.2458156e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011110000101110100001010100;
		b = 32'b11100011001001101001011010001000;
		correct = 32'b01101111011111011010101010000100;
		#400 //-25546920.0 * -3.0730064e+21 = 7.850585e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100010100010110011011100110;
		b = 32'b00011110111000000000001010100011;
		correct = 32'b10000011101101110011110000110001;
		#400 //-4.540681e-17 * 2.3718013e-20 = -1.0769593e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011101110001011011001001100;
		b = 32'b00010001001010011101110111101111;
		correct = 32'b00110101011101010010000011110100;
		#400 //6.8146736e+21 * 1.3400138e-28 = 9.1317565e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000000101100010100010011010;
		b = 32'b00011001010111001101111001010110;
		correct = 32'b10000010000000011000110101001110;
		#400 //-8.335477e-15 * 1.1418634e-23 = -9.517976e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100100011000101001001010001;
		b = 32'b00110001100101011111111101111000;
		correct = 32'b10000110101001000110111111100010;
		#400 //-1.4168856e-26 * 4.365514e-09 = -6.185434e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110001100011100110010011110101;
		b = 32'b11010000111110011001101001110000;
		correct = 32'b11000011000010101101011000011001;
		#400 //4.1442214e-09 * -33501184000.0 = -138.83632
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001000101101001101011010111;
		b = 32'b10011100011011111011011011111110;
		correct = 32'b00000110000011010000011000110110;
		#400 //-3.3440993e-14 * -7.931498e-22 = 2.6523716e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011000101000000011010110111;
		b = 32'b10000010000010111100111001001000;
		correct = 32'b00100101101000011010110111011001;
		#400 //-2.730602e+21 * -1.0271307e-37 = 2.8046852e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011100010001000110000011001;
		b = 32'b01101010010100001001101010000100;
		correct = 32'b11101110010111101000100001111110;
		#400 //-273.0945 * 6.3046562e+25 = -1.721767e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010110001100011011110101011;
		b = 32'b01001101010010011001110010101100;
		correct = 32'b11000000100111000001101100000100;
		#400 //-2.3075549e-08 * 211405500.0 = -4.878298
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000001111001100110010110101;
		b = 32'b10011010001010100011010111010101;
		correct = 32'b10001010111110110000111101000111;
		#400 //6.868491e-10 * -3.519866e-23 = -2.4176168e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110000011010111111110110;
		b = 32'b11001000001001010001101010101100;
		correct = 32'b11011010011110011101010100101111;
		#400 //103985100000.0 * -169066.69 = -1.7580417e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111010100011000010000101100;
		b = 32'b11011010101100101100100011111001;
		correct = 32'b11100010100100100101001001100010;
		#400 //53636.17 * -2.5161759e+16 = -1.3495805e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011000010101100010100101;
		b = 32'b01011010100011001000011011011110;
		correct = 32'b10110011011101110110011001100100;
		#400 //-2.9125322e-24 * 1.9777392e+16 = -5.7602293e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001111110101001110001011001;
		b = 32'b01101101111100010111111001100000;
		correct = 32'b11000000011011000110100011100111;
		#400 //-3.9539402e-28 * 9.342333e+27 = -3.6939027
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111011101100101011001011100000;
		b = 32'b00100110101100010010100100100011;
		correct = 32'b01100010111101110101010011001000;
		#400 //1.8557137e+36 * 1.2292992e-15 = 2.2812275e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100010101100011101100100011;
		b = 32'b10111110001100110001000111011101;
		correct = 32'b01100011000101011101101001001100;
		#400 //-1.5807458e+22 * -0.17487283 = 2.7642948e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000010110111000000001011100;
		b = 32'b00111010110000100000100111010001;
		correct = 32'b10111011101001100101111110110000;
		#400 //-3.4297094 * 0.0014803951 = -0.005077325
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111001000001011110111011110;
		b = 32'b11110111101111010011010000100111;
		correct = 32'b11011111011011011001100111011000;
		#400 //2.2307388e-15 * -7.675015e+33 = -1.7120953e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010000000010001110010010111;
		b = 32'b10001100011100101011110110001110;
		correct = 32'b00010110111101001101100101000001;
		#400 //-2115365.8 * -1.8700044e-31 = 3.9557433e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101001100001001100100011;
		b = 32'b01100100000111000000100111001111;
		correct = 32'b11110101010010100111010000001101;
		#400 //-22290176000.0 * 1.1513595e+22 = -2.5664008e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100110010101010011101100100010;
		b = 32'b00110001100100110100001011010110;
		correct = 32'b11011000011101010101000101000000;
		#400 //-2.5173872e+23 * 4.2858614e-09 = -1078917260000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100100111000100000000011111;
		b = 32'b10100110101000010110010001001111;
		correct = 32'b01100011110001010000001100011010;
		#400 //-6.490391e+36 * -1.1198808e-15 = 7.268464e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101011000010110110111011001;
		b = 32'b00111100001010100101111000001010;
		correct = 32'b00011010000101100000010111000001;
		#400 //2.9835292e-21 * 0.010398397 = 3.102392e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011110001100111110101101001;
		b = 32'b00101010101001010011011011001111;
		correct = 32'b11001111000000000001100101010100;
		#400 //-7.322984e+21 * 2.934792e-13 = -2149143600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000101000110000001011110110;
		b = 32'b00110010000000111010110000111100;
		correct = 32'b10111011001001111011000001100000;
		#400 //-333847.7 * 7.664365e-09 = -0.0025587305
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110110010010001111101110100;
		b = 32'b01111111111000011010101000011011;
		correct = 32'b01111111111000011010101000011011;
		#400 //2.1294712e-20 * nan = nan
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001000001111001111010100001;
		b = 32'b01100010011101001111101111110000;
		correct = 32'b00111100000000011100100010101001;
		#400 //7.011371e-24 * 1.1297899e+21 = 0.007921376
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000010000011111100001111101;
		b = 32'b11110100100101110110011010000110;
		correct = 32'b01101101011001010110111010000001;
		#400 //-4.624621e-05 * -9.596146e+31 = 4.4378536e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001111110011011011111100110;
		b = 32'b11001001011000001111101111100000;
		correct = 32'b11011011110110110111011010011011;
		#400 //134066520000.0 * -921534.0 = -1.2354686e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101101011100101011110001101;
		b = 32'b00100110000010001110111100000010;
		correct = 32'b11011100001110101000001010010000;
		#400 //-4.4200947e+32 * 4.7508395e-16 = -2.099916e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001110100110111011011100010;
		b = 32'b11111000011110101001100010101000;
		correct = 32'b11001010110011110000000000110010;
		#400 //3.3363197e-28 * -2.0330788e+34 = -6783001.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010011101001010001100011000;
		b = 32'b11000111100011010010010110001110;
		correct = 32'b10010010100001101110000110110111;
		#400 //1.1778847e-32 * -72267.11 = -8.512232e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001000001010101111111111100;
		b = 32'b11011011001100111011000000001101;
		correct = 32'b00100100101110110011101110101100;
		#400 //-1.6054424e-33 * -5.057759e+16 = 8.119941e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001001111111011000011011010101;
		b = 32'b01111000111100010001010100001011;
		correct = 32'b11000011011011101100000011000101;
		#400 //-6.103433e-33 * 3.9117823e+34 = -238.753
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011111100010010001110001000;
		b = 32'b10100000010100110011001011111011;
		correct = 32'b01010100110001101111000001001110;
		#400 //-3.8209967e+31 * -1.7889263e-19 = 6835481300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111010011011000000111110100;
		b = 32'b01101110001010011101000110000010;
		correct = 32'b11100110000010000101001011111010;
		#400 //-1.2249209e-05 * 1.3139062e+28 = -1.6094312e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101011010011101100100101101;
		b = 32'b01011001000101001000100001110100;
		correct = 32'b01011111000001111010111000110011;
		#400 //3741.5735 * 2613020500000000.0 = 9.776808e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111101001101011000010000100;
		b = 32'b10000111100000101110110111110010;
		correct = 32'b00000111101010101000000100100100;
		#400 //-1.3022618 * -1.9700078e-34 = 2.565466e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101101000110111110110110000;
		b = 32'b00011010010111001100100111001011;
		correct = 32'b00110000100011010000000011100011;
		#400 //22470027000000.0 * 4.565794e-23 = 1.0259352e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100110111111001110110111011;
		b = 32'b10111101100100111001010000101001;
		correct = 32'b11101011000000001110100011111101;
		#400 //2.1626826e+27 * -0.07205994 = -1.5584276e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010000111011011100101010101;
		b = 32'b11011000100000101011110010100011;
		correct = 32'b00101011001000010001100010101011;
		#400 //-4.9768904e-28 * -1149973600000000.0 = 5.7232924e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011110000111111000010111110;
		b = 32'b00110110000100011101011000110111;
		correct = 32'b01010010010111110011111010100010;
		#400 //1.1030464e+17 * 2.1731373e-06 = 239707130000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011100011011111011111000111;
		b = 32'b00110101011001111110111011010101;
		correct = 32'b11110001100000001001111100000111;
		#400 //-1.4742788e+36 * 8.640175e-07 = -1.2738027e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001111010011101100000010011001;
		b = 32'b00111100001101110101000111011010;
		correct = 32'b10001100000101000000110111001000;
		#400 //-1.0193677e-29 * 0.0111889485 = -1.1405652e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101011100101111100100010010;
		b = 32'b01100011101110110110000010110000;
		correct = 32'b01010001101100011101011110110101;
		#400 //1.3811412e-11 * 6.9130164e+21 = 95478520000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100000011101011010011001111;
		b = 32'b01001011011010111010001001010011;
		correct = 32'b00010000000000110101101001110111;
		#400 //1.6775043e-36 * 15442515.0 = 2.5904886e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001100010101110001010010011011;
		b = 32'b00111011101101110011111110001101;
		correct = 32'b01001000100110011111010100011111;
		#400 //56382060.0 * 0.0055922926 = 315304.97
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000101011110101011111001101101;
		b = 32'b11011111100110010010101110010000;
		correct = 32'b11100101100101100000011001111010;
		#400 //4011.9016 * -2.2074147e+19 = -8.8559305e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001000100000100001010100111;
		b = 32'b01000010000001111110011011110110;
		correct = 32'b01011011100110010010101010011001;
		#400 //2537855000000000.0 * 33.975548 = 8.622502e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110010101101010110000010000;
		b = 32'b01110111100101100100101001001010;
		correct = 32'b11001110011111000000111000111010;
		#400 //-1.7341076e-25 * 6.0964945e+33 = -1057197700.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110000101100010001000010;
		b = 32'b00011011001111111001000001011000;
		correct = 32'b10010100100100011011111000111111;
		#400 //-9.287197e-05 * 1.584579e-22 = -1.4716297e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110010010000010001110110;
		b = 32'b10010100011001110101101011100100;
		correct = 32'b01001111101101011010101001100101;
		#400 //-5.2187107e+35 * -1.1680445e-26 = 6095686000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110101111010011011011011011;
		b = 32'b00000010111110001011001010011110;
		correct = 32'b11000010001101111101000100101001;
		#400 //-1.2575446e+38 * 3.6542846e-37 = -45.954258
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110111011101011111011101011;
		b = 32'b11000111011001001101001111110100;
		correct = 32'b01110110110101010110011110110100;
		#400 //-3.694412e+28 * -58579.953 = 2.1641847e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011101100000110000101010001;
		b = 32'b01000010011001110110000000000101;
		correct = 32'b01101110100111110110100111111000;
		#400 //4.26461e+26 * 57.84377 = 2.4668112e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011001011001011001101100101;
		b = 32'b10001111100010110101011100001100;
		correct = 32'b01000011001111000000000001000010;
		#400 //-1.3682764e+31 * -1.3739987e-29 = 188.001
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100010000001010001010011;
		b = 32'b01000001011011100010000110000001;
		correct = 32'b11000000011111010010100101101001;
		#400 //-0.26578006 * 14.88318 = -3.9556525
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010101100111010010011010001;
		b = 32'b00110100011100110100001011111101;
		correct = 32'b11010111101010101011010001110100;
		#400 //-1.6569217e+21 * 2.2655509e-07 = -375384030000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100001101000100101011000101;
		b = 32'b00101110000000100110111111110101;
		correct = 32'b00001010101101111011100110100010;
		#400 //5.965364e-22 * 2.9658016e-11 = 1.7692086e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101001011000101001001101010001;
		b = 32'b10111000111101110100110111101111;
		correct = 32'b11100010110110101110000100011101;
		#400 //1.7119557e+25 * -0.00011792394 = -2.0188057e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101000011110010011010001001;
		b = 32'b10101111111011011100101001100100;
		correct = 32'b00101101100001001111011111011001;
		#400 //-0.03494886 * -4.3253856e-10 = 1.5116729e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001100001110111110101111101;
		b = 32'b10011111001101011111111100001110;
		correct = 32'b01010001010000001010010101101110;
		#400 //-1.3418298e+30 * -3.8539217e-20 = 51713073000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110000011001110000011000110;
		b = 32'b10111000110100011001001011110101;
		correct = 32'b01000111011001101010100011000001;
		#400 //-590885250.0 * -9.9932695e-05 = 59048.754
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001001010101010110100100001;
		b = 32'b01011111101011110101001100010111;
		correct = 32'b00110001011010011100011101111110;
		#400 //1.3463985e-28 * 2.5266933e+19 = 3.401936e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100001001101110001010000100;
		b = 32'b00111110010011000110110111011001;
		correct = 32'b11110011000001010100010000011101;
		#400 //-5.2887913e+31 * 0.19963779 = -1.0558426e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000000110011010001001100110;
		b = 32'b10011111100100010101111001010111;
		correct = 32'b10101000001011100111101100110011;
		#400 //157321.6 * -6.156596e-20 = -9.685655e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111011110000010100000011111;
		b = 32'b10010001011111000010100111100110;
		correct = 32'b00101001011101000111000000011100;
		#400 //-272851200000000.0 * -1.9892206e-28 = 5.4276123e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001010000010101001001101110110;
		b = 32'b11100000010111000100010010011010;
		correct = 32'b10101010111011100111011110111000;
		#400 //6.6721926e-33 * -6.348792e+19 = -4.2360364e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000110100110111110110001101;
		b = 32'b01011110111001101101011101011011;
		correct = 32'b00111000001111101011010010110110;
		#400 //5.4668996e-24 * 8.316932e+18 = 4.546783e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011101110100100010100010001;
		b = 32'b01010110000001000010011011000101;
		correct = 32'b00011010010000000100111110100101;
		#400 //1.0947954e-36 * 36325512000000.0 = 3.9769006e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110001111011000101111010111;
		b = 32'b11101111110000100000010110001001;
		correct = 32'b01110110100011111010100000010010;
		#400 //-12130.96 * -1.2009357e+29 = 1.4568502e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111010101011011100110011101;
		b = 32'b01110011101110101111100010100110;
		correct = 32'b11100011100111000001100001110010;
		#400 //-1.943818e-10 * 2.9626782e+31 = -5.758907e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100010001000001110110010;
		b = 32'b10101011000011001000110010010111;
		correct = 32'b00000111000101011110010111111100;
		#400 //-2.258442e-22 * -4.99331e-13 = 1.12771e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101011111000110010000000000;
		b = 32'b11101100010010110101110001101011;
		correct = 32'b01111010010010000111111001101001;
		#400 //-264650750.0 * -9.833935e+26 = 2.6025582e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010111100111001101010001100;
		b = 32'b11111011111110010110100100100010;
		correct = 32'b00111111011011010101010101011101;
		#400 //-3.5794346e-37 * -2.5900285e+36 = 0.9270838
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000011100011110100010000110;
		b = 32'b11010110001101110001000010001110;
		correct = 32'b01001111001011001111110011011101;
		#400 //-5.7675432e-05 * -50320432000000.0 = 2902252800.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000011011000000111000100010;
		b = 32'b01010100101000111001000011110001;
		correct = 32'b11110101100101101101001010100110;
		#400 //-6.803828e+19 * 5620091000000.0 = -3.8238134e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010001001010000101101010110111;
		b = 32'b01111010111100010000010000101111;
		correct = 32'b11001100100111101000000000100111;
		#400 //-1.3280817e-28 * 6.257142e+35 = -83099960.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001011100101010010010000111;
		b = 32'b00110001000000110000001110101100;
		correct = 32'b00001010111110000101101101011000;
		#400 //1.2544333e-23 * 1.9065096e-09 = 2.3915891e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000101101110111001001101011;
		b = 32'b11101001000011101010111010111101;
		correct = 32'b01100010010011000111110101011101;
		#400 //-8.747432e-05 * -1.078079e+25 = 9.430423e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000111100100010011110000101;
		b = 32'b10110011010001000100110101000110;
		correct = 32'b01000100101110011010111101011010;
		#400 //-32501410000.0 * -4.5705086e-08 = 1485.4797
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100111000101000100111000010;
		b = 32'b01110110100010100111001011100111;
		correct = 32'b01110011111101010000011111100001;
		#400 //0.027653579 * 1.404038e+33 = 3.8826676e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001010000011100000001010001;
		b = 32'b01000101010100010110001001100010;
		correct = 32'b11010111000111100111100001111000;
		#400 //-52009700000.0 * 3350.149 = -174240250000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000010110010100111010011011001;
		b = 32'b01100111111010101111100010100100;
		correct = 32'b10101011001110011101001101110001;
		#400 //-2.97483e-37 * 2.2192407e+24 = -6.6018637e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110111010100010001100110101;
		b = 32'b00110011110001010011011011010001;
		correct = 32'b01101011001101000101111100111010;
		#400 //2.3744366e+33 * 9.1834984e-08 = 2.1805634e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101100110010001111011111001;
		b = 32'b01001111000110011110100101110110;
		correct = 32'b11001101001110000001111001001101;
		#400 //-0.07476611 * 2582214100.0 = -193062100.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101100011110000110001011100;
		b = 32'b11000101101111101011101010010100;
		correct = 32'b10110011110101010010011011011100;
		#400 //1.6262706e-11 * -6103.3223 = -9.925654e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001000000001100110110010001;
		b = 32'b00010101110101110011111011101000;
		correct = 32'b11000111010110001001100010010111;
		#400 //-6.378015e+29 * 8.693706e-26 = -55448.59
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011011001101110011110110110000;
		b = 32'b10111100011100001010000101010110;
		correct = 32'b11011000001011000011110101010000;
		#400 //5.1577747e+16 * -0.014686903 = -757517340000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010000000111001111011001;
		b = 32'b00011001101001111000101001110100;
		correct = 32'b10000010011110111110011101010000;
		#400 //-1.06832615e-14 * 1.7323316e-23 = -1.8506951e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101101110100011001001101000;
		b = 32'b01100110001111100101111010111000;
		correct = 32'b11000100100010100111011001001110;
		#400 //-4.928591e-21 * 2.2474922e+23 = -1107.697
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010100111111111111011011110;
		b = 32'b01111001011101000101011000111110;
		correct = 32'b11101100100110001011010011010010;
		#400 //-1.8625936e-08 * 7.929185e+34 = -1.476885e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010110011000111011100110101;
		b = 32'b01100000011110111111000001011101;
		correct = 32'b11100011110010010011100011011011;
		#400 //-102.23283 * 7.261645e+19 = -7.423785e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011100010010111101011100110111;
		b = 32'b10010011001111110111100101011001;
		correct = 32'b10110000000110000111011000110010;
		#400 //2.295042e+17 * -2.4167418e-27 = -5.5465244e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111010000101010000010001101;
		b = 32'b01010111111111111101010000011100;
		correct = 32'b11010111110000100111111100101111;
		#400 //-0.7602623 * 562572940000000.0 = -427703000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010011100101010010011110100011;
		b = 32'b00000100000100110100101000100011;
		correct = 32'b10011000001010111010000111101001;
		#400 //-1281230200000.0 * 1.7313809e-36 = -2.2182976e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010110111100111100011000111;
		b = 32'b10000101110101010110100000010111;
		correct = 32'b10100001001110010111010011110011;
		#400 //3.131012e+16 * -2.006866e-35 = -6.283522e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101100011001101110001001000;
		b = 32'b01110110011111011101100010111101;
		correct = 32'b11010100100010111010110011110101;
		#400 //-3.7285457e-21 * 1.28715535e+33 = -4799217500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011000100101100111101011110;
		b = 32'b01111011111000001010101010000101;
		correct = 32'b11011111100000001101011100111100;
		#400 //-7.9585876e-18 * 2.3330661e+36 = -1.856791e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100001111001011000000001101;
		b = 32'b11011110101011011001001101000101;
		correct = 32'b00100011011111111101111100001001;
		#400 //-2.2180132e-36 * -6.253708e+18 = 1.3870807e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101000001011001101011000110;
		b = 32'b10001100001011000001000010010111;
		correct = 32'b00100001101100111001100101001011;
		#400 //-9181237000000.0 * -1.325539e-31 = 1.2170088e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100001010101010011010101010;
		b = 32'b01010001010111001011110001011010;
		correct = 32'b01010110000100110010010011001000;
		#400 //682.6041 * 59253300000.0 = 40446546000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100111011100010010011110111;
		b = 32'b11111111001110111100101100000001;
		correct = 32'b11110100101011101011000111011001;
		#400 //4.435785e-07 * -2.496197e+38 = -1.1072593e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111100011001000010100000010;
		b = 32'b01011100111000100010001010101100;
		correct = 32'b11100100111110000100000011101000;
		#400 //-71946.016 * 5.0921173e+17 = -3.6635756e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010001001100110001001110100;
		b = 32'b00110111000111111001101001001001;
		correct = 32'b01110001110011110111011011011001;
		#400 //2.1597954e+35 * 9.513061e-06 = 2.0546264e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100111100001101111010000011;
		b = 32'b10011000110000011101000011100010;
		correct = 32'b10111110001101100101110001001010;
		#400 //3.5546018e+22 * -5.010025e-24 = -0.17808643
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010101011111111101011010011;
		b = 32'b01001011011010010001110100101101;
		correct = 32'b10010110101000000011111101011000;
		#400 //-1.6946237e-32 * 15277357.0 = -2.588937e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110101100011001100000101010;
		b = 32'b00001000100001100101110101010000;
		correct = 32'b00010111101110100110110011000100;
		#400 //1489769700.0 * 8.086769e-34 = 1.2047425e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011110000011101100001100011;
		b = 32'b00001110101110101000000101011010;
		correct = 32'b11001011000011010011100100101010;
		#400 //-2.0130043e+36 * 4.59771e-30 = -9255210.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010111000000010010101111101;
		b = 32'b01101111000000001101000110101100;
		correct = 32'b11111010011000011001010010100111;
		#400 //-7344830.5 * 3.986756e+28 = -2.9282046e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000100111110110011000100100;
		b = 32'b00111111001001111101100001000011;
		correct = 32'b00111000010100010000010010010011;
		#400 //7.600736e-05 * 0.65564364 = 4.9833743e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010000100101010110101100110;
		b = 32'b00110110111111111111101001001111;
		correct = 32'b00111001100100101010101000100011;
		#400 //36.669334 * 7.628732e-06 = 0.00027974052
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001010001011101100000111001;
		b = 32'b11101010111110000000001001101011;
		correct = 32'b10111100101111111010101101010110;
		#400 //1.5607189e-28 * -1.4991251e+26 = -0.023397129
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101111101000110101111001101101;
		b = 32'b00000111111001101101000101010010;
		correct = 32'b00111000000100110100110001101010;
		#400 //1.0112042e+29 * 3.472958e-34 = 3.5118697e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000010011000110010100111;
		b = 32'b10011000010101101100101110000000;
		correct = 32'b00010110111001101101000111010110;
		#400 //-0.13432561 * -2.7761593e-24 = 3.729093e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011101010011010101101110011101;
		b = 32'b01010100001101111111101010011000;
		correct = 32'b10110010000100111001010110000011;
		#400 //-2.7178887e-21 * 3160733000000.0 = -8.590521e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101000011001010101110011010;
		b = 32'b00011111010101101100110101011010;
		correct = 32'b11001100111011000001000010010011;
		#400 //-2.7209597e+27 * 4.5486126e-20 = -123765910.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111100010010001000111001;
		b = 32'b10100001010110110010001010100001;
		correct = 32'b00000100110011100110100011100101;
		#400 //-6.5359416e-18 * -7.4245917e-19 = 4.8526698e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000110100010100011110100010;
		b = 32'b10101110111111000001000101110110;
		correct = 32'b01011000010011100001000011001010;
		#400 //-7.906368e+24 * -1.1462735e-10 = 906286000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010010100101011110100111001;
		b = 32'b00111110111110000111011111111100;
		correct = 32'b00010001110011001000101000010101;
		#400 //6.649755e-28 * 0.4852904 = 3.2270625e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011000100000110000001010010;
		b = 32'b10111010100011000100011100111011;
		correct = 32'b01100110000111100011100110110010;
		#400 //-1.7454018e+26 * -0.0010702381 = 1.8679955e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101011110100010001111011100;
		b = 32'b01111010000010001101101111101111;
		correct = 32'b11100000000001011011100111110011;
		#400 //-2.1696193e-16 * 1.7765329e+35 = -3.8544e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011111001001011101111001110;
		b = 32'b11001111000110001110000111010111;
		correct = 32'b11111011100010001001100101001011;
		#400 //5.5304394e+26 * -2564937500.0 = -1.418523e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001111101000011000110101011;
		b = 32'b01110001101101100011110001100011;
		correct = 32'b00110100001011011101010011101010;
		#400 //8.9702714e-38 * 1.8047768e+30 = 1.6189338e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100110100111111000001011110;
		b = 32'b01001010011001100010010001101011;
		correct = 32'b10110111101111101000100000011011;
		#400 //-6.023667e-12 * 3770650.8 = -2.2713144e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110110110100011011110100100;
		b = 32'b10101100011100010110001001001011;
		correct = 32'b01100011110011011100001000101011;
		#400 //-2.2129868e+33 * -3.4302723e-12 = 7.5911476e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000000010110100110000011100;
		b = 32'b01010000000011101111111111010101;
		correct = 32'b00100000100110111001111011011000;
		#400 //2.747155e-29 * 9596524000.0 = 2.6363135e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000001001101100001000110000;
		b = 32'b11110010100000011001011000010010;
		correct = 32'b01100011001010001101001100110111;
		#400 //-6.0666405e-10 * -5.133439e+30 = 3.1142726e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011101011110011100111100111;
		b = 32'b01110001110000011110011001111010;
		correct = 32'b11000110000001001011100001101001;
		#400 //-4.4233307e-27 * 1.9202956e+30 = -8494.103
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101000011010011001000011100;
		b = 32'b01000010100100000001110101111101;
		correct = 32'b11001000000111101111100011100111;
		#400 //-2259.1318 * 72.057594 = -162787.61
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000111111100100011111011010;
		b = 32'b00100010101011111110110110001001;
		correct = 32'b00100100001011101011111100001111;
		#400 //7.946271 * 4.7685345e-18 = 3.789207e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000100111001100110111100110;
		b = 32'b01000100011010011110101000000101;
		correct = 32'b10011101100011110100011010111110;
		#400 //-4.053296e-24 * 935.65656 = -3.792493e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101010000101010110110100101;
		b = 32'b00100000000010101100000101010110;
		correct = 32'b10010101110100110000100101000011;
		#400 //-7.252332e-07 * 1.1753024e-19 = -8.5236834e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001110010100001100110110111;
		b = 32'b00100110000000001001111010001001;
		correct = 32'b00010000010010110001010000000111;
		#400 //8.975063e-14 * 4.4623776e-16 = 4.005012e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111111101001011101110000100;
		b = 32'b10110111100110000011001000100011;
		correct = 32'b00011000000100010111111101000100;
		#400 //-1.0364824e-19 * -1.8143159e-05 = 1.8805063e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101100111100100001000111011;
		b = 32'b11101100110000011010011000011011;
		correct = 32'b01110010111011110110110100111100;
		#400 //-5064.279 * -1.8728568e+27 = 9.4846686e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110001001011001110110000111;
		b = 32'b00011100100111111000000000101110;
		correct = 32'b01011011010011100101111110000111;
		#400 //5.5035137e+37 * 1.0554871e-21 = 5.808888e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100110000000011101010010101;
		b = 32'b10101000101011001010001010000000;
		correct = 32'b01010110000000011010000101100001;
		#400 //-1.8591232e+27 * -1.916631e-14 = 35632530000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011100010011110000000010010;
		b = 32'b10111111011000111011010101011011;
		correct = 32'b01000011011101010100011010111001;
		#400 //-275.75055 * -0.889486 = 245.27626
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000010010100000011010111111;
		b = 32'b00111100110000011110110000110000;
		correct = 32'b01011101100110010000100101111010;
		#400 //5.823013e+19 * 0.023672193 = 1.3784349e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011011010100011000000100001;
		b = 32'b10101011011000100110101100110110;
		correct = 32'b01100111010011110010000010010001;
		#400 //-1.2159736e+36 * -8.0440114e-13 = 9.781306e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010001010101011000001000000;
		b = 32'b11010000000011010011000011100100;
		correct = 32'b00100010101111000100011101011001;
		#400 //-5.3859786e-28 * -9475166000.0 = 5.1033044e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101101110101010101111001;
		b = 32'b11000101010001111100110001110011;
		correct = 32'b10111110100011110001010111011100;
		#400 //8.7420405e-05 * -3196.778 = -0.27946365
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010110011000110010000001010;
		b = 32'b11111001101010010010101001001111;
		correct = 32'b01010101000001110000111111010010;
		#400 //-8.4534044e-23 * -1.0979454e+35 = 9281376000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001101101011100110011100100;
		b = 32'b01101010011000010101111010011101;
		correct = 32'b00110100101000000000110001000101;
		#400 //4.3766843e-33 * 6.8113777e+25 = 2.981125e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110101001010101111011001110;
		b = 32'b01100110011001001010111010011100;
		correct = 32'b01010101100100111011100100111011;
		#400 //7.520172e-11 * 2.6998013e+23 = 20302970000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111100010010010111101010100101;
		b = 32'b00001111110111010101100000011100;
		correct = 32'b01001100101011100011010000111001;
		#400 //4.1845568e+36 * 2.1826221e-29 = 91333064.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100100110010010001011100010;
		b = 32'b00100001001101100111111100010101;
		correct = 32'b01000110010110100101010110100011;
		#400 //2.2598923e+22 * 6.183219e-19 = 13973.409
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001100000100011101011010000000;
		b = 32'b01110010000000001001011010011011;
		correct = 32'b10111110100100101000001000011000;
		#400 //-1.1234942e-31 * 2.5469537e+30 = -0.2861488
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110101001111010110010111111;
		b = 32'b01001000100011101101110010000010;
		correct = 32'b11011111101110110010010001111111;
		#400 //-92180190000000.0 * 292580.06 = -2.6970086e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011101110011001001101010011001;
		b = 32'b00101101100100001111011110111110;
		correct = 32'b00001011111001111011100111101110;
		#400 //5.41582e-21 * 1.6480924e-11 = 8.925772e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100110011100011101011011100101;
		b = 32'b01010111111111001110010010010111;
		correct = 32'b01111110111011101110011101111011;
		#400 //2.855136e+23 * 556117430000000.0 = 1.5877909e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010001011011111001011111111;
		b = 32'b10011111110000101011110110100011;
		correct = 32'b10010010100001000101001100000000;
		#400 //1.0125176e-08 * -8.2475924e-20 = -8.350832e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011100100110100100100111100;
		b = 32'b00011011100111001011011010101011;
		correct = 32'b10100111101101000101001101110010;
		#400 //-19305080.0 * 2.5926082e-22 = -5.0050508e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001100111000010000110000010;
		b = 32'b01000111001100001000001010001101;
		correct = 32'b11010001010101110100110101010001;
		#400 //-1279024.2 * 45186.55 = -57794695000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001001101000011000011101000;
		b = 32'b11100011011000101011000000011011;
		correct = 32'b11011101000111111000111100100001;
		#400 //0.00017184357 * -4.181654e+21 = -7.185903e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010011110101010100001011010;
		b = 32'b10101011101001111011010110011100;
		correct = 32'b01010110101001000011010110100100;
		#400 //-7.575662e+25 * -1.191647e-12 = 90275150000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111101010000000001111110001;
		b = 32'b00000111010100011101000011100111;
		correct = 32'b10011111100010011011010001010011;
		#400 //-369469760000000.0 * 1.5784803e-34 = -5.832008e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110001000100101111011111100;
		b = 32'b00111100011000111011011101001011;
		correct = 32'b10000011000100000110111001111011;
		#400 //-3.0538597e-35 * 0.013898681 = -4.244462e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110001110110110000100101011;
		b = 32'b01010011110001100000010110111000;
		correct = 32'b01010010100100001111000101010111;
		#400 //0.18298785 * 1700999000000.0 = 311262150000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001011111010101101010100000;
		b = 32'b10110100100100011001110110001001;
		correct = 32'b00101110100100000001110000111101;
		#400 //-0.0002416172 * -2.7122977e-07 = 6.553378e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000101010110101011100100110;
		b = 32'b01101101110111011011101000101100;
		correct = 32'b11110111000101000110011011010111;
		#400 //-350905.2 * 8.577657e+27 = -3.0099444e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110101001110110101101111101110;
		b = 32'b00000010111010000101100011101001;
		correct = 32'b00111000101010100000110001100010;
		#400 //2.3750588e+32 * 3.4140368e-37 = 8.108538e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111100010101100010100101100;
		b = 32'b10011101011011111110001000001100;
		correct = 32'b00000101100000100000100010011101;
		#400 //-3.851647e-15 * -3.174825e-21 = 1.2228305e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111101110011010010010100011;
		b = 32'b10100111111010101001100101010100;
		correct = 32'b11001000001010100001111110101101;
		#400 //2.6753992e+19 * -6.5114286e-15 = -174206.7
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000101101010010110011001101;
		b = 32'b01000001100001000001010011010001;
		correct = 32'b10001010101110101111001110101010;
		#400 //-1.0904074e-33 * 16.510164 = -1.8002805e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100011000000101011000101101;
		b = 32'b10001000011011101001110000100110;
		correct = 32'b00000101010100010001100011110100;
		#400 //-0.013692421 * -7.180407e-34 = 9.831716e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101110110011000111011100100;
		b = 32'b10011110101001100101100100010011;
		correct = 32'b10111101000011010101111001011011;
		#400 //1.9595898e+18 * -1.7612774e-20 = -0.034513813
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011100011010000011100101101;
		b = 32'b10001101011110011011010111110010;
		correct = 32'b00001001100010011001000000110110;
		#400 //-0.004303834 * -7.694806e-31 = 3.3117166e-33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101100101110000011000111010;
		b = 32'b10001101000100111000110001100100;
		correct = 32'b00001011001011100001011011001011;
		#400 //-0.073742345 * -4.546686e-31 = 3.352833e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101010001100100000110010000;
		b = 32'b10011000000001111011000011010101;
		correct = 32'b00100101110100100010101100001010;
		#400 //-207886600.0 * -1.7537618e-24 = 3.6458357e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111100001000110110000110011;
		b = 32'b00111101011110011000011001110001;
		correct = 32'b10101101100000010001001011001001;
		#400 //-2.408754e-10 * 0.06091923 = -1.4673944e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001011111111001110000100000;
		b = 32'b10101011100011001011111001110010;
		correct = 32'b10110101100011001000011110001001;
		#400 //1046978.0 * -1.0000457e-12 = -1.0470259e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110001011010110011001110100;
		b = 32'b11101001000000001101110111100000;
		correct = 32'b01011111101011101001001100000110;
		#400 //-2.5838644e-06 * -9.736892e+24 = 2.515881e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101111100001110100011010011;
		b = 32'b00010111100110110011011001001110;
		correct = 32'b10001110000100100001000000010010;
		#400 //-1.7949154e-06 * 1.0030349e-24 = -1.8003627e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111011000110001001010110;
		b = 32'b10111011111110100001110100111000;
		correct = 32'b11110001011001101111001100000011;
		#400 //1.4982624e+32 * -0.0076328777 = -1.1436054e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111100100111000101000110011;
		b = 32'b10110110010111111110000001000101;
		correct = 32'b10100110100000010000011010100011;
		#400 //2.683734e-10 * -3.3360132e-06 = -8.952972e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111000110111111111110111001;
		b = 32'b00111100100011110001000110100101;
		correct = 32'b01111100001011100101110100110010;
		#400 //2.0735813e+38 * 0.017464468 = 3.6213995e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100001101011110011010100101;
		b = 32'b01101110001010110111010111011011;
		correct = 32'b01010010111100111010100110011100;
		#400 //3.9443482e-17 * 1.3266104e+28 = 523261300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101011011101000000010001110110;
		b = 32'b11001111111100011111101010010011;
		correct = 32'b11111011111001101010011100001100;
		#400 //2.9499897e+26 * -8119461400.0 = -2.3952328e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001001111110100100001000;
		b = 32'b00001001110101110100100011001101;
		correct = 32'b10000010100011010011010001110110;
		#400 //-4.003293e-05 * 5.182783e-33 = -2.07482e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111111111100110111010000010;
		b = 32'b01011100100101100110011101110011;
		correct = 32'b11110101000101010111101110010001;
		#400 //-559501160000000.0 * 3.3867992e+17 = -1.8949181e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000110110011000011111010011;
		b = 32'b11101010101101110100000101111010;
		correct = 32'b01100100000110111011011110111011;
		#400 //-0.000103726656 * -1.10771315e+26 = 1.1489938e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101000011010111000110110000;
		b = 32'b11111001001110110111000001010000;
		correct = 32'b11101110110011110010000000110011;
		#400 //5.269203e-07 * -6.0827343e+34 = -3.2051162e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100111001000101010101110100;
		b = 32'b11001010000001110000100010001001;
		correct = 32'b00111111011100001110000101011010;
		#400 //-4.2530485e-07 * -2212386.2 = 0.9409386
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001101110010011010001001;
		b = 32'b01011000111001001101010100001100;
		correct = 32'b00111000101000111011011010111110;
		#400 //3.8783633e-20 * 2012829400000000.0 = 7.806484e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111110000001101111000010010;
		b = 32'b01101010100010010001100001010010;
		correct = 32'b00111010110011101001001001010100;
		#400 //1.90182e-29 * 8.286884e+25 = 0.0015760162
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011101100101001000000011010001;
		b = 32'b01001110000110011101010000101000;
		correct = 32'b01101100001100100111100000011110;
		#400 //1.3375978e+18 * 645204500.0 = 8.630241e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010101000111110000101001110;
		b = 32'b01010010000000010011001110010101;
		correct = 32'b01100101001001010110101100011011;
		#400 //351929830000.0 * 138729050000.0 = 4.882289e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101110000000111110111100111;
		b = 32'b11001000111001000110000011000111;
		correct = 32'b01011111001010111011100011100111;
		#400 //-26455872000000.0 * -467718.22 = 1.2373894e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111110010110111001110001010;
		b = 32'b00000110011010011010000011110110;
		correct = 32'b10111110101110011010110000010100;
		#400 //-8.252966e+33 * 4.3940685e-35 = -0.36264098
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010111000000111111100111111;
		b = 32'b11101001110110100111010011000000;
		correct = 32'b11011101001111111001001010111110;
		#400 //2.6134897e-08 * -3.3012146e+25 = -8.6276904e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000100101100000100001010010010;
		b = 32'b11011010110101110010011110100011;
		correct = 32'b00100000000101000010001100110011;
		#400 //-4.1438536e-36 * -3.028035e+16 = 1.2547734e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111111010010111010000110001001;
		b = 32'b10000101101110001010110000110000;
		correct = 32'b11000101100100101110010100010001;
		#400 //2.7067202e+38 * -1.7366529e-35 = -4700.6333
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011001111100101011000010110001;
		b = 32'b11010011110111010101101100000010;
		correct = 32'b10101110010100011101100011010000;
		#400 //2.5093579e-23 * -1901429300000.0 = -4.7713666e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000111110010100110110111100;
		b = 32'b11010110010001100011000011000001;
		correct = 32'b10100111110000010000000110011010;
		#400 //9.833295e-29 * -54478175000000.0 = -5.3569997e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111111111010010101101111010;
		b = 32'b11001111111001101100011011010010;
		correct = 32'b01110000011001000011100110101111;
		#400 //-3.6485618e+19 * -7743579000.0 = 2.8252927e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011001100001111101010110010;
		b = 32'b10001110011110010010000110000010;
		correct = 32'b11000010001011000011101100000001;
		#400 //1.4021743e+31 * -3.0707753e-30 = -43.05762
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011100000000011010000111010;
		b = 32'b11011001001101100010011100001010;
		correct = 32'b00110101001101100111000101011100;
		#400 //-2.1209574e-22 * -3204460600000000.0 = 6.7965243e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010011110010000010011111011;
		b = 32'b00101001010111100011001011011110;
		correct = 32'b01100100010110000010001111001101;
		#400 //3.2324573e+35 * 4.9338023e-14 = 1.5948306e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001111100111001101110111010001;
		b = 32'b11001010100110100111011011000101;
		correct = 32'b01011010101111010100110001101101;
		#400 //-5263565300.0 * -5061474.5 = 2.66414e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100111011100001001111111001;
		b = 32'b11011110110000100001010010110110;
		correct = 32'b11100100001101000111111001100110;
		#400 //1904.6241 * -6.9925014e+18 = -1.3318088e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001110000001100110000000001000;
		b = 32'b11010100000100000010110111101000;
		correct = 32'b11100010100101110101110000111010;
		#400 //563610100.0 * -2476982000000.0 = -1.396052e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110011100010001111111010110110;
		b = 32'b10011101101101010100001101000001;
		correct = 32'b11010001110000100000000000101000;
		#400 //2.1707719e+31 * -4.797984e-21 = -104153285000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101011001000111111001001111010;
		b = 32'b11000001101100101000000101011110;
		correct = 32'b00101101011001001010001011100100;
		#400 //-5.8245737e-13 * -22.313168 = 1.29964685e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100110100001111011011010101111;
		b = 32'b00111010100101110000100111100101;
		correct = 32'b00100001101000000010010000000000;
		#400 //9.417023e-16 * 0.0011523335 = 1.0851551e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010010000010001011001110110;
		b = 32'b10001101100011011100011111011101;
		correct = 32'b01001000010101011110000000111100;
		#400 //-2.5064221e+35 * -8.737911e-31 = 219008.94
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011110011101101101001010011;
		b = 32'b11001100101110101111110100111111;
		correct = 32'b10010001000101110001011101000001;
		#400 //1.2157717e-36 * -98036216.0 = -1.1918965e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010110101011011111101111101111;
		b = 32'b00111101000111111100101111110011;
		correct = 32'b10010100010110010011010000101011;
		#400 //-2.810865e-25 * 0.03901286 = -1.09659886e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001001011000011100110100010;
		b = 32'b01001110101011110000000001010101;
		correct = 32'b10111000011010110111011100111110;
		#400 //-3.824166e-14 * 1468017300.0 = -5.613942e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010101101111100001110011111;
		b = 32'b11010101111011000111011100110011;
		correct = 32'b01001001001010011011110111100111;
		#400 //-2.1392962e-08 * -32499588000000.0 = 695262.44
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000111010110011000110111111100;
		b = 32'b00111010101001001000100010010011;
		correct = 32'b10000010100010111101001100000110;
		#400 //-1.6366991e-34 * 0.0012552909 = -2.0545336e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001011001100110010010110101010;
		b = 32'b01011000011101001110100111001000;
		correct = 32'b10100100001010110110001101111111;
		#400 //-3.450248e-32 * 1077139700000000.0 = -3.716399e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110110111011100001000111111;
		b = 32'b11001000011011111101111010111101;
		correct = 32'b00100111110011111100100101001011;
		#400 //-2.3479623e-20 * -245626.95 = 5.7672284e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011010100111110100011101111;
		b = 32'b10011010000000011010011101000001;
		correct = 32'b01010101110101101010010110100110;
		#400 //-1.1002991e+36 * -2.681168e-23 = 29500868000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001111100110110110000011111;
		b = 32'b01010010101111010011010110110111;
		correct = 32'b11101101001100111110100111100110;
		#400 //-8564662500000000.0 * 406325000000.0 = -3.4800364e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000110110011001100111001101100;
		b = 32'b01100101010001001001001011010111;
		correct = 32'b00101100100111010100001110000100;
		#400 //7.703958e-35 * 5.8018284e+22 = 4.469704e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001101010111111011001100100;
		b = 32'b00111010010000110110101111001001;
		correct = 32'b10101100100000110100010100010101;
		#400 //-5.0047664e-09 * 0.0007454721 = -3.7309136e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010110100010100000010001;
		b = 32'b11011101000010111101100111110101;
		correct = 32'b11010110111011100101101011111100;
		#400 //0.00020805026 * -6.298347e+17 = -131037270000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100111111010111010111001100;
		b = 32'b01000100000000001011011111100000;
		correct = 32'b11000001011111101110000111100110;
		#400 //-0.030939959 * 514.87305 = -15.930151
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110010110101010000111100011;
		b = 32'b00110010111110010010001110000001;
		correct = 32'b10101001110101001100010111001000;
		#400 //-3.2578762e-06 * 2.900356e-08 = -9.449001e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011001000000001100101010100;
		b = 32'b10000011101101101010100000001111;
		correct = 32'b00110111011001000111011000110111;
		#400 //-1.2684345e+31 * -1.0735583e-36 = 1.3617383e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110111000111000010111001001;
		b = 32'b01101101110111001100111100100001;
		correct = 32'b01001101010001000011111100001111;
		#400 //2.4089892e-20 * 8.542138e+27 = 205779180.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011000101110001010100000010111;
		b = 32'b01101000100010000010110001100000;
		correct = 32'b01000001110001000111001010011101;
		#400 //4.7732613e-24 * 5.1444833e+24 = 24.555964
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000001001001010110011100000;
		b = 32'b10101101011100000111100111111001;
		correct = 32'b01000110000110101011000010001000;
		#400 //-724249600000000.0 * -1.3669504e-11 = 9900.133
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001100100100010011011001;
		b = 32'b01101111100000011101111001010011;
		correct = 32'b11101010001101001101111100000110;
		#400 //-0.000680042 * 8.038468e+28 = -5.466496e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100010011100100001110111101;
		b = 32'b01110111101011111010001001111110;
		correct = 32'b01110100100011011000001100111011;
		#400 //0.012589392 * 7.124591e+33 = 8.969428e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001010010100001010001111011;
		b = 32'b10011000111010100101110111100100;
		correct = 32'b01010010101110010000000011010110;
		#400 //-6.557871e+34 * -6.0582388e-24 = 397291500000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000001100101010111101010101;
		b = 32'b10100100111000110110001100000100;
		correct = 32'b00000101100111101011011010010101;
		#400 //-1.5135199e-19 * -9.8613296e-17 = 1.4925319e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101101011111000011100110111;
		b = 32'b00111011011101000101010110001010;
		correct = 32'b11111001101001111000011110000111;
		#400 //-2.9164622e+37 * 0.003728243 = -1.087328e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010010001101011011011010;
		b = 32'b01010000110011110000111001010101;
		correct = 32'b00101111101000100111000011111001;
		#400 //1.0632342e-20 * 27790584000.0 = 2.95479e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010110001010010110110000001;
		b = 32'b01100100100111111000100010010100;
		correct = 32'b00111111111101011100000011101011;
		#400 //8.1550806e-23 * 2.354299e+22 = 1.9199499
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000100100011101001001000011;
		b = 32'b00100110011111110011011011010100;
		correct = 32'b10000111100100010101111110101100;
		#400 //-2.4703095e-19 * 8.8545203e-16 = -2.1873406e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100011100001101100010000000;
		b = 32'b11000010100001111011100001111100;
		correct = 32'b11101111011111110101111101111000;
		#400 //1.16465836e+27 * -67.86032 = -7.903409e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000111111100110100001100110;
		b = 32'b11000000100001100101010100110001;
		correct = 32'b01000010000001010111111101001111;
		#400 //-7.950244 * -4.1978993 = 33.374325
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001100010011101011001101010;
		b = 32'b11010110110100010011111110101010;
		correct = 32'b00011000111000010101010010101000;
		#400 //-5.063352e-38 * -115035680000000.0 = 5.8246618e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100000010110111000010011001;
		b = 32'b01001010110111001001010011000011;
		correct = 32'b01111111011100000100101110010110;
		#400 //4.4190248e+31 * 7228001.5 = 3.1940718e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100100001011011100111010;
		b = 32'b11010010111000000101001101011000;
		correct = 32'b00111000111111011001111011100000;
		#400 //-2.5104177e-16 * -481735480000.0 = 0.00012093573
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111100101010000001010010000;
		b = 32'b01100100111010100000110010101000;
		correct = 32'b11101101000010000011101110110110;
		#400 //-76293.125 * 3.45396e+22 = -2.6351342e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101001101110110011011101000;
		b = 32'b11010010001000011011100111001011;
		correct = 32'b11001111111001111011100110100101;
		#400 //0.044775873 * -173651700000.0 = -7775406600.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101001111011011101001010000;
		b = 32'b01001000001111110101110101101001;
		correct = 32'b10111110000011011101001100111100;
		#400 //-7.0679107e-07 * 195957.64 = -0.13850111
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011011111101000010100101001;
		b = 32'b00101111001100111000011101110111;
		correct = 32'b00111011001100100111110111001010;
		#400 //16680233.0 * 1.6328082e-10 = 0.002723562
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000100011100010011011010111;
		b = 32'b00011110000100011000101111100100;
		correct = 32'b00010111001000011010001101011011;
		#400 //6.778322e-05 * 7.705165e-21 = 5.222809e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101100000000100011101111101;
		b = 32'b01100001100111110000100011101100;
		correct = 32'b11000111100111110110000110111110;
		#400 //-2.2252903e-16 * 3.667094e+20 = -81603.484
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001110101100100110000101110;
		b = 32'b10001101011110000100000111000110;
		correct = 32'b00100111110011111101000011011100;
		#400 //-7539925700000000.0 * -7.650007e-31 = 5.7680487e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011100110101111010101000101;
		b = 32'b01000001110011010100101110101101;
		correct = 32'b11011101111110001000100001101110;
		#400 //-8.723365e+16 * 25.661951 = -2.2385856e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111010001101001000100001;
		b = 32'b00100001110110101000101111000000;
		correct = 32'b00000101010001101100001000001001;
		#400 //6.310621e-18 * 1.4809246e-18 = 9.345554e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001111001001110000100011011001;
		b = 32'b01010111001000101101001111111100;
		correct = 32'b00100110110101000111101111010100;
		#400 //8.23544e-30 * 179031350000000.0 = 1.4744019e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111000010001110001010101;
		b = 32'b00000001111100100011101100000101;
		correct = 32'b00001100010101010000000010101110;
		#400 //1844106.6 * 8.898145e-38 = 1.6409128e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101111000011101100110001110;
		b = 32'b00110101101000000001100011001101;
		correct = 32'b01000100000011010011110111011010;
		#400 //473641400.0 * 1.1928147e-06 = 564.96643
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010010010011001000111101100;
		b = 32'b01110001000010111111001010001010;
		correct = 32'b11000011110111000110001001100111;
		#400 //-6.360428e-28 * 6.9298605e+29 = -440.76877
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000000010000000111111010011110;
		b = 32'b00100010011111100001110100000111;
		correct = 32'b10100011001111110001001101110100;
		#400 //-3.007728 * 3.4438786e-18 = -1.035825e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001010101101011001010000001;
		b = 32'b10011111001111111001110000101111;
		correct = 32'b00000001001000001011001000101010;
		#400 //-7.274227e-19 * -4.0575015e-20 = 2.9515185e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111000000010100011111110000;
		b = 32'b01111111001001110010000000110000;
		correct = 32'b11101110101010001100110001011110;
		#400 //-1.1758039e-10 * 2.221482e+38 = -2.6120273e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100011111010001101010000111101;
		b = 32'b11010110111000101101010010001100;
		correct = 32'b01111011010011100100110010101101;
		#400 //-8.589876e+21 * -124701255000000.0 = 1.0711683e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000101001010111111010000100;
		b = 32'b11111100010100110010010100000110;
		correct = 32'b01011101100010000111111100110110;
		#400 //-2.8035808e-19 * -4.3853022e+36 = 1.229455e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000001111001111001001010111;
		b = 32'b10111000111011111101111000011010;
		correct = 32'b10100001101100010000101000101101;
		#400 //1.04886455e-14 * -0.00011437778 = -1.199668e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101110100100100100100100100010;
		b = 32'b10011100010001111000011110100110;
		correct = 32'b00001011011001000000100010111010;
		#400 //-6.652302e-11 * -6.60189e-22 = 4.3917768e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000001010011000100010000110;
		b = 32'b00110101100111000011111111010001;
		correct = 32'b10101110010011101111001011101001;
		#400 //-4.0419887e-05 * 1.1641479e-06 = -4.7054725e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000100011101110101100011010;
		b = 32'b10110111110011011101001111000000;
		correct = 32'b10110000111001011101000011110110;
		#400 //6.814879e-05 * -2.4536508e-05 = -1.6721333e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001010010010101011111111;
		b = 32'b10001111110001001110101010101101;
		correct = 32'b10010011100000100001111111111111;
		#400 //169.16795 * -1.9417486e-29 = -3.2848164e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000000000001001100110100001;
		b = 32'b01100100111010001111101010011100;
		correct = 32'b11010101011010100001001000111101;
		#400 //-4.678445e-10 * 3.4381623e+22 = -16085253000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101100111101111111011000001;
		b = 32'b10010101000100100011100001010001;
		correct = 32'b00100011001101011010000010001000;
		#400 //-333436960.0 * -2.952889e-26 = 9.8460235e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000100010000101010100100000;
		b = 32'b10011010101100000101110010010100;
		correct = 32'b10111011101110111101011110100111;
		#400 //7.859035e+19 * -7.294146e-23 = -0.005732495
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000101110100100100011000100;
		b = 32'b11100100000101001010101001001000;
		correct = 32'b01110101010110000101101111110100;
		#400 //-25002648000.0 * -1.0969553e+22 = 2.7426786e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010111001111001101110000111;
		b = 32'b10100010110010100001010110100000;
		correct = 32'b10000110001101101101010001001001;
		#400 //6.2777346e-18 * -5.4775106e-18 = -3.4386358e-35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010111000011110011001011110;
		b = 32'b00010110001101100011000110111100;
		correct = 32'b01001001101000001100010110101010;
		#400 //8.948816e+30 * 1.4717536e-25 = 1317045.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100010000001100110000110010;
		b = 32'b11100110001101000110010010011110;
		correct = 32'b01111011000001111101101101011010;
		#400 //-3312238200000.0 * -2.129705e+23 = 7.0540905e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100000101110000101110100010010;
		b = 32'b01001110101111101110110100011101;
		correct = 32'b00110000000010010111111111010110;
		#400 //3.12324e-19 * 1601605200.0 = 5.0021975e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001111010100110000101100100;
		b = 32'b11001010101110011010110110111101;
		correct = 32'b10010101001010011111111101110010;
		#400 //5.6425037e-33 * -6084318.5 = -3.433079e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100000101111111110100010010;
		b = 32'b10011101011100101101101111000011;
		correct = 32'b00100010000100000010111110110100;
		#400 //-607.9542 * -3.2142047e-21 = 1.9540893e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101110101000000100000000001;
		b = 32'b11000111101111001111001111001011;
		correct = 32'b10101110000111000111111111001100;
		#400 //3.6781561e-16 * -96743.586 = -3.55838e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100010111000110101110110000;
		b = 32'b10101000010101010111001110001010;
		correct = 32'b00011101001101111100100100010101;
		#400 //-2.0528273e-07 * -1.1848929e-14 = 2.4323805e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110110101100101110001000110;
		b = 32'b10010000000000000000110110001110;
		correct = 32'b10001111010101100111001011111001;
		#400 //0.41867274 * -2.525399e-29 = -1.05731575e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010111100100111110110101110;
		b = 32'b10110110010000110000011111001010;
		correct = 32'b10111001101110001011110100011100;
		#400 //121.24547 * -2.9061798e-06 = -0.00035236112
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010011100011001010111110101011;
		b = 32'b00110010011010110011110011011100;
		correct = 32'b01000110100000010100011010110100;
		#400 //1208485300000.0 * 1.3692638e-08 = 16547.352
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010101110100010001011101000101;
		b = 32'b10111000101000001110000111011011;
		correct = 32'b01001111000000110110011100000011;
		#400 //-28737234000000.0 * -7.6714634e-05 = 2204566300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010101000101111010010111111;
		b = 32'b00111110101100001001101001011011;
		correct = 32'b00010001111000001101010100001001;
		#400 //1.0283972e-27 * 0.34492764 = 3.5472262e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010101001110100110101111000;
		b = 32'b11010101010110100011001010010010;
		correct = 32'b11011000100011101001100100000101;
		#400 //83.651306 * -14994421000000.0 = -1254302900000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110000011010111011001110001100;
		b = 32'b00010011000110101010111000010110;
		correct = 32'b10000100000011100110101001001011;
		#400 //-8.5747653e-10 * 1.9523364e-27 = -1.6740827e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100101111111011111101100001;
		b = 32'b01010100000111111011010101101111;
		correct = 32'b11001001011011110011111110000101;
		#400 //-3.571577e-07 * 2743775000000.0 = -979960.3
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110011111011111000000000001;
		b = 32'b10010110000100000110010010110010;
		correct = 32'b10110101000011110011101011100011;
		#400 //4.5745316e+18 * -1.1664001e-25 = -5.335734e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100101101010110101010001101110;
		b = 32'b00101011000100000110110011111000;
		correct = 32'b00010001010000010101000011010111;
		#400 //2.9720983e-16 * 5.13103e-13 = 1.5249926e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001111001010101001101111000;
		b = 32'b11100010110111001110111101010101;
		correct = 32'b00100101010001011110101000100000;
		#400 //-8.4241086e-38 * -2.0377647e+21 = 1.7166351e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011111000100110010100101101;
		b = 32'b10110010110111010110111011000010;
		correct = 32'b00001111010000111101001101001011;
		#400 //-3.7453947e-22 * -2.5778153e-08 = 9.654936e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111110101000100001011110100;
		b = 32'b10010010001100010001010000100101;
		correct = 32'b00000010100100101101001011111111;
		#400 //-3.8610148e-10 * -5.587618e-28 = 2.1573878e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111110000101110110000011110;
		b = 32'b10011111110000000000000001111001;
		correct = 32'b10010000000100100011000101110011;
		#400 //3.5456166e-10 * -8.1315945e-20 = -2.8831517e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001000110010101111101101101001;
		b = 32'b10011100111111101100110110110010;
		correct = 32'b10100110010010100000100010001011;
		#400 //415707.28 * -1.6861481e-21 = -7.0094406e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111101110101010110110101011;
		b = 32'b10101111110011001111101011001000;
		correct = 32'b00100000000101010111100101000100;
		#400 //-3.3956601e-10 * -3.7285575e-10 = 1.2660914e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110100101011010111010000111010;
		b = 32'b10011011000000011001100101110010;
		correct = 32'b01010000001011111001111100010010;
		#400 //-1.0993954e+32 * -1.0720211e-22 = 11785751000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000110000001000000111110111;
		b = 32'b00111010010110101001000110100100;
		correct = 32'b10001011101001000101110000110001;
		#400 //-7.593089e-29 * 0.0008337742 = -6.3309216e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010110100100111001111010;
		b = 32'b00110101010000000100010100010001;
		correct = 32'b10010001001000111111010111000001;
		#400 //-1.8057894e-22 * 7.162608e-07 = -1.2934162e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111110001001010010001111011;
		b = 32'b00100111101111110110100001111010;
		correct = 32'b01000000000100110000011011111000;
		#400 //432421430000000.0 * 5.3126423e-15 = 2.2973003
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010000010000100110000101000;
		b = 32'b00011011101000111010100010101010;
		correct = 32'b11010110001011100100010010010100;
		#400 //-1.7692425e+35 * 2.7075085e-22 = -47902390000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101100100111100101000111000;
		b = 32'b10011111011011010000110011101100;
		correct = 32'b00010101100010001101100110101100;
		#400 //-1.1011207e-06 * -5.019739e-20 = 5.527339e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010001000101011110111001101;
		b = 32'b11000001100000011011110000110010;
		correct = 32'b11110100001001001111001010001111;
		#400 //3.2234257e+30 * -16.216892 = -5.227395e+31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110011010000010000101001001;
		b = 32'b11111001000111110100001000000000;
		correct = 32'b11011000000100000110100010000101;
		#400 //1.2288861e-20 * -5.1682115e+34 = -635114300000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010001110100010011101111101;
		b = 32'b00111000001001100110000000111101;
		correct = 32'b00001010111100011111011100101100;
		#400 //5.8739924e-28 * 3.9667113e-05 = 2.3300432e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100011001100000100111100001;
		b = 32'b10001000101100100010001111011011;
		correct = 32'b00011101101000000001001100010111;
		#400 //-3952033000000.0 * -1.0721415e-33 = 4.2371386e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000010100101010011111001101;
		b = 32'b10110100000111111110000001101111;
		correct = 32'b00000101000000111000111011100110;
		#400 //-4.1544467e-29 * -1.4889677e-07 = 6.185837e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110110110100101111000011100010;
		b = 32'b10100011011111100011111111010100;
		correct = 32'b01011010110100010111111110011000;
		#400 //-2.1391954e+33 * -1.3782884e-17 = 2.948428e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111110100000001010111000101;
		b = 32'b00111010110000101111110010000001;
		correct = 32'b01010011000111100111110110111110;
		#400 //457583840000000.0 * 0.0014876277 = 680714440000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100010111110101010011000111101;
		b = 32'b00111110110011100010100000110000;
		correct = 32'b10100010010010011101100100011110;
		#400 //-6.7938647e-18 * 0.40265036 = -2.735552e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001010100101111000001011011100;
		b = 32'b11010101101000000010000110010101;
		correct = 32'b01100000101111011000101101010011;
		#400 //-4964718.0 * -22008262000000.0 = 1.0926481e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010000011011001101000100111;
		b = 32'b10100101011111010100010101000101;
		correct = 32'b00011000000011000001011110101001;
		#400 //-8.24233e-09 * -2.1967721e-16 = 1.8106521e-24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100100100001011011101001001011;
		b = 32'b11001101101001010110101010101111;
		correct = 32'b11110010101011001101000110011010;
		#400 //1.9734726e+22 * -346904030.0 = -6.846056e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111011001000100010110010;
		b = 32'b10110110101001001101010010100000;
		correct = 32'b01101111000110000100110000000111;
		#400 //-9.5949576e+33 * -4.9123337e-06 = 4.7133633e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010111000001010111010110111001;
		b = 32'b10111100010101000001100110011101;
		correct = 32'b01010011110111010010010110101111;
		#400 //-146740660000000.0 * -0.01294556 = 1899640000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110011000101001001001000000010;
		b = 32'b00111000010011001011000100000111;
		correct = 32'b10101011111011011001011000101101;
		#400 //-3.459173e-08 * 4.880226e-05 = -1.6881545e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010010011111010011001010010111;
		b = 32'b00101111001011001010000000110100;
		correct = 32'b11000010001010101011110001110001;
		#400 //-271868870000.0 * 1.5700224e-10 = -42.684025
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010000011100111000101101010;
		b = 32'b01101000111001001010101011011001;
		correct = 32'b01001011011111100111100000100101;
		#400 //1.930463e-18 * 8.638809e+24 = 16676901.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001010001111100100101110101;
		b = 32'b11111101010011100000110101011110;
		correct = 32'b11100111001000001100111010001011;
		#400 //4.4361613e-14 * -1.7118148e+37 = -7.593887e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010100011110001101011010101;
		b = 32'b11011111101001001011100011010110;
		correct = 32'b01001010101110000010100100000111;
		#400 //-2.542052e-13 * -2.3738944e+19 = 6034563.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100101011100001010111111100;
		b = 32'b11100010010110100111111000000000;
		correct = 32'b01011111100101001001010001100111;
		#400 //-0.021250717 * -1.0076174e+21 = 2.141259e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111111000000100011100101101;
		b = 32'b11000110001011101001110111001010;
		correct = 32'b11100110100110001111101010011101;
		#400 //3.232187e+19 * -11175.447 = -3.6121135e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110110000001111100101100001101;
		b = 32'b10011011101100101010110000110001;
		correct = 32'b11010010001111011000110100001011;
		#400 //6.8855316e+32 * -2.9558906e-22 = -203528780000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100110010100100100000010000001;
		b = 32'b10100011111100010101010001011110;
		correct = 32'b00001010110001100011010000000100;
		#400 //-7.2945805e-16 * -2.6165003e-17 = 1.9086273e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000001010000000001010000001;
		b = 32'b10101101111101111101111111111001;
		correct = 32'b00111110101000101010110101101000;
		#400 //-11274946000.0 * -2.8180113e-11 = 0.31772923
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001011001110100011001010101;
		b = 32'b10010001100111110110000111011011;
		correct = 32'b10010011100011111111110100010110;
		#400 //14.454671 * -2.5146085e-28 = -3.6347837e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001100010001111011100111100;
		b = 32'b11110000100110101010010101000011;
		correct = 32'b11000010101001010111101001001011;
		#400 //2.1609387e-28 * -3.8288385e+29 = -82.73885
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001010111011010111010111001;
		b = 32'b01110011100100111100010011100110;
		correct = 32'b01101101011111111110101110101010;
		#400 //0.00021141292 * 2.3414954e+31 = 4.9502236e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101001001001010101110000001;
		b = 32'b10100100001100111101100100001111;
		correct = 32'b00011001111001110101111100010100;
		#400 //-6.134433e-07 * -3.8998294e-17 = 2.3923242e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011110010010101100100000011;
		b = 32'b10101100000101101100100010110000;
		correct = 32'b01100000011011010010111111111111;
		#400 //-3.1904817e+31 * -2.1427686e-12 = 6.836464e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111001001011101001111001000000;
		b = 32'b11101010111011110110111101101111;
		correct = 32'b01100100101000110101000111000000;
		#400 //-0.00016652886 * -1.4472975e+26 = 2.410168e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010100001011000001100000110111;
		b = 32'b01001111000110011101000001010111;
		correct = 32'b10100011110011101100110100001110;
		#400 //-8.688556e-27 * 2580567800.0 = -2.2421409e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001101000111100110100101000010;
		b = 32'b01001001101001000010101010111100;
		correct = 32'b01010111010010110010101111000000;
		#400 //166106140.0 * 1344855.5 = 223388770000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101111000011000001100101111;
		b = 32'b10010100011000000001110011011101;
		correct = 32'b00010010110001010110110000110110;
		#400 //-0.110113494 * -1.1314802e-26 = 1.2459124e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100000010000110001011010111;
		b = 32'b11010011000011111101000000100011;
		correct = 32'b10011111100110010011110000110010;
		#400 //1.0506802e-31 * -617672300000.0 = -6.4897605e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011100101111000001010111110;
		b = 32'b01110110100011000010111011111101;
		correct = 32'b11011010101001011110111010011110;
		#400 //-1.6426824e-17 * 1.42163e+33 = -2.3352867e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100101000000010111110111101001;
		b = 32'b11001000100101010100000010101101;
		correct = 32'b01101110000101101111110111111111;
		#400 //-3.8219244e+22 * -305669.4 = 1.1682453e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101101110011000111011010101100;
		b = 32'b10011100011010100101001111101011;
		correct = 32'b00001010101110110010011101111111;
		#400 //-2.3244816e-11 * -7.7532567e-22 = 1.8022302e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010100100000110101100010011011;
		b = 32'b01011110000100010000011010111011;
		correct = 32'b00110011000101001101000101001000;
		#400 //1.3262568e-26 * 2.6125614e+18 = 3.4649275e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001101100000101010101010110;
		b = 32'b00001011100011001101011110111110;
		correct = 32'b10001101110000100000011010001011;
		#400 //-22.041668 * 5.425065e-32 = -1.1957748e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101100101001011111011111011011;
		b = 32'b00111000111000010011110101111000;
		correct = 32'b00100110000100100000011010110001;
		#400 //4.7170995e-12 * 0.000107402855 = 5.0662994e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100100011011111011100001001;
		b = 32'b11101111001100000001000000101010;
		correct = 32'b01011100010000110100010110011010;
		#400 //-4.0348874e-12 * -5.4488903e+28 = 2.198566e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011011010011011101000110001;
		b = 32'b01101110000110101101000001110100;
		correct = 32'b11001010000011010101100001010011;
		#400 //-1.933347e-22 * 1.1978174e+28 = -2315796.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000010100111100101000101010;
		b = 32'b10101001001001000011001010101110;
		correct = 32'b10010010000001111101011101110000;
		#400 //1.175669e-14 * -3.6459273e-14 = -4.2864036e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101000010110100100101000001100;
		b = 32'b11010000111111110100010001101110;
		correct = 32'b01111001110110011010101000011011;
		#400 //-4.1233673e+24 * -34261398000.0 = 1.4127232e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111100010111101000000100001;
		b = 32'b00111010000001011111111001010110;
		correct = 32'b11000010000100100101110000010001;
		#400 //-71584.26 * 0.00051114464 = -36.58991
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001001011111110111011110001;
		b = 32'b01001011001100010111111110000011;
		correct = 32'b00010100111100111111011110101100;
		#400 //2.1177208e-33 * 11632515.0 = 2.4634419e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011000000000000011001100000;
		b = 32'b00000101100111101101001111111101;
		correct = 32'b10110001000111101101101111100110;
		#400 //-1.5477261e+26 * 1.4936121e-35 = -2.3117024e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001000101000100000100010111;
		b = 32'b11100001101101110111010100001010;
		correct = 32'b00100011010101000111110010011110;
		#400 //-2.7230007e-38 * -4.2302346e+20 = 1.1518932e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011010011101001001000101101;
		b = 32'b11101011111100110001011010010011;
		correct = 32'b10101111110001000010011011111000;
		#400 //6.070576e-37 * -5.8775116e+26 = -3.567988e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000001011100000010010100;
		b = 32'b11000111001110110111110010000100;
		correct = 32'b01011101110000111110100101110101;
		#400 //-36765540000000.0 * -47996.516 = 1.7646179e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101000111100100101111111100;
		b = 32'b10110000100001100010000010011111;
		correct = 32'b11000110001001011101111111100011;
		#400 //10878074000000.0 * -9.759055e-10 = -10615.972
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100100101100100100001101111110;
		b = 32'b01100101011011010111010111111000;
		correct = 32'b11001010101001010101101010100001;
		#400 //-7.730953e-17 * 7.008606e+22 = -5418320.5
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111000000111101100111010000;
		b = 32'b00101011101100101110011100001010;
		correct = 32'b10010011001110000100100011100011;
		#400 //-1.8297978e-15 * 1.2711787e-12 = -2.3260001e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010010111000001110000001010110;
		b = 32'b10111000100110011110100011100011;
		correct = 32'b10001100000001110011001010100110;
		#400 //1.41916905e-27 * -7.338987e-05 = -1.0415263e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010100010101100101111101101;
		b = 32'b00100001000000101000110000001100;
		correct = 32'b11000100000011011000111011111001;
		#400 //-1.2801725e+21 * 4.4231064e-19 = -566.23395
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110110010111000111000110111;
		b = 32'b10101000101001000101011111110100;
		correct = 32'b11000000000000101010110100001011;
		#400 //111905834000000.0 * -1.8245801e-14 = -2.0418117
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010011010011110110101110101;
		b = 32'b10111010000000110101111101111000;
		correct = 32'b10101100111100000001011101111111;
		#400 //1.36163765e-08 * -0.00050114794 = -6.823819e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110100000010011000110100111101;
		b = 32'b11010011111100100010100010111000;
		correct = 32'b01001000100000100001110101100101;
		#400 //-1.2810501e-07 * -2080130500000.0 = 266475.16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001001101110100011011101001;
		b = 32'b00110001100110000100111111110011;
		correct = 32'b00010011010110100001011010101110;
		#400 //6.209666e-19 * 4.4328714e-09 = 2.752665e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010101110111111111000100010;
		b = 32'b00101110110100111011111011110001;
		correct = 32'b01000010000110110111111010101110;
		#400 //403711260000.0 * 9.629087e-11 = 38.87371
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111010110101100111100000011001;
		b = 32'b10110110011101110110010111110010;
		correct = 32'b01110001110011110100001101001000;
		#400 //-5.567937e+35 * -3.6865208e-06 = 2.0526315e+30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011100001010111001110010101;
		b = 32'b01000000001101001011000000110000;
		correct = 32'b00000100001111000110001000111011;
		#400 //7.843574e-37 * 2.8232536 = 2.2144399e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100111101011100010011101110100;
		b = 32'b01100011101000011111100011001000;
		correct = 32'b01001011110111000110000000011100;
		#400 //4.8337477e-15 * 5.975705e+21 = 28885048.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000100110001011100100101011010;
		b = 32'b11000111101101011111100001111101;
		correct = 32'b10001101000011001001011101011000;
		#400 //4.649939e-36 * -93168.98 = -4.3323004e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100110110010111110111100111;
		b = 32'b01011110011000111011000101010010;
		correct = 32'b10111011110000010111000101001010;
		#400 //-1.43924e-21 * 4.1017463e+18 = -0.0059033977
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111011111110011111100010001;
		b = 32'b00110100111010111101110000000100;
		correct = 32'b00110100111010110010101001000011;
		#400 //0.99705607 * 4.3932243e-07 = 4.380291e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001111101000110001001110100;
		b = 32'b11011101110100000001101001100001;
		correct = 32'b10110000010001101010100100101101;
		#400 //3.8557089e-28 * -1.8744256e+18 = -7.2272394e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111000100110010110100110100001;
		b = 32'b10101100010010000101110110011010;
		correct = 32'b00100101011100000010010100111011;
		#400 //-7.3152834e-05 * -2.8473669e-12 = 2.0829296e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101000100101010011100010111;
		b = 32'b00110010111110101000000010000110;
		correct = 32'b00100000100011111000000011001101;
		#400 //8.3362406e-12 * 2.9162276e-08 = 2.4310375e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100101011111010101111011010110;
		b = 32'b11000001100111001010011111111100;
		correct = 32'b00100111100110110000110000001101;
		#400 //-2.1976384e-16 * -19.582024 = 4.3034208e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101100100100001001111000100;
		b = 32'b01010001110100110011111110111000;
		correct = 32'b11011111111100010001010101001101;
		#400 //-306346100.0 * 113413390000.0 = -3.4743752e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110010110011110000001011000100;
		b = 32'b01101100010100010111011110001111;
		correct = 32'b01011111101010010110000111110000;
		#400 //2.409923e-08 * 1.0129204e+27 = 2.44106e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101101010110001001100010010;
		b = 32'b10110101110010011110001011111100;
		correct = 32'b01101100000001101110100110101000;
		#400 //-4.3372537e+32 * -1.5041728e-06 = 6.523979e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010101000110010111010000101;
		b = 32'b10010000011011000101110101110110;
		correct = 32'b11001011100101101010101001110110;
		#400 //4.2364396e+35 * -4.6614793e-29 = -19748076.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100101111100011000100000101;
		b = 32'b11000100011000011101101111000000;
		correct = 32'b10100001101001111100110001011000;
		#400 //1.2585817e-21 * -903.4336 = -1.137045e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001100001010100110101101111000;
		b = 32'b00111011011100000000100001111100;
		correct = 32'b00001000000111111100101001100110;
		#400 //1.3128664e-31 * 0.003662615 = 4.808524e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101011111010000100101000010111;
		b = 32'b11000100001011111000111110111011;
		correct = 32'b10110000100111110100110100010001;
		#400 //1.6505156e-12 * -702.2458 = -1.1590676e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110010111010110000000110001111;
		b = 32'b10001101100111011110101010101111;
		correct = 32'b00000001000100001111011101100101;
		#400 //-2.735831e-08 * -9.73237e-31 = 2.662612e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010000101010011110001111000111;
		b = 32'b10101100000010000000001001000100;
		correct = 32'b10111101001101001000010100000101;
		#400 //22802217000.0 * -1.932802e-12 = -0.04407217
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110011110010000111000110000;
		b = 32'b01000000111110101110101011000001;
		correct = 32'b10110111111101000001110000111110;
		#400 //-3.711215e-06 * 7.8411565 = -2.9100218e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011101101111111110011000000;
		b = 32'b01010001001001101001011110100001;
		correct = 32'b10010101011011110111010110111101;
		#400 //-1.0813802e-36 * 44719280000.0 = -4.8358545e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000000110001010111011100010;
		b = 32'b00110111010110011100011001110000;
		correct = 32'b11001000000000011110001010011000;
		#400 //-10246392000.0 * 1.298041e-05 = -133002.38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011000100111101101100000000011;
		b = 32'b10000101100100010110000110111111;
		correct = 32'b10011110101101000110101000000000;
		#400 //1397204800000000.0 * -1.367164e-35 = -1.9102082e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011101110001001110010001100;
		b = 32'b01011100100100001001001011010001;
		correct = 32'b11100000110100001000001111011101;
		#400 //-369.22302 * 3.255506e+17 = -1.2020077e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100011100111010000010001101;
		b = 32'b11010100110000010111001111110010;
		correct = 32'b01111001101110000001101001100010;
		#400 //-1.7976511e+22 * -6646991400000.0 = 1.1948972e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111101101001001011100011011111;
		b = 32'b00100001010111110011011101110111;
		correct = 32'b01011111100011111010000010111011;
		#400 //2.7369162e+37 * 7.5628746e-19 = 2.0698955e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101111010001100100100101110;
		b = 32'b11111110000101100000011010011001;
		correct = 32'b11001100100010000110101111100001;
		#400 //1.4346536e-30 * -4.9854614e+37 = -71524104.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001110100010011011010011010;
		b = 32'b11001000000011010101101110011110;
		correct = 32'b01001010011001110000101111100101;
		#400 //-26.15166 * -144750.47 = 3785465.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001001100111000111110001100;
		b = 32'b10100001010000101001111111001100;
		correct = 32'b10001011000010001000001011011101;
		#400 //3.987049e-14 * -6.5941246e-19 = -2.6291098e-32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011011110000011111110000010;
		b = 32'b01001001010110110111101101000001;
		correct = 32'b11110101010101001101010111011010;
		#400 //-3.0011351e+26 * 898996.06 = -2.6980087e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110001111100111101101101001001;
		b = 32'b11101110011100101000011100011011;
		correct = 32'b01100000111001110000010111111101;
		#400 //-7.0971606e-09 * -1.8764676e+28 = 1.3317592e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000100001110000101101100101;
		b = 32'b01101011110000001101000001001111;
		correct = 32'b01101100110010110110110011011101;
		#400 //4.220141 * 4.6619493e+26 = 1.9674083e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010001001101001010100101101011;
		b = 32'b00010111011000011011001010010101;
		correct = 32'b10101001000111110100011011101110;
		#400 //-48496030000.0 * 7.2926823e-25 = -3.5366614e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111111100001001111100111111;
		b = 32'b00111111101001011101000101101111;
		correct = 32'b01001000000110111101101101111110;
		#400 //123198.49 * 1.2954539 = 159597.97
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111011101010100111100000;
		b = 32'b11000111011011001001011100101110;
		correct = 32'b11010001110111001001000110001100;
		#400 //1955132.0 * -60567.18 = -118416835000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111101110010000010010101111110;
		b = 32'b00110001100001100011010011001010;
		correct = 32'b00101111110100011101100111001011;
		#400 //0.09772776 * 3.9059147e-09 = 3.817163e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011110111011100011011010111;
		b = 32'b11000000110111101011010111010100;
		correct = 32'b01000101010000001110111111110100;
		#400 //-443.55344 * -6.959696 = 3086.997
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000101001111100010101111;
		b = 32'b01001000000111001111010100000011;
		correct = 32'b01000100101101101010110000111101;
		#400 //0.009092494 * 160724.05 = 1461.3824
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011111111010101111010111000100;
		b = 32'b11011000101000011111011100000100;
		correct = 32'b11111001000101001010011101000111;
		#400 //3.3861308e+19 * -1424658400000000.0 = -4.8240795e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110110010010101111110011101;
		b = 32'b00011000000000011111100011110010;
		correct = 32'b00110111010011000111101000000010;
		#400 //7.2552446e+18 * 1.6798544e-24 = 1.2187755e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110110101100111111010000101;
		b = 32'b11000011001001101101101000101111;
		correct = 32'b10110010100010111100110011011001;
		#400 //9.754068e-11 * -166.85228 = -1.6274884e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111010001010110000010011010100;
		b = 32'b11010110000110100010000100111111;
		correct = 32'b01010000110011011110111000111010;
		#400 //-0.0006523852 * -42366895000000.0 = 27639534000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111000101010101100100101100;
		b = 32'b10100001110000110001100100001011;
		correct = 32'b10110001011000111010001100010001;
		#400 //2505649200.0 * -1.3220343e-18 = -3.312554e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000011101001000010011110110110;
		b = 32'b01100011011000011010100011011101;
		correct = 32'b10100111100100001011001100101111;
		#400 //-9.648171e-37 * 4.1626853e+21 = -4.01623e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111101101111100110100010100;
		b = 32'b11101000010111010100000110101100;
		correct = 32'b11111000100111101101101100110001;
		#400 //6167341000.0 * -4.1794177e+24 = -2.5775895e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001000011100011110101110010000;
		b = 32'b01100011010010010111001010110111;
		correct = 32'b10101100001111100101111001011100;
		#400 //-7.28002e-34 * 3.7160616e+21 = -2.7053004e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110010111011101011101110111;
		b = 32'b00111101101101011111001100011100;
		correct = 32'b10111100100111011010110000000011;
		#400 //-0.21664225 * 0.0888426 = -0.01924706
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011000100101011111100001111101;
		b = 32'b00001010001111111101111010000000;
		correct = 32'b10100011011000001100110101111011;
		#400 //-1319155900000000.0 * 9.238163e-33 = -1.21865765e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100000110001110101000000101101;
		b = 32'b01001000000100100000001101111001;
		correct = 32'b10101001011000110101110011011100;
		#400 //-3.3764967e-19 * 149517.89 = -5.0484668e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000000110010111010001110101000;
		b = 32'b11010001011001001111111111101100;
		correct = 32'b11010010101101100010100101010101;
		#400 //6.3637276 * -61471638000.0 = -391188740000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000111000001011100011011110;
		b = 32'b11001101111011100010100111100000;
		correct = 32'b11101111010100010001000010100001;
		#400 //1.2954349e+20 * -499465200.0 = -6.470247e+28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111111010101000111101101001;
		b = 32'b00101110111000000111111011110110;
		correct = 32'b00101111010011011011000111010000;
		#400 //1.8325015 * 1.02088935e-10 = 1.8707813e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110101010001100111010101;
		b = 32'b01010011111110110010110111010001;
		correct = 32'b11010000010100010001011001110111;
		#400 //-0.0065033236 * 2157610900000.0 = -14031642000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001001101101011100000011010010;
		b = 32'b01100000010101100101100010000110;
		correct = 32'b00101010100110000010111000001001;
		#400 //4.3755492e-33 * 6.178097e+19 = 2.7032567e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010000010011101001110100011110;
		b = 32'b01000110101111101110111100111001;
		correct = 32'b00010111100110100001100110101111;
		#400 //4.0747375e-29 * 24439.611 = 9.9585e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100001001110000101000111001001;
		b = 32'b11110100011001100100100010010100;
		correct = 32'b01010110001001011100110110111100;
		#400 //-6.2449867e-19 * -7.2979757e+31 = 45575760000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001101100001011100010010111;
		b = 32'b10101110100011011001001101100011;
		correct = 32'b01100000110000110111011011010011;
		#400 //-1.7501605e+30 * -6.438119e-11 = 1.12677415e+20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100111100111000110000001001100;
		b = 32'b00101111111111011101010000000000;
		correct = 32'b11011000000110110000110010101011;
		#400 //-1.476931e+24 * 4.6171067e-10 = -681914840000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001000001100100011111011100011;
		b = 32'b11100010000101011010101010101101;
		correct = 32'b01101010110100000110101011100001;
		#400 //-182523.55 * -6.9021584e+20 = 1.2598065e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011010001110100001000101111;
		b = 32'b10011110011101010101011101010000;
		correct = 32'b10101010001111101111011001001101;
		#400 //13058607.0 * -1.2988248e-20 = -1.6960843e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110000001101101000000100111;
		b = 32'b01010010100011101000111111000111;
		correct = 32'b01010001000101100010011001011001;
		#400 //0.13165341 * 306148770000.0 = 40305530000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101011001101100000010011001;
		b = 32'b11001111010011110101110010011110;
		correct = 32'b01010101001110101110100100110111;
		#400 //-3692.0374 * -3478953500.0 = 12844426000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101110100010111000001000111011;
		b = 32'b00111011010100101001100111111110;
		correct = 32'b01101010011001011000100101111111;
		#400 //2.1587928e+28 * 0.0032135244 = 6.937333e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110101011111011110101111111100;
		b = 32'b00011011011111001011011111010000;
		correct = 32'b00010001011110101010101010011110;
		#400 //9.4593247e-07 * 2.0904344e-22 = 1.9774098e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011101010000000001111110001;
		b = 32'b00010001011110111011010111010111;
		correct = 32'b10010101101001010011001100110101;
		#400 //-336.0308 * 1.9856442e-28 = -6.672376e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110000000001110000010110001;
		b = 32'b10011001001011010001011011110001;
		correct = 32'b11010111101011100100011011001000;
		#400 //4.282696e+37 * -8.948523e-24 = -383238050000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000001010000101010000011101;
		b = 32'b11100101011100110010111111111110;
		correct = 32'b00110110000111111110011101100110;
		#400 //-3.3196957e-29 * -7.177627e+22 = 2.3827538e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011011010100000011001111011;
		b = 32'b10101110100011011001001101001001;
		correct = 32'b01100010100000010110110000110110;
		#400 //-1.8541396e+31 * -6.438101e-11 = 1.1937137e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101111111100010000101011001;
		b = 32'b00011111010011000110101001010110;
		correct = 32'b11011101110010101110110000100010;
		#400 //-4.2224633e+37 * 4.328664e-20 = -1.8277624e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101010011100111111001000000;
		b = 32'b01010000111010111101011101001000;
		correct = 32'b11111110101111100011101110001011;
		#400 //-3.9941587e+27 * 31654035000.0 = -1.2643124e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101111000100001111001000110101;
		b = 32'b10111011000011001011000111011010;
		correct = 32'b01101010100111110101001001010000;
		#400 //-4.485865e+28 * -0.0021468312 = 9.630396e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001110100010000111000010000;
		b = 32'b01100100100011111011000001001001;
		correct = 32'b01011110111010101010110110100000;
		#400 //0.00039874064 * 2.1204697e+22 = 8.455174e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100100000100000100110110010;
		b = 32'b11101101101111100000110000010010;
		correct = 32'b11100010110000010001001010100111;
		#400 //2.422144e-07 * -7.352093e+27 = -1.7807828e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110001110001101101111101011;
		b = 32'b00101100101111011101111110101010;
		correct = 32'b01000011100010010001101111011111;
		#400 //50813670000000.0 * 5.3965348e-12 = 274.21774
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000011001101101101100110000110;
		b = 32'b01100100000000100110011001000001;
		correct = 32'b00100111101110100100011011111110;
		#400 //5.3734698e-37 * 9.62178e+21 = 5.170234e-15
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111110011110011000111010100100;
		b = 32'b00001110100010110100111010110010;
		correct = 32'b01001101100001111100110100101010;
		#400 //8.29296e+37 * 3.4341926e-30 = 284796220.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000010100011101100001010011001;
		b = 32'b01010111111110010101110110001101;
		correct = 32'b01011011000010110000111101110010;
		#400 //71.38007 * 548360400000000.0 = 3.9142004e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101101100000001110001111010011;
		b = 32'b10001011010101010001010000011010;
		correct = 32'b00111001010101101000111101011011;
		#400 //-4.986188e+27 * -4.103743e-32 = 0.00020462034
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001001100011001111000000011;
		b = 32'b00100011110010110110000000001011;
		correct = 32'b11010101100011010001101011101111;
		#400 //-8.7951794e+29 * 2.204998e-17 = -19393352000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100001100100101111010110110;
		b = 32'b10100111110001011011011101101010;
		correct = 32'b01000100100010011100001010101110;
		#400 //-2.0082673e+17 * -5.487734e-15 = 1102.0837
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010010000011001001110111111;
		b = 32'b10010111001100101101111001001000;
		correct = 32'b01000010000001110100000011001111;
		#400 //-5.85051e+25 * -5.779546e-25 = 33.81329
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001011001000101010001100011;
		b = 32'b11101111011000000010011000010011;
		correct = 32'b11101001010001111110101111001100;
		#400 //0.00021775211 * -6.937067e+28 = -1.510561e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100100100101101101001011110;
		b = 32'b01001001100001011101010001011010;
		correct = 32'b10110110100110011000101010000111;
		#400 //-4.173813e-12 * 1096331.2 = -4.575882e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110011101000111101110010111;
		b = 32'b00110011010110100001011001111011;
		correct = 32'b11010010010100000100011010110111;
		#400 //-4.40421e+18 * 5.0777526e-08 = -223634900000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000110110100001111100101110;
		b = 32'b01000011111000110111011101000001;
		correct = 32'b11010101010000011100111101000010;
		#400 //-29275812000.0 * 454.93167 = -13318494000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000000101011110010011000000011;
		b = 32'b11111111010010101101001110001000;
		correct = 32'b01000000100010101100010010111000;
		#400 //-1.6084848e-38 * -2.6960239e+38 = 4.3365135
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111111110101100001011100111;
		b = 32'b00100001110010010110100100100101;
		correct = 32'b00100010010001010100101000000110;
		#400 //1.959073 * 1.3648121e-18 = 2.6737666e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010111101111111000110110001;
		b = 32'b00110000001100100010110101011011;
		correct = 32'b11100011101011001001000111111011;
		#400 //-9.822078e+30 * 6.4820477e-10 = -6.366718e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100100001100110100011011000110;
		b = 32'b01001011101110000111101000101111;
		correct = 32'b11110000100000010011000001101111;
		#400 //-1.3228268e+22 * 24179806.0 = -3.1985695e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011100111110100111100001000101;
		b = 32'b00101010101101011010001010100101;
		correct = 32'b00001000001100011011011000101010;
		#400 //1.6574701e-21 * 3.2264916e-13 = 5.3478133e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111110010010100110110100;
		b = 32'b10111101001100101100000111011100;
		correct = 32'b01110101101011011111101110101110;
		#400 //-1.0107248e+34 * -0.04364191 = 4.4109962e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011000011001101110010001111001;
		b = 32'b01011110011110000001010011001000;
		correct = 32'b10110111010111111100000000010011;
		#400 //-2.9842152e-24 * 4.4690332e+18 = -1.3336557e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000010001100101011110001001010;
		b = 32'b00010011010110010001111110010000;
		correct = 32'b10010110000101111001011110100100;
		#400 //-44.683876 * 2.7404812e-27 = -1.2245532e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110111111100010100111010000010;
		b = 32'b00110010000000000110101100011110;
		correct = 32'b10101010011100100001100001110010;
		#400 //-2.8765997e-05 * 7.474936e-09 = -2.1502399e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001000010011101101010001111;
		b = 32'b00110100001011101001001101110011;
		correct = 32'b11010101101111000000001111100111;
		#400 //-1.5893455e+20 * 1.6258655e-07 = -25840618000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010011000110000100101000100;
		b = 32'b01001000001111001111011001111100;
		correct = 32'b10110011001001111001010101100111;
		#400 //-2.0164865e-13 * 193497.94 = -3.9018598e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110001111100100101011000100011;
		b = 32'b00101000010101001100111110011101;
		correct = 32'b11011010110010010111001111011101;
		#400 //-2.3999842e+30 * 1.1813383e-14 = -2.8351932e+16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110000010110011001010101000;
		b = 32'b10011011110000011011001001001001;
		correct = 32'b00010010010100101010010001000011;
		#400 //-2.07421e-06 * -3.2044386e-22 = 6.6466784e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011010111011011101011110000;
		b = 32'b10100010011100110000000010110100;
		correct = 32'b10100110010100100111100100001110;
		#400 //221.73022 * -3.2933013e-18 = -7.3022446e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011110010011101100111101101000;
		b = 32'b01001000100101000110110010000101;
		correct = 32'b11100111011011111100111100100110;
		#400 //-3.725561e+18 * 303972.16 = -1.1324668e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000110111111100101110011001011;
		b = 32'b11110011111011010101100010011100;
		correct = 32'b11111011011010111101001111110011;
		#400 //32558.396 * -3.7608996e+31 = -1.2244886e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110010111111111000001100010;
		b = 32'b00110111100110011000000110001111;
		correct = 32'b11000110100001100100100000000000;
		#400 //-939268200.0 * 1.8299352e-05 = -17188.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011010011111101011000110111001;
		b = 32'b11100010110001111100100100001111;
		correct = 32'b10111101110001101100010000101111;
		#400 //5.2669532e-23 * -1.842695e+21 = -0.09705388
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101100001000011101101100101;
		b = 32'b11111001101100000011101110111010;
		correct = 32'b01101111101101100000111101011110;
		#400 //-9.852052e-07 * -1.1438196e+35 = 1.126897e+29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111101000100101110001110011;
		b = 32'b01100011101011100110111011111111;
		correct = 32'b01100011110111010100001001110111;
		#400 //1.2684463 * 6.435463e+21 = 8.1630395e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110100001100101001100011110;
		b = 32'b11001001011001101011110011110000;
		correct = 32'b10100000011100100010001110100000;
		#400 //2.1701322e-25 * -945103.0 = -2.0509985e-19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101100001100010110101110010011;
		b = 32'b00001000000111101101001011000101;
		correct = 32'b00110100110111000010010011101111;
		#400 //8.579515e+26 * 4.7794154e-34 = 4.1005066e-07
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100011111101010011010111100111;
		b = 32'b01010011010011100100011101010101;
		correct = 32'b01110111110001011001010110110011;
		#400 //9.046673e+21 * 885960000000.0 = 8.01499e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111011000010011101000001011;
		b = 32'b11111100111110101111011110010111;
		correct = 32'b11000100110111001100110010000011;
		#400 //1.6944176e-34 * -1.04247675e+37 = -1766.391
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001011101101000001101000101100;
		b = 32'b00100000100111110001001001100000;
		correct = 32'b00101100110111111101001001011101;
		#400 //23606360.0 * 2.6947807e-19 = 6.3613962e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110101110000111110000011001;
		b = 32'b10101110100001100001000000000111;
		correct = 32'b10101101110000010011100100000100;
		#400 //0.3603218 * -6.0964615e-11 = -2.196688e-11
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011111001010100100001011111111;
		b = 32'b10110111110110011011011010000000;
		correct = 32'b10010111100100001100110000101011;
		#400 //3.6054318e-20 * -2.5953399e-05 = -9.357321e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001110111001000100000101011010;
		b = 32'b11101111010001011101110010101010;
		correct = 32'b10111110101100000110101100001010;
		#400 //5.626927e-30 * -6.1235313e+28 = -0.34456664
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001101110001010101000101000000;
		b = 32'b01110000010010011000101011100000;
		correct = 32'b11111110100110110101011111010110;
		#400 //-413804540.0 * 2.494975e+29 = -1.032432e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110101000000010001111010001011;
		b = 32'b11000110101111100110101010001110;
		correct = 32'b01111100010000000001010011010011;
		#400 //-1.6367817e+32 * -24373.277 = 3.9893734e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100110110101010100101101;
		b = 32'b00111101111011000011100110010111;
		correct = 32'b10111101000011110101010101110111;
		#400 //-0.3033842 * 0.11534422 = -0.034993615
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110011111000001101001010110100;
		b = 32'b11101011101101001110101111110000;
		correct = 32'b11100000000111101110001101011011;
		#400 //1.04691395e-07 * -4.3744166e+26 = -4.579638e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110000100000101011111101100;
		b = 32'b00100110110110110010101101010110;
		correct = 32'b10111101011101110010011101001100;
		#400 //-39676824000000.0 * 1.5207924e-15 = -0.06034021
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010010101111000001111010100;
		b = 32'b01001110000011011010000100001001;
		correct = 32'b00010000111011100111011001011010;
		#400 //1.5833538e-37 * 594035260.0 = 9.40568e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100000011101010101101011001;
		b = 32'b11110000101011011110110110110001;
		correct = 32'b01001101010000011101110010000101;
		#400 //-4.720532e-22 * -4.3062606e+29 = 203278420.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111011110100011011011100000110;
		b = 32'b10010000101001001101000110001000;
		correct = 32'b00001101000001110000010011100110;
		#400 //-0.006399992 * -6.500943e-29 = 4.1605983e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000111001101101000010001010;
		b = 32'b11101101110100100110101001111001;
		correct = 32'b00111111001111011011011100010001;
		#400 //-9.104031e-29 * -8.140071e+27 = 0.7410746
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101000001000000011100011010;
		b = 32'b11000111111000011110101111101111;
		correct = 32'b11110101011010010000011111010111;
		#400 //2.553788e+27 * -115671.87 = -2.9540141e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100011010101001100111100111011;
		b = 32'b11111011011000101000101011111111;
		correct = 32'b01011111001111000101001001111110;
		#400 //-1.1536426e-17 * -1.1762783e+36 = 1.3570047e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110010110010100100100000110011;
		b = 32'b10110011100111101101011101101011;
		correct = 32'b01100110111110110000010110001101;
		#400 //-8.013217e+30 * -7.3966326e-08 = 5.927082e+23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010000110001101100101111101;
		b = 32'b10100011100010010111000100111110;
		correct = 32'b11000110001001000010000000000010;
		#400 //7.048942e+20 * -1.490153e-17 = -10504.002
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010101111011101111100011100011;
		b = 32'b10111101000000110100101000010110;
		correct = 32'b11010011011101010001110100001001;
		#400 //32844090000000.0 * -0.032053076 = -1052754100000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101101111111001110010100110100;
		b = 32'b00110010000000110001100011110100;
		correct = 32'b01100000100000011000000111110000;
		#400 //9.783414e+27 * 7.630877e-09 = 7.465603e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000101100110011001100000111;
		b = 32'b10000111011000010011000011101001;
		correct = 32'b10000000100111011010001000010110;
		#400 //8.54489e-05 * -1.6941492e-34 = -1.4476318e-38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010011110111010000101010101000;
		b = 32'b01110101100111100000001000000010;
		correct = 32'b11001010000010000110111001001111;
		#400 //-5.579875e-27 * 4.0059747e+32 = -2235283.8
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011001101110010000001110101;
		b = 32'b11100100010001111100111101001101;
		correct = 32'b11101000000011101110111010000101;
		#400 //183.12679 * -1.4743359e+22 = -2.6999038e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010100100011111101101111;
		b = 32'b10110011101100010000011001101111;
		correct = 32'b00111101100100010110001100100100;
		#400 //-861174.94 * -8.243375e-08 = 0.07098988
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110101101101011001101111100011;
		b = 32'b01011000100011111101001011000001;
		correct = 32'b11001110110011000000111100101101;
		#400 //-1.353092e-06 * 1265082800000000.0 = -1711773300.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011101100011010110100110001;
		b = 32'b11010100100011110111010001010010;
		correct = 32'b10111000110001110010000011110100;
		#400 //1.9263728e-17 * -4929055000000.0 = -9.4951974e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010011111101001011010011101111;
		b = 32'b01011110000001100110100100100101;
		correct = 32'b00110010100000000111101100110111;
		#400 //6.1772674e-27 * 2.4213283e+18 = 1.4957193e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110000000101100000010101001;
		b = 32'b11010111001110111010111010100101;
		correct = 32'b10110101101111111011011111011101;
		#400 //6.921984e-21 * -206358770000000.0 = -1.428412e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010010100111011010001011110;
		b = 32'b00100001011011101110101100001011;
		correct = 32'b01011100010001011001010000001111;
		#400 //2.7480823e+35 * 8.0948613e-19 = 2.2245345e+17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001000100011000101000000100;
		b = 32'b01100110101010100111001111001000;
		correct = 32'b01101000010000011100111011110011;
		#400 //9.096195 * 4.0246904e+23 = 3.660937e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000011111101011110000000001;
		b = 32'b00010011000010100010111000010011;
		correct = 32'b00000100000010010111111100110001;
		#400 //9.267183e-10 * 1.7440765e-27 = 1.6162676e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010110100000110110011011011111;
		b = 32'b00011011110010101110011010100100;
		correct = 32'b00110010110100000100101100011101;
		#400 //72238926000000.0 * 3.3567145e-22 = 2.4248545e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100011000001000101011110110;
		b = 32'b01111010010001101100100101100110;
		correct = 32'b01110111001011100101110000100001;
		#400 //0.013705006 * 2.580399e+35 = 3.5364385e+33
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000111111011110001100111000101;
		b = 32'b10111011011001110011111110111001;
		correct = 32'b11000011110101111111101111000101;
		#400 //122419.54 * -0.0035285784 = -431.96695
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111100010111100000010111010101;
		b = 32'b10100110111000010111110100111101;
		correct = 32'b00100011110000111000111110111110;
		#400 //-0.013551195 * -1.5646457e-15 = 2.120282e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111110111000101101110111101000;
		b = 32'b00011010000011100110001010001000;
		correct = 32'b11011001011111000101110011010000;
		#400 //-1.5077887e+38 * 2.9444505e-23 = -4439609000000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100111101110000100110111011;
		b = 32'b10101101101111110111010100011000;
		correct = 32'b11100011001110001100000101000001;
		#400 //1.5657894e+32 * -2.1766186e-11 = -3.4081263e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011000011111010110100110000;
		b = 32'b00100100110011001011101011101111;
		correct = 32'b11000000011001011100110111011000;
		#400 //-4.0441343e+16 * 8.8787575e-17 = -3.5906887
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000100010111110001011000000011;
		b = 32'b10101100100001101011110111110100;
		correct = 32'b00110001011010101101011000011011;
		#400 //-892.34393 * -3.829598e-12 = 3.4173187e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101001101000110000111111111111;
		b = 32'b00111100010100011010111101100111;
		correct = 32'b00100110100001011000111111001001;
		#400 //7.241429e-14 * 0.012798167 = 9.267702e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110111001011001100111111100000;
		b = 32'b00011010110100000011000010011111;
		correct = 32'b00010010100011001000100110111000;
		#400 //1.0300399e-05 * 8.6105335e-23 = 8.869192e-28
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00011110010100010111000110000010;
		b = 32'b10100011110100011000100011100000;
		correct = 32'b10000010101010110110110110100111;
		#400 //1.1087841e-20 * -2.2717794e-17 = -2.518913e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100111101001110100100010000;
		b = 32'b10111010001011010101100000010000;
		correct = 32'b01001111101001011101010110111111;
		#400 //-8415057300000.0 * -0.00066125486 = 5564497400.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100000010110011000111011000110;
		b = 32'b00011000000100100001011010010001;
		correct = 32'b10111000111110000100110100110101;
		#400 //-6.270674e+19 * 1.888145e-24 = -0.000118399425
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001000101110101100000111111;
		b = 32'b00001101000000111011110110011011;
		correct = 32'b10001110100110111100010010000000;
		#400 //-9.459044 * 4.059572e-31 = -3.8399673e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10001010100111110001110101010101;
		b = 32'b01001010100000011010010010100111;
		correct = 32'b10010101101000010010100000111101;
		#400 //-1.5322177e-32 * 4248147.5 = -6.509087e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101010101101011111100010010;
		b = 32'b00111110111110110100000101000010;
		correct = 32'b11111100110100101100010000010101;
		#400 //-1.784043e+37 * 0.49073225 = -8.754875e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101111010101100111110100110010;
		b = 32'b11110011110000001000110010001010;
		correct = 32'b01100011101000010101001110100110;
		#400 //-1.9507665e-10 * -3.0510604e+31 = 5.9519066e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101001111010111010011110010000;
		b = 32'b01001110000011010110100001000010;
		correct = 32'b10111000100000100010101101000011;
		#400 //-1.0465164e-13 * 593105000.0 = -6.206941e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000011000000100111101101010000;
		b = 32'b00100100110000110011010111100011;
		correct = 32'b00101000010001101111111011001010;
		#400 //130.48169 * 8.465906e-17 = 1.10464565e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001001010111000111110100110100;
		b = 32'b00000011011110001000111111000000;
		correct = 32'b10001101010101100001010100011010;
		#400 //-903123.25 * 7.3045667e-37 = -6.596924e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110100011000100011001101110;
		b = 32'b01001011011000010100010010001001;
		correct = 32'b11001010011101101101111011101001;
		#400 //-0.27397484 * 14763145.0 = -4044730.2
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000011111110110111100101;
		b = 32'b10010100001001001010100111001011;
		correct = 32'b00010010101110010010011110111010;
		#400 //-0.14055593 * -8.31337e-27 = 1.1684935e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001100001001011100110010101;
		b = 32'b00000110011001001111110011101011;
		correct = 32'b00001000011011010111000011010010;
		#400 //16.590616 * 4.306785e-35 = 7.1452213e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010110011101110010100011101110;
		b = 32'b11111110010000001100101011001100;
		correct = 32'b11010101001110100010001001111110;
		#400 //1.9965416e-25 * -6.406619e+37 = -12791082000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011111101000111011001100110101;
		b = 32'b10111110000011000010011000010011;
		correct = 32'b00011110001100110011110010110011;
		#400 //-6.932966e-20 * -0.13686399 = 9.488733e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000010100111100011001100011000;
		b = 32'b11001011110110101011100111110111;
		correct = 32'b10001111000001110010101001101110;
		#400 //2.324534e-37 * -28668910.0 = -6.6641855e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110100011010011000101001100101;
		b = 32'b10000010100111111001111001101010;
		correct = 32'b10110111100100011001110101111001;
		#400 //7.401197e+31 * -2.3453875e-37 = -1.7358676e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111011101101111011111001010001;
		b = 32'b01000011001010111010011110011011;
		correct = 32'b11111111011101100110100011011001;
		#400 //-1.9081008e+36 * 171.65471 = -3.2753449e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011010100000010111100110000001;
		b = 32'b10101101001101011000011011010110;
		correct = 32'b11001000001101111001111000110100;
		#400 //1.8221933e+16 * -1.0318598e-11 = -188024.81
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000110111100010000011001010111;
		b = 32'b01001100111001011011100011000110;
		correct = 32'b10010100010110000100100010100011;
		#400 //-9.066344e-35 * 120440370.0 = -1.0919538e-26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111001000010011000000001011;
		b = 32'b00001111011101000011011010001000;
		correct = 32'b10010111000110011100010000100000;
		#400 //-41264.043 * 1.2040631e-29 = -4.968451e-25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111001010010001011011111010;
		b = 32'b11001110110110110110011010010000;
		correct = 32'b10111110100100001110101001100110;
		#400 //1.5378623e-10 * -1840465900.0 = -0.28303832
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000100100111000101111100111001;
		b = 32'b00100001010001100010110010101110;
		correct = 32'b00100110011100100001100111100001;
		#400 //1250.9757 * 6.714414e-19 = 8.399569e-16
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111100000100001110111011010010;
		b = 32'b00111100001101001111010111010110;
		correct = 32'b00111000110011001110011000110011;
		#400 //0.008846002 * 0.01104494 = 9.770356e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100010111011010000100110100111;
		b = 32'b10011101100010011110001010110100;
		correct = 32'b11000000111111110101100000100111;
		#400 //2.186287e+21 * -3.6498004e-21 = -7.979511
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011110001100001011000000100;
		b = 32'b10001101001110110101101101010110;
		correct = 32'b00111001100100001111100011000001;
		#400 //-4.7894256e+26 * -5.7733766e-31 = 0.00027651156
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001000010100011111000100111;
		b = 32'b10011010011101101110111100011011;
		correct = 32'b10101100000001010101100011011000;
		#400 //37109264000.0 * -5.1064756e-23 = -1.8949755e-12
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001111110100000001101010100;
		b = 32'b00111110001000011010000101011111;
		correct = 32'b00010000100111011101100110110001;
		#400 //3.9445096e-28 * 0.15784214 = 6.226099e-29
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101110101000111100111101100001;
		b = 32'b10001100111001000100101100000010;
		correct = 32'b00111100000100100001010010110001;
		#400 //-2.534838e+28 * -3.5174106e-31 = 0.008916066
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001100000110011111110010101010;
		b = 32'b11101111101111100011100001100011;
		correct = 32'b01111100011001001101011011100010;
		#400 //-40366760.0 * -1.1774064e+29 = 4.752808e+36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000111011010011001010100000100;
		b = 32'b10110001011100100101101110011001;
		correct = 32'b00111001010111010010001001110001;
		#400 //-59797.016 * -3.5267702e-09 = 0.00021089033
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001001110010010001010001110;
		b = 32'b11000001111010110110001000000001;
		correct = 32'b01101011101010100011100110011000;
		#400 //-1.3988404e+25 * -29.422853 = 4.1157874e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111111110000111100010101110;
		b = 32'b10001110110111101101000011010100;
		correct = 32'b01000111010110000100001101010111;
		#400 //-1.00791976e+34 * -5.492832e-30 = 55363.34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101000010000001100100010100011;
		b = 32'b00110101111001101110001010100011;
		correct = 32'b10011110101011011101111011101110;
		#400 //-1.0701647e-14 * 1.7202295e-06 = -1.8409289e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100000011001111010000110000010;
		b = 32'b10000010100010010111111001110011;
		correct = 32'b10100011011110001100111110110000;
		#400 //6.676306e+19 * -2.020292e-37 = -1.34880865e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110110011010111100010111101100;
		b = 32'b01011100110100100000110001000110;
		correct = 32'b01010011110000010111001110101001;
		#400 //3.5132934e-06 * 4.7298592e+17 = 1661738300000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010110001101010000000010;
		b = 32'b01000111101111111110010001011001;
		correct = 32'b11101001101000101000011110010110;
		#400 //-2.4998584e+20 * 98248.695 = -2.4560784e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101110010000111111011101110;
		b = 32'b01001100101001110100110000010110;
		correct = 32'b00100011000000110000011001100100;
		#400 //8.0979616e-26 * 87711920.0 = 7.1028775e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001011010000110011010001110000;
		b = 32'b10011101011111100110110000110001;
		correct = 32'b00101001010000100000000010000111;
		#400 //-12792944.0 * -3.3672554e-21 = 4.307711e-14
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110111100000001111000110111000;
		b = 32'b00001101000001011000001111010111;
		correct = 32'b01000101000001100111111111111001;
		#400 //5.230599e+33 * 4.1142486e-31 = 2151.9983
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001100101001001101000001001;
		b = 32'b11011110111011111000101010111111;
		correct = 32'b11111001000010110000110001011000;
		#400 //5228457500000000.0 * -8.630409e+18 = -4.5123727e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111111011010100110001011111011;
		b = 32'b11101001110001111011001111011000;
		correct = 32'b11101001101101101101011110011010;
		#400 //0.9155728 * -3.017819e+25 = -2.763033e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010101001110000111101100000111;
		b = 32'b00110001101110000001100011101101;
		correct = 32'b10000111100001001010101001100011;
		#400 //-3.7255556e-26 * 5.3579385e-09 = -1.9961297e-34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01101010111101011101110010011001;
		b = 32'b10001101101000000110011001111101;
		correct = 32'b10111001000110100000110001001110;
		#400 //1.4861428e+26 * -9.8854345e-31 = -0.00014691168
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000111100111010111011111100011;
		b = 32'b10111101000110110000111111011001;
		correct = 32'b10000101001111101100001010101100;
		#400 //2.3693198e-34 * -0.03785691 = -8.969513e-36
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100001010010011011110000011101;
		b = 32'b00101011110000101011001101010000;
		correct = 32'b11001101100110010110110111011100;
		#400 //-2.3258441e+20 * 1.3834298e-12 = -321764220.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111110011111101100100011110111;
		b = 32'b00010100111100001100011101100010;
		correct = 32'b00010011111011111010001011010111;
		#400 //0.2488135 * 2.431245e-26 = 6.0492655e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011011010001000101111010100011;
		b = 32'b01110010110001010101100000100100;
		correct = 32'b11001110100101110110000001110000;
		#400 //-1.6243319e-22 * 7.817613e+30 = -1269839900.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101111010101101100000101010001;
		b = 32'b01100011011101010010000100010001;
		correct = 32'b01010011010011011010001011000000;
		#400 //1.9531866e-10 * 4.521835e+21 = 883198800000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001111010100110000011111011110;
		b = 32'b00001010011010001000111010101101;
		correct = 32'b00011010001111111011010010111110;
		#400 //3540508200.0 * 1.1197228e-32 = 3.9643877e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101000111110000010111000110111;
		b = 32'b01100111001000010000110101010111;
		correct = 32'b01010000100111000010000111111111;
		#400 //2.7553574e-14 * 7.605471e+23 = 20955790000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110000011101000111011100101010;
		b = 32'b10001111110011010010011011101111;
		correct = 32'b11000000110000111110100010011011;
		#400 //3.0263361e+29 * -2.0229557e-29 = -6.122144
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101001000010110001000001000111;
		b = 32'b00001100010000111110111010000000;
		correct = 32'b10110101110101001101110111101001;
		#400 //-1.0507347e+25 * 1.5094025e-31 = -1.5859815e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101011010101111000011110111011;
		b = 32'b10010001111011101001000010100110;
		correct = 32'b00111101110010001101100111111000;
		#400 //-2.6056002e+26 * -3.7638926e-28 = 0.09807199
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010000110000010010100011111;
		b = 32'b10101001000101001001000111010010;
		correct = 32'b11100011101100001001100001000000;
		#400 //1.974955e+35 * -3.298908e-14 = -6.5151955e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111000011010110110110001101010;
		b = 32'b00000100011101001010100111000110;
		correct = 32'b00111101011000001111111101110110;
		#400 //1.9099823e+34 * 2.8760018e-36 = 0.054931127
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01110010111101000000110010010001;
		b = 32'b10011001000110110000101000111101;
		correct = 32'b11001100100100111100110101011110;
		#400 //9.6677804e+30 * -8.01538e-24 = -77490930.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101100111100100001011100001101;
		b = 32'b11010000001001010100111111011000;
		correct = 32'b00111101100111000101010001011101;
		#400 //-6.880613e-12 * -11093893000.0 = 0.076332785
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010001010000001001000010110101;
		b = 32'b11110100100000000111111000001111;
		correct = 32'b11000110010000010100111001011010;
		#400 //1.5190721e-28 * -8.144174e+31 = -12371.588
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000001011000111110101000100110;
		b = 32'b01011101000001000001110100010010;
		correct = 32'b11011110111010110011110100111010;
		#400 //-14.244665 * 5.9498656e+17 = -8.475384e+18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111101011101010110110111001110;
		b = 32'b11101011110111111100001110011101;
		correct = 32'b01101001110101101000011000110000;
		#400 //-0.05991917 * -5.4102843e+26 = 3.2417976e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001011010000101000110000111;
		b = 32'b10000101000101000011000111101101;
		correct = 32'b00111111000001100111110001110001;
		#400 //-7.5391653e+34 * -6.9680965e-36 = 0.5253363
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001100011100011101010011100;
		b = 32'b10101011011000101001111111011100;
		correct = 32'b11100101011110111101000100011101;
		#400 //9.231186e+34 * -8.051318e-13 = -7.4323215e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111010001101000010110111101111;
		b = 32'b11101010111100000011000000111000;
		correct = 32'b11100101101010010000110100000000;
		#400 //0.00068733 * -1.4518495e+26 = -9.978997e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001010110101010010100001011011;
		b = 32'b10101100110011011111000110001100;
		correct = 32'b10111000001010110111101001110000;
		#400 //6984749.5 * -5.8532675e-12 = -4.0883606e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011111010110101001011000100010;
		b = 32'b01011000100010010111110101101101;
		correct = 32'b11111000011010101100101011100001;
		#400 //-1.5750814e+19 * 1209374300000000.0 = -1.904863e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10000001111111110100010000010000;
		b = 32'b01111111001000010000101110100011;
		correct = 32'b11000001101000001001010101101001;
		#400 //-9.376987e-38 * 2.1406613e+38 = -20.072954
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000001101101100010010011;
		b = 32'b10110011101010101010010001110010;
		correct = 32'b00110010001100111100010011100001;
		#400 //-0.13168554 * -7.946154e-08 = 1.0463936e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010000000011000101110101001111;
		b = 32'b01100111100101110100011001000101;
		correct = 32'b11111000001001011110001100100010;
		#400 //-9419701000.0 * 1.4287472e+24 = -1.3458372e+34
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000101101110001010101110000110;
		b = 32'b10111001100000001100000001001010;
		correct = 32'b00111111101110011100000011110010;
		#400 //-5909.4404 * -0.0002455733 = 1.4512007
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000110110110101000001011100101;
		b = 32'b01101101110011110111011001001111;
		correct = 32'b11110101001100010001010011010011;
		#400 //-27969.447 * 8.025803e+27 = -2.2447727e+32
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11000011001011100001110101001001;
		b = 32'b11011100001111111000010111100000;
		correct = 32'b01100000000000100100001011100111;
		#400 //-174.1144 * -2.1563567e+17 = 3.7545274e+19
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111111000100110011110000011110;
		b = 32'b10001100111110001001100001101001;
		correct = 32'b00001100100011101111100111100101;
		#400 //-0.57513607 * -3.8302179e-31 = 2.2028964e-31
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010111000010011001111100011100;
		b = 32'b00011000100011000101100011101000;
		correct = 32'b00110000000101101110010110011101;
		#400 //151316460000000.0 * 3.6278924e-24 = 5.489598e-10
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100100111111110111100111100001;
		b = 32'b10101000011000110000111010000000;
		correct = 32'b10001101111000101001011110001011;
		#400 //1.1079509e-16 * -1.26041755e-14 = -1.3964808e-30
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011001100101111011000110111111;
		b = 32'b10100010101001001000101111110001;
		correct = 32'b00111100110000110000000110010101;
		#400 //-5337269400000000.0 * -4.4600458e-18 = 0.023804465
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100001101101100111010111101010;
		b = 32'b00110111110011100111001100001001;
		correct = 32'b00011010000100110010010011100000;
		#400 //1.2364011e-18 * 2.4610681e-05 = 3.0428675e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111100111000101110110111111001;
		b = 32'b00000010000001101111111011111100;
		correct = 32'b10111111011011110101010100110000;
		#400 //-9.426286e+36 * 9.917942e-38 = -0.9348936
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011001001110111111110111011111;
		b = 32'b10001010010011110111011110001111;
		correct = 32'b10100100000110000101101000010011;
		#400 //3307184700000000.0 * -9.989174e-33 = -3.3036042e-17
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010001110101001110101100101010;
		b = 32'b00101001001110100011011010001000;
		correct = 32'b00111011100110101110000000110111;
		#400 //114309810000.0 * 4.1347595e-14 = 0.0047264355
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010100101011110000000100111001;
		b = 32'b00010110001011010000100001101110;
		correct = 32'b10101011011011001001001100101110;
		#400 //-6013118300000.0 * 1.3977489e-25 = -8.4048296e-13
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111101110100000001101110110111;
		b = 32'b00100111000100001000101011100001;
		correct = 32'b11100101011010110000000011111010;
		#400 //-3.4577916e+37 * 2.00593e-15 = -6.9360884e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100011111111100010110000101100;
		b = 32'b00111010000110001111111110010010;
		correct = 32'b00011110100101111110011111111001;
		#400 //2.7557443e-17 * 0.0005836423 = 1.6083689e-20
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00100010101100110100110110011111;
		b = 32'b11110110000000111100011001100011;
		correct = 32'b11011001001110001001011101010111;
		#400 //4.860023e-18 * -6.681784e+32 = -3247362200000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001101111011111010011011101;
		b = 32'b01100110011000100001011001011100;
		correct = 32'b01101000101001111100001011000010;
		#400 //23.744562 * 2.6691682e+23 = 6.337823e+24
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111001100000100111110010000101;
		b = 32'b00101011100100000000110111011000;
		correct = 32'b01100101100100101101101000110010;
		#400 //8.469052e+34 * 1.0235658e-12 = 8.668631e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010000000111000000001010000100;
		b = 32'b01111001101110100011010100110100;
		correct = 32'b11001010011000101111010010000000;
		#400 //-3.0767513e-29 * 1.2085579e+35 = -3718432.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10101010110100111000010111001010;
		b = 32'b00110001110010100010001101000000;
		correct = 32'b10011101001001110000010010110010;
		#400 //-3.7573964e-13 * 5.882981e-09 = -2.2104693e-21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101100000101010011110010000001;
		b = 32'b10010001111000001111001001100010;
		correct = 32'b00111110100000110010001000111101;
		#400 //-7.216627e+26 * -3.5490348e-28 = 0.2561206
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10110110101100100100111101011011;
		b = 32'b01101101110100111010100011101011;
		correct = 32'b11100101000100110110110100010000;
		#400 //-5.3140516e-06 * 8.1881933e+27 = -4.3512483e+22
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01010010011100111101000010001010;
		b = 32'b00100010100101011110000000000000;
		correct = 32'b00110101100011101011110110110111;
		#400 //261793940000.0 * 4.06237e-18 = 1.0635039e-06
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11001110001000100111000000010011;
		b = 32'b00101001001100001001010010010011;
		correct = 32'b10110111111000000001011010100110;
		#400 //-681313500.0 * 3.9208718e-14 = -2.6713427e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110100000010000100100001011101;
		b = 32'b01101111000100011001000101011010;
		correct = 32'b01100011100110101111110010111011;
		#400 //1.2692313e-07 * 4.5051046e+28 = 5.7180195e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001111101001001000000000100;
		b = 32'b11110010000110110001111001110111;
		correct = 32'b11101100100101000011000001001101;
		#400 //0.00046646607 * -3.0724484e+30 = -1.4331929e+27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011100010010101100111100101001;
		b = 32'b10111011001011101011111101111010;
		correct = 32'b01011000000010100111000001111111;
		#400 //-2.2834288e+17 * -0.0026664422 = 608863100000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11011011010101000110101000010010;
		b = 32'b01011110111101001110111000100101;
		correct = 32'b11111010110010110011101010110010;
		#400 //-5.978932e+16 * 8.8245423e+18 = -5.2761337e+35
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011010011111010000010001000100;
		b = 32'b00111000000100100011010101111110;
		correct = 32'b10010011000100001000000101001101;
		#400 //-5.232262e-23 * 3.485893e-05 = -1.8239105e-27
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01100101111010100010111001100000;
		b = 32'b01000101011010011100000110010001;
		correct = 32'b01101011110101011101010101000111;
		#400 //1.3823615e+23 * 3740.098 = 5.1701675e+26
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101101011111111000001100100001;
		b = 32'b01010111011101011100000101000110;
		correct = 32'b01000101011101010100100101100110;
		#400 //1.4524188e-11 * 270210450000000.0 = 3924.5874
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00010101001111011001010111101011;
		b = 32'b00101101001100111110101000001001;
		correct = 32'b00000011000001010011110100100101;
		#400 //3.828651e-26 * 1.0226938e-11 = 3.9155378e-37
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111001011000011111101111101000;
		b = 32'b00000011000101110010100110110001;
		correct = 32'b10111101000001010111000001100011;
		#400 //-7.3336004e+34 * 4.442277e-37 = -0.032577883
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10111110000010010111010011010000;
		b = 32'b11001010010011111110101101001101;
		correct = 32'b01001000110111110100011110011000;
		#400 //-0.13423467 * -3406547.2 = 457276.75
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00101110011101110111101000101000;
		b = 32'b11000100101100011110111101111011;
		correct = 32'b10110011101011000000001011111000;
		#400 //5.6269794e-11 * -1423.4838 = -8.009914e-08
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011100100100001100110111010100;
		b = 32'b11000100111010010111101111100000;
		correct = 32'b00100010000001000001000101101000;
		#400 //-9.582326e-22 * -1867.8711 = 1.789855e-18
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01001001111100010001111111101110;
		b = 32'b11110100110010101001100001010111;
		correct = 32'b11111111001111101101001010101111;
		#400 //1975293.8 * -1.2840989e+32 = -2.5364725e+38
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110011001000001110100001001010;
		b = 32'b10000100001101101011111110011001;
		correct = 32'b00110111111001011011101100100100;
		#400 //-1.2748396e+31 * -2.1481975e-36 = 2.7386071e-05
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10100111001000001111111110011010;
		b = 32'b01001001110110010100000010010000;
		correct = 32'b10110001100010001010000101000100;
		#400 //-2.2343022e-15 * 1779730.0 = -3.9764547e-09
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111000110001100111100011101011;
		b = 32'b01110000001110110010010010001110;
		correct = 32'b01101001100100010001011010101011;
		#400 //9.4638985e-05 * 2.3167155e+29 = 2.1925161e+25
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10010010001001001110011010001001;
		b = 32'b01000111110001100000010000110100;
		correct = 32'b10011010011111110001101000000110;
		#400 //-5.203343e-28 * 101384.41 = -5.2753786e-23
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00110000110000101111100010111001;
		b = 32'b11110010100011010100010010010111;
		correct = 32'b11100011110101110010111001110110;
		#400 //1.4186049e-09 * -5.596199e+30 = -7.9387957e+21
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b10011110100001000001110101011010;
		b = 32'b01100111111101001100001011010001;
		correct = 32'b11000110111111001010000100001000;
		#400 //-1.3988183e-20 * 2.3117023e+24 = -32336.516
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11110111011110100000010011111100;
		b = 32'b00100000100001011011101011101100;
		correct = 32'b11011000100000101001101100100101;
		#400 //-5.0709973e+33 * 2.265477e-19 = -1148822800000000.0
					begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01111010110100011001011110010001;
		b = 32'b10110101001001100000111100010100;
		correct = 32'b11110000100001111111010010100000;
		#400 //5.441321e+35 * -6.186176e-07 = -3.3660968e+29
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