`timescale 1ns / 10ps

module tb_omsp_min_exec();

    reg         mclk;
    reg         puc_rst;

    initial begin
        mclk = 0;
        forever #10 mclk = ~mclk; // 50MHz Clock cycle
    end

    wire [15:0] pmem_dout;
    wire [14:0] pmem_addr;
    wire        pmem_en;

    wire [15:0] dmem_dout;
    wire [15:0] dmem_addr;
    wire [15:0] dmem_din;
    wire [1:0]  dmem_wen;
    wire        dmem_en;

    omsp_min_exec dut (
        .mclk      (mclk),
        .puc_rst   (puc_rst),
        .pmem_dout (pmem_dout),
        .pmem_addr (pmem_addr),
        .pmem_en   (pmem_en),
        .dmem_dout (dmem_dout),
        .dmem_addr (dmem_addr),
        .dmem_din  (dmem_din),
        .dmem_wen  (dmem_wen),
        .dmem_en   (dmem_en)
    );

    initial begin
        mclk = 0;
        puc_rst = 1;
        #50 
	puc_rst = 0;
 
        @(posedge mclk);
        $display("Forcing MOV instruction signals...");
        
        force dut.inst_mov = 1'b1;
        force dut.inst_alu = 12'b000000010000; // MOV opcode
	force dut.execution_unit_0.alu_src_ac = 16'hcafe;
        force dut.eu_mdb_in = 16'hcafe;        // Data to write
        force dut.eu_mab    = 16'h0080;        // Address to write to
        force dut.e_state   = 4'h8;            // Force state to DST_WRITE
	force dut.execution_unit_0.i_state = 4'h8;
        
        @(posedge mclk);
        #5; 

	release dut.execution_unit_0.i_state;
        
        if (dmem_en && (dmem_din == 16'hcafe) && (dmem_addr == 16'h0080)) begin
            $display("SUCCESS: Combined signals aligned correctly!");
        end else begin
            $display("FAIL: Signals still misaligned.");
            $display("EN: %b, DATA: %h, ADDR: %h", dmem_en, dmem_din, dmem_addr);
        end

        release dut.inst_mov;
        release dut.e_state;
        release dut.inst_alu;
	release dut.eu_mdb_in;
	release dut.eu_mab;
	release dut.execution_unit_0.alu_src_ac;
        
        $finish;
    end

    initial begin
        $fsdbDumpfile("min_exec.fsdb");
        $fsdbDumpvars(0, tb_omsp_min_exec);
    end

endmodule
