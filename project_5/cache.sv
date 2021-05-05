typedef struct packed {
    logic valid;
    logic [25:0] tag;
    logic [31:0] data;
} entry;

module cache(
    input logic clk, MemRead, MemReadReady,
    input logic [31:0] rdAddr,
    output logic MemReadDone, MemHit,
    output logic [31:0] q
);

    entry [63:0] c_mem;
    // ModelSim init
    initial begin
        for (int i = 0; i < 64; i++)
            c_mem[i] = {0,26'd0, 32'd0};
    end

    always_comb begin
        if (c_mem[rdAddr[5:0]].valid == 1) begin
            if (c_mem[rdAddr[5:0]].tag == rdAddr[31:6]) begin
                q <= c_mem[rdAddr[5:0]];
                MemHit <= 1'b1;
            end else begin
                q <= c_mem[rdAddr[5:0]];
                MemHit <= 1'b0;
            end
        end else begin
            q <= c_mem[rdAddr[5:0]];
            MemHit <= 1'b0;
        end
    end

endmodule