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

    /* Test Cases!*/

		a = 32'b01111010110011111000011110000111;
		b = 32'b01001100101000100101001000001100;
		correct = 32'b01111010110011111000011110000111;
		#400 //5.3877714e+35 * 85102690.0 = 5.3877714e+35
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01000001000001001101111110101110;
		b = 32'b11000100101111011001001100010001;
		correct = 32'b01000100101111101001110011010000;
		#400 //8.304609 * -1516.5958 = 1524.9004
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b01011110001100000110101111111111;
		b = 32'b01011111010010110011001000111001;
		correct = 32'b11011111000111110001011100111001;
		#400 //3.1781337e+18 * 1.4641828e+19 = -1.1463694e+19
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11100010001111100000110101100010;
		b = 32'b10001101000111111010111000010011;
		correct = 32'b11100010001111100000110101100010;
		#400 //-8.764614e+20 * -4.920519e-31 = -8.764614e+20
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11101010110101010100010101110100;
		b = 32'b11110100110000000000110001111110;
		correct = 32'b01110100110000000000110001110001;
		#400 //-1.2891459e+26 * -1.2172539e+32 = 1.2172526e+32
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11111111001001110110001100010010;
		b = 32'b00000011011011000111110010000110;
		correct = 32'b11111111001001110110001100010010;
		#400 //-2.2249548e+38 * 6.9497113e-37 = -2.2249548e+38
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00000001000110111100010010000110;
		b = 32'b01001010010011001010101000110100;
		correct = 32'b11001010010011001010101000110100;
		#400 //2.8610002e-38 * 3353229.0 = -3353229.0
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00001101110010101011110110011010;
		b = 32'b11110000100001010111100110101111;
		correct = 32'b01110000100001010111100110101111;
		#400 //1.2494856e-30 * -3.304689e+29 = 3.304689e+29
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b00111001000000101101001010100111;
		b = 32'b10001110000111111011110111011100;
		correct = 32'b00111001000000101101001010100111;
		#400 //0.0001247624 * -1.9689677e-30 = 0.0001247624
		begin
			$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
			$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
			$display ("Output : %b %b %b", correct[31], correct[30:23], correct[22:0]);
			$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); $display();
		end

		a = 32'b11010110010100000111001001111101;
		b = 32'b10000101001101110101000001111101;
		correct = 32'b11010110010100000111001001111101;
		#400 //-57297536000000.0 * -8.619402e-36 = -57297536000000.0
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