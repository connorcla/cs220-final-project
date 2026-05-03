`timescale 1ns / 10ps

`ifdef OMSP_NO_INCLUDE
`else
`include "openMSP430_defines.v"
`endif

module openMSP430_mini_tb;

    //
    // Wire & Register definition
    //------------------------------

    // Data Memory interface
    wire [`DMEM_MSB:0] dmem_addr;
    wire               dmem_cen;
    wire        [15:0] dmem_din;
    wire         [1:0] dmem_wen;
    wire        [15:0] dmem_dout;

    // Program Memory interface
    wire [`PMEM_MSB:0] pmem_addr;
    wire               pmem_cen;
    wire        [15:0] pmem_din;
    wire         [1:0] pmem_wen;
    reg        [15:0] pmem_dout;

    // Peripherals interface
    wire        [13:0] per_addr;
    wire        [15:0] per_din;
    wire        [15:0] per_dout;
    wire         [1:0] per_we;
    wire               per_en;

    // Direct Memory Access interface
    wire        [15:0] dma_dout;
    wire               dma_ready;
    wire               dma_resp;
    reg         [15:1] dma_addr;
    reg         [15:0] dma_din;
    reg                dma_en;
    reg                dma_priority;
    reg          [1:0] dma_we;
    reg                dma_wkup;

    // Digital I/O
    wire               irq_port1;
    wire               irq_port2;
    wire        [15:0] per_dout_dio;
    wire         [7:0] p1_dout;
    wire         [7:0] p1_dout_en;
    wire         [7:0] p1_sel;
    wire         [7:0] p2_dout;
    wire         [7:0] p2_dout_en;
    wire         [7:0] p2_sel;
    wire         [7:0] p3_dout;
    wire         [7:0] p3_dout_en;
    wire         [7:0] p3_sel;
    wire         [7:0] p4_dout;
    wire         [7:0] p4_dout_en;
    wire         [7:0] p4_sel;
    wire         [7:0] p5_dout;
    wire         [7:0] p5_dout_en;
    wire         [7:0] p5_sel;
    wire         [7:0] p6_dout;
    wire         [7:0] p6_dout_en;
    wire         [7:0] p6_sel;
    reg          [7:0] p1_din;
    reg          [7:0] p2_din;
    reg          [7:0] p3_din;
    reg          [7:0] p4_din;
    reg          [7:0] p5_din;
    reg          [7:0] p6_din;

    // Peripheral templates
    wire        [15:0] per_dout_temp_8b;
    wire        [15:0] per_dout_temp_16b;

    // Timer A
    wire               irq_ta0;
    wire               irq_ta1;
    wire        [15:0] per_dout_timerA;
    reg                inclk;
    reg                taclk;
    reg                ta_cci0a;
    reg                ta_cci0b;
    reg                ta_cci1a;
    reg                ta_cci1b;
    reg                ta_cci2a;
    reg                ta_cci2b;
    wire               ta_out0;
    wire               ta_out0_en;
    wire               ta_out1;
    wire               ta_out1_en;
    wire               ta_out2;
    wire               ta_out2_en;

    // Clock / Reset & Interrupts
    reg                dco_clk;
    wire               dco_enable;
    wire               dco_wkup;
    reg                dco_local_enable;
    reg                lfxt_clk;
    wire               lfxt_enable;
    wire               lfxt_wkup;
    reg                lfxt_local_enable;
    wire               mclk;
    wire               aclk;
    wire               aclk_en;
    wire               smclk;
    wire               smclk_en;
    reg                reset_n;
    wire               puc_rst;
    reg                nmi;
    reg  [`IRQ_NR-3:0] irq;
    wire [`IRQ_NR-3:0] irq_acc;
    wire [`IRQ_NR-3:0] irq_in;
    reg                cpu_en;
    reg         [13:0] wkup;
    wire        [13:0] wkup_in;

    // Scan (ASIC version only)
    reg                scan_enable;
    reg                scan_mode;

    // Debug interface: UART
    reg                dbg_en;
    wire               dbg_freeze;
    wire               dbg_uart_txd;
    wire               dbg_uart_rxd;
    reg                dbg_uart_rxd_sel;
    reg                dbg_uart_rxd_dly;
    reg                dbg_uart_rxd_pre;
    reg                dbg_uart_rxd_meta;
    reg         [15:0] dbg_uart_buf;
    reg                dbg_uart_rx_busy;
    reg                dbg_uart_tx_busy;

    // Debug interface: I2C
    wire               dbg_scl;
    wire               dbg_sda;
    wire               dbg_scl_slave;
    wire               dbg_scl_master;
    reg                dbg_scl_master_sel;
    reg                dbg_scl_master_dly;
    reg                dbg_scl_master_pre;
    reg                dbg_scl_master_meta;
    wire               dbg_sda_slave_out;
    wire               dbg_sda_slave_in;
    wire               dbg_sda_master_out;
    reg                dbg_sda_master_out_sel;
    reg                dbg_sda_master_out_dly;
    reg                dbg_sda_master_out_pre;
    reg                dbg_sda_master_out_meta;
    wire               dbg_sda_master_in;
    reg         [15:0] dbg_i2c_buf;
    reg     [8*32-1:0] dbg_i2c_string;

    // Core testbench debuging signals
    wire    [8*32-1:0] i_state;
    wire    [8*32-1:0] e_state;
    wire        [31:0] inst_cycle;
    wire    [8*32-1:0] inst_full;
    wire        [31:0] inst_number;
    wire        [15:0] inst_pc;
    wire    [8*32-1:0] inst_short;

    // Testbench variables
    integer            tb_idx;
    integer            tmp_seed;
    integer            error;
    reg                stimulus_done;

    //
    // Generate Clock & Reset
    //------------------------------
    initial
    begin
        dco_clk = 1'b0;
        forever #25 dco_clk = ~dco_clk;
    end

    initial
    begin
        lfxt_clk          = 1'b0;
        lfxt_local_enable = 1'b0;
        forever
        begin
            #763;  // 655 kHz
            lfxt_local_enable = (lfxt_enable===1) ? lfxt_enable : (lfxt_wkup===1);
            if (lfxt_local_enable)
                lfxt_clk = ~lfxt_clk;
        end
    end

    initial begin
    dco_local_enable = 1'b1;
    force dut.aclk_en = 1'b1;
    #500;
    release dut.aclk_en;
