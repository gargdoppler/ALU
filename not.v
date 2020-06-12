module NOT(A, Output);
    // Inputs
    input[31:0]A;

    // Outputs
    output reg[31:0]Output;

    // Main
    always@(A)
    begin
        // Output is logical NOT of A
        Output = !A;
    end
endmodule