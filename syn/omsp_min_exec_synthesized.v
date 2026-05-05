/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-4
// Date      : Mon May  4 21:09:27 2026
/////////////////////////////////////////////////////////////


module omsp_min_exec ( mclk, puc_rst, pmem_dout, pmem_addr, pmem_en, dmem_dout, 
        dmem_addr, dmem_din, dmem_wen, dmem_en );
  input [15:0] pmem_dout;
  output [14:0] pmem_addr;
  input [15:0] dmem_dout;
  output [15:0] dmem_addr;
  output [15:0] dmem_din;
  output [1:0] dmem_wen;
  input mclk, puc_rst;
  output pmem_en, dmem_en;
  wire   fe_mb_en, eu_mb_en, N3, N4, exec_done, inst_bw, inst_irq_rst,
         inst_mov, cpuoff, pc_sw_wr, N5, n2, net13631, net13632, net13633,
         net13634, net13635, net13636, net13637, net13638, net13639, net13640,
         net13641, net13642, net13643, net13644, net13645, net13646, net13647,
         net13648, net13649, net13650, net13651, net13652, net13653, net13654,
         net13655, net13656, net13657, net13658, net13659, net13660, net13661,
         net13662, net13663, net13664, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25,
         SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27,
         SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29,
         SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31,
         SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33,
         SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35,
         SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37,
         SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39;
  wire   [15:0] eu_mdb_in;
  wire   [15:1] fe_mab;
  wire   [3:0] e_state;
  wire   [6:0] inst_ad;
  wire   [7:0] inst_as;
  wire   [11:0] inst_alu;
  wire   [15:0] inst_dest;
  wire   [15:0] inst_dext;
  wire   [6:0] inst_jmp;
  wire   [15:0] inst_sext;
  wire   [7:0] inst_so;
  wire   [15:0] inst_src;
  wire   [2:0] inst_type;
  wire   [15:0] pc;
  wire   [15:0] pc_nxt;
  wire   [15:0] pc_sw;
