`timescale 1ns / 10ps

module openMSP430_mini_tb;

    // Signals 
    reg         dco_clk;
    reg         reset_n;
    wire        mclk;
    wire [15:0] pmem_addr;
    wire        pmem_cen;
    reg  [15:0] pmem_dout;
    
    // Clock 
    initial dco_clk = 0;
    always #25 dco_clk = ~dco_clk;

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, openMSP430_mini_tb);
    end

    openMSP430 dut (
        // OUTPUTs
        .aclk              (aclk),               // ASIC ONLY: ACLK
        .aclk_en           (aclk_en),            // FPGA ONLY: ACLK enable
        .dbg_freeze        (),                   // Open: Freeze peripherals
        .dbg_i2c_sda_out   (),                   // Open: Debug interface: I2C SDA OUT
        .dbg_uart_txd      (),                   // Open: Debug interface: UART TXD
        .dco_enable        (dco_enable),         // ASIC ONLY: Fast oscillator enable
        .dco_wkup          (dco_wkup),           // ASIC ONLY: Fast oscillator wake-up
        .dmem_addr         (dmem_addr),          // Data Memory address
        .dmem_cen          (dmem_cen),           // Data Memory chip enable (low active)
        .dmem_din          (dmem_din),           // Data Memory data input
        .dmem_wen          (dmem_wen),           // Data Memory write byte enable (low active)
        .irq_acc           (irq_acc),            // Interrupt request accepted
        .lfxt_enable       (lfxt_enable),        // ASIC ONLY: Low frequency oscillator enable
        .lfxt_wkup         (lfxt_wkup),          // ASIC ONLY: Low frequency oscillator wake-up
        .mclk              (mclk),               // Main system clock
        .dma_dout          (dma_dout),           // Direct Memory Access data output
        .dma_ready         (dma_ready),          // Direct Memory Access is complete
        .dma_resp          (dma_resp),           // Direct Memory Access response
        .per_addr          (per_addr),           // Peripheral address
        .per_din           (per_din),            // Peripheral data input
        .per_en            (per_en),             // Peripheral enable (high active)
        .per_we            (per_we),             // Peripheral write byte enable (high active)
        .pmem_addr         (pmem_addr),          // Program Memory address
        .pmem_cen          (pmem_cen),           // Program Memory chip enable (low active)
        .pmem_din          (pmem_din),           // Program Memory data input
        .pmem_wen          (pmem_wen),           // Program Memory write byte enable (low active)
        .puc_rst           (puc_rst),            // Main system reset
        .smclk             (smclk),              // ASIC ONLY: SMCLK
        .smclk_en          (smclk_en),           // FPGA ONLY: SMCLK enable

        // INPUTs
        .cpu_en            (1'b1),               // Hardwired: Enable CPU code execution
        .dbg_en            (1'b0),               // Hardwired: Disable debug interface
        .dbg_i2c_addr      (7'h00),              // Hardwired: Default I2C Address
        .dbg_i2c_broadcast (7'h00),              // Hardwired: Default I2C Broadcast
        .dbg_i2c_scl       (1'b1),               // Hardwired: Pull-up SCL
        .dbg_i2c_sda_in    (1'b1),               // Hardwired: Pull-up SDA
        .dbg_uart_rxd      (1'b1),               // Hardwired: UART idle high
        .dco_clk           (dco_clk),            // Fast oscillator (fast clock)
        .dmem_dout         (dmem_dout),          // Data Memory data output
        .irq               (14'h0000),           // Hardwired: No maskable interrupts
        .lfxt_clk          (1'b0),               // Hardwired: Disable LF oscillator
        .dma_addr          (15'h0000),           // Hardwired: No DMA
        .dma_din           (16'h0000),           // Hardwired: No DMA
        .dma_en            (1'b0),               // Hardwired: No DMA
        .dma_priority      (1'b0),               // Hardwired: No DMA
        .dma_we            (2'b00),              // Hardwired: No DMA
        .dma_wkup          (1'b0),               // Hardwired: No DMA
        .nmi               (1'b0),               // Hardwired: No non-maskable interrupt
        .per_dout          (per_dout),           // Peripheral data output
        .pmem_dout         (pmem_dout),          // Program Memory data output
        .reset_n           (reset_n),            // Reset Pin (low active)
        .scan_enable       (1'b0),               // CRITICAL: Disable scan for simulation
        .scan_mode         (1'b0),               // CRITICAL: Disable scan for simulation
        .wkup              (1'b0)                // Hardwired: Disable wake-up
    );

    //
    // Generate Clock & Reset
    //------------------------------
    initial
    begin
        dco_clk          = 1'b0;
        dco_local_enable = 1'b0;
        forever
        begin
            #25;   // 20 MHz
            dco_local_enable = (dco_enable===1) ? dco_enable : (dco_wkup===1);
            if (dco_local_enable | scan_mode)
                dco_clk = ~dco_clk;
        end
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
        
        //Trigger Reset
        reset_n = 0;
        #500;
        reset_n = 1;
    
        repeat(10) @(posedge mclk);

        // R5 having 0x1111 and R6 having 0x2222
        force dut.execution_unit_0.register_file_0.r5 = 16'h1111;
        force dut.execution_unit_0.register_file_0.r6 = 16'h2222;
        #10;
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
