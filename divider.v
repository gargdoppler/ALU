module divider (A, B, out);
	// Inputs
	input [31:0] A;
	input [31:0] B;

	// Outputs
	output [31:0] out;

	// Wires
	wire [31:0] b_reciprocal;

	// Main
	reciprocal recip
	(
		.in(B),
		.out(b_reciprocal)
	);

	multiplier mult
	(
		.A(A),
		.B(b_reciprocal),
		.out(out)
	);
endmodule