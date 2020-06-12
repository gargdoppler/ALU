module OR(A, B, Output);
    // Inputs
    input[31:0]A;
    input[31:0]B;

    // Outputs
    output reg[31:0]Output;

    // Logic
    always@(A, B)
    begin
        // Output is bitwise OR of (A, B)
        Output = A | B;
    end
endmodule