wand  n_Logic0_;

  INVX0_RVT I_1 ( .A(N3), .Y(N4) );
  AND2X1_RVT C60 ( .A1(eu_mb_en), .A2(dmem_addr[15]), .Y(N3) );
  AND2X1_RVT C55 ( .A1(eu_mb_en), .A2(n2), .Y(dmem_en) );
  AND2X1_RVT C54 ( .A1(eu_mb_en), .A2(dmem_addr[15]), .Y(N5) );
  OR2X1_RVT C53 ( .A1(fe_mb_en), .A2(N5), .Y(pmem_en) );
  AO22X1_RVT U3 ( .A1(N4), .A2(fe_mab[10]), .A3(N3), .A4(dmem_addr[10]), .Y(
        pmem_addr[9]) );
  AO22X1_RVT U4 ( .A1(N4), .A2(fe_mab[9]), .A3(N3), .A4(dmem_addr[9]), .Y(
        pmem_addr[8]) );
  AO22X1_RVT U5 ( .A1(N4), .A2(fe_mab[8]), .A3(N3), .A4(dmem_addr[8]), .Y(
        pmem_addr[7]) );
  AO22X1_RVT U6 ( .A1(N4), .A2(fe_mab[7]), .A3(N3), .A4(dmem_addr[7]), .Y(
        pmem_addr[6]) );
  AO22X1_RVT U7 ( .A1(N4), .A2(fe_mab[6]), .A3(N3), .A4(dmem_addr[6]), .Y(
        pmem_addr[5]) );
  AO22X1_RVT U8 ( .A1(N4), .A2(fe_mab[5]), .A3(N3), .A4(dmem_addr[5]), .Y(
        pmem_addr[4]) );
  AO22X1_RVT U9 ( .A1(N4), .A2(fe_mab[4]), .A3(N3), .A4(dmem_addr[4]), .Y(
        pmem_addr[3]) );
  AO22X1_RVT U10 ( .A1(N4), .A2(fe_mab[3]), .A3(N3), .A4(dmem_addr[3]), .Y(
        pmem_addr[2]) );
  AO22X1_RVT U11 ( .A1(N4), .A2(fe_mab[2]), .A3(N3), .A4(dmem_addr[2]), .Y(
        pmem_addr[1]) );
  AO22X1_RVT U12 ( .A1(N4), .A2(fe_mab[15]), .A3(N3), .A4(dmem_addr[15]), .Y(
        pmem_addr[14]) );
  AO22X1_RVT U13 ( .A1(N4), .A2(fe_mab[14]), .A3(N3), .A4(dmem_addr[14]), .Y(
        pmem_addr[13]) );
  AO22X1_RVT U14 ( .A1(N4), .A2(fe_mab[13]), .A3(N3), .A4(dmem_addr[13]), .Y(
        pmem_addr[12]) );
  AO22X1_RVT U15 ( .A1(N4), .A2(fe_mab[12]), .A3(N3), .A4(dmem_addr[12]), .Y(
        pmem_addr[11]) );
  AO22X1_RVT U16 ( .A1(N4), .A2(fe_mab[11]), .A3(N3), .A4(dmem_addr[11]), .Y(
        pmem_addr[10]) );
  AO22X1_RVT U17 ( .A1(N4), .A2(fe_mab[1]), .A3(N3), .A4(dmem_addr[1]), .Y(
        pmem_addr[0]) );
  AO22X1_RVT U19 ( .A1(dmem_addr[15]), .A2(pmem_dout[9]), .A3(n2), .A4(
        dmem_dout[9]), .Y(eu_mdb_in[9]) );
  AO22X1_RVT U20 ( .A1(dmem_addr[15]), .A2(pmem_dout[8]), .A3(n2), .A4(
        dmem_dout[8]), .Y(eu_mdb_in[8]) );
  AO22X1_RVT U21 ( .A1(dmem_addr[15]), .A2(pmem_dout[7]), .A3(n2), .A4(
        dmem_dout[7]), .Y(eu_mdb_in[7]) );
  AO22X1_RVT U22 ( .A1(dmem_addr[15]), .A2(pmem_dout[6]), .A3(n2), .A4(
        dmem_dout[6]), .Y(eu_mdb_in[6]) );
  AO22X1_RVT U23 ( .A1(dmem_addr[15]), .A2(pmem_dout[5]), .A3(n2), .A4(
        dmem_dout[5]), .Y(eu_mdb_in[5]) );
  AO22X1_RVT U24 ( .A1(dmem_addr[15]), .A2(pmem_dout[4]), .A3(n2), .A4(
        dmem_dout[4]), .Y(eu_mdb_in[4]) );
  AO22X1_RVT U25 ( .A1(dmem_addr[15]), .A2(pmem_dout[3]), .A3(n2), .A4(
        dmem_dout[3]), .Y(eu_mdb_in[3]) );
  AO22X1_RVT U26 ( .A1(dmem_addr[15]), .A2(pmem_dout[2]), .A3(n2), .A4(
        dmem_dout[2]), .Y(eu_mdb_in[2]) );
  AO22X1_RVT U27 ( .A1(dmem_addr[15]), .A2(pmem_dout[1]), .A3(n2), .A4(
        dmem_dout[1]), .Y(eu_mdb_in[1]) );
  AO22X1_RVT U28 ( .A1(dmem_addr[15]), .A2(pmem_dout[15]), .A3(n2), .A4(
        dmem_dout[15]), .Y(eu_mdb_in[15]) );
  AO22X1_RVT U29 ( .A1(dmem_addr[15]), .A2(pmem_dout[14]), .A3(n2), .A4(
        dmem_dout[14]), .Y(eu_mdb_in[14]) );
  AO22X1_RVT U30 ( .A1(dmem_addr[15]), .A2(pmem_dout[13]), .A3(n2), .A4(
        dmem_dout[13]), .Y(eu_mdb_in[13]) );
  AO22X1_RVT U31 ( .A1(dmem_addr[15]), .A2(pmem_dout[12]), .A3(n2), .A4(
        dmem_dout[12]), .Y(eu_mdb_in[12]) );
  AO22X1_RVT U32 ( .A1(dmem_addr[15]), .A2(pmem_dout[11]), .A3(n2), .A4(
        dmem_dout[11]), .Y(eu_mdb_in[11]) );
  AO22X1_RVT U33 ( .A1(dmem_addr[15]), .A2(pmem_dout[10]), .A3(n2), .A4(
        dmem_dout[10]), .Y(eu_mdb_in[10]) );
  AO22X1_RVT U34 ( .A1(dmem_addr[15]), .A2(pmem_dout[0]), .A3(n2), .A4(
        dmem_dout[0]), .Y(eu_mdb_in[0]) );
  INVX0_RVT U35 ( .A(dmem_addr[15]), .Y(n2) );
  omsp_frontend frontend_0 ( .e_state(e_state), .exec_done(exec_done), 
        .inst_ad({SYNOPSYS_UNCONNECTED_1, inst_ad[6], SYNOPSYS_UNCONNECTED_2, 
        SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5, 
        SYNOPSYS_UNCONNECTED_6, inst_ad[0]}), .inst_as(inst_as), .inst_alu(
        inst_alu), .inst_bw(inst_bw), .inst_dest(inst_dest), .inst_dext(
        inst_dext), .inst_irq_rst(inst_irq_rst), .inst_jmp({
        SYNOPSYS_UNCONNECTED_7, inst_jmp}), .inst_mov(inst_mov), .inst_sext(
        inst_sext), .inst_so({inst_so[7:3], SYNOPSYS_UNCONNECTED_8, 
        inst_so[1:0]}), .inst_src(inst_src), .inst_type(inst_type), .irq_acc({
        SYNOPSYS_UNCONNECTED_9, SYNOPSYS_UNCONNECTED_10, 
        SYNOPSYS_UNCONNECTED_11, SYNOPSYS_UNCONNECTED_12, 
        SYNOPSYS_UNCONNECTED_13, SYNOPSYS_UNCONNECTED_14, 
        SYNOPSYS_UNCONNECTED_15, SYNOPSYS_UNCONNECTED_16, 
        SYNOPSYS_UNCONNECTED_17, SYNOPSYS_UNCONNECTED_18, 
        SYNOPSYS_UNCONNECTED_19, SYNOPSYS_UNCONNECTED_20, 
        SYNOPSYS_UNCONNECTED_21, SYNOPSYS_UNCONNECTED_22}), .mab({fe_mab, 
        SYNOPSYS_UNCONNECTED_23}), .mb_en(fe_mb_en), .pc(pc), .pc_nxt(pc_nxt), 
        .cpu_en_s(net13641), .cpu_halt_cmd(1'b0), .cpuoff(cpuoff), 
        .dbg_reg_sel({1'b0, 1'b0, 1'b0, 1'b0}), .dma_en(net13642), .dma_wkup(
        net13643), .fe_pmem_wait(1'b0), .gie(net13644), .irq({net13645, 
        net13646, net13647, net13648, net13649, net13650, net13651, net13652, 
        net13653, net13654, net13655, net13656, net13657, net13658}), .mclk(
        mclk), .mdb_in(pmem_dout), .nmi_pnd(net13659), .nmi_wkup(net13660), 
        .pc_sw(pc_sw), .pc_sw_wr(pc_sw_wr), .puc_rst(puc_rst), .scan_enable(
        net13661), .wdt_irq(net13662), .wdt_wkup(net13663), .wkup(net13664) );
  omsp_execution_unit execution_unit_0 ( .cpuoff(cpuoff), .dbg_reg_din({
        SYNOPSYS_UNCONNECTED_24, SYNOPSYS_UNCONNECTED_25, 
        SYNOPSYS_UNCONNECTED_26, SYNOPSYS_UNCONNECTED_27, 
        SYNOPSYS_UNCONNECTED_28, SYNOPSYS_UNCONNECTED_29, 
        SYNOPSYS_UNCONNECTED_30, SYNOPSYS_UNCONNECTED_31, 
        SYNOPSYS_UNCONNECTED_32, SYNOPSYS_UNCONNECTED_33, 
        SYNOPSYS_UNCONNECTED_34, SYNOPSYS_UNCONNECTED_35, 
        SYNOPSYS_UNCONNECTED_36, SYNOPSYS_UNCONNECTED_37, 
        SYNOPSYS_UNCONNECTED_38, SYNOPSYS_UNCONNECTED_39}), .gie(1'b0), .mab(
        dmem_addr), .mb_en(eu_mb_en), .mb_wr(dmem_wen), .mdb_out(dmem_din), 
        .pc_sw(pc_sw), .pc_sw_wr(pc_sw_wr), .dbg_halt_st(net13631), 
        .dbg_mem_dout({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .dbg_reg_wr(1'b0), 
        .e_state(e_state), .exec_done(exec_done), .inst_ad({net13632, 
        inst_ad[6], net13633, net13634, net13635, net13636, net13637, 
        inst_ad[0]}), .inst_as(inst_as), .inst_alu(inst_alu), .inst_bw(inst_bw), .inst_dest(inst_dest), .inst_dext(inst_dext), .inst_irq_rst(inst_irq_rst), 
        .inst_jmp({net13638, inst_jmp}), .inst_mov(inst_mov), .inst_sext(
        inst_sext), .inst_so({inst_so[7:3], net13639, inst_so[1:0]}), 
        .inst_src(inst_src), .inst_type(inst_type), .mclk(mclk), .mdb_in(
        eu_mdb_in), .pc(pc), .pc_nxt(pc_nxt), .puc_rst(puc_rst), .scan_enable(
        net13640) );
endmodule

