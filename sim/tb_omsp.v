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

    openMSP430 uut (

    // OUTPUTs
    .aclk              (aclk),                 // ASIC ONLY: ACLK
    .aclk_en           (aclk_en),              // FPGA ONLY: ACLK enable
    // .dbg_freeze        (dbg_freeze),           // Freeze peripherals
    // .dbg_i2c_sda_out   (dbg_sda_slave_out),    // Debug interface: I2C SDA OUT
    // .dbg_uart_txd      (dbg_uart_txd),         // Debug interface: UART TXD
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
        #150;
        reset_n = 1;

        // R5 having 0x1111 and R6 having 0x2222
        force uut.reg_hi.r5 = 16'h1111;
        force uut.reg_hi.r6 = 16'h2222;
        #10;
        release uut.reg_hi.r5;
        release uut.reg_hi.r6;

        // CPU fetch and execute
        repeat(10) @(posedge mclk);

        // Expected: 0x1111 + 0x2222 = 0x3333
        if (uut.reg_hi.r6 == 16'h3333)
            $display("SUCCESS: ADD Result is %h", uut.reg_hi.r6);
        else
            $display("FAILURE: ADD Result is %h (Expected 3333)", uut.reg_hi.r6);

        $finish;
    end

endmodule
