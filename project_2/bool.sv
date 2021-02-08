module bool(
    input logic [3:0] ALUOp,
    input logic [31:0] A,
    input logic [31:0] B,
    output logic [31:0] boolout
);

    always_comb begin
        case (ALUOp)
            4'b1010:    boolout <= A;           // A
            4'b1000:    boolout <= A & B;       // AND
            4'b0001:    boolout <= ~(A | B);    // NOR
            4'b1110:    boolout <= A | B;       // OR
            4'b1001:    boolout <= ~(A ^ B);    // XNOR
            4'b0110:    boolout <= A ^ B;       // XOR
            default:    boolout <= A;           // A 
        endcase
    end

endmodule
