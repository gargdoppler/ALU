module multiplier(A, B, out);

  /* Assign wires and registers to the inputs and outputs */

  input [31:0] A;
  input [31:0] B;
  

  output [31:0] out;

  wire [31:0] out;
  
  // Registers
  reg a_sign;
  reg [7:0] a_exponent;
  reg [23:0] a_mantissa;
  
  reg b_sign;
  reg [7:0] b_exponent;
  reg [23:0] b_mantissa;

  reg o_sign;
  reg [7:0] o_exponent;
  reg [24:0] o_mantissa;

  reg [47:0] product;

  // Main
  assign out[31] = o_sign;
  assign out[30:23] = o_exponent;
  assign out[22:0] = o_mantissa[22:0];

	reg  [7:0] i_e;
	reg  [47:0] i_m;
	wire [7:0] o_e;
	wire [47:0] o_m;

	multiplication_normaliser norm1
	(
		.in_e(i_e),
		.in_m(i_m),
		.out_e(o_e),
		.out_m(o_m)
	);


  always @ ( * ) begin
		a_sign = A[31];
		if(A[30:23] == 0) begin
			a_exponent = 8'b00000001;
			a_mantissa = {1'b0, A[22:0]};
		end else begin
			a_exponent = A[30:23];
			a_mantissa = {1'b1, A[22:0]};
		end
		b_sign = B[31];
		if(B[30:23] == 0) begin
			b_exponent = 8'b00000001;
			b_mantissa = {1'b0, B[22:0]};
		end else begin
			b_exponent = B[30:23];
			b_mantissa = {1'b1, B[22:0]};
		end
    o_sign = a_sign ^ b_sign;
    o_exponent = a_exponent + b_exponent - 127;
    product = a_mantissa * b_mantissa;
		// Normalization
    if(product[47] == 1) begin
      o_exponent = o_exponent + 1;
      product = product >> 1;
    end else if((product[46] != 1) && (o_exponent != 0)) begin
      i_e = o_exponent;
      i_m = product;
      o_exponent = o_e;
      product = o_m;
    end
		o_mantissa = product[46:23];
	end
endmodule