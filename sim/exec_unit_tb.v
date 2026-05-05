`timescale 1ns/10ps

module exec_unit_tb();

    // DUT signals
    reg         mclk;
    reg         puc_rst;
    
    // Inputs to execution unit 
    reg  [3:0]  e_state;
    reg         exec_done;
    reg  [7:0]  inst_ad;
    reg  [7:0]  inst_as;
    reg  [11:0] inst_alu;
    reg         inst_bw;
    reg  [15:0] inst_dest;
    reg  [15:0] inst_src;
    reg  [15:0] mdb_in;
    
    // Outputs from execution unit
    wire [15:0] mab;
    wire [15:0] mdb_out;
    wire [1:0]  mb_wr;
    wire        mb_en;
    reg        dbg_reg_wr;

    omsp_execution_unit dut (
        .mclk(mclk),
        .puc_rst(puc_rst),
        .e_state(e_state),
        .exec_done(exec_done),
        .inst_ad(inst_ad),
        .inst_as(inst_as),
        .inst_alu(inst_alu),
        .inst_bw(inst_bw),
        .inst_dest(inst_dest),
        .inst_src(inst_src),
        .mdb_in(mdb_in),
        .mab(mab),
        .mdb_out(mdb_out),
        .mb_wr(mb_wr),
        .mb_en(mb_en),
        // Tie-offs for unused ports
        .gie(1'b0),
        .dbg_halt_st(1'b0),
        .dbg_mem_dout(16'h0000),
        .dbg_reg_wr(dbg_reg_wr),
        .pc(16'h0000),
        .pc_nxt(16'h0000),
        .scan_enable(1'b0)
    );

    // Clock Generation
    always #10 mclk = ~mclk;

    // Add these missing signals to your TB declarations
    reg [2:0] inst_type;
    reg [7:0] inst_so;

    // ... inside initial block ...
    initial begin
        // Reset Sequence
    puc_rst = 1;
    #20 puc_rst = 0;
    
    // Drive execution signals
    @(negedge mclk);
    e_state    = 4'h0;            // E_EXEC
    inst_type  = 3'b001;          // INST_TO
    inst_ad    = 8'h01;           // DIR
    inst_dest  = 16'h1000;        // R12 One-hot
    dbg_reg_wr = 1;               // Use debug gate to force the write
    mdb_in     = 16'h1234;
    
    @(posedge mclk);
    #1 dbg_reg_wr = 0;
    
    // Trigger the actual operation
    @(negedge mclk);
    inst_src   = 16'h1000;        // R12
    inst_dest  = 16'h2000;        // R13
    inst_alu   = 12'h040;         // ADD
    
    // Pulse exec_done to tell the EU to finish the cycle
    exec_done = 1; 
    @(posedge mclk);
    #1 exec_done = 0;

    $display("Test Complete");
    $finish; // Explicitly end the simulation
    end

    initial begin
        $fsdbDumpfile("exec.fsdb");
        $fsdbDumpvars(0, exec_unit_tb);
    end

endmodule
