`timescale 0.01 ns/1 ps
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
		a = 32'b11001101000010101101000001110100;
		correct = 32'b00110010111101010010111110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110100111010110101000100000011;
		correct = 32'b11001011000101001010111011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101000101110100110010100011;
		correct = 32'b10101010111010001011001101011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110110011001001001011010011111;
		correct = 32'b10001001100110110110100101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010010010001001101111111001010;
		correct = 32'b01101101101110110010000000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111110100000000100011011001;
		correct = 32'b01110000001011111111011100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110111111100010000101110100;
		correct = 32'b00000001000000011101111010001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100011000110101101001111111000;
		correct = 32'b11011100111001010010110000000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100011110001001111011101010;
		correct = 32'b11110011100001110110000100010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100111001010101000110101001;
		correct = 32'b01110011000110101010111001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101000010111001011001010110;
		correct = 32'b01101010111101000110100110101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111110011001001111010101000;
		correct = 32'b11011000001100110110000101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110111000110000111001011100;
		correct = 32'b01100001000111001111000110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100100000100110011001011001;
		correct = 32'b01101011011111011001100110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001010001011001010111100011;
		correct = 32'b11100110101110100110101000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001010000011100101011100101;
		correct = 32'b10000110101111100011010100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111100011101000010010100110000;
		correct = 32'b11000011100010111101101011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111101001101000001011010011101;
		correct = 32'b00000010110010111110100101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111111010111111111010111011;
		correct = 32'b11011000000101000000000101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001010010101000110001010101;
		correct = 32'b10010110101101010111001110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011111110111100110000000010;
		correct = 32'b11110100000001000011001111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101110010111000111111011010;
		correct = 32'b10001010001101000111000000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111110101111110110010011000000;
		correct = 32'b11000001010000001001101100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111101010010101000010110001;
		correct = 32'b11011000010101101010111101001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110101010101101110111100011;
		correct = 32'b10110001010101010010001000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100001010000010011010110100100;
		correct = 32'b11011110101111101100101001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101111100010110011000000111101;
		correct = 32'b11010000011101001100111111000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100110110000100010011100100110;
		correct = 32'b11011001001111011101100011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001111111111110010001110100;
		correct = 32'b10100110000000000001101110001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011000111001001101110110111;
		correct = 32'b10101100111000110110010001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111100010111101000011111001;
		correct = 32'b01110000011101000010111100000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001000101011001101110000110000;
		correct = 32'b10110111010100110010001111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010110011000101001100101101;
		correct = 32'b10000101001100111010110011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110000000101111001001110110;
		correct = 32'b00101001111111010000110110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010100100100010110001000110010;
		correct = 32'b10101011011011101001110111001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101010011011011010010001101100;
		correct = 32'b01010101100100100101101110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001001111111101011000010001111;
		correct = 32'b01110110000000010100111101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011010101001011101000110010110;
		correct = 32'b11100101010110100010111001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100100001000001001111101000101;
		correct = 32'b01011011110111110110000010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100000111111010111100101000;
		correct = 32'b00111011111000000101000011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100010010001101111011111010;
		correct = 32'b00001011101101110010000100000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000110100011111010011011101;
		correct = 32'b10010111001011100000101100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111000111100000111101000011;
		correct = 32'b11011000111000011111000010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101010101111110101100010011111;
		correct = 32'b10010101010000001010011101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001000000101100010011111001001;
		correct = 32'b10110111111010011101100000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101000011011010100001010111;
		correct = 32'b01101010111100100101011110101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011100111000001111111010110101;
		correct = 32'b10100011000111110000000101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011110101010110111011111011;
		correct = 32'b11101100001010101001000100000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111111100111100111010110101;
		correct = 32'b10000000000011000011000101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110000011010110111111001111100;
		correct = 32'b01001111100101001000000110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011111100011001100001101101100;
		correct = 32'b10100000011100110011110010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101010101010101001011000110111;
		correct = 32'b10010101010101010110100111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110111001011110010101010110010;
		correct = 32'b11001000110100001101010101001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010110011101011100000010101000;
		correct = 32'b11101001100010100011111101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010100100010011101000111001110;
		correct = 32'b00101011011101100010111000110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110101101010101101011100010;
		correct = 32'b01100001010010101010010100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111100001001010111000010000;
		correct = 32'b10110000011110110101000111101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100111001110101010010110011000;
		correct = 32'b10011000110001010101101001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101010111100010001111010101001;
		correct = 32'b01010101000011101110000101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001001010110010000011100010010;
		correct = 32'b11110110101001101111100011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101011110110101101111001010;
		correct = 32'b10101010100001001010010000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100000011001101111111100101;
		correct = 32'b11011011111100110010000000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011110000101010111100000000;
		correct = 32'b01001100001111010101000011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100111001001101010010010101010;
		correct = 32'b10011000110110010101101101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011110111001010011001101011;
		correct = 32'b01111100001000110101100110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010011000100100010100011011000;
		correct = 32'b00101100111011011101011100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000100101100001001110001110;
		correct = 32'b10111111011010011110110001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001011000100011010111000011;
		correct = 32'b10000110100111011100101000111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111010011101100001101010010110;
		correct = 32'b11000101100010011110010101101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001111011000100110101100001000;
		correct = 32'b11110000100111011001010011110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111010000111000000101011110110;
		correct = 32'b11000101111000111111010100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100000000111101001010011000;
		correct = 32'b10011011111111000010110101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010001011000100101111001101;
		correct = 32'b00101101110100111011010000110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110101010100100001100000111;
		correct = 32'b01011001010101011011110011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011110000001111011010010101;
		correct = 32'b10001100001111110000100101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101110001000010001110001111100;
		correct = 32'b01010001110111101110001110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010110111001011100101011110101;
		correct = 32'b01101001000110100011010100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000011011111101101011110100100;
		correct = 32'b00111100100000010010100001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111011000001101110000010011100;
		correct = 32'b01000100111110010001111101100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010011000011011111001000001100;
		correct = 32'b01101100111100100000110111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111100010110011011000001000;
		correct = 32'b10001000011101001100100111110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101100111000011110111001111111;
		correct = 32'b11010011000111100001000110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011001011111001000101101000;
		correct = 32'b10101100110100000110111010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011101001100110010110010101000;
		correct = 32'b11100010110011001101001101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100111010000101111101111000111;
		correct = 32'b00011000101111010000010000111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000000001010010000010011110;
		correct = 32'b10001111111110101101111101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111111100011010111110010110;
		correct = 32'b01101000000011100101000001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111001101011110101011000001;
		correct = 32'b10001000110010100001010100111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100010100010100010000100000101;
		correct = 32'b10011101011101011101111011111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011011011110010011000110011110;
		correct = 32'b10100100100001101100111001100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101101101011100101111101100;
		correct = 32'b10010010010010100011010000010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110011000011001001000010010;
		correct = 32'b00101001100111100110110111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010010101010010110101010010000;
		correct = 32'b11101101010101101001010101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001101000010100011100001001;
		correct = 32'b11100110010111101011100011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011111100110001110001011010;
		correct = 32'b10011100000011001110001110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000010110010111111011011011100;
		correct = 32'b00111101001101000000100100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000001001111111101101011001101;
		correct = 32'b11111110110000000010010100110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111011011000001010010110000;
		correct = 32'b10110000100100111110101101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011110001111111101101000101;
		correct = 32'b01110100001110000000010010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010111011010110000110101000001;
		correct = 32'b10101000100101001111001010111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110000101100011111111010111110;
		correct = 32'b11001111010011100000000101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100010011010111110001000000101;
		correct = 32'b00011101100101000001110111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100000101010111001001010010;
		correct = 32'b10001011111010101000110110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000101001100001010001101101;
		correct = 32'b01110111010110011110101110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011000100001100010100010000;
		correct = 32'b11000100111011110011101011101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100101000101001111000001010101;
		correct = 32'b01011010111010110000111110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010100101110101011101111110011;
		correct = 32'b10101011010001010100010000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011000110111110101111100111100;
		correct = 32'b11100111001000001010000011000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000100001100011011011101001;
		correct = 32'b10010111011110011100100100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101001010110011010010101111;
		correct = 32'b10101010110101001100101101010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011011000110101011000110110;
		correct = 32'b01111100100111001010100111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100111101001010001100011001011;
		correct = 32'b00011000010110101110011100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111011010101110001101111101011;
		correct = 32'b00000100101010001110010000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110000001111110001111110111;
		correct = 32'b00101001111110000001110000001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011101100110101011101011111;
		correct = 32'b11000100010011001010100010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001101101010010101001100100;
		correct = 32'b10000110010010101101010110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000010000011011111100110010111;
		correct = 32'b01111101111100100000011001101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001001000000010101000100000010;
		correct = 32'b00110110111111101010111011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000010101111100101001110010101;
		correct = 32'b00111101010000011010110001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101100101100010011011010011000;
		correct = 32'b01010011010011101100100101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101111110100010110100101110011;
		correct = 32'b01010000001011101001011010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001101010000101000000000010100;
		correct = 32'b01110010101111010111111111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011000000010011000001100111110;
		correct = 32'b00100111111101100111110011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010000110000101011101111001111;
		correct = 32'b11101111001111010100010000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000111111111110010001100100000;
		correct = 32'b10111000000000001101110011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111010011101001001100010000110;
		correct = 32'b11000101100010110110011101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110110110100100100001101000110;
		correct = 32'b11001001001011011011110010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111001001100101100101011011001;
		correct = 32'b00000110110011010011010100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100101000010100000110001011;
		correct = 32'b01110011010111101011111001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011110010100110010110100000000;
		correct = 32'b00100001101011001101001011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011101100000111001110100000010;
		correct = 32'b10100010011111000110001011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000000000111000110010011011100;
		correct = 32'b01111111111000111001101100100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100111000110010101000101111;
		correct = 32'b11011011000111001101010111010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010100100011101001100110011011;
		correct = 32'b00101011011100010110011001100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110011000111111111011101101;
		correct = 32'b01011001100111000000000100010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110101111101101110001100000011;
		correct = 32'b11001010000010010001110011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101100001011111101011000100101;
		correct = 32'b00010011110100000010100111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110111000011001010101000101001;
		correct = 32'b00001000111100110101010111010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011010100001010011110111111;
		correct = 32'b01110100101011110101100001000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101100011100000100110010111110;
		correct = 32'b01010011100011111011001101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101011000111110010000111010010;
		correct = 32'b01010100111000001101111000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111000110010001010110110000011;
		correct = 32'b11000111001101110101001001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001001010011010100000001001011;
		correct = 32'b10110110101100101011111110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011101101001000000100100010;
		correct = 32'b01100100010010110111111011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110010110110111111011011011101;
		correct = 32'b11001101001001000000100100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011011010011111001101100010010;
		correct = 32'b10100100101100000110010011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101111011111100110001010000110;
		correct = 32'b00010000100000011001110101111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111010100010000010000100001;
		correct = 32'b11100000101011101111101111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101000110011000101001110000101;
		correct = 32'b11010111001100111010110001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111111010010101111000111001;
		correct = 32'b10110000000101101010000111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111001101101101101111000011;
		correct = 32'b11011000110010010010010000111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111011010011010010111110101001;
		correct = 32'b10000100101100101101000001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100001011011100000000011100;
		correct = 32'b01101011110100100011111111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111000110111000110100111110;
		correct = 32'b10110000111001000111001011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101000110110101010000010100;
		correct = 32'b10001010111001001010101111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101011001011101010010001101101;
		correct = 32'b10010100110100010101101110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001100110001011001111010010111;
		correct = 32'b00110011001110100110000101101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011101110111011011110010010001;
		correct = 32'b01100010001000100100001101101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110000010110011111000100001;
		correct = 32'b00000001111101001100000111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011100010110000101011001010000;
		correct = 32'b00100011101001111010100110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111011010000001001110011001;
		correct = 32'b11100000100101111110110001100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010111000100100010110111100011;
		correct = 32'b10101000111011011101001000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111111111100011110000111010101;
		correct = 32'b01000000000011100001111000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010000110110110100000101010101;
		correct = 32'b10101111001001001011111010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100000101101000001101100110;
		correct = 32'b00001011111010010111110010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001010100111101011111001100001;
		correct = 32'b10110101011000010100000110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001011100110001111001100111;
		correct = 32'b00010110100011001110000110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000100011001011110010000010;
		correct = 32'b10011111011100110100001101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000110110110101001110100101001;
		correct = 32'b00111001001001010110001011010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111110101100010101010001111;
		correct = 32'b01101000001010011101010101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011100110111100010010100110;
		correct = 32'b01111100011001000011101101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001101011101100010000100001;
		correct = 32'b11001110010100010011101111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011011010010010000100011110101;
		correct = 32'b00100100101101101111011100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010011001111011111000000000101;
		correct = 32'b00101100110000100000111111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100011110101011011010010111;
		correct = 32'b10001011100001010100100101101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000111110001001011010111010;
		correct = 32'b10011111000001110110100101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100011011011101011010100100010;
		correct = 32'b11011100100100010100101011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100110110110100011101010010;
		correct = 32'b00001011001001001011100010101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101101100101001001110110111000;
		correct = 32'b11010010011010110110001001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011101111010101011011101010;
		correct = 32'b01001100010000101010100100010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011001011100000101111110000;
		correct = 32'b10011100110100011111010000001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101010101100001000101101011001;
		correct = 32'b11010101010011110111010010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100101010011100111011010011;
		correct = 32'b00111011010101100011000100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010101001101111100110000000101;
		correct = 32'b00101010110010000011001111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000101111101111101000100110010;
		correct = 32'b11111010000010000010111011001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101011101001001110000001101100;
		correct = 32'b10010100010110110001111110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010111011000010010010111101001;
		correct = 32'b00101000100111101101101000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001110111100101110111010101000;
		correct = 32'b11110001000011010001000101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001101110000011010001101010000;
		correct = 32'b00110010001111100101110010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000110001001011110011100010010;
		correct = 32'b01111001110110100001100011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011001101110000001100111101;
		correct = 32'b01110100110010001111110011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000111111110111111000000010010;
		correct = 32'b11111000000001000000111111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101110001001111011100010101010;
		correct = 32'b01010001110110000100011101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011101110000000101011010110;
		correct = 32'b10011100010001111111010100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010000111011011001001010001111;
		correct = 32'b11101111000100100110110101110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110000100010001000011111101011;
		correct = 32'b01001111011101110111100000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111100100110110000100111111;
		correct = 32'b10001000011011001001111011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011100000101100100010011000;
		correct = 32'b11000100011111010011011101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000100000010101010011011010;
		correct = 32'b10010111011111101010101100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111100101101101001000001101010;
		correct = 32'b01000011010010010110111110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010010100010111111111100110101;
		correct = 32'b01101101011101000000000011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110011110111110100100001001;
		correct = 32'b01100001100001000001011011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011110111001011000001000100111;
		correct = 32'b10100001000110100111110111011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111110110010010110101100001111;
		correct = 32'b10000001001101101001010011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111111000101011010101111010110;
		correct = 32'b00000000111010100101010000101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100101000111010111111010010;
		correct = 32'b01101011010111000101000000101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001100010110100100111111011;
		correct = 32'b10010110011101001011011000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001010011011010111100101001110;
		correct = 32'b01110101100100101000011010110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111110011010010111111100100;
		correct = 32'b11011000001100101101000000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101000110100111101010111011100;
		correct = 32'b01010111001011000010101000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111101111010100100001110000000;
		correct = 32'b10000010000101011011110001111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110011011010100101111000110011;
		correct = 32'b11001100100101011010000111001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100110000111010101010111111;
		correct = 32'b10000011001111000101010101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111110100000010010001001010;
		correct = 32'b10001000001011111101101110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110010111000110110100100100;
		correct = 32'b10111001101000111001001011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010010011001011010010011001100;
		correct = 32'b01101101100110100101101100110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100010111110111111010011100100;
		correct = 32'b01011101000001000000101100011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100000001110111100110111110110;
		correct = 32'b01011111110001000011001000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111101111011110110001000101101;
		correct = 32'b00000010000100001001110111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110000101100010011010101010110;
		correct = 32'b11001111010011101100101010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011100011001110111000110010111;
		correct = 32'b11100011100110001000111001101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001001011101110100000100001110;
		correct = 32'b10110110100010001011111011110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010011101110000000100110110010;
		correct = 32'b01101100010001111111011001001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111101000110000101110110100011;
		correct = 32'b11000010111001111010001001011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100111111011100010001100100111;
		correct = 32'b01011000000100011101110011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101111110001101100001001111100;
		correct = 32'b00010000001110010011110110000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110100010100100001100010000;
		correct = 32'b01011001011101011011110011101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000010010010011101101100000100;
		correct = 32'b11111101101101100010010011111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001000001100010111011010010;
		correct = 32'b00010110111110011101000100101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111101100111100011100011111100;
		correct = 32'b10000010011000011100011100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000001100111111000110010110;
		correct = 32'b00110111110011000000111001101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000100000010000110011111100;
		correct = 32'b00110111011111101111001100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001110111100101101110111110;
		correct = 32'b00010110001000011010010001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110011000101100011011101010;
		correct = 32'b10111001100111010011100100010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000100001010001110110001010;
		correct = 32'b01110111011110101110001001110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101111111101100010110100110000;
		correct = 32'b01010000000010011101001011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100101101010111001101011011001;
		correct = 32'b11011010010101000110010100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000001111100101001100100100001;
		correct = 32'b01111110000011010110011011011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101100000001010001101110100110;
		correct = 32'b10010011111110101110010001011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000101010100001000010001010000;
		correct = 32'b11111010101011110111101110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011110100010010000010101111010;
		correct = 32'b11100001011101101111101010000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110110110001101001110100010101;
		correct = 32'b10001001001110010110001011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100001110101011110111010100110;
		correct = 32'b10011110001010100001000101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100100111000101011001011010;
		correct = 32'b10011011011000111010100110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001001011100110100011011101100;
		correct = 32'b10110110100011001011100100010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110010000011100111100111111010;
		correct = 32'b10001101111100011000011000000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110001101011001110000101000;
		correct = 32'b10111001110010100110001111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000000111110011011010000111100;
		correct = 32'b00111111000001100100101111000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101110000011011111011111110;
		correct = 32'b00001010001111100100000100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001000110010111011100100101100;
		correct = 32'b10110111001101000100011011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000000111111000001110000011100;
		correct = 32'b00111111000000111110001111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101111001100010001111011100;
		correct = 32'b00001010000110011101110000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110101010100111011110001000101;
		correct = 32'b11001010101011000100001110111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000001010001011001010001010101;
		correct = 32'b01111110101110100110101110101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011000110101111011000101110110;
		correct = 32'b11100111001010000100111010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011101100100000011001110110;
		correct = 32'b11101100010011011111100110001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100001001110110011011000111;
		correct = 32'b10011011110110001001100100111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001011000011010011000100010;
		correct = 32'b10010110100111100101100111011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001111000110000011111100001011;
		correct = 32'b00110000111001111100000011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011110011110010011001111111101;
		correct = 32'b10100001100001101100110000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100110101011000011011110111010;
		correct = 32'b00011001010100111100100001000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011011000001000000000101001101;
		correct = 32'b11100100111110111111111010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110000101010101010000001110011;
		correct = 32'b00001111010101010101111110001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111100100101001010010101100100;
		correct = 32'b00000011011010110101101010011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101111011001010000011101101110;
		correct = 32'b11010000100110101111100010010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001101101011100101101010011110;
		correct = 32'b10110010010100011010010101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110000000001000100110001100;
		correct = 32'b00101001111111110111011001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110100110000001011111000010011;
		correct = 32'b01001011001111110100000111101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101100000110111011100111100111;
		correct = 32'b10010011111001000100011000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001001101100001010110101101111;
		correct = 32'b11110110010011110101001010010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111000101000001010000000101;
		correct = 32'b10000000111010111110101111111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010011011010011001110111100;
		correct = 32'b10000101100100101100110001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110000010000110011111000010010;
		correct = 32'b00001111101111001100000111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001101100110111001100011111;
		correct = 32'b11001110010011001000110011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010001110000000000011001110;
		correct = 32'b00001101110001111111111100110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000101001000011010010101010;
		correct = 32'b10111111010110111100101101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111000101000011110000101111011;
		correct = 32'b00000111010111100001111010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100010001001111101010100010001;
		correct = 32'b10011101110110000010101011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100111011010101001011011111101;
		correct = 32'b10011000100101010110100100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000010001000100010000101101000;
		correct = 32'b01111101110111011101111010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011101011101011101000010010100;
		correct = 32'b10100010100010100010111101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011000100100110001010101101;
		correct = 32'b11010100111011011001110101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111100011110001000100100101111;
		correct = 32'b00000011100001110111011011010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100101111011011111110011111;
		correct = 32'b11011011010000100100000001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100101101101010111010110000110;
		correct = 32'b00011010010010101000101001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000000011100001011000000100;
		correct = 32'b10011111111100011110100111111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001010110001010010110001011010;
		correct = 32'b10110101001110101101001110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010110011010111110000000111001;
		correct = 32'b01101001100101000001111111000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111100101011111110111101010110;
		correct = 32'b11000011010100000001000010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000111110100001001010011101111;
		correct = 32'b00111000001011110110101100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010011101100101111000111011110;
		correct = 32'b00101100010011010000111000100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101110010101111000010110101101;
		correct = 32'b01010001101010000111101001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000001010101100110001101010001;
		correct = 32'b11111110101010011001110010101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101100111100111011100101010111;
		correct = 32'b01010011000011000100011010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011000111001001110111110100011;
		correct = 32'b10100111000110110001000001011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101001011110001100111110000001;
		correct = 32'b11010110100001110011000001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000000010100010110001011001;
		correct = 32'b10000111111101011101001110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000010100010011111001111011111;
		correct = 32'b11111101011101100000110000100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001010110010001111011011001111;
		correct = 32'b01110101001101110000100100110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011110011010011111001100100;
		correct = 32'b11101100001100101100000110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011000011111100001101111001;
		correct = 32'b01100100111100000011110010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101100101000010111100001000001;
		correct = 32'b11010011010111101000011110111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110110100011001100011010111110;
		correct = 32'b01001001011100110011100101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000110110100111011000010000;
		correct = 32'b11011111001001011000100111101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100001000011101111001100000110;
		correct = 32'b11011110111100010000110011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001101010000110010100011100001;
		correct = 32'b01110010101111001101011100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100101100010101100100100001101;
		correct = 32'b01011010011101010011011011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000000101101101110000110110;
		correct = 32'b01110111111010010010001111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001110001111000100000010000101;
		correct = 32'b11110001110000111011111101111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010011101100111011001110010010;
		correct = 32'b01101100010011000100110001101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010100001011111110111101110110;
		correct = 32'b00101011110100000001000010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110110100111110000001000100000;
		correct = 32'b11001001011000001111110111011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010010011100001110110110000001;
		correct = 32'b10101101100011110001001001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011011111111110010010101000;
		correct = 32'b11000100100000000001101101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011100110110000000010001111110;
		correct = 32'b11100011001001111111101110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111110100000110010011010100001;
		correct = 32'b01000001011111001101100101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001111101010010101101101110111;
		correct = 32'b11110000010101101010010010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010100000010001100001001000011;
		correct = 32'b11101011111101110011110110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100000011000111010101000011;
		correct = 32'b10011011111100111000101010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000010000110100100111011100;
		correct = 32'b00110111101111001011011000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111010011010101001101011001;
		correct = 32'b10001000101100101010110010100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000111101111000110010010011110;
		correct = 32'b10111000010000111001101101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000001000001011000000110110110;
		correct = 32'b11111110111110100111111001001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110101000111100001010110001;
		correct = 32'b00101001010111000011110101001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010001100111110000011001111001;
		correct = 32'b00101110011000001111100110000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100010011100110111001101110111;
		correct = 32'b00011101100011001000110010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111100111000001010111010010010;
		correct = 32'b00000011000111110101000101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110001000100010110010100001000;
		correct = 32'b00001110111011101001101011110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110011110110100010110001011;
		correct = 32'b10111001100001001011101001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111001000001111100100110011;
		correct = 32'b10110000110111110000011011001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100100001100011001010110110;
		correct = 32'b11111011011110011100110101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110110111010110001110001001011;
		correct = 32'b00001001000101001110001110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000110011110001100101110010000;
		correct = 32'b01111001100001110011010001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011100000011000011010010010;
		correct = 32'b11110100011111100111100101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000000010001100000001111100000;
		correct = 32'b00111111101110011111110000011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111111000101000111001011001;
		correct = 32'b11100000000111010111000110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001001001011010110001010001;
		correct = 32'b11001110110110100101001110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000010001010011100000010110010;
		correct = 32'b11111101110101100011111101001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001010111010001010000101110010;
		correct = 32'b10110101000101110101111010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111101011001100011000000000010;
		correct = 32'b11000010100110011100111111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110110110111001001000001100;
		correct = 32'b00010001001001000110110111110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111111010000000100011011101111;
		correct = 32'b01000000101111111011100100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111110101001001001011011011;
		correct = 32'b11011000001010110110110100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101000001010011001011100111101;
		correct = 32'b01010111110101100110100011000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010110110101010110110100101001;
		correct = 32'b10101001001010101001001011010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111100101001011001110010101000;
		correct = 32'b11000011010110100110001101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111110110101011010100111000;
		correct = 32'b11100000001001010100101011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000010010110111100010111100;
		correct = 32'b11011111101101001000011101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011011011110101001110101111;
		correct = 32'b01111100100100001010110001010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111111111110100000011111100;
		correct = 32'b11100000000000001011111100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110011011111001101010001100010;
		correct = 32'b00001100100000110010101110011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011001100100110010000101011101;
		correct = 32'b00100110011011001101111010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000111001111110111011000101100;
		correct = 32'b01111000110000001000100111010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101111100111000010100001100;
		correct = 32'b10001010000011000111101011110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010001000100010100010010010100;
		correct = 32'b01101110111011101011101101101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000001100100011000010011011;
		correct = 32'b10001111110011011100111101100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110000110000000111001111010;
		correct = 32'b01100001111001111111000110000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010011011010101000111111100;
		correct = 32'b00010101100100101010111000000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101111000001111101010100111000;
		correct = 32'b10010000111110000010101011000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111100001110010011110100001001;
		correct = 32'b11000011110001101100001011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101000110111011011101100101010;
		correct = 32'b00010111001000100100010011010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000010010100101100111101011;
		correct = 32'b10010111101101011010011000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101100010111111010111100111;
		correct = 32'b10001010011101000000101000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100101111011101011001100111;
		correct = 32'b10000011010000100010100110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111011011100111111110111010101;
		correct = 32'b10000100100011000000001000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011110101111000000001101101;
		correct = 32'b10101100001010000111111110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101111111101010101101001110;
		correct = 32'b10101010000000010101010010110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010110011100010111101010101;
		correct = 32'b00001101001100011101000010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111001000010110000001001101001;
		correct = 32'b01000110111101001111110110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011001001000111000011100000000;
		correct = 32'b01100110110111000111100011111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111000001111010100101000101;
		correct = 32'b10000000111110000101011010111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111101111010110111011100001000;
		correct = 32'b01000010000101001000100011110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110110110101110011000110110010;
		correct = 32'b01001001001010001100111001001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101110001011000111000011100;
		correct = 32'b10001010001110100111000111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000010000111111001001011100111;
		correct = 32'b10111101111000000110110100011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110011011010010001100011101;
		correct = 32'b10110001100100101101110011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101000011101100110011100001;
		correct = 32'b10001010111100010011001100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001101000001100101001001010;
		correct = 32'b10100110010111110011010110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000011111111101101110111100;
		correct = 32'b10011111100000000010010001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110000011110011101010101111101;
		correct = 32'b01001111100001100010101010000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010110100011010100011001100001;
		correct = 32'b10101001011100101011100110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101010010110101000111110010;
		correct = 32'b00001010101101001010111000001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100111010111010110001000010010;
		correct = 32'b10011000101000101001110111101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110010010001010100011001011;
		correct = 32'b01100001101101110101011100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101011110000111010001001000111;
		correct = 32'b01010100001111000101110110111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000010011110000000010110011101;
		correct = 32'b00111101100001111111101001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010100100110100011100111010;
		correct = 32'b00010101011011001011100011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101100010110000111001010011001;
		correct = 32'b10010011101001111000110101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100110101111101011010101010111;
		correct = 32'b00011001010000010100101010101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010111101111101111111100010100;
		correct = 32'b00101000010000010000000011101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000101011101010001010100000;
		correct = 32'b00110111010100010101110101011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110000011011000101001100110;
		correct = 32'b01011001111100100111010110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001000011000110101011001010111;
		correct = 32'b10110111100111001010100110101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101101001001101101010010010;
		correct = 32'b00001010010110110010010101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011000101100001000000101011111;
		correct = 32'b11100111010011110111111010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011001001110010001110111000100;
		correct = 32'b01100110110001101110001000111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100100101011101001111011110000;
		correct = 32'b00011011010100010110000100001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010101100111100101100001100;
		correct = 32'b01100101010011000011010011110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010110100010111101011100110001;
		correct = 32'b10101001011101000010100011001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011100111100110111000101101;
		correct = 32'b11110100011000011001000111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011101110001100001111101000;
		correct = 32'b11010100010001110011110000010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000110000011011001111100101110;
		correct = 32'b00111001111100100110000011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000011100001100110111100001001;
		correct = 32'b00111100011110011001000011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101100001100111101101101000;
		correct = 32'b10010010011110011000010010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100111011101000100110010000;
		correct = 32'b11110011000100010111011001101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100101010101001110011101111011;
		correct = 32'b11011010101010110001100010000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110010100011010010011101011;
		correct = 32'b00010001101011100101101100010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000010000010101101010000011011;
		correct = 32'b01111101111101010010101111100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101000110011100001101001100101;
		correct = 32'b00010111001100011110010110011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000001001010110101001010110010;
		correct = 32'b00111110110101001010110101001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011101110100000100010100010;
		correct = 32'b11110100010001011111011101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110101110101010110110000111;
		correct = 32'b00010001010001010101001001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100101100000000101000100100110;
		correct = 32'b00011010011111111010111011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111110110101011001000101100001;
		correct = 32'b10000001001010100110111010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100011100111011110001111011011;
		correct = 32'b01011100011000100001110000100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110100110011101001101101111001;
		correct = 32'b11001011001100010110010010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110010001110001101000111110100;
		correct = 32'b11001101110001110010111000001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101101100101100101011111100101;
		correct = 32'b01010010011010011010100000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001001011111100010010110010101;
		correct = 32'b01110110100000011101101001101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101000101011111000100011011001;
		correct = 32'b11010111010100000111011100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011101000111111110010011101;
		correct = 32'b11101100010111000000001101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100111110010010000001011100;
		correct = 32'b11111011000001101101111110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011110110010010000101101101;
		correct = 32'b11010100001001101101111010010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000000000001000001111010001010;
		correct = 32'b00111111111110111110000101110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101111101010001111101000101000;
		correct = 32'b00010000010101110000010111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101111010000110011001100100;
		correct = 32'b10001010000101111001100110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101111111111001011100011101;
		correct = 32'b10101010000000000110100011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011100000100010110110100010;
		correct = 32'b01001100011111011101001001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010110010101001000110000100100;
		correct = 32'b11101001101010110111001111011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111010111111010110100100110110;
		correct = 32'b11000101000000101001011011001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000000110111100101111101001101;
		correct = 32'b01111111001000011010000010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101100110100000010010111111;
		correct = 32'b10010010011001011111101101000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100000111111110100111011000010;
		correct = 32'b00011111000000001011000100111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110111000000101001100000001010;
		correct = 32'b11001000111111010110011111110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101011011011011110101001100;
		correct = 32'b00001010100100100100001010110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111101101001000011101111000000;
		correct = 32'b10000010010110111100010000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101000011110110000010110110111;
		correct = 32'b11010111100001001111101001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101100000000110101110011101000;
		correct = 32'b00010011111111001010001100010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111101101001010100101010001001;
		correct = 32'b00000010010110101011010101110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100111000000110110110110011;
		correct = 32'b10001011000111111001001001001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111011111110100111010110110;
		correct = 32'b01101000100000001011000101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100110100111111011000000111011;
		correct = 32'b11011001011000000100111111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011100101011100010011011011101;
		correct = 32'b00100011010100011101100100100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001110000111000010101101010;
		correct = 32'b10010110001111000111101010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010110011010010110111011111110;
		correct = 32'b11101001100101101001000100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100001111001011010101000111110;
		correct = 32'b01011110000110100101010111000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001100100111100101100101111111;
		correct = 32'b00110011011000011010011010000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101110011001010110011101111010;
		correct = 32'b01010001100110101001100010000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101010000110110100011000000110;
		correct = 32'b11010101111001001011100111111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011010110100100110000011111111;
		correct = 32'b00100101001011011001111100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001011001010001110000110110;
		correct = 32'b00010110100110101110001111001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011100011110001000100101010101;
		correct = 32'b00100011100001110111011010101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111110101001001100110100111010;
		correct = 32'b10000001010110110011001011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011011001100001111111110110;
		correct = 32'b11101100100110011110000000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101010001101101101010101000110;
		correct = 32'b11010101110010010010101010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111111111101100001110101100011;
		correct = 32'b01000000000010011110001010011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101110101111101110010001000110;
		correct = 32'b01010001010000010001101110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000000001100000000110111001;
		correct = 32'b01100111111110011111111001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010000110011101000100101000110;
		correct = 32'b11101111001100010111011010111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111110111000100000101000000;
		correct = 32'b10000000001000111011111010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110010001000100111110110111;
		correct = 32'b10110001101110111011000001001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000011100001010101100010011;
		correct = 32'b10111111100011110101010011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111110101010000101001100011011;
		correct = 32'b01000001010101111010110011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101111110000111011101100100111;
		correct = 32'b01010000001111000100010011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111101010010000100110000100011;
		correct = 32'b10000010101101111011001111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000000010101010000001010111011;
		correct = 32'b01111111101010101111110101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110011110010100101101111111;
		correct = 32'b10110001100001101011010010000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010001000111000011000011000000;
		correct = 32'b01101110111000111100111100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100111011111101011011001100101;
		correct = 32'b01011000100000010100100110011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011111000110101111000100110100;
		correct = 32'b10100000111001010000111011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100110101100010010100100010;
		correct = 32'b10011011001010011101101011011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101000001100001000010111000101;
		correct = 32'b01010111110011110111101000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101000111101011100000100110;
		correct = 32'b10010010111000010100011111011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010001010100011101100011010;
		correct = 32'b10000101110101011100010011100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011000001100000000010100001111;
		correct = 32'b00100111110011111111101011110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010010011100101100010100011011;
		correct = 32'b11101101100011010011101011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110101100010100000010010011111;
		correct = 32'b01001010011101011111101101100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000011010110010001110100001;
		correct = 32'b10011111100101001101110001011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011110100000001000011111100100;
		correct = 32'b00100001011111110111100000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101100010010101111001101010011;
		correct = 32'b00010011101101010000110010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100111000110011101101110000110;
		correct = 32'b11011000111001100010010001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010011110011101000101101010;
		correct = 32'b00001101100001100010111010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010101001011101100101001001111;
		correct = 32'b11101010110100010011010110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101001100001100010010000000111;
		correct = 32'b01010110011110011101101111111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100111011111101100000111000;
		correct = 32'b11111011000100000010011111000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111111000011001101101111110011;
		correct = 32'b00000000111100110010010000001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101111101010001001110101100001;
		correct = 32'b00010000010101110110001010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101101011001111100101101110001;
		correct = 32'b00010010100110000011010010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010010110011111100001000011001;
		correct = 32'b10101101001100000011110111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111101100101110000000000110;
		correct = 32'b01110000010011010001111111111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010111011011000101001111001010;
		correct = 32'b11101000100100111010110000110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100000001001000111010111001;
		correct = 32'b10011011111110110111000101000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110100101001111101011101001;
		correct = 32'b00101001011010110000010100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000111101001100000110000001001;
		correct = 32'b01111000010110011111001111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000111011010011110100000111011;
		correct = 32'b11111000100101100001011111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110011000001111001110001110;
		correct = 32'b00000001100111110000110001110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100010101111011000001011010011;
		correct = 32'b00011101010000100111110100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111011000001000111011110000010;
		correct = 32'b11000100111110111000100001111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100101011110111001001100001011;
		correct = 32'b10011010100001000110110011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000101010100010100110011111000;
		correct = 32'b10111010101011101011001100000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100010000010010100111101101100;
		correct = 32'b00011101111101101011000010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011000101001100001000110101;
		correct = 32'b01001100111010110011110111001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011100101101001100101001011010;
		correct = 32'b10100011010010110011010110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110010010010000011111100011111;
		correct = 32'b10001101101101111100000011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101110001010000010110110111000;
		correct = 32'b10010001110101111101001001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010101101001000011011001011;
		correct = 32'b00010101010010110111100100110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011110101010100011110010000101;
		correct = 32'b11100001010101011100001101111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000110000100110000010000010;
		correct = 32'b01110111001111011001111101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001110110111000110111000101000;
		correct = 32'b11110001001000111001000111010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111100000111011000000000000;
		correct = 32'b01110000011111000100111111111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010101011101000101000111100001;
		correct = 32'b11101010100010111010111000011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010011010100101010101011000;
		correct = 32'b00010101100101011010101010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001110011100101100100010110100;
		correct = 32'b11110001100011010011011101001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100001000100010010010110000;
		correct = 32'b10001011110111011101101101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011001110011110001001100010011;
		correct = 32'b01100110001100001110110011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100010110110000001001111110;
		correct = 32'b00001011101001001111110110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111101010110010100111100101;
		correct = 32'b01110000010101001101011000011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101111110100100110111011010;
		correct = 32'b00001010000001011011001000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011111100010100000110001000;
		correct = 32'b10101100000011101011111001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010100100000001000011100100011;
		correct = 32'b11101011011111110111100011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001010011001110010000010101100;
		correct = 32'b10110101100110001101111101010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010000001110111000111001001011;
		correct = 32'b01101111110001000111000110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011101111001101010010010000010;
		correct = 32'b10100010000110010101101101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011000011111000000011011001;
		correct = 32'b01100100111100000111111100100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000111000000011110101010000000;
		correct = 32'b01111000111111100001010101111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010101000011010001101000010011;
		correct = 32'b11101010111100101110010111101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000001111000010011110110100;
		correct = 32'b10001111110000111101100001001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101001001111101100111111101001;
		correct = 32'b11010110110000010011000000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101001001110001110001111111010;
		correct = 32'b01010110110001110001110000000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110011100011000111000100111110;
		correct = 32'b00001100011100111000111011000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010001111000110100011100000101;
		correct = 32'b11101110000111001011100011111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001101101011100110101001010001;
		correct = 32'b00110010010100011001010110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111100111000101111111000000;
		correct = 32'b11100000011000111010000000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011001011111011010100100001001;
		correct = 32'b01100110100000100101011011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111101011001001010001111101101;
		correct = 32'b10000010100110110101110000010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011100100100100000010001100;
		correct = 32'b11110100011011011011111101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101000110011100100011011001111;
		correct = 32'b01010111001100011011100100110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110110001000000011100111010;
		correct = 32'b00000001001110111111100011000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000110001010011101011010100110;
		correct = 32'b00111001110101100010100101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010101010100010110011110000111;
		correct = 32'b00101010101011101001100001111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011011011010111101101001100110;
		correct = 32'b11100100100101000010010110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000100010101101010110000101;
		correct = 32'b00110111011101010010101001111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010001110000011000100010111100;
		correct = 32'b10101110001111100111011101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111010111011011000110011110101;
		correct = 32'b00000101000100100111001100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101110100111101000100111100111;
		correct = 32'b11010001011000010111011000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011101000101011001011110111000;
		correct = 32'b10100010111010100110100001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000001100010010010010111011;
		correct = 32'b10111111110011101101101101000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101011111001010111111100010;
		correct = 32'b00001010100000110101000000011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100011100101110101000110001;
		correct = 32'b11111011100011010001010111001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001001110010110101011100111111;
		correct = 32'b01110110001101001010100011000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110010001100100100100000000011;
		correct = 32'b10001101110011011011011111111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010001110010001001010010101101;
		correct = 32'b10101110001101110110101101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100010101010010100011010100001;
		correct = 32'b10011101010101101011100101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011011001110100100110101100111;
		correct = 32'b00100100110001011011001010011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100011110010010010011101010000;
		correct = 32'b00011100001101101101100010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111011011111100100001100000110;
		correct = 32'b00000100100000011011110011111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011111010011101000010110011110;
		correct = 32'b00100000101100010111101001100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101100110110010100110010011110;
		correct = 32'b10010011001001101011001101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010001110001110001010110100100;
		correct = 32'b10101110001110001110101001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010110011001000100100101100;
		correct = 32'b01100101001100110111011011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100100010001110001100101111;
		correct = 32'b00111011011101110001110011010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011011011011110010010101110111;
		correct = 32'b00100100100100001101101010001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000010100101001000000011111100;
		correct = 32'b11111101011010110111111100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010110000111000001111110001;
		correct = 32'b01100101001111000111110000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001101111011010000110011111011;
		correct = 32'b01110010000100101111001100000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110100000101001101110011101111;
		correct = 32'b11001011111010110010001100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000001010110011100111111011010;
		correct = 32'b11111110101001100011000000100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101111101001011111000100110101;
		correct = 32'b10010000010110100000111011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111110010001000101111000000010;
		correct = 32'b11000001101110111010000111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000001111100001001001111111;
		correct = 32'b10001111110000011110110110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101100001000011111100010010101;
		correct = 32'b00010011110111100000011101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000111010001111001100000011100;
		correct = 32'b01111000101110000110011111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110000010010100101111101001;
		correct = 32'b10111001111101101011010000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111001101101011010111110011000;
		correct = 32'b01000110010010100101000001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110100000000111010110101010011;
		correct = 32'b00001011111111000101001010101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110001110000111100100110000001;
		correct = 32'b00001110001111000011011001111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100101101110110100011110000110;
		correct = 32'b11011010010001001011100001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100111100000011111110011101;
		correct = 32'b10000011000011111100000001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010011111110110001000000110100;
		correct = 32'b00101100000001001110111111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000001110000100011111011100;
		correct = 32'b01110111110001111011100000100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110111101110110111000100100000;
		correct = 32'b00001000010001001000111011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111011100010111000000111110001;
		correct = 32'b01000100011101000111111000001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110101011011100111011010011100;
		correct = 32'b11001010100100011000100101100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000101111011011000111101110011;
		correct = 32'b01111010000100100111000010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010011101101000010100001101;
		correct = 32'b10000101100010010111101011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011110100011000100100011100000;
		correct = 32'b11100001011100111011011100011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001011011110110110000011100;
		correct = 32'b11001110100100001001001111100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010010100001010000111001110111;
		correct = 32'b01101101011110101111000110001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101010111111011100111110110110;
		correct = 32'b01010101000000100011000001001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000110101000000010100011010110;
		correct = 32'b01111001010111111101011100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101001010111011010111101110010;
		correct = 32'b11010110101000100101000010001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100110100100110000010010101000;
		correct = 32'b00011001011011001111101101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011101111001011011011011011000;
		correct = 32'b00100010000110100100100100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001000110011101111111111100100;
		correct = 32'b01110111001100010000000000011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101110110100000111011010101101;
		correct = 32'b11010001001011111000100101010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001001101011011100110110100111;
		correct = 32'b00110110010100100011001001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110110010101101001101110011111;
		correct = 32'b01001001101010010110010001100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011101011011111000000111010111;
		correct = 32'b11100010100100000111111000101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010000101001000110000010101;
		correct = 32'b00001101111010110111001111101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010001010111011010110111011001;
		correct = 32'b10101110101000100101001000100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110001000011111111010011010011;
		correct = 32'b10001110111100000000101100101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000111111110110101010101110011;
		correct = 32'b01111000000001001010101010001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111111111001011110000011111110;
		correct = 32'b01000000000110100001111100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110011010110101111011011011111;
		correct = 32'b00001100101001010000100100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100100101110110110100100011;
		correct = 32'b11111011011010001001001011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001010000111010101001100110;
		correct = 32'b10000110101111000101010110011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000001010111011010010111010;
		correct = 32'b10111111110101000100101101000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011110101010000001100110101001;
		correct = 32'b00100001010101111110011001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100101110111011011001111001111;
		correct = 32'b00011010001000100100110000110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100001100000101110100100011111;
		correct = 32'b01011110011111010001011011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000111101110011001001000010;
		correct = 32'b10001111000010001100110110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000000101101001011101111101;
		correct = 32'b10010111111010010110100010000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011110000001010111110111111;
		correct = 32'b10001100001111110101000001000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110010011010010000010100010010;
		correct = 32'b10001101100101101111101011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010100010110100101100110001101;
		correct = 32'b10101011101001011010011001110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110001101000011000110010101001;
		correct = 32'b00001110010111100111001101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000110100100010000111010001;
		correct = 32'b11011111001011011101111000101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000011011001000111010110000;
		correct = 32'b01100111100100110111000101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000010110010100000011001001;
		correct = 32'b10011111101001101011111100110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100101011000011111100011000110;
		correct = 32'b10011010100111100000011100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001000011010010110010101000011;
		correct = 32'b00110111100101101001101010111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101101010100001000100011110001;
		correct = 32'b00010010101011110111011100001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000011001101111010100111101110;
		correct = 32'b11111100110010000101011000010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101100010110110110001101001001;
		correct = 32'b01010011101001001001110010110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101011100001001001100110001011;
		correct = 32'b00010100011110110110011001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001110111111100101010011101;
		correct = 32'b10000110001000000011010101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111110011000101101000110010011;
		correct = 32'b10000001100111010010111001101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000011011011100011111011001111;
		correct = 32'b10111100100100011100000100110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001010111110001000110100011100;
		correct = 32'b00110101000001110111001011100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010000011110000111100000101101;
		correct = 32'b00101111100001111000011111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111101100111100001010100001100;
		correct = 32'b11000010011000011110101011110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001101011001001101011001101011;
		correct = 32'b01110010100110110010100110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010011010110011101010001011100;
		correct = 32'b01101100101001100010101110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110000101111110001000111111;
		correct = 32'b10110001111010000001110111000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110110010100001000111111111011;
		correct = 32'b10001001101011110111000000000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110100010101010001101101001;
		correct = 32'b10110001011101010101110010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000000000001010000101111100011;
		correct = 32'b01111111111110101111010000011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101000111101010001011010011101;
		correct = 32'b00010111000010101110100101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011010111001000101100000110000;
		correct = 32'b00100101000110111010011111001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000101101110000110100001100111;
		correct = 32'b10111010010001111001011110011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100001100000110001011100101;
		correct = 32'b00111011110011111001110100011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001100101111101001000010101010;
		correct = 32'b00110011010000010110111101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010010100100101010011101001111;
		correct = 32'b10101101011011010101100010110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101000000010101101100001101010;
		correct = 32'b00010111111101010010011110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001110100001100010111111000010;
		correct = 32'b01110001011110011101000000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000010100110101010000100101;
		correct = 32'b11011111101011001010101111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100110010011100111010110110;
		correct = 32'b10011011001101100011000101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011110010111101101100000011001;
		correct = 32'b11100001101000010010011111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111100000100010000100111111111;
		correct = 32'b00000011111011101111011000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110010110111110010010101010110;
		correct = 32'b11001101001000001101101010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011110100110111000001110111;
		correct = 32'b10011100001011001000111110001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101101101010111010001001000011;
		correct = 32'b11010010010101000101110110111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011001011100100111001100110011;
		correct = 32'b01100110100011011000110011001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011100101011000111010100000010;
		correct = 32'b11100011010100111000101011111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100001000110110100011101100;
		correct = 32'b10011011110111001001011100010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001100111111101101000000001101;
		correct = 32'b10110011000000010010111111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011101001101110111001111001;
		correct = 32'b01111100010110010001000110000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010101110101001110000010001;
		correct = 32'b00001101010001010110001111101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010011111001100101011011011;
		correct = 32'b00101101100000110011010100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111010000010101101011011000;
		correct = 32'b10000000101111101010010100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000101100000111100100010100001;
		correct = 32'b00111010011111000011011101011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101101010011011001110100010011;
		correct = 32'b01010010101100100110001011101100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100100110001010011001101101;
		correct = 32'b00111011011001110101100110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101110101100110101100100110;
		correct = 32'b10001010001010011001010011011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010000100000010110100101010010;
		correct = 32'b00101111011111101001011010101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000101000011100011101010101111;
		correct = 32'b11111010111100011100010101010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111001001001111101110001001110;
		correct = 32'b00000110110110000010001110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100101111010110000110011000;
		correct = 32'b11011011010000101001111001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000011011110001000001011100011;
		correct = 32'b11111100100001110111110100011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111011011011101101010001101110;
		correct = 32'b00000100100100010010101110010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011110100100100000001101101;
		correct = 32'b11101100001011011011111110010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001101110001010100100000101110;
		correct = 32'b11110010001110101011011111010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100100001110000111010100110100;
		correct = 32'b00011011110001111000101011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101101001111010111000001011101;
		correct = 32'b00010010110000101000111110100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100101110101010100100101110;
		correct = 32'b10000011010001010101011011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001001011011011010101110001000;
		correct = 32'b01110110100100100101010001110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110100000011111110100000100101;
		correct = 32'b11001011111100000001011111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101111110000001111101000001001;
		correct = 32'b01010000001111110000010111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111001000110110001111001111110;
		correct = 32'b00000110111001001110000110000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101111000000101010101110100010;
		correct = 32'b10010000111111010101010001011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100110110100010000000000100011;
		correct = 32'b00011001001011101111111111011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011111111011100110011100010101;
		correct = 32'b00100000000100011001100011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110000001110000000010101010;
		correct = 32'b01011001111110001111111101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100011101010111110100100001011;
		correct = 32'b00011100010101000001011011110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101000101101100010001011001000;
		correct = 32'b01010111010010011101110100110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110111110100011010011100110100;
		correct = 32'b10001000001011100101100011001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100110011111001110100001010000;
		correct = 32'b10011001100000110001011110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011111101110011011100110101;
		correct = 32'b10001100000010001100100011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010110110110101000101011010;
		correct = 32'b00101101001001001010111010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100011111101010010001100100;
		correct = 32'b10011011100000010101101110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000100011010010100100000001011;
		correct = 32'b10111011100101101011011111110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011101000111101110000000010100;
		correct = 32'b00100010111000010001111111101011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001101010101110001101011101;
		correct = 32'b10100110010101010001110010100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110000100011101000010111101;
		correct = 32'b10111001111011100010111101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011011010100010110011011111100;
		correct = 32'b10100100101011101001100100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100110011101011011001100010010;
		correct = 32'b01011001100010100100110011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001010111101011111010000011;
		correct = 32'b11001110101000010100000101111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011000101011110101111000110;
		correct = 32'b01110100111010100001010000111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011011000000011100110000010000;
		correct = 32'b00100100111111100011001111101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110000011011110110010110101001;
		correct = 32'b00001111100100001001101001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011011100001110011110011000110;
		correct = 32'b00100100011110001100001100111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100011011110110010101101101010;
		correct = 32'b01011100100001001101010010010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001010010010100011011110000110;
		correct = 32'b11110101101101011100100001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100000101100101000101000101011;
		correct = 32'b01011111010011010111010111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001100001000100110111100010;
		correct = 32'b10010110011110111011001000011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000100001101010001001100100;
		correct = 32'b01100111011110010101110110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110001000111011010111011111111;
		correct = 32'b01001110111000100101000100000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001010110000010001111111010;
		correct = 32'b10100110101001111101110000000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000111101000011000001100011;
		correct = 32'b10000111000010111100111110011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000111010110011000111101101;
		correct = 32'b11011111000101001100111000010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110010100010001100111000000111;
		correct = 32'b00001101011101110011000111111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010001100110110001100111001000;
		correct = 32'b10101110011001001110011000110111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010001111010100001110001011;
		correct = 32'b00101101110000101011110001110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011010111111111101010000110100;
		correct = 32'b11100101000000000010101111001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000011000101111111011010010;
		correct = 32'b01100111100111010000000100101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100110001010100100110101001010;
		correct = 32'b10011001110101011011001010110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101100001101110010001001111011;
		correct = 32'b01010011110010001101110110000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000011001101011001001010111100;
		correct = 32'b10111100110010100110110101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001111111100110101110111000;
		correct = 32'b10100110000000011001010001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000101001000110001111000101;
		correct = 32'b10010111010110111001110000111010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110110010000011001010111000011;
		correct = 32'b01001001101111100110101000111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011111110111011000011011111;
		correct = 32'b01110100000001000100111100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110010000100011001010000000;
		correct = 32'b00010001101111011100110101111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100010010100010111100101110;
		correct = 32'b00111011101101011101000011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110110001001100011000101001101;
		correct = 32'b00001001110110011100111010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101011001100010100100101101100;
		correct = 32'b10010100110011101011011010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011011111100100010011100010;
		correct = 32'b10101100100000011011101100011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001001010010000110000011000;
		correct = 32'b10000110110101101111001111100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100010000010001000110110011011;
		correct = 32'b10011101111101110111001001100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011111001110111011111111101;
		correct = 32'b10011100000110001000100000000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100101110000011010001000110010;
		correct = 32'b10011010001111100101110111001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010110010011100101110011011010;
		correct = 32'b00101001101100011010001100100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011111011001010110011000100;
		correct = 32'b10011100000100110101001100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100010100001010101111001001;
		correct = 32'b10011011101011110101010000110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110101001011010000011110110001;
		correct = 32'b11001010110100101111100001001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101110011010111110011010101110;
		correct = 32'b10010001100101000001100101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001101110110011110101011010;
		correct = 32'b11001110010001001100001010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101001000000010011101011100;
		correct = 32'b00001010110111111101100010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001110110000110101000111011;
		correct = 32'b11100110001001111001010111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010000110001000000010011110001;
		correct = 32'b00101111001110111111101100001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110110011011100010110011110011;
		correct = 32'b11001001100100011101001100001100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101010100011011100010000001101;
		correct = 32'b01010101011100100011101111110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010100001000001011111100001101;
		correct = 32'b11101011110111110100000011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101001010110111000111101110101;
		correct = 32'b10010110101001000111000010001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011011011011110010001001010;
		correct = 32'b01100100100100100001101110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111010101010110000000011011000;
		correct = 32'b01000101010101001111111100100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111011100100010110010101110001;
		correct = 32'b10000100011011101001101010001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001001110001101111010100110111;
		correct = 32'b10110110001110010000101011001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001001011111101110010101000;
		correct = 32'b10111110110100000010001101010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000110111010001101100100011001;
		correct = 32'b01111001000101110010011011100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000000110010000010110001100100;
		correct = 32'b01111111001101111101001110011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000010100001000000011000100000;
		correct = 32'b11111101011110111111100111011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000000010010111111000100000011;
		correct = 32'b00111111101101000000111011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100110110110000011101001110001;
		correct = 32'b00011001001001111100010110001110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100001111010001110111110110;
		correct = 32'b10000011110000101110001000001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110111100110010111101111111110;
		correct = 32'b01001000011001101000010000000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011011111111110111100101100;
		correct = 32'b11010100100000000001000011010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001011111001101110001100110000;
		correct = 32'b11110100000110010001110011001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001110001001011100010011101;
		correct = 32'b11001110001110110100011101100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001111101101110100011110101;
		correct = 32'b10111110000010010001011100001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011011111111000100011011110;
		correct = 32'b01001100100000000111011100100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101011100001000110001101100110;
		correct = 32'b01010100011110111001110010011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100001000111110110111000001;
		correct = 32'b01110011110111000001001000111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111100110011110101010110110;
		correct = 32'b10110000011001100001010101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100001000011100100110101011;
		correct = 32'b11111011110111100011011001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000001100000111010001000010;
		correct = 32'b10000111110011111000101110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011110111100011001110111110;
		correct = 32'b10001100001000011100110001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100010010001010010010000111010;
		correct = 32'b11011101101110101101101111000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000100110111100000110011000;
		correct = 32'b10111111011001000011111001100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001110100010100110010110110101;
		correct = 32'b01110001011101011001101001001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101000100010000001001111010;
		correct = 32'b00001010111011101111110110000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100100001110011110010111000111;
		correct = 32'b01011011110001100001101000111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010100011000010011001111111100;
		correct = 32'b00101011100111101100110000000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011111011101110000011011101001;
		correct = 32'b11100000100010001111100100010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001101010101001001000100011011;
		correct = 32'b11110010101010110110111011100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111011010011110010000100110110;
		correct = 32'b00000100101100001101111011001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001111110111100000110001101;
		correct = 32'b10111110000001000011111001110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100011010001111100001110100111;
		correct = 32'b11011100101110000011110001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101101100011010100000101011100;
		correct = 32'b00010010011100101011111010100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111010101111111001010001100000;
		correct = 32'b01000101010000000110101110011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001111111110110011010001001010;
		correct = 32'b00110000000001001100101110110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110100000100010110100000011;
		correct = 32'b01100001011111011101001011111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001001011101001101100001111000;
		correct = 32'b00110110100010110010011110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010100100110101011001001011011;
		correct = 32'b11101011011001010100110110100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000001100010111100110010101010;
		correct = 32'b11111110011101000011001101010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101111111000010101011100101010;
		correct = 32'b01010000000111101010100011010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110001001011001000000100111;
		correct = 32'b00000001110110100110111111011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010101010101111110110110101001;
		correct = 32'b11101010101010000001001001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011110100010101100001101001;
		correct = 32'b01111100001011101010011110010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010011001001010100111010111110;
		correct = 32'b11101100110110101011000101000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101010111111101001011011110110;
		correct = 32'b10010101000000010110100100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011011110011010100000101110100;
		correct = 32'b11100100001100101011111010001011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111110000010010001111010110110;
		correct = 32'b11000001111101101110000101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011101010001001111010010000100;
		correct = 32'b10100010101110110000101101111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111100011111100011100101111100;
		correct = 32'b01000011100000011100011010000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001000110000001010010011000;
		correct = 32'b10111110111001111110101101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011011101011111111001001001101;
		correct = 32'b10100100010100000000110110110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001001010110001100111101000000;
		correct = 32'b00110110101001110011000010111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111000110001111011111010111001;
		correct = 32'b00000111001110000100000101000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110101101101110011111000010001;
		correct = 32'b10001010010010001100000111101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000100001101010001101100101000;
		correct = 32'b10111011110010101110010011010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110100101100110001101111101000;
		correct = 32'b01001011010011001110010000010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001111010001110011100010000001;
		correct = 32'b10110000101110001100011101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110011111001111111101001010010;
		correct = 32'b00001100000110000000010110101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011101111110000001101011010;
		correct = 32'b10101100010000001111110010100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100001110110101111010110111;
		correct = 32'b11011011110001001010000101001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100000110010111111110100011111;
		correct = 32'b01011111001101000000001011100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100010111101101010010000001001;
		correct = 32'b11011101000010010101101111110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010010001010110101010101110;
		correct = 32'b00101101101110101001010101010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101001100100000001011110001111;
		correct = 32'b01010110011011111110100001110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001011100101101000100010001;
		correct = 32'b11100110100011010010111011101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000000110001010110010101001101;
		correct = 32'b11111111001110101001101010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011100001010011010111110000110;
		correct = 32'b11100011110101100101000001111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010011100000101111000101110110;
		correct = 32'b10101100011111010000111010001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001111000100000011111010101;
		correct = 32'b10111110000111011111100000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010010011000010100011011111;
		correct = 32'b01100101101100111101011100100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010111010101101001111001101100;
		correct = 32'b11101000101010010110000110010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110010100000111011101101100001;
		correct = 32'b01001101011111000100010010011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101101011110010011001000101101;
		correct = 32'b01010010100001101100110111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011110000101101111000011010110;
		correct = 32'b00100001111010010000111100101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100011111001110000011110110000;
		correct = 32'b01011100000110001111100001001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111110110111001110100011000;
		correct = 32'b01101000001001000110001011100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010100101011111101010100010110;
		correct = 32'b11101011010100000010101011101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100100100011010100001000110;
		correct = 32'b01101011011011100101011110111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110011010111010000111010010111;
		correct = 32'b01001100101000101111000101101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100011110000011001111101001;
		correct = 32'b01101011100001111100110000010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010111110111010001111011011;
		correct = 32'b10000101000001000101110000100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000110100101101110000110111100;
		correct = 32'b01111001011010010001111001000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101101101000010010100010111;
		correct = 32'b01101010010010111101101011101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110010110001011010000100111001;
		correct = 32'b01001101001110100101111011000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100000100101000001011011111001;
		correct = 32'b11011111011010111110100100000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010100000011101000001010100000;
		correct = 32'b01101011111100010111110101011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011110110110110111001011010111;
		correct = 32'b00100001001001001000110100101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010101111111110100101001011100;
		correct = 32'b00101010000000001011010110100011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001110110111000111001000010;
		correct = 32'b00010110001001000111000110111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110001000011101111010100010101;
		correct = 32'b10001110111100010000101011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011110011011111000000101101111;
		correct = 32'b10100001100100000111111010010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011000111001001110000000000011;
		correct = 32'b11100111000110110001111111111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110001111000010001001100110101;
		correct = 32'b00001110000111101110110011001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001010000000011001000010010000;
		correct = 32'b11110101111111100110111101101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110110011101001011111101000;
		correct = 32'b00010001001100010110100000010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000010001001000100100101000111;
		correct = 32'b10111101110110111011011010111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111111111001000101100010000010;
		correct = 32'b00000000000110111010011101111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000011011111000111010110011001;
		correct = 32'b11111100100000111000101001100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101111111001101110000011101111;
		correct = 32'b11010000000110010001111100010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000001010011100000100101111;
		correct = 32'b10000111110101100011111011010000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000100011110110110010000011001;
		correct = 32'b10111011100001001001101111100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110001111000111100000001110010;
		correct = 32'b11001110000111000011111110001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011000100011000000111110001100;
		correct = 32'b10100111011100111111000001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001101010111111011011110010001;
		correct = 32'b10110010101000000100100001101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100011111110010010101000001;
		correct = 32'b11110011100000001101101010111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000100101010000001001001011;
		correct = 32'b01100111011010101111110110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110111110111001111011010010010;
		correct = 32'b00001000001000110000100101101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011000110010010001010001110010;
		correct = 32'b01100111001101101110101110001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100101111101110000110001100;
		correct = 32'b11110011010000010001111001110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101000000100111001000011101;
		correct = 32'b10010010111111011000110111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011111111101110100010111101;
		correct = 32'b10001100000000010001011101000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010110011001011101011110110;
		correct = 32'b00101101001100110100010100001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101111010110101001000111111;
		correct = 32'b00001010000101001010110111000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011001111111101001010101110000;
		correct = 32'b10100110000000010110101010001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110000001011000010101000100010;
		correct = 32'b01001111110100111101010111011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100001001011110010101000101101;
		correct = 32'b00011110110100001101010111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000100010110011101101001111000;
		correct = 32'b10111011101001100010010110000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011111111111001010001001111;
		correct = 32'b01100100000000000110101110110000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010101010100100101100111011101;
		correct = 32'b10101010101011011010011000100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000010010101101101111101011;
		correct = 32'b10111111101101010010010000010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100101111001000011010111000110;
		correct = 32'b11011010000110111100101000111001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010001000100101011000010000001;
		correct = 32'b00101110111011010100111101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111110101001000100100111111111;
		correct = 32'b00000001010110111011011000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010010001100000110101110000011;
		correct = 32'b00101101110011111001010001111100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001001011011001100111010011110;
		correct = 32'b11110110100100110011000101100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011101101101000011111110100100;
		correct = 32'b11100010010010111100000001011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110101011110001100110111100001;
		correct = 32'b01001010100001110011001000011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011000100100100110010001100;
		correct = 32'b11010100111011011011001101110011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101001101010010010011100100100;
		correct = 32'b01010110010101101101100011011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111010000010011110011000011101;
		correct = 32'b00000101111101100001100111100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101011000000110010010011000100;
		correct = 32'b00010100111111001101101100111011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111111011001101101010011000;
		correct = 32'b10000000000100110010010101100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001101111000000001011001011010;
		correct = 32'b00110010000111111110100110100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000010011110101100111001001011;
		correct = 32'b10111101100001010011000110110100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100001110011011100001100001101;
		correct = 32'b11011110001100100011110011110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000010010000011101110011001010;
		correct = 32'b01111101101111100010001100110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110001010011101010011001011001;
		correct = 32'b01001110101100010101100110100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110101100111010110011100011010;
		correct = 32'b00001010011000101001100011100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101001011001011011000011100001;
		correct = 32'b11010110100110100100111100011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001011100111100100100010010101;
		correct = 32'b10110100011000011011011101101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100010011000110001101100100000;
		correct = 32'b00011101100111001110010011011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101111001011110111001100000111;
		correct = 32'b11010000110100001000110011111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00110010111110000111000001000111;
		correct = 32'b11001101000001111000111110111000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000100001110011101001010100010;
		correct = 32'b00111011110001100010110101011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010010111011101100101100101;
		correct = 32'b10000101101000100010011010011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111011010100000001101111001;
		correct = 32'b01110000100101011111110010000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101111110101001011111010110000;
		correct = 32'b00010000001010110100000101001111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100110010011000110110000101101;
		correct = 32'b10011001101100111001001111010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100011100011100110000111011001;
		correct = 32'b10011100011100011001111000100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110110111011111011010111100010;
		correct = 32'b01001001000100000100101000011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101010110110101010100010110110;
		correct = 32'b11010101001001010101011101001001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001100101101001111001001000000;
		correct = 32'b01110011010010110000110110111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000101111100000111001100100011;
		correct = 32'b00111010000011111000110011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001011000100010110101100001010;
		correct = 32'b10110100111011101001010011110101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000010111101010111111010000000;
		correct = 32'b10111101000010101000000101111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001100101000000000110000100101;
		correct = 32'b11110011010111111111001111011010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01001110111000110101010110111110;
		correct = 32'b10110001000111001010101001000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100000001001000101011100011001;
		correct = 32'b10011111110110111010100011100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011101010100011001100011011110;
		correct = 32'b11100010101011100110011100100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011001000001110111100111010101;
		correct = 32'b00100110111110001000011000101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101000111111000000111100010101;
		correct = 32'b11010111000000111111000011101010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000000111001011110000101010000;
		correct = 32'b10111111000110100001111010101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011001011110111000000001011000;
		correct = 32'b11100110100001000111111110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100100000011100001111010110010;
		correct = 32'b00011011111100011110000101001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100111100001001000001110101100;
		correct = 32'b00011000011110110111110001010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111001010000000110001000100111;
		correct = 32'b10000110101111111001110111011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100111000100010110110000101011;
		correct = 32'b01011000111011101001001111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000001111101000110001011111110;
		correct = 32'b01111110000010111001110100000001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111101000110010111100101001001;
		correct = 32'b01000010111001101000011010110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101101010011011100110010011010;
		correct = 32'b01010010101100100011001101100101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000101101000110001100110101001;
		correct = 32'b11111010010111001110011001010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011000100101000001110111111111;
		correct = 32'b00100111011010111110001000000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001011110001110100100001011000;
		correct = 32'b01110100001110001011011110100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11111001000101010100101101101001;
		correct = 32'b00000110111010101011010010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101000000011000110101101101000;
		correct = 32'b10010111111100111001010010010111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001110101100110110000011110010;
		correct = 32'b00110001010011001001111100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101101011011001011100000011000;
		correct = 32'b00010010100100110100011111100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011101011111111010010110101;
		correct = 32'b01100100010100000000101101001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011011110011001011110110100111;
		correct = 32'b01100100001100110100001001011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000011010000000110001111100111;
		correct = 32'b01111100101111111001110000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000110010110000101011110101101;
		correct = 32'b10111001101001111010100001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010111111000110010000100101110;
		correct = 32'b10101000000111001101111011010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11010001011111101011011100100111;
		correct = 32'b00101110100000010100100011011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000110010011001110011101011000;
		correct = 32'b00111001101100110001100010100111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101011011001111010000000111011;
		correct = 32'b01010100100110000101111111000100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000101010100001100001101011;
		correct = 32'b10000111010101011110011110010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110101011101100001101010001110;
		correct = 32'b01001010100010011110010101110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101101101001101001001101010;
		correct = 32'b01101010010010110010110110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01011011000000011111101001001001;
		correct = 32'b10100100111111100000010110110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111000111101001000001010101001;
		correct = 32'b10000111000010110111110101010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001110011000010010110101011111;
		correct = 32'b01110001100111101101001010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000100011000111111110111000010;
		correct = 32'b11111011100111000000001000111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110011110101110100001010000;
		correct = 32'b01100001100001010001011110101111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111010100111000100001111010;
		correct = 32'b01101000101011000111011110000101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010001101100001111100010010;
		correct = 32'b01100101110010011110000011101101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011010000101001000101011110010;
		correct = 32'b11100101111010110111010100001101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011011110100000100001001101010;
		correct = 32'b11100100001011111011110110010101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01010000101101111001010100011101;
		correct = 32'b10101111010010000110101011100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010100010001110100000000010;
		correct = 32'b00010101011101110001011111111101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101110011110000011000101001101;
		correct = 32'b00010001100001111100111010110010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101101001000100101011010100110;
		correct = 32'b11010010110111011010100101011001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00001111000110000010000101011011;
		correct = 32'b11110000111001111101111010100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111011001011101100101001111001;
		correct = 32'b10000100110100010011010110000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111011010100001110011111100111;
		correct = 32'b10000100101011110001100000011000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010101101111001110001110101101;
		correct = 32'b01101010010000110001110001010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110010000011111110001000101011;
		correct = 32'b01001101111100000001110111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011110000100010100001000010111;
		correct = 32'b01100001111011101011110111101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111011011000110111000000100000;
		correct = 32'b01000100100111001000111111011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00100100001010000100101111100000;
		correct = 32'b11011011110101111011010000011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000111110010011111101000100001;
		correct = 32'b11111000001101100000010111011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00011110101100001101111011111101;
		correct = 32'b11100001010011110010000100000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000001010001011111111100101011;
		correct = 32'b10111110101110100000000011010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111111010101100000000110011101;
		correct = 32'b10000000101010011111111001100010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010000001101100000110111000;
		correct = 32'b10000101111110010011111001000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101011111011000001111001100001;
		correct = 32'b11010100000100111110000110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101101101100111010100100101101;
		correct = 32'b10010010010011000101011011010010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111001001111011000010101101001;
		correct = 32'b01000110110000100111101010010110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000110101000011001011001011111;
		correct = 32'b11111001010111100110100110100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11000110111101110110100000100010;
		correct = 32'b00111001000010001001011111011101;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110000010100100000001011011011;
		correct = 32'b10001111101011011111110100100100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00111111100011011001001001001110;
		correct = 32'b11000000011100100110110110110001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00101111010101111111100000110111;
		correct = 32'b11010000101010000000011111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100011001001010010011111101110;
		correct = 32'b00011100110110101101100000010001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001111110110100110000100001001;
		correct = 32'b01110000001001011001111011110110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011111011000110110101010011001;
		correct = 32'b00100000100111001001010101100110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01000111010100110001011101111100;
		correct = 32'b10111000101011001110100010000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001101100010110101100110111001;
		correct = 32'b00110010011101001010011001000110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001110000010010110010001010001;
		correct = 32'b00110001111101101001101110101110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10100011000101010000011011000000;
		correct = 32'b01011100111010101111100100111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011010101100000111111110010111;
		correct = 32'b01100101010011111000000001101000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11001010011010001111101101101100;
		correct = 32'b00110101100101110000010010010011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10110100110011100011010011111100;
		correct = 32'b01001011001100011100101100000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110000011111001110100101111111;
		correct = 32'b00001111100000110001011010000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111000001111010010011001100001;
		correct = 32'b01000111110000101101100110011110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11100001111001110111101110100011;
		correct = 32'b00011110000110001000010001011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11011111111011110001111101111000;
		correct = 32'b00100000000100001110000010000111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00000101100011011101010001110111;
		correct = 32'b11111010011100100010101110001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101010100011110111110000110111;
		correct = 32'b00010101011100001000001111001000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10111011011110010101001101100100;
		correct = 32'b01000100100001101010110010011011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10000101011111000011010101010110;
		correct = 32'b01111010100000111100101010101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110011001011011101100010111100;
		correct = 32'b10001100110100100010011101000011;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10011101111100011110111111010110;
		correct = 32'b01100010000011100001000000101001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111100100000001011000010000001;
		correct = 32'b10000011011111110100111101111110;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11110011111100001000010101111101;
		correct = 32'b00001100000011110111101010000010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b11101001100000010001001010000000;
		correct = 32'b00010110011111101110110101111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10101010100010010010100000101011;
		correct = 32'b01010101011101101101011111010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01100100001010100100111101011111;
		correct = 32'b10011011110101011011000010100000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010001110011101101110001111111;
		correct = 32'b11101110001100010010001110000000;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01110100010111001110010110100000;
		correct = 32'b10001011101000110001101001011111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b00010110111011100100100111000000;
		correct = 32'b11101001000100011011011000111111;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01101011001111101011100100100011;
		correct = 32'b10010100110000010100011011011100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10001101011010110110100110110101;
		correct = 32'b01110010100101001001011001001010;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b10010111110110000110010100011110;
		correct = 32'b01101000001001111001101011100001;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		a = 32'b01111010001010101110001110101011;
		correct = 32'b10000101110101010001110001010100;
			begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
		$display ("Done.");
		$finish;
	end

endmodule