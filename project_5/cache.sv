typedef struct packed {
    logic valid;
    logic [25:0] tag;
    logic [31:0] data;
} entry;

module cache(
    input logic clk, MemRead, MemReadReady,
    output logic MemReadDone, MemHit
);

    entry [63:0] c_mem;
    // ModelSim init
    initial begin
        for (int i = 0; i < 64; i++)
            c_mem[i] = {0,26'd0, 32'd0};
    end

endmodule