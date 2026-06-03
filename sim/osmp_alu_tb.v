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
    reg [13:0]  inst_alu;
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

    task check_result;
        input [15:0] expected;
        input [15:0] actual;
	input [7:0]  test;
        begin
            if (expected !== actual) begin
                $display("[FAIL] Test: Expected %h, Got %h", expected, actual);
                $finish;
            end else begin
                $display("[PASS] Test: Match %h", actual);
            end
        end
    endtask

    integer i;

    initial begin

	$monitor("Time:%t | Op: %h | Src: %d | Dst: %d | Out: %d | Flags(VNZC): %b",
                 $time, inst_alu, op_src, op_dst, alu_out, alu_stat);

        clk         = 0;
    	exec_cycle  = 1;
    	status      = 4'h0;
    
   
    	dbg_halt_st = 1'b0;  
    	inst_jmp    = 8'h00; 
    	inst_so     = 8'h00;
    	inst_bw     = 1'b0;
    	inst_alu    = 12'h000;
    	op_src      = 16'h0000;
    	op_dst      = 16'h0000;

    	repeat(5) @(posedge clk);

        $display("--- Starting Corner Case Tests (10) ---");

        // Max positive 16-bit ADD (0x7FFF + 0x0001) Overflow check
        @(negedge clk); 
	inst_alu = 14'h0008; 
	inst_bw = 0; 
	op_src = 16'h7FFF; 
	op_dst = 16'h0001;
        #5; 
	check_result(16'h8000, alu_out, "CORNER_1_OVERFLOW");

        // Zero Result Check (AND with 0)
        @(negedge clk); 
	inst_alu = 14'h0010; 
	op_src = 16'hFFFF; 
	op_dst = 16'h0000;
        #5; 
	check_result(16'h0000, alu_out, "CORNER_2_ZERO");

        // Byte Mode Wrap Around (8-bit ADD)
        @(negedge clk); 
	inst_bw = 1; 
	inst_alu = 14'h0008; 
	op_src = 16'h00FF; 
	op_dst = 16'h0001;
        #5; 
	check_result(16'h0000, (alu_out & 16'h00FF), "CORNER_3_BYTE_WRAP");

        // XOR with 0
        @(negedge clk); 
	inst_bw = 0; 
	inst_alu = 14'h0040; 
	op_src = 16'hABCD; 
	op_dst = 16'h0000;
        #5; 
	check_result(16'hABCD, alu_out, "CORNER_4_XOR_ID");

	// ALU_SRC_INV - Inverter Logic Path
        @(negedge clk);
        inst_alu = 14'h0001; 
        op_src   = 16'hAAAA;
        #5; 
        check_result(16'h5555, alu_out, "CORNER_5_INV");

        // ALU_INC Adder Critical Path (Boundary)
        @(negedge clk);
        inst_alu = 14'h0008;
        op_src   = 16'h0001;	
        op_dst   = 16'hFFFF;
	status   = 4'h0;
        #5; 
        check_result(16'h0000, alu_out, "CORNER_6_INC_WRAP");

        // OR Logical Unit Path
        @(negedge clk);
        inst_alu = 14'h0020;
        op_src   = 16'hF0F0;
        op_dst   = 16'h0F0F;
        #5;
        check_result(16'hFFFF, alu_out, "CORNER_7_OR");

        // XOR Logical Unit Path
        @(negedge clk);
        inst_alu = 14'h0040;
        op_src   = 16'h5555;
        op_dst   = 16'h5555;
        #5;
        check_result(16'h0000, alu_out, "CORNER_8_XOR_ZERO");

        // Shifter path
        @(negedge clk);
        inst_alu = 14'h0400;
        op_src   = 16'h0004;
	op_dst   = 16'h0000;
        #5;
        check_result(16'h0002, alu_out, "CORNER_9_SHIFT");

        // Status bit manipulation
        @(negedge clk);
        inst_alu = 14'h0008;
	op_src   = 16'h0080;
	op_dst   = 16'h0000;
        #5;
        if (alu_out[7] !== 1'b1) begin
            $display("[FAIL] CORNER_10: Expected bit 7 to be set");
            $finish;
        end else $display("[PASS] CORNER_10_STAT7");

	// NEW TEST CASES /////////////////////
        
        $display("--- Starting MUL and MAC Optimization ---");
        
        // Basic MUL
	@(negedge clk);
	inst_bw  = 0;
	inst_alu = 14'h1000;
	op_src   = 16'd10;
	op_dst   = 16'd12;
	#5;
	check_result(16'd120, alu_out, "MUL_BASIC_1");

	// Basic MAC
	@(negedge clk);
	inst_alu = 14'h2000;
	op_src   = 16'd3;
	op_dst   = 16'd120;
	#5;
	check_result(16'd480, alu_out, "MAC_BASIC_2");

	// MUL Overflow
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'h4000;
	op_dst   = 16'h0004;
	#5;
	check_result(16'h0000, alu_out, "MUL_OVER_WRAP_3");

	// MUL by zero
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'h0000;
	op_dst   = 16'h5A5A;
	#5;
	check_result(16'h0000, alu_out, "MUL_ZERO_4");

	// MAC zero
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'hFFFF;
	op_dst   = 16'h0000;
	#5;
	check_result(16'h0000, alu_out, "MAC_ZERO_5");

	// MUL Identity
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'h0001;
	op_dst   = 16'hABCD;
	#5;
	check_result(16'hABCD, alu_out, "MUL_ONE_6");

	// MUL Max Unsigned
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'hFFFF;
	op_dst   = 16'h0002;
	#5;
	check_result(16'hFFFE, alu_out, "MUL_MAX_UNSIGNED_7");

	// MAC Max Overflow
	@(negedge clk);
	inst_alu = 14'h2000;
	op_src   = 16'h0005;
	op_dst   = 16'hFFFF;
	#5;
	check_result(16'hFFFA, alu_out, "MAC_MAX_OVERFLOW_8");

	// MUL Power Switch Profile
	@(negedge clk);
	inst_alu = 14'h1000;
	op_src   = 16'hAAAA;
	op_dst   = 16'h5555;
	#5;
	check_result(16'h1C72, alu_out, "MUL_SWITCHING_STRESS_9");


        $display("Starting Random-Constrained Tests (10)");
        for (i = 0; i < 10; i = i + 1) begin
            @(negedge clk);
            inst_bw = $random % 2;  
            inst_alu = 14'h0008;     
            op_src = $random % 65536;
            op_dst = $random % 65536;
            
            #5;
            if (inst_bw) 
                check_result((op_src[7:0] + op_dst[7:0]) & 8'hFF, alu_out[7:0], "RANDOM_ADD_BYTE");
            else
                check_result((op_src + op_dst) & 16'hFFFF, alu_out, "RANDOM_ADD_WORD");
        end

        $display("ALL TESTCASES PASSED SUCCESSFULLY");
        $finish;
    end 

    initial begin
        $fsdbDumpfile("alu.fsdb");
        $fsdbDumpvars(0, alu_tb, "+all");
	$dumpfile("alu.vcd");
	$dumpvars(0, alu_tb);
    end

endmodule
