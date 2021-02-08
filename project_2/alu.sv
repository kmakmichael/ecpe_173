module alu( 
    input logic [31:0] A,
    input logic [31:0] B,
    input logic [4:0] ALUOp,
    output logic [31:0] Y,
    output logic z,
    output logic v,
    output logic n
);

    // signals
    logic [31:0] boolout;
    logic [31:0] shiftout;
    logic [31:0] arithout;
    logic [31:0] comput;

    // modules
    //bool xbool(ALUOp[3:0],A,B,boolout);
    //arith xarith(ALUOp[1:0],A,B,arithout,z,v,n);
    //comp xcomp(ALUOp[3], ALUOp[1], z,v,n,compout);
    //shift xshift(ALUOp[1:0],A,B,shiftout);

    // outputs
    assign Y = A;
    assign z = 1'b0;
    assign v = 1'b0;
    assign n = 1'dob0;

endmodule


