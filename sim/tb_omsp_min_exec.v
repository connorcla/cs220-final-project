`timescale 1ns / 1ps
`include "openMSP430_defines.v"

module omsp_min_exec_tb;

    reg         mclk;
    reg         puc_rst;
    reg  [15:0] pmem_dout;
    reg  [15:0] dmem_dout;
    reg         dma_en;
    reg         dma_wkup;


    wire [14:0] pmem_addr;
    wire        pmem_en;
    wire [15:0] dmem_addr;
    wire [15:0] dmem_din;
    wire [1:0]  dmem_wen;
    wire        dmem_en;

    omsp_min_exec dut (
        .mclk(mclk),
        .puc_rst(puc_rst),
        .pmem_dout(pmem_dout),
        .pmem_addr(pmem_addr),
        .pmem_en(pmem_en),
        .dmem_dout(dmem_dout),
        .dmem_addr(dmem_addr),
        .dmem_din(dmem_din),
        .dmem_wen(dmem_wen),
        .dmem_en(dmem_en),
        .dma_en(dma_en),
        .dma_wkup(dma_wkup)
    );

    initial mclk = 0;
    always #10 mclk = ~mclk; // 50MHz Clock

    always @(*) begin
        if (!pmem_en) begin
            pmem_dout = 16'h0000;
        end else begin
            case (pmem_addr)
                // Since pmem_addr is word-aligned [15:1], 0xFFFE >> 1 = 0x7FFF
                15'h7FFF: pmem_dout = 16'h0000; // Start PC at 0x0000
                
                // Program starts here
                15'h0000: pmem_dout = 16'h4303; // NOP
                15'h0001: pmem_dout = 16'h5506; // ADD R5, R6 (R6 = R6 + R5)
                15'h0002: pmem_dout = 16'h4303; // NOP
                default:  pmem_dout = 16'h4303; // Default to NOP
            endcase
        end
    end


    always @(*) begin
        dmem_dout = 16'h1234; // dummy data for any memory reads
    end

    initial begin
        puc_rst  = 1'b1; // Start in reset 
        dma_en   = 1'b0;
        dma_wkup = 1'b0;

        $display("Resetting Min-Core");
        repeat (5) @(posedge mclk);
        puc_rst = 1'b0; // Release reset
        
        $display("Core Released at %t", $time);

        repeat (20) @(posedge mclk);

        $display("Simulation Finished");
        $finish;
    end

    // --- Verdi/VCS Dump ---
    initial begin
        $fsdbDumpfile("min_exec.fsdb");
        $fsdbDumpvars(0, omsp_min_exec_tb);
    end

endmodule