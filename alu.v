`include "modules.v"


module alu(clk, A, B, OpCode, O);

	/* Assign wires and registers to the inputs and outputs */

	// input clk
	input clk;

	// input OpCode
	input [1:0] OpCode;

	// input A
	input [31:0] A; 
	wire [7:0] ExponentA;
	wire [23:0] MantissaA;
	reg [31:0] InputAdderA;
	reg [31:0] InputMultiplierA;
	reg [31:0] InputDividerA;
	
	// input B
	input [31:0] B;
	wire [7:0] ExponentB;
	wire [23:0] MantissaB;
	reg [31:0] InputAdderB;
	reg [31:0] InputMultiplierB;
	reg [31:0] InputDividerB;

    // output O
	output [31:0] O;
	wire [31:0] O;
	reg        SignO;
	reg [7:0]  ExponentO;
	reg [24:0] MantissaO;
	wire [31:0] OutputAdder;
	wire [31:0] OutputMultiplier;
	wire [31:0] OutputDivider;


	/* Assign values*/
	
	// A
	assign SignA = A[31];
	assign ExponentA[7:0] = A[30:23];
	assign MantissaA[23:0] = {1'b1, A[22:0]};
	
	// B
	assign SignB = B[31];
	assign ExponentB[7:0] = B[30:23];
	assign MantissaB[23:0] = {1'b1, B[22:0]};

	// O
	assign O[31] = SignO;
	assign O[30:23] = ExponentO;
	assign O[22:0] = MantissaO[22:0];

	/* Choose operations based on OpCode */
	assign ADD = !OpCode[1] & !OpCode[0];
	assign SUB = !OpCode[1] & OpCode[0];
	assign DIV = OpCode[1] & !OpCode[0];
	assign MUL = OpCode[1] & OpCode[0];


	/* Connect modules to inputs and corresponding output wires */
	adder A1
	(
		.A(InputAdderA),
		.B(InputAdderB),
		.out(OutputAdder)
	);

	multiplier M1
	(
		.A(InputMultiplierA),
		.B(InputMultiplierB),
		.out(OutputMultiplier)
	);

	divider D1
	(
		.A(InputDividerA),
		.B(InputDividerB),
		.out(OutputDivider)
	);

	/* Main logic*/
	always @ (posedge clk) begin

		// OpCode = ??? (Addition)
		if (ADD) begin
			//If A is NaN or B is zero return A
			if ((ExponentA == 255 && MantissaA != 0) || (ExponentB == 0) && (MantissaB == 0)) begin
				SignO = SignA;
				ExponentO = ExponentA;
				MantissaO = MantissaA;
			//If B is NaN or A is zero return B
			end else if ((ExponentB == 255 && MantissaB != 0) || (ExponentA == 0) && (MantissaA == 0)) begin
				SignO = SignB;
				ExponentO = ExponentB;
				MantissaO = MantissaB;
			//if A or B is inf return inf
			end else if ((ExponentA == 255) || (ExponentB == 255)) begin
				SignO = SignA ^ SignB;
				ExponentO = 255;
				MantissaO = 0;
			end else begin
				InputAdderA = A;
				InputAdderB = B;
				SignO = OutputAdder[31];
				ExponentO = OutputAdder[30:23];
				MantissaO = OutputAdder[22:0];
			end
		
		// Opcode = ??? (Subtraction)
		end else if (SUB) begin
			//If A is NaN or B is zero return A
			if ((ExponentA == 255 && MantissaA != 0) || (ExponentB == 0) && (MantissaB == 0)) begin
				SignO = SignA;
				ExponentO = ExponentA;
				MantissaO = MantissaA;
			//If B is NaN or A is zero return B
			end else if ((ExponentB == 255 && MantissaB != 0) || (ExponentA == 0) && (MantissaA == 0)) begin
				SignO = SignB;
				ExponentO = ExponentB;
				MantissaO = MantissaB;
			//if A or B is inf return inf
			end else if ((ExponentA == 255) || (ExponentB == 255)) begin
				SignO = SignA ^ SignB;
				ExponentO = 255;
				MantissaO = 0;
			end else begin
				InputAdderA = A;
				InputAdderB = {~B[31], B[30:0]};
				SignO = OutputAdder[31];
				ExponentO = OutputAdder[30:23];
				MantissaO = OutputAdder[22:0];
			end
		
		// Opcode = ??? (Division)
		end else if (DIV) begin
			InputDividerA = A;
			InputDividerB = B;
			SignO = OutputDivider[31];
			ExponentO = OutputDivider[30:23];
			MantissaO = OutputDivider[22:0];
		
		// Opcode = ??? (Multiplication)
		end else begin
			//If A is NaN return NaN
			if (ExponentA == 255 && MantissaA != 0) begin
				SignO = SignA;
				ExponentO = 255;
				MantissaO = MantissaA;
			//If B is NaN return NaN
			end else if (ExponentB == 255 && MantissaB != 0) begin
				SignO = SignB;
				ExponentO = 255;
				MantissaO = MantissaB;
			//If A or B is 0 return 0
			end else if ((ExponentA == 0) && (MantissaA == 0) || (ExponentB == 0) && (MantissaB == 0)) begin
				SignO = SignA ^ SignB;
				ExponentO = 0;
				MantissaO = 0;
			//if A or B is inf return inf
			end else if ((ExponentA == 255) || (ExponentB == 255)) begin
				SignO = SignA;
				ExponentO = 255;
				MantissaO = 0;
			end else begin
				InputMultiplierA = A;
				InputMultiplierB = B;
				SignO = OutputMultiplier[31];
				ExponentO = OutputMultiplier[30:23];
				MantissaO = OutputMultiplier[22:0];
			end
		end
	end
endmodule