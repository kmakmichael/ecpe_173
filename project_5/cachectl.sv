module cachectl(
    input logic clk,
    input logic MemRead, MemReadReady,
    input logic MemWriteDone,
    input logic MemHit,
    output logic MemReadDone,
    output logic MemWriteReady, wren,
    output logic stall
);

    assign stall = 1'b0;
    typedef enum logic [1:0] {idle, hit, miss, write} statetype;
    statetype current_state = idle;
endmodule