`include "modules.v"

module alu(clk, A, B, opcode, O);
	input clk;
	input [31:0] A, B;
	input [1:0] opcode;
	output [31:0] O;

	wire [31:0] O;
	wire [7:0] a_exponent;
	wire [23:0] a_mantissa;
	wire [7:0] b_exponent;
	wire [23:0] b_mantissa;

	reg        o_sign;
	reg [7:0]  o_exponent;
	reg [24:0] o_mantissa;


	reg [31:0] adder_a_in;
	reg [31:0] adder_b_in;
	wire [31:0] adder_out;

	reg [31:0] multiplier_a_in;
	reg [31:0] multiplier_b_in;
	wire [31:0] multiplier_out;

	reg [31:0] divider_a_in;
	reg [31:0] divider_b_in;
	wire [31:0] divider_out;

	assign O[31] = o_sign;
	assign O[30:23] = o_exponent;
	assign O[22:0] = o_mantissa[22:0];

	assign a_sign = A[31];
	assign a_exponent[7:0] = A[30:23];
	assign a_mantissa[23:0] = {1'b1, A[22:0]};

	assign b_sign = B[31];
	assign b_exponent[7:0] = B[30:23];
	assign b_mantissa[23:0] = {1'b1, B[22:0]};

	assign ADD = !opcode[1] & !opcode[0];
	assign SUB = !opcode[1] & opcode[0];
	assign DIV = opcode[1] & !opcode[0];
	assign MUL = opcode[1] & opcode[0];

	adder A1
	(
		.a(adder_a_in),
		.b(adder_b_in),
		.out(adder_out)
	);

	multiplier M1
	(
		.a(multiplier_a_in),
		.b(multiplier_b_in),
		.out(multiplier_out)
	);

	divider D1
	(
		.a(divider_a_in),
		.b(divider_b_in),
		.out(divider_out)
	);

	always @ (posedge clk) begin
		if (ADD) begin
			//If a is NaN or b is zero return a
			if ((a_exponent == 255 && a_mantissa != 0) || (b_exponent == 0) && (b_mantissa == 0)) begin
				o_sign = a_sign;
				o_exponent = a_exponent;
				o_mantissa = a_mantissa;
			//If b is NaN or a is zero return b
			end else if ((b_exponent == 255 && b_mantissa != 0) || (a_exponent == 0) && (a_mantissa == 0)) begin
				o_sign = b_sign;
				o_exponent = b_exponent;
				o_mantissa = b_mantissa;
			//if a or b is inf return inf
			end else if ((a_exponent == 255) || (b_exponent == 255)) begin
				o_sign = a_sign ^ b_sign;
				o_exponent = 255;
				o_mantissa = 0;
			end else begin // Passed all corner cases
				adder_a_in = A;
				adder_b_in = B;
				o_sign = adder_out[31];
				o_exponent = adder_out[30:23];
				o_mantissa = adder_out[22:0];
			end
		end else if (SUB) begin
			//If a is NaN or b is zero return a
			if ((a_exponent == 255 && a_mantissa != 0) || (b_exponent == 0) && (b_mantissa == 0)) begin
				o_sign = a_sign;
				o_exponent = a_exponent;
				o_mantissa = a_mantissa;
			//If b is NaN or a is zero return b
			end else if ((b_exponent == 255 && b_mantissa != 0) || (a_exponent == 0) && (a_mantissa == 0)) begin
				o_sign = b_sign;
				o_exponent = b_exponent;
				o_mantissa = b_mantissa;
			//if a or b is inf return inf
			end else if ((a_exponent == 255) || (b_exponent == 255)) begin
				o_sign = a_sign ^ b_sign;
				o_exponent = 255;
				o_mantissa = 0;
			end else begin // Passed all corner cases
				adder_a_in = A;
				adder_b_in = {~B[31], B[30:0]};
				o_sign = adder_out[31];
				o_exponent = adder_out[30:23];
				o_mantissa = adder_out[22:0];
			end
		end else if (DIV) begin
			divider_a_in = A;
			divider_b_in = B;
			o_sign = divider_out[31];
			o_exponent = divider_out[30:23];
			o_mantissa = divider_out[22:0];
		end else begin //Multiplication
			//If a is NaN return NaN
			if (a_exponent == 255 && a_mantissa != 0) begin
				o_sign = a_sign;
				o_exponent = 255;
				o_mantissa = a_mantissa;
			//If b is NaN return NaN
			end else if (b_exponent == 255 && b_mantissa != 0) begin
				o_sign = b_sign;
				o_exponent = 255;
				o_mantissa = b_mantissa;
			//If a or b is 0 return 0
			end else if ((a_exponent == 0) && (a_mantissa == 0) || (b_exponent == 0) && (b_mantissa == 0)) begin
				o_sign = a_sign ^ b_sign;
				o_exponent = 0;
				o_mantissa = 0;
			//if a or b is inf return inf
			end else if ((a_exponent == 255) || (b_exponent == 255)) begin
				o_sign = a_sign;
				o_exponent = 255;
				o_mantissa = 0;
			end else begin // Passed all corner cases
				multiplier_a_in = A;
				multiplier_b_in = B;
				o_sign = multiplier_out[31];
				o_exponent = multiplier_out[30:23];
				o_mantissa = multiplier_out[22:0];
			end
		end
	end
endmodule