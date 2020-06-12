module reciprocal (in, out);
	input [31:0] in;

	output [31:0] out;

	assign out[31] = in[31];
	assign out[22:0] = N2[22:0];
	assign out[30:23] = (D==9'b100000000)? 9'h102 - in[30:23] : 9'h101 - in[30:23];

	wire [31:0] D;
	assign D = {1'b0, 8'h80, in[22:0]};

	wire [31:0] C1; //C1 = 48/17
	assign C1 = 32'h4034B4B5;
	wire [31:0] C2; //C2 = 32/17
	assign C2 = 32'h3FF0F0F1;
	wire [31:0] C3; //C3 = 2.0
	assign C3 = 32'h40000000;

	wire [31:0] N0;
	wire [31:0] N1;
	wire [31:0] N2;

	//Temporary connection wires
	wire [31:0] S0_2D_out;
	wire [31:0] S1_DN0_out;
	wire [31:0] S1_2min_DN0_out;
	wire [31:0] S2_DN1_out;
	wire [31:0] S2_2minDN1_out;

	wire [31:0] S0_N0_in;

	assign S0_N0_in = {~S0_2D_out[31], S0_2D_out[30:0]};

	//S0
	multiplier S0_2D
	(
		.A(C2),
		.B(D),
		.out(S0_2D_out)
	);

	adder S0_N0
	(
		.A(C1),
		.B(S0_N0_in),
		.out(N0)
	);

	//S1
	multiplier S1_DN0
	(
		.A(D),
		.B(N0),
		.out(S1_DN0_out)
	);

	adder S1_2minDN0
	(
		.A(C3),
		.B({~S1_DN0_out[31], S1_DN0_out[30:0]}),
		.out(S1_2min_DN0_out)
	);

	multiplier S1_N1
	(
		.A(N0),
		.B(S1_2min_DN0_out),
		.out(N1)
	);

	//S2
	multiplier S2_DN1
	(
		.A(D),
		.B(N1),
		.out(S2_DN1_out)
	);

	adder S2_2minDN1
	(
		.A(C3),
		.B({~S2_DN1_out[31], S2_DN1_out[30:0]}),
		.out(S2_2minDN1_out)
	);

	multiplier S2_N2
	(
		.A(N1),
		.B(S2_2minDN1_out),
		.out(N2)
	);

endmodule