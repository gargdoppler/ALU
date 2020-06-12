module multiplication_normaliser(in_e, in_m, out_e, out_m);
  // Inputs
  input [7:0] in_e;
  input [47:0] in_m;

  // Outputs
  output [7:0] out_e;
  output [47:0] out_m;

  // Wires
  wire [7:0] in_e;
  wire [47:0] in_m;

  // Registers
  reg [7:0] out_e;
  reg [47:0] out_m;

  // Main
  always @ ( * ) begin
	  if (in_m[46:41] == 6'b000001) begin
			out_e = in_e - 5;
			out_m = in_m << 5;
		end else if (in_m[46:42] == 5'b00001) begin
			out_e = in_e - 4;
			out_m = in_m << 4;
		end else if (in_m[46:43] == 4'b0001) begin
			out_e = in_e - 3;
			out_m = in_m << 3;
		end else if (in_m[46:44] == 3'b001) begin
			out_e = in_e - 2;
			out_m = in_m << 2;
		end else if (in_m[46:45] == 2'b01) begin
			out_e = in_e - 1;
			out_m = in_m << 1;
		end
  end
endmodule