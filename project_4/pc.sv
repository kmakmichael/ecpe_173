module pc(
    input logic clk,
    input logic reset,
    input logic irq,
    input logic Exception,
    output logic [31:0] ia
);
    always_ff @(posedge clk or posedge reset or posedge irq or posedge Exception) begin
        if (reset) begin
            ia <= 32'h8000_0000;
        end else if (irq) begin
            ia <= 32'h8000_0008;
        end else if (Exception) begin
            ia <= 32'h8000_0004;
        end else begin
            ia <= ia + 32'd4;
        end
    end
    /* orig
    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            ia <= 32'd0;
        end else begin
            ia <= ia + 32'd4;
        end
    end
    */
    
endmodule