`ifdef OMSP_NO_INCLUDE
`else
`include "openMSP430_defines.v"
`endif

module omsp_min_exec (
    // Main inputs
    mclk,       
    puc_rst,    

    // Program Memory Interface I/O
    pmem_dout,
    pmem_addr,
    pmem_en,

    // Data Memory Interface I/O
    dmem_dout,
    dmem_addr,
    dmem_din,
    dmem_wen,
    dmem_en
);

// Global Signals
input         mclk;    
input         puc_rst;

// Program Memory Interface (to TB)
input  [15:0] pmem_dout;
output [14:0] pmem_addr;
output        pmem_en;

// Data Memory Interface (to TB)
input  [15:0] dmem_dout;
output [15:0] dmem_addr;
output [15:0] dmem_din;
output  [1:0] dmem_wen;
output        dmem_en;

// Wires

wire                 pc_sw_wr;
wire          [15:0] pc_sw;
wire          [15:0] pc;
wire          [15:0] pc_nxt;
wire                 cpu_mclk;
wire                 gie;

wire           [7:0] inst_ad;
wire           [7:0] inst_as;
wire          [11:0] inst_alu;
wire                 inst_bw;
wire                 inst_irq_rst;
wire                 inst_mov;
wire          [15:0] inst_dest;
wire          [15:0] inst_dext;
wire          [15:0] inst_sext;
wire           [7:0] inst_so;
wire          [15:0] inst_src;
wire           [2:0] inst_type;
wire           [7:0] inst_jmp;
wire           [3:0] e_state;
wire                 exec_done;

wire          [15:0] eu_mab;
wire          [15:0] eu_mdb_in;
wire          [15:0] eu_mdb_out;
wire           [1:0] eu_mb_wr;
wire                 eu_mb_en;
wire          [15:0] fe_mab;
wire          [15:0] fe_mdb_in;
wire                 fe_mb_en;
wire                 fe_pmem_wait;

wire                 scg0;
wire                 scg1;
wire                 oscoff;
wire                 cpuoff;
wire          [15:0] dbg_reg_din;
wire                 dbg_reg_wr;
wire          [15:0] dbg_mem_dout;
wire                 cpu_halt_st;
 
wire                 scan_enable; 
wire                 wkup; 
wire                 wdt_irq;
wire                 wdt_wkup;
wire                 nmi_acc;
wire                 nmi_pnd;
wire                 nmi_wkup;
wire                 mclk_dma_enable;
wire                 mclk_dma_wkup;
wire                 mclk_enable;
wire                 mclk_wkup;
wire   [`IRQ_NR-3:0] irq_acc; 
wire   [`IRQ_NR-3:0] irq;  
wire          [15:0] dbg_mem_addr;
wire                 cpu_halt_cmd;
wire                 cpu_en_s;
wire                 decode_noirq;

wire                 dma_en;                 // Direct Memory Access enable (high active)
wire                 dma_wkup;

// CPU & Clock logic
assign cpu_mclk    = mclk;
assign cpu_en_s     = 1'b1; // Always enabled
assign cpu_halt_cmd = 1'b0; // Never halt
assign scan_enable  = 1'b0; // No scan chain testing
assign wkup         = 1'b0; // No low-power wakeup needed
assign gie          = 1'b0; // Disable interrupts for this min-test

// Interrupt tie-offs (Prevent random resets)
assign nmi_pnd      = 1'b0;
assign nmi_wkup     = 1'b0;
assign wdt_irq      = 1'b0;
assign wdt_wkup     = 1'b0;
assign irq          = {`IRQ_NR-2{1'b0}};

// Simulate Memory backbone
assign dmem_addr = eu_mab;
assign pmem_addr = eu_mb_en ? eu_mab[15:1] : fe_mab[15:1]; 

assign pmem_en   = eu_mb_en | fe_mb_en;
assign dmem_en   = eu_mb_en;
assign dmem_wen  = eu_mb_wr;
assign dmem_din  = eu_mdb_out;

assign fe_mdb_in = pmem_dout;
assign eu_mdb_in = dmem_dout;
assign fe_pmem_wait = 1'b0;

//Debug...
assign dbg_mem_addr = 16'h0000;
assign dbg_reg_wr = 1'b0;
assign dbg_mem_dout = 16'h0000;


omsp_frontend frontend_0 (

// OUTPUTs
    .cpu_halt_st       (cpu_halt_st),        // Halt/Run status from CPU
    .decode_noirq      (decode_noirq),       // Frontend decode instruction
    .e_state           (e_state),            // Execution state
    .exec_done         (exec_done),          // Execution completed
    .inst_ad           (inst_ad),            // Decoded Inst: destination addressing mode
    .inst_as           (inst_as),            // Decoded Inst: source addressing mode
    .inst_alu          (inst_alu),           // ALU control signals
    .inst_bw           (inst_bw),            // Decoded Inst: byte width
    .inst_dest         (inst_dest),          // Decoded Inst: destination (one hot)
    .inst_dext         (inst_dext),          // Decoded Inst: destination extended instruction word
    .inst_irq_rst      (inst_irq_rst),       // Decoded Inst: Reset interrupt
    .inst_jmp          (inst_jmp),           // Decoded Inst: Conditional jump
    .inst_mov          (inst_mov),           // Decoded Inst: mov instruction
    .inst_sext         (inst_sext),          // Decoded Inst: source extended instruction word
    .inst_so           (inst_so),            // Decoded Inst: Single-operand arithmetic
    .inst_src          (inst_src),           // Decoded Inst: source (one hot)
    .inst_type         (inst_type),          // Decoded Instruction type
    .irq_acc           (irq_acc),            // Interrupt request accepted
    .mab               (fe_mab),             // Frontend Memory address bus
    .mb_en             (fe_mb_en),           // Frontend Memory bus enable
    .mclk_dma_enable   (mclk_dma_enable),    // DMA Sub-System Clock enable
    .mclk_dma_wkup     (mclk_dma_wkup),      // DMA Sub-System Clock wake-up (asynchronous)
    .mclk_enable       (mclk_enable),        // Main System Clock enable
    .mclk_wkup         (mclk_wkup),          // Main System Clock wake-up (asynchronous)
    .nmi_acc           (nmi_acc),            // Non-Maskable interrupt request accepted
    .pc                (pc),                 // Program counter
    .pc_nxt            (pc_nxt),             // Next PC value (for CALL & IRQ)

// INPUTs
    .cpu_en_s          (cpu_en_s),           // Enable CPU code execution (synchronous)
    .cpu_halt_cmd      (cpu_halt_cmd),       // Halt CPU command
    .cpuoff            (cpuoff),             // Turns off the CPU
    .dbg_reg_sel       (dbg_mem_addr[3:0]),  // Debug selected register for rd/wr access
    .dma_en            (dma_en),             // Direct Memory Access enable (high active)
    .dma_wkup          (dma_wkup),           // DMA Sub-System Wake-up (asynchronous and non-glitchy)
    .fe_pmem_wait      (fe_pmem_wait),       // Frontend wait for Instruction fetch
    .gie               (gie),                // General interrupt enable
    .irq               (irq),                // Maskable interrupts
    .mclk              (cpu_mclk),           // Main system clock
    .mdb_in            (fe_mdb_in),          // Frontend Memory data bus input
    .nmi_pnd           (nmi_pnd),            // Non-maskable interrupt pending
    .nmi_wkup          (nmi_wkup),           // NMI Wakeup
    .pc_sw             (pc_sw),              // Program counter software value
    .pc_sw_wr          (pc_sw_wr),           // Program counter software write
    .puc_rst           (puc_rst),            // Main system reset
    .scan_enable       (scan_enable),        // Scan enable (active during scan shifting)
    .wdt_irq           (wdt_irq),            // Watchdog-timer interrupt
    .wdt_wkup          (wdt_wkup),           // Watchdog Wakeup
    .wkup              (wkup)                // System Wake-up (asynchronous)
);


//=============================================================================
// 4)  EXECUTION UNIT
//=============================================================================

omsp_execution_unit execution_unit_0 (

// OUTPUTs
    .cpuoff            (cpuoff),             // Turns off the CPU
    .dbg_reg_din       (dbg_reg_din),        // Debug unit CPU register data input
    .mab               (eu_mab),             // Memory address bus
    .mb_en             (eu_mb_en),           // Memory bus enable
    .mb_wr             (eu_mb_wr),           // Memory bus write transfer
    .mdb_out           (eu_mdb_out),         // Memory data bus output
    .oscoff            (oscoff),             // Turns off LFXT1 clock input
    .pc_sw             (pc_sw),              // Program counter software value
    .pc_sw_wr          (pc_sw_wr),           // Program counter software write
    .scg0              (scg0),               // System clock generator 1. Turns off the DCO
    .scg1              (scg1),               // System clock generator 1. Turns off the SMCLK

// INPUTs
    .dbg_halt_st       (cpu_halt_st),        // Halt/Run status from CPU
    .dbg_mem_dout      (dbg_mem_dout),       // Debug unit data output
    .dbg_reg_wr        (dbg_reg_wr),         // Debug unit CPU register write
    .e_state           (e_state),            // Execution state
    .exec_done         (exec_done),          // Execution completed
    .gie               (gie),                // General interrupt enable
    .inst_ad           (inst_ad),            // Decoded Inst: destination addressing mode
    .inst_as           (inst_as),            // Decoded Inst: source addressing mode
    .inst_alu          (inst_alu),           // ALU control signals
    .inst_bw           (inst_bw),            // Decoded Inst: byte width
    .inst_dest         (inst_dest),          // Decoded Inst: destination (one hot)
    .inst_dext         (inst_dext),          // Decoded Inst: destination extended instruction word
    .inst_irq_rst      (inst_irq_rst),       // Decoded Inst: reset interrupt
    .inst_jmp          (inst_jmp),           // Decoded Inst: Conditional jump
    .inst_mov          (inst_mov),           // Decoded Inst: mov instruction
    .inst_sext         (inst_sext),          // Decoded Inst: source extended instruction word
    .inst_so           (inst_so),            // Decoded Inst: Single-operand arithmetic
    .inst_src          (inst_src),           // Decoded Inst: source (one hot)
    .inst_type         (inst_type),          // Decoded Instruction type
    .mclk              (cpu_mclk),           // Main system clock
    .mdb_in            (eu_mdb_in),          // Memory data bus input
    .pc                (pc),                 // Program counter
    .pc_nxt            (pc_nxt),             // Next PC value (for CALL & IRQ)
    .puc_rst           (puc_rst),            // Main system reset
    .scan_enable       (scan_enable)         // Scan enable (active during scan shifting)
);


endmodule

`ifdef OMSP_NO_INCLUDE
`else
`include "openMSP430_undefines.v"
`endif
