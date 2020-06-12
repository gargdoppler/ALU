module divider (A, B, Output);
	// Inputs
	input [31:0] A;
	input [31:0] B;

	// Outputs
	output [31:0] Output;

	// Wires
	wire [31:0] ReciprocalB;

	// Main
	reciprocal recip
	(
		.Input(B),
		.Output(ReciprocalB)
	);

	multiplier mult
	(
		.A(A),
		.B(ReciprocalB),
		.Output(Output)
	);
endmodule