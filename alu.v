`include "modules.v"


module alu(clk, A, B, OpCode, O);

	/* Assign wires and registers to the inputs and outputs */

	// input clk
	input 					 clk;

	// input OpCode
	input [2:0] 		  OpCode;

	// input A
	input [31:0]		  	   A; 
	wire [7:0]		   ExponentA;
	wire [23:0]        MantissaA;
	reg [31:0]       AdderAInput;
	reg [31:0]  MultiplierAInput;
	reg [31:0] 	   DividerAInput;
	reg [31:0]		   ANDAInput;
	reg [31:0]			ORAInput;
	reg [31:0]		   NOTAInput;
	
	// input B
	input [31:0]			   B;
	wire [7:0] 		   ExponentB;
	wire [23:0]        MantissaB;
	reg [31:0]       AdderBInput;
	reg [31:0]  MultiplierBInput;
	reg [31:0]     DividerBInput;
	reg [31:0]		   ANDBInput;
	reg [31:0]			ORBInput;

    // output O
	output [31:0]        	   O;
	wire [31:0] 			   O;
	reg        			   SignO;
	reg [7:0]          ExponentO;
	reg [24:0] 		   MantissaO;
	wire [31:0] 	 AdderOutput;
	wire [31:0] MultiplierOutput;
	wire [31:0]    DividerOutput;
	wire [31:0]    	   ANDOutput;
	wire [31:0]    	    OROutput;
	wire [31:0]    	   NOTOutput;


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

	/* Choose operations based on OpCode (Multiplexing) */
	assign ADD = !OpCode[2] & !OpCode[1] & !OpCode[0];  // 000
	assign SUB = !OpCode[2] & !OpCode[1] &  OpCode[0];  // 001
	assign DIV = !OpCode[2] &  OpCode[1] & !OpCode[0];  // 010
	assign MUL = !OpCode[2] &  OpCode[1] &  OpCode[0];  // 011
	assign AND =  OpCode[2] & !OpCode[1] & !OpCode[0];  // 100
	assign OR  =  OpCode[2] & !OpCode[1] &  OpCode[0];  // 101
	assign NOT =  OpCode[2] &  OpCode[1] & !OpCode[0];  // 110


	/* Connect modules to inputs and corresponding output wires */
	adder A1
	(
		.A(AdderAInput),
		.B(AdderBInput),
		.Output(AdderOutput)
	);

	multiplier M1
	(
		.A(MultiplierAInput),
		.B(MultiplierBInput),
		.Output(MultiplierOutput)
	);

	divider D1
	(
		.A(DividerAInput),
		.B(DividerBInput),
		.Output(DividerOutput)
	);

	AND and1
	(
		.A(ANDAInput),
		.B(ANDBInput),
		.Output(ANDOutput)
	);

	OR or1
	(
		.A(ORAInput),
		.B(ORBInput),
		.Output(OROutput)
	);

	NOT not1
	(
		.A(NOTAInput),
		.Output(NOTOutput)
	);


	/* Main logic*/
	always @ (posedge clk) begin
		
		/** Addition **/
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
				AdderAInput = A;
				AdderBInput = B;
				SignO = AdderOutput[31];
				ExponentO = AdderOutput[30:23];
				MantissaO = AdderOutput[22:0];
			end
		
		/** Subtraction **/
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
				AdderAInput = A;
				AdderBInput = {~B[31], B[30:0]};
				SignO = AdderOutput[31];
				ExponentO = AdderOutput[30:23];
				MantissaO = AdderOutput[22:0];
			end
		
		/** Division **/
		end else if (DIV) begin
			DividerAInput = A;
			DividerBInput = B;
			SignO = DividerOutput[31];
			ExponentO = DividerOutput[30:23];
			MantissaO = DividerOutput[22:0];
		
		/** Multiplication **/
		end else if (MUL) begin
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
				MultiplierAInput = A;
				MultiplierBInput = B;
				SignO = MultiplierOutput[31];
				ExponentO = MultiplierOutput[30:23];
				MantissaO = MultiplierOutput[22:0];
			end
		
		/** AND **/
		end else if (AND) begin
			ANDAInput = A;
			ANDBInput = B;
			SignO = ANDOutput[31];
			ExponentO = ANDOutput[30:23];
			MantissaO = ANDOutput[22:0];
	
		/** OR **/
		end else if (OR) begin
			ORAInput = A;
			ORBInput = B;
			SignO = OROutput[31];
			ExponentO = OROutput[30:23];
			MantissaO = OROutput[22:0];
		
		/** NOT **/
		end else if (NOT) begin
			NOTAInput = A;
			SignO = NOTOutput[31];
			ExponentO = NOTOutput[30:23];
			MantissaO = NOTOutput[22:0];

		end
	end
endmodule