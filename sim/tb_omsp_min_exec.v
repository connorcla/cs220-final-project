`timescale 1ns / 1ps
`include "openMSP430_defines.v"

module omsp_min_exec_tb;

    reg         mclk;
    reg         puc_rst;
    reg  [15:0] pmem_dout;
    reg  [15:0] dmem_dout;


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
        .dmem_en(dmem_en)
    );

    always @(posedge mclk) begin
    if (dut.frontend_0.pc === 16'hDEAD) begin
        $display("!!! WARNING: PC went DEAD. Forcing to 0000 !!!");
        force dut.frontend_0.pc = 16'h0000;
        #10;
        release dut.frontend_0.pc;
    end
end

    initial mclk = 0;
    always #10 mclk = ~mclk; // 50MHz Clock

    always @(*) begin
    if (!pmem_en) begin
        pmem_dout = 16'h0000;
    end else begin
        if (pmem_addr == 15'h7FFF) begin
            pmem_dout = 16'h0000;
        end else begin
            case (pmem_addr)
                15'h0000: pmem_dout = 16'h4303; // NOP
                15'h0001: pmem_dout = 16'h5506; // ADD R5, R6
                15'h0002: pmem_dout = 16'h4303; // NOP
                default:  pmem_dout = 16'hDEAD; 
            endcase
        end
    end
end


    initial begin
	dmem_dout = 16'h0000;
        puc_rst  <= 1'b1; // Start in reset 
	repeat (5) @(posedge mclk);
	#1
        puc_rst <= 1'b0; // Release reset
        
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