end

    initial
    begin
	scan_mode   = 1'b0;
        scan_enable = 1'b0;
        wkup        = 14'h0000;
        nmi         = 1'b0;
        irq         = {`IRQ_NR-2{1'b0}};

        reset_n       = 1'b1;
        #93;
        reset_n       = 1'b0;
        #593;
        reset_n       = 1'b1;
    end

    initial
    begin
        error                   = 0;
        stimulus_done           = 1;
        irq                     = {`IRQ_NR-2{1'b0}};
        nmi                     = 1'b0;
        wkup                    = 14'h0000;
        dma_addr                = 15'h0000;
        dma_din                 = 16'h0000;
        dma_en                  = 1'b0;
        dma_priority            = 1'b0;
        dma_we                  = 2'b00;
        dma_wkup                = 1'b0;
        cpu_en                  = 1'b1;
        dbg_en                  = 1'b0;
        dbg_uart_rxd_sel        = 1'b0;
        dbg_uart_rxd_dly        = 1'b1;
        dbg_uart_rxd_pre        = 1'b1;
        dbg_uart_rxd_meta       = 1'b0;
        dbg_uart_buf            = 16'h0000;
        dbg_uart_rx_busy        = 1'b0;
        dbg_uart_tx_busy        = 1'b0;
        dbg_scl_master_sel      = 1'b0;
        dbg_scl_master_dly      = 1'b1;
        dbg_scl_master_pre      = 1'b1;
        dbg_scl_master_meta     = 1'b0;
        dbg_sda_master_out_sel  = 1'b0;
        dbg_sda_master_out_dly  = 1'b1;
        dbg_sda_master_out_pre  = 1'b1;
        dbg_sda_master_out_meta = 1'b0;
        dbg_i2c_string          = "";
        p1_din                  = 8'h00;
        p2_din                  = 8'h00;
        p3_din                  = 8'h00;
        p4_din                  = 8'h00;
        p5_din                  = 8'h00;
        p6_din                  = 8'h00;
        inclk                   = 1'b0;
        taclk                   = 1'b0;
        ta_cci0a                = 1'b0;
        ta_cci0b                = 1'b0;
        ta_cci1a                = 1'b0;
        ta_cci1b                = 1'b0;
        ta_cci2a                = 1'b0;
        ta_cci2b                = 1'b0;
        scan_enable             = 1'b0;
        scan_mode               = 1'b0;
    end

    assign wkup_in = wkup;

    openMSP430 dut (
    // OUTPUTs
        .aclk              (aclk),                 // ASIC ONLY: ACLK
        .aclk_en           (aclk_en),              // FPGA ONLY: ACLK enable
        .dbg_freeze        (dbg_freeze),           // Freeze peripherals
        .dbg_i2c_sda_out   (dbg_sda_slave_out),    // Debug interface: I2C SDA OUT
        .dbg_uart_txd      (dbg_uart_txd),         // Debug interface: UART TXD
        .dco_enable        (dco_enable),           // ASIC ONLY: Fast oscillator enable
        .dco_wkup          (dco_wkup),             // ASIC ONLY: Fast oscillator wake-up (asynchronous)
        .dmem_addr         (dmem_addr),            // Data Memory address
        .dmem_cen          (dmem_cen),             // Data Memory chip enable (low active)
        .dmem_din          (dmem_din),             // Data Memory data input
        .dmem_wen          (dmem_wen),             // Data Memory write byte enable (low active)
        .irq_acc           (irq_acc),              // Interrupt request accepted (one-hot signal)
        .lfxt_enable       (lfxt_enable),          // ASIC ONLY: Low frequency oscillator enable
        .lfxt_wkup         (lfxt_wkup),            // ASIC ONLY: Low frequency oscillator wake-up (asynchronous)
        .mclk              (mclk),                 // Main system clock
        .dma_dout          (dma_dout),             // Direct Memory Access data output
        .dma_ready         (dma_ready),            // Direct Memory Access is complete
        .dma_resp          (dma_resp),             // Direct Memory Access response (0:Okay / 1:Error)
        .per_addr          (per_addr),             // Peripheral address
        .per_din           (per_din),              // Peripheral data input
        .per_en            (per_en),               // Peripheral enable (high active)
        .per_we            (per_we),               // Peripheral write byte enable (high active)
        .pmem_addr         (pmem_addr),            // Program Memory address
        .pmem_cen          (pmem_cen),             // Program Memory chip enable (low active)
        .pmem_din          (pmem_din),             // Program Memory data input (optional)
        .pmem_wen          (pmem_wen),             // Program Memory write byte enable (low active) (optional)
        .puc_rst           (puc_rst),              // Main system reset
        .smclk             (smclk),                // ASIC ONLY: SMCLK
        .smclk_en          (smclk_en),             // FPGA ONLY: SMCLK enable

    // INPUTs
        .cpu_en            (cpu_en),               // Enable CPU code execution (asynchronous)
        .dbg_en            (dbg_en),               // Debug interface enable (asynchronous)
        .dbg_i2c_addr      (I2C_ADDR),             // Debug interface: I2C Address
        .dbg_i2c_broadcast (I2C_BROADCAST),        // Debug interface: I2C Broadcast Address (for multicore systems)
        .dbg_i2c_scl       (dbg_scl_slave),        // Debug interface: I2C SCL
        .dbg_i2c_sda_in    (dbg_sda_slave_in),     // Debug interface: I2C SDA IN
        .dbg_uart_rxd      (dbg_uart_rxd),         // Debug interface: UART RXD (asynchronous)
        .dco_clk           (dco_clk),              // Fast oscillator (fast clock)
        .dmem_dout         (dmem_dout),            // Data Memory data output
        .irq               (irq_in),               // Maskable interrupts
        .lfxt_clk          (lfxt_clk),             // Low frequency oscillator (typ 32kHz)
        .dma_addr          (dma_addr),             // Direct Memory Access address
        .dma_din           (dma_din),              // Direct Memory Access data input
        .dma_en            (dma_en),               // Direct Memory Access enable (high active)
        .dma_priority      (dma_priority),         // Direct Memory Access priority (0:low / 1:high)
        .dma_we            (dma_we),               // Direct Memory Access write byte enable (high active)
        .dma_wkup          (dma_wkup),             // ASIC ONLY: DMA Sub-System Wake-up (asynchronous and non-glitchy)
        .nmi               (nmi),                  // Non-maskable interrupt (asynchronous)
        .per_dout          (per_dout),             // Peripheral data output
        .pmem_dout         (pmem_dout),            // Program Memory data output
        .reset_n           (reset_n),              // Reset Pin (low active, asynchronous)
        .scan_enable       (scan_enable),          // ASIC ONLY: Scan enable (active during scan shifting)
        .scan_mode         (scan_mode),            // ASIC ONLY: Scan mode
        .wkup              (|wkup_in)              // ASIC ONLY: System Wake-up (asynchronous)
    );

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, openMSP430_mini_tb);
    end


    initial // Timeout
    begin
        #500000;
        $display(" ===============================================");
        $display("|               SIMULATION FAILED               |");
        $display("|              (simulation Timeout)             |");
        $display(" ===============================================");
        $display("");
        $finish;
    end

    always @(*) begin
        if (pmem_addr == 15'h7FFF) // Address 0xFFFE (Reset Vector)
            pmem_dout = 16'h0000;  // Jump to start of memory
        else if (pmem_addr == 15'h0000)
            pmem_dout = 16'h5506;  // ADD R5, R6 
        else
            pmem_dout = 16'h4303;  // NOP 
    end

    initial begin
        $display("--- Starting Manual ADD Test ---");

        wait (dut.puc_rst == 1'b0);
    
        repeat(10) @(posedge mclk);

        // R5 having 0x1111 and R6 having 0x2222
        force dut.execution_unit_0.register_file_0.r5 = 16'h1111;
        force dut.execution_unit_0.register_file_0.r6 = 16'h2222;
        repeat(20) @(posedge mclk);
        release dut.execution_unit_0.register_file_0.r5;
        release dut.execution_unit_0.register_file_0.r6;

        // CPU fetch and execute
        repeat(10) @(posedge mclk);

        // Expected: 0x1111 + 0x2222 = 0x3333
        if (dut.execution_unit_0.register_file_0.r6 == 16'h3333)
            $display("SUCCESS: ADD Result is %h", dut.execution_unit_0.register_file_0.r6);
        else
            $display("FAILURE: ADD Result is %h (Expected 3333)", dut.execution_unit_0.register_file_0.r6);

        $finish;
    end

endmodule
