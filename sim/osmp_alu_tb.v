`timescale 1ns/10ps

module alu_tb ();

    // Outputs from DUT
    wire [15:0] alu_out;
    wire [15:0] alu_out_add;
    wire [3:0]  alu_stat;
    wire [3:0]  alu_stat_wr;

    // Inputs to DUT
    reg         clk;
    reg         dbg_halt_st;
    reg         exec_cycle;
    reg [11:0]  inst_alu;
    reg         inst_bw;
    reg [7:0]   inst_jmp;
    reg [7:0]   inst_so;
    reg [15:0]  op_dst;
    reg [15:0]  op_src;
    reg [3:0]   status;


    omsp_alu dut (
        .alu_out     (alu_out),
        .alu_out_add (alu_out_add),
        .alu_stat    (alu_stat),
        .alu_stat_wr (alu_stat_wr),
        .dbg_halt_st (dbg_halt_st),
        .exec_cycle  (exec_cycle),
        .inst_alu    (inst_alu),
        .inst_bw     (inst_bw),
        .inst_jmp    (inst_jmp),
        .inst_so     (inst_so),
        .op_dst      (op_dst),
        .op_src      (op_src),
        .status      (status)
    );

    always #10 clk = ~clk;

    initial begin
        // Setup monitoring
        $monitor("Time:%t | Op: %h | Src: %d | Dst: %d | Out: %d | Flags(VNZC): %b", 
                 $time, inst_alu, op_src, op_dst, alu_out, alu_stat);

        // Initialize Inputs
        clk          = 1'b0;
        dbg_halt_st  = 1'b0;
        exec_cycle   = 1'b0;
        inst_alu     = 12'h000;
        inst_bw      = 1'b0; // 16-bit mode
        inst_jmp     = 8'h00;
        inst_so      = 8'h00;
        op_dst       = 16'h0000;
        op_src       = 16'h0000;
        status       = 4'b0000;

        repeat(2) @(posedge clk);
        #1;

        //Test Case 1: ADD Operation (16-bit)
        inst_alu   = 12'b0000_0000_1000; 
        exec_cycle = 1'b1;
        op_src     = 16'd100;
        op_dst     = 16'd250;
        #5; 
        if (alu_out !== 16'd350) begin
            $display("ERROR 1: ADD expected 350, got %d", alu_out);
            $finish;
        end

        //Test Case 2: AND Operation (16-bit) 
        @(posedge clk); #1;
        inst_alu   = 12'b0000_0001_0000; 
        op_src     = 16'h00FF;
        op_dst     = 16'h0F0F;
        #5;
        if (alu_out !== 16'h000F) begin
            $display("ERROR 2: AND expected 000F, got %h", alu_out);
            $finish;
        end

        //Test Case 3: Byte Operation (8-bit) 
        // Testing Overflow and Negative flags for 8-bit ADD
        @(posedge clk); #1;
        inst_bw    = 1'b1; // Byte mode
        inst_alu   = 12'b0000_0000_1000; // ALU_ADD
        op_src     = 16'h0070; // 112
        op_dst     = 16'h0020; // 32
        #5;
       
        if (alu_stat[2] !== 1'b1) begin 
            $display("ERROR 3: Expected Negative flag for 8-bit sum 144");
            $finish;
        end

        //Test Case 4: XOR Operation 
        @(posedge clk); #1;
        inst_bw    = 1'b0;
        inst_alu   = 12'b0000_0100_0000; 
        op_src     = 16'hAAAA;
        op_dst     = 16'h5555;
        #5;
        if (alu_out !== 16'hFFFF) begin
            $display("ERROR 4: XOR expected FFFF, got %h", alu_out);
            $finish;
        end

        $display("All ALU tests completed successfully.");
        $finish;
    end

    initial begin
        $fsdbDumpfile("alu.fsdb");
        $fsdbDumpvars(0, alu_tb);
    end

endmodule
