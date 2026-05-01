/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-4
// Date      : Fri May  1 15:20:02 2026
/////////////////////////////////////////////////////////////


module omsp_alu_DP_OP_68_122_3245_1 ( I1, I2, I3, O1, O2 );
  input [16:0] I1;
  input [15:0] I2;
  output [16:0] O1;
  output [16:0] O2;
  input I3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n69;

  XOR2X1_RVT U1 ( .A1(n1), .A2(n69), .Y(O2[16]) );
  HADDX1_RVT U2 ( .A0(n2), .B0(O1[15]), .C1(n1), .SO(O2[15]) );
  HADDX1_RVT U3 ( .A0(n3), .B0(O1[14]), .C1(n2), .SO(O2[14]) );
  HADDX1_RVT U4 ( .A0(n4), .B0(O1[13]), .C1(n3), .SO(O2[13]) );
  HADDX1_RVT U5 ( .A0(n5), .B0(O1[12]), .C1(n4), .SO(O2[12]) );
  HADDX1_RVT U6 ( .A0(n6), .B0(O1[11]), .C1(n5), .SO(O2[11]) );
  HADDX1_RVT U7 ( .A0(n7), .B0(O1[10]), .C1(n6), .SO(O2[10]) );
  HADDX1_RVT U8 ( .A0(n8), .B0(O1[9]), .C1(n7), .SO(O2[9]) );
  HADDX1_RVT U9 ( .A0(n9), .B0(O1[8]), .C1(n8), .SO(O2[8]) );
  HADDX1_RVT U10 ( .A0(n10), .B0(O1[7]), .C1(n9), .SO(O2[7]) );
  HADDX1_RVT U11 ( .A0(n11), .B0(O1[6]), .C1(n10), .SO(O2[6]) );
  HADDX1_RVT U12 ( .A0(n12), .B0(O1[5]), .C1(n11), .SO(O2[5]) );
  HADDX1_RVT U13 ( .A0(n13), .B0(O1[4]), .C1(n12), .SO(O2[4]) );
  HADDX1_RVT U14 ( .A0(n14), .B0(O1[3]), .C1(n13), .SO(O2[3]) );
  HADDX1_RVT U15 ( .A0(n15), .B0(O1[2]), .C1(n14), .SO(O2[2]) );
  HADDX1_RVT U16 ( .A0(n16), .B0(O1[1]), .C1(n15), .SO(O2[1]) );
  HADDX1_RVT U17 ( .A0(I3), .B0(O1[0]), .C1(n16), .SO(O2[0]) );
  FADDX1_RVT U18 ( .A(I2[15]), .B(I1[15]), .CI(n17), .CO(n69), .S(O1[15]) );
  FADDX1_RVT U19 ( .A(I2[14]), .B(I1[14]), .CI(n18), .CO(n17), .S(O1[14]) );
  FADDX1_RVT U20 ( .A(I2[13]), .B(I1[13]), .CI(n19), .CO(n18), .S(O1[13]) );
  FADDX1_RVT U21 ( .A(I2[12]), .B(I1[12]), .CI(n20), .CO(n19), .S(O1[12]) );
  FADDX1_RVT U22 ( .A(I2[11]), .B(I1[11]), .CI(n21), .CO(n20), .S(O1[11]) );
  FADDX1_RVT U23 ( .A(I2[10]), .B(I1[10]), .CI(n22), .CO(n21), .S(O1[10]) );
  FADDX1_RVT U24 ( .A(I2[9]), .B(I1[9]), .CI(n23), .CO(n22), .S(O1[9]) );
  FADDX1_RVT U25 ( .A(I2[8]), .B(I1[8]), .CI(n24), .CO(n23), .S(O1[8]) );
  FADDX1_RVT U26 ( .A(I2[7]), .B(I1[7]), .CI(n25), .CO(n24), .S(O1[7]) );
  FADDX1_RVT U27 ( .A(I2[6]), .B(I1[6]), .CI(n26), .CO(n25), .S(O1[6]) );
  FADDX1_RVT U28 ( .A(I2[5]), .B(I1[5]), .CI(n27), .CO(n26), .S(O1[5]) );
  FADDX1_RVT U29 ( .A(I2[4]), .B(I1[4]), .CI(n28), .CO(n27), .S(O1[4]) );
  FADDX1_RVT U30 ( .A(I2[3]), .B(I1[3]), .CI(n29), .CO(n28), .S(O1[3]) );
  FADDX1_RVT U31 ( .A(I2[2]), .B(I1[2]), .CI(n30), .CO(n29), .S(O1[2]) );
  FADDX1_RVT U32 ( .A(I2[1]), .B(I1[1]), .CI(n31), .CO(n30), .S(O1[1]) );
  HADDX1_RVT U33 ( .A0(I2[0]), .B0(I1[0]), .C1(n31), .SO(O1[0]) );
endmodule


module omsp_alu_DP_OP_69_123_7159_1 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n1, n2, n3, n4, n7, n17, n21, n22, n32, n33, n34, n41, n42, n43, n44;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(O2[4]) );
  XOR2X1_RVT U2 ( .A1(n44), .A2(n7), .Y(n1) );
  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  XNOR2X1_RVT U4 ( .A1(n42), .A2(n4), .Y(O2[2]) );
  OR2X1_RVT U5 ( .A1(n4), .A2(n42), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n41), .A2(n7), .Y(O2[1]) );
  OR2X1_RVT U7 ( .A1(n7), .A2(n41), .Y(n4) );
  INVX0_RVT U18 ( .A(n44), .Y(n17) );
  INVX0_RVT U25 ( .A(n43), .Y(n21) );
  NOR2X0_RVT U27 ( .A1(n41), .A2(n42), .Y(n22) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  INVX0_RVT U44 ( .A(I4[1]), .Y(n7) );
  OA21X1_RVT U45 ( .A1(n22), .A2(n21), .A3(n17), .Y(O1) );
endmodule


module omsp_alu_DP_OP_70_124_7159_1 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n1, n2, n3, n4, n7, n17, n21, n22, n32, n33, n34, n41, n42, n43, n44;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(O2[4]) );
  XOR2X1_RVT U2 ( .A1(n44), .A2(n7), .Y(n1) );
  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  XNOR2X1_RVT U4 ( .A1(n42), .A2(n4), .Y(O2[2]) );
  OR2X1_RVT U5 ( .A1(n4), .A2(n42), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n41), .A2(n7), .Y(O2[1]) );
  OR2X1_RVT U7 ( .A1(n7), .A2(n41), .Y(n4) );
  INVX0_RVT U18 ( .A(n44), .Y(n17) );
  INVX0_RVT U25 ( .A(n43), .Y(n21) );
  NOR2X0_RVT U27 ( .A1(n41), .A2(n42), .Y(n22) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  INVX0_RVT U44 ( .A(I4[1]), .Y(n7) );
  OA21X1_RVT U45 ( .A1(n22), .A2(n21), .A3(n17), .Y(O1) );
endmodule


module omsp_alu_DP_OP_71_125_7159_1 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n1, n2, n3, n4, n7, n17, n21, n22, n32, n33, n34, n41, n42, n43, n44;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(O2[4]) );
  XOR2X1_RVT U2 ( .A1(n44), .A2(n7), .Y(n1) );
  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  XNOR2X1_RVT U4 ( .A1(n42), .A2(n4), .Y(O2[2]) );
  OR2X1_RVT U5 ( .A1(n4), .A2(n42), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n41), .A2(n7), .Y(O2[1]) );
  OR2X1_RVT U7 ( .A1(n7), .A2(n41), .Y(n4) );
  INVX0_RVT U18 ( .A(n44), .Y(n17) );
  INVX0_RVT U25 ( .A(n43), .Y(n21) );
  NOR2X0_RVT U27 ( .A1(n41), .A2(n42), .Y(n22) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  INVX0_RVT U44 ( .A(I4[1]), .Y(n7) );
  OA21X1_RVT U45 ( .A1(n22), .A2(n21), .A3(n17), .Y(O1) );
endmodule


module omsp_alu_DP_OP_72_126_7159_1 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n1, n2, n3, n4, n7, n13, n17, n21, n22, n32, n33, n34, n41, n42, n43,
         n44;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n1), .Y(O2[4]) );
  XOR2X1_RVT U2 ( .A1(n44), .A2(n7), .Y(n1) );
  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  XNOR2X1_RVT U4 ( .A1(n42), .A2(n4), .Y(O2[2]) );
  OR2X1_RVT U5 ( .A1(n4), .A2(n42), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n41), .A2(n7), .Y(O2[1]) );
  OR2X1_RVT U7 ( .A1(n7), .A2(n41), .Y(n4) );
  INVX0_RVT U11 ( .A(n13), .Y(O1) );
  OAI21X1_RVT U13 ( .A1(n22), .A2(n21), .A3(n17), .Y(n13) );
  INVX0_RVT U18 ( .A(n44), .Y(n17) );
  INVX0_RVT U25 ( .A(n43), .Y(n21) );
  NOR2X0_RVT U27 ( .A1(n41), .A2(n42), .Y(n22) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  INVX0_RVT U44 ( .A(I4[1]), .Y(n7) );
endmodule


module omsp_alu ( alu_out, alu_out_add, alu_stat, alu_stat_wr, dbg_halt_st, 
        exec_cycle, inst_alu, inst_bw, inst_jmp, inst_so, op_dst, op_src, 
        status );
  output [15:0] alu_out;
  output [15:0] alu_out_add;
  output [3:0] alu_stat;
  output [3:0] alu_stat_wr;
  input [11:0] inst_alu;
  input [7:0] inst_jmp;
  input [7:0] inst_so;
  input [15:0] op_dst;
  input [15:0] op_src;
  input [3:0] status;
  input dbg_halt_st, exec_cycle, inst_bw;
  wire   op_src_inv_cmd, op_bit8_msk, N5, alu_inc, N16, N17, N29, N30, N42,
         N43, N55, N56, N59, N61, alu_shift_15_, alu_shift_7, alu_short_thro,
         N62, N64, N66, N67, N68, N69, N70, N71, N74, N76, N79, N81, N82, N83,
         N84, N85, N86, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N124,
         N125, N126, N127, N128, N129, N130, N143, N144, N145, N146, N147,
         N148, N149, N150, N151, N152, N153, N154, N155, N156, N157, N158,
         N159, N160, N161, N162, N163, N164, N165, N166, N167, N168, N169,
         N170, N171, N172, N173, N174, N175, N176, N177, N178, N179, N180,
         N181, N182, N183, N184, N185, N186, N187, N188, N189, N190, N191,
         N192, N193, N194, N195, N196, N197, N198, N199, N200, N201, N202,
         N203, N204, N205, N206, N207, N208, N209, N210, N211, N212, N213,
         N214, N215, N216, N217, N218, N219, N220, N221, N222, N223, N224,
         N225, N226, N227, N228, N229, N230, N231, N232, N233, N234, N235,
         N236, N237, N238, N239, N240, N241, N242, N243, N244, N245, N246,
         N247, N248, N249, N250, N251, N252, N253, N254, N255, N256, N257,
         N258, N259, N260, N261, N262, N263, N264, N265, N266, N267, N268,
         N269, N270, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323,
         N324, N325, N326, N327, N328, N329, N330, N331, N332, N333, N334,
         N335, N336, N337, N338, N339, N340, N341, N342, N343, N344, N345,
         N346, N347, N348, N349, N78, N77, N75, N73, N72, N65, N63, N60, N58,
         alu_dadd2_4_, alu_dadd1_4_, alu_dadd0_4_, n3, n5, n6, n7, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, SYNOPSYS_UNCONNECTED_1;
  wire   [15:8] op_src_inv;
  wire   [15:8] op_src_in;
  wire   [15:8] op_dst_in;
  wire   [15:0] op_src_in_jmp;
  wire   [15:0] alu_and;
  wire   [15:0] alu_or;
  wire   [15:0] alu_xor;
  wire   [16:0] alu_add_inc;
  wire   [3:0] alu_dadd0;
  wire   [3:0] alu_dadd1;
  wire   [3:0] alu_dadd2;
  wire   [4:0] alu_dadd3;
  wire   [15:0] alu_short;

  AND2X1_RVT C751 ( .A1(inst_alu[6]), .A2(N78), .Y(N79) );
  AND2X1_RVT C750 ( .A1(N75), .A2(N77), .Y(N78) );
  INVX0_RVT I_27 ( .A(inst_alu[8]), .Y(N77) );
  AND2X1_RVT C748 ( .A1(inst_alu[8]), .A2(N75), .Y(N76) );
  INVX0_RVT I_26 ( .A(inst_alu[10]), .Y(N75) );
  INVX0_RVT I_25 ( .A(N73), .Y(N74) );
  OR2X1_RVT C745 ( .A1(inst_alu[6]), .A2(N72), .Y(N73) );
  OR2X1_RVT C744 ( .A1(inst_alu[8]), .A2(inst_alu[10]), .Y(N72) );
  AND2X1_RVT C718 ( .A1(inst_alu[7]), .A2(N65), .Y(N66) );
  OR2X1_RVT C715 ( .A1(inst_alu[7]), .A2(N62), .Y(N63) );
  AND2X1_RVT C483 ( .A1(inst_bw), .A2(N60), .Y(N61) );
  OR2X1_RVT C480 ( .A1(inst_bw), .A2(inst_so[0]), .Y(N58) );
  INVX0_RVT I_12 ( .A(N55), .Y(N56) );
  INVX0_RVT I_11 ( .A(N42), .Y(N43) );
  INVX0_RVT I_10 ( .A(N29), .Y(N30) );
  INVX0_RVT I_9 ( .A(N16), .Y(N17) );
  AND2X1_RVT C752 ( .A1(inst_alu[9]), .A2(exec_cycle), .Y(alu_stat_wr[1]) );
  INVX0_RVT I_24 ( .A(alu_stat[1]), .Y(N71) );
  INVX0_RVT I_23 ( .A(alu_out[15]), .Y(N348) );
  AND2X1_RVT C735 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(N347) );
  AND2X1_RVT C734 ( .A1(N347), .A2(N348), .Y(N349) );
  INVX0_RVT I_22 ( .A(op_dst_in[15]), .Y(N344) );
  INVX0_RVT I_21 ( .A(op_src_in[15]), .Y(N343) );
  AND2X1_RVT C731 ( .A1(N343), .A2(N344), .Y(N345) );
  AND2X1_RVT C730 ( .A1(N345), .A2(alu_out[15]), .Y(N346) );
  OR2X1_RVT C729 ( .A1(N346), .A2(N349), .Y(N70) );
  INVX0_RVT I_20 ( .A(alu_out[7]), .Y(N341) );
  AND2X1_RVT C727 ( .A1(n13), .A2(op_dst[7]), .Y(N340) );
  AND2X1_RVT C726 ( .A1(N340), .A2(N341), .Y(N342) );
  INVX0_RVT I_19 ( .A(op_dst[7]), .Y(N337) );
  INVX0_RVT I_18 ( .A(n13), .Y(N336) );
  AND2X1_RVT C723 ( .A1(N336), .A2(N337), .Y(N338) );
  AND2X1_RVT C722 ( .A1(N338), .A2(alu_out[7]), .Y(N339) );
  OR2X1_RVT C721 ( .A1(N339), .A2(N342), .Y(N69) );
  AND2X1_RVT C720 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(N68) );
  AND2X1_RVT C719 ( .A1(n13), .A2(op_dst[7]), .Y(N67) );
  OR2X1_RVT C712 ( .A1(inst_so[7]), .A2(dbg_halt_st), .Y(N335) );
  OR2X1_RVT C711 ( .A1(N335), .A2(inst_alu[3]), .Y(N62) );
  AND2X1_RVT C710 ( .A1(alu_short_thro), .A2(n16), .Y(N334) );
  AND2X1_RVT C709 ( .A1(inst_so[3]), .A2(op_src[0]), .Y(N332) );
  AND2X1_RVT C708 ( .A1(inst_so[1]), .A2(op_src[8]), .Y(N330) );
  AND2X1_RVT C707 ( .A1(inst_alu[10]), .A2(op_src[1]), .Y(N328) );
  AND2X1_RVT C706 ( .A1(inst_alu[6]), .A2(alu_xor[0]), .Y(N326) );
  AND2X1_RVT C705 ( .A1(inst_alu[5]), .A2(alu_or[0]), .Y(N324) );
  AND2X1_RVT C704 ( .A1(inst_alu[4]), .A2(alu_and[0]), .Y(N323) );
  OR2X1_RVT C703 ( .A1(N323), .A2(N324), .Y(N325) );
  OR2X1_RVT C702 ( .A1(N325), .A2(N326), .Y(N327) );
  OR2X1_RVT C701 ( .A1(N327), .A2(N328), .Y(N329) );
  OR2X1_RVT C700 ( .A1(N329), .A2(N330), .Y(N331) );
  OR2X1_RVT C699 ( .A1(N331), .A2(N332), .Y(N333) );
  OR2X1_RVT C698 ( .A1(N333), .A2(N334), .Y(alu_short[0]) );
  AND2X1_RVT C697 ( .A1(alu_short_thro), .A2(n14), .Y(N322) );
  AND2X1_RVT C696 ( .A1(inst_so[3]), .A2(op_src[1]), .Y(N320) );
  AND2X1_RVT C695 ( .A1(inst_so[1]), .A2(op_src[9]), .Y(N318) );
  AND2X1_RVT C694 ( .A1(inst_alu[10]), .A2(op_src[2]), .Y(N316) );
  AND2X1_RVT C693 ( .A1(inst_alu[6]), .A2(alu_xor[1]), .Y(N314) );
  AND2X1_RVT C692 ( .A1(inst_alu[5]), .A2(alu_or[1]), .Y(N312) );
  AND2X1_RVT C691 ( .A1(inst_alu[4]), .A2(alu_and[1]), .Y(N311) );
  OR2X1_RVT C690 ( .A1(N311), .A2(N312), .Y(N313) );
  OR2X1_RVT C689 ( .A1(N313), .A2(N314), .Y(N315) );
  OR2X1_RVT C688 ( .A1(N315), .A2(N316), .Y(N317) );
  OR2X1_RVT C687 ( .A1(N317), .A2(N318), .Y(N319) );
  OR2X1_RVT C686 ( .A1(N319), .A2(N320), .Y(N321) );
  OR2X1_RVT C685 ( .A1(N321), .A2(N322), .Y(alu_short[1]) );
  AND2X1_RVT C684 ( .A1(alu_short_thro), .A2(n20), .Y(N310) );
  AND2X1_RVT C683 ( .A1(inst_so[3]), .A2(op_src[2]), .Y(N308) );
  AND2X1_RVT C682 ( .A1(inst_so[1]), .A2(op_src[10]), .Y(N306) );
  AND2X1_RVT C681 ( .A1(inst_alu[10]), .A2(op_src[3]), .Y(N304) );
  AND2X1_RVT C680 ( .A1(inst_alu[6]), .A2(alu_xor[2]), .Y(N302) );
  AND2X1_RVT C679 ( .A1(inst_alu[5]), .A2(alu_or[2]), .Y(N300) );
  AND2X1_RVT C678 ( .A1(inst_alu[4]), .A2(alu_and[2]), .Y(N299) );
  OR2X1_RVT C677 ( .A1(N299), .A2(N300), .Y(N301) );
  OR2X1_RVT C676 ( .A1(N301), .A2(N302), .Y(N303) );
  OR2X1_RVT C675 ( .A1(N303), .A2(N304), .Y(N305) );
  OR2X1_RVT C674 ( .A1(N305), .A2(N306), .Y(N307) );
  OR2X1_RVT C673 ( .A1(N307), .A2(N308), .Y(N309) );
  OR2X1_RVT C672 ( .A1(N309), .A2(N310), .Y(alu_short[2]) );
  AND2X1_RVT C671 ( .A1(alu_short_thro), .A2(n19), .Y(N298) );
  AND2X1_RVT C670 ( .A1(inst_so[3]), .A2(op_src[3]), .Y(N296) );
  AND2X1_RVT C669 ( .A1(inst_so[1]), .A2(op_src[11]), .Y(N294) );
  AND2X1_RVT C668 ( .A1(inst_alu[10]), .A2(op_src[4]), .Y(N292) );
  AND2X1_RVT C667 ( .A1(inst_alu[6]), .A2(alu_xor[3]), .Y(N290) );
  AND2X1_RVT C666 ( .A1(inst_alu[5]), .A2(alu_or[3]), .Y(N288) );
  AND2X1_RVT C665 ( .A1(inst_alu[4]), .A2(alu_and[3]), .Y(N287) );
  OR2X1_RVT C664 ( .A1(N287), .A2(N288), .Y(N289) );
  OR2X1_RVT C663 ( .A1(N289), .A2(N290), .Y(N291) );
  OR2X1_RVT C662 ( .A1(N291), .A2(N292), .Y(N293) );
  OR2X1_RVT C661 ( .A1(N293), .A2(N294), .Y(N295) );
  OR2X1_RVT C660 ( .A1(N295), .A2(N296), .Y(N297) );
  OR2X1_RVT C659 ( .A1(N297), .A2(N298), .Y(alu_short[3]) );
  AND2X1_RVT C658 ( .A1(alu_short_thro), .A2(n18), .Y(N286) );
  AND2X1_RVT C657 ( .A1(inst_so[3]), .A2(op_src[4]), .Y(N284) );
  AND2X1_RVT C656 ( .A1(inst_so[1]), .A2(op_src[12]), .Y(N282) );
  AND2X1_RVT C655 ( .A1(inst_alu[10]), .A2(op_src[5]), .Y(N280) );
  AND2X1_RVT C654 ( .A1(inst_alu[6]), .A2(alu_xor[4]), .Y(N278) );
  AND2X1_RVT C653 ( .A1(inst_alu[5]), .A2(alu_or[4]), .Y(N276) );
  AND2X1_RVT C652 ( .A1(inst_alu[4]), .A2(alu_and[4]), .Y(N275) );
  OR2X1_RVT C651 ( .A1(N275), .A2(N276), .Y(N277) );
  OR2X1_RVT C650 ( .A1(N277), .A2(N278), .Y(N279) );
  OR2X1_RVT C649 ( .A1(N279), .A2(N280), .Y(N281) );
  OR2X1_RVT C648 ( .A1(N281), .A2(N282), .Y(N283) );
  OR2X1_RVT C647 ( .A1(N283), .A2(N284), .Y(N285) );
  OR2X1_RVT C646 ( .A1(N285), .A2(N286), .Y(alu_short[4]) );
  AND2X1_RVT C645 ( .A1(alu_short_thro), .A2(n17), .Y(N274) );
  AND2X1_RVT C644 ( .A1(inst_so[3]), .A2(op_src[5]), .Y(N272) );
  AND2X1_RVT C643 ( .A1(inst_so[1]), .A2(op_src[13]), .Y(N270) );
  AND2X1_RVT C642 ( .A1(inst_alu[10]), .A2(op_src[6]), .Y(N268) );
  AND2X1_RVT C641 ( .A1(inst_alu[6]), .A2(alu_xor[5]), .Y(N266) );
  AND2X1_RVT C640 ( .A1(inst_alu[5]), .A2(alu_or[5]), .Y(N264) );
  AND2X1_RVT C639 ( .A1(inst_alu[4]), .A2(alu_and[5]), .Y(N263) );
  OR2X1_RVT C638 ( .A1(N263), .A2(N264), .Y(N265) );
  OR2X1_RVT C637 ( .A1(N265), .A2(N266), .Y(N267) );
  OR2X1_RVT C636 ( .A1(N267), .A2(N268), .Y(N269) );
  OR2X1_RVT C635 ( .A1(N269), .A2(N270), .Y(N271) );
  OR2X1_RVT C634 ( .A1(N271), .A2(N272), .Y(N273) );
  OR2X1_RVT C633 ( .A1(N273), .A2(N274), .Y(alu_short[5]) );
  AND2X1_RVT C632 ( .A1(alu_short_thro), .A2(n15), .Y(N262) );
  AND2X1_RVT C631 ( .A1(inst_so[3]), .A2(op_src[6]), .Y(N260) );
  AND2X1_RVT C630 ( .A1(inst_so[1]), .A2(op_src[14]), .Y(N258) );
  AND2X1_RVT C629 ( .A1(inst_alu[10]), .A2(op_src[7]), .Y(N256) );
  AND2X1_RVT C628 ( .A1(inst_alu[6]), .A2(alu_xor[6]), .Y(N254) );
  AND2X1_RVT C627 ( .A1(inst_alu[5]), .A2(alu_or[6]), .Y(N252) );
  AND2X1_RVT C626 ( .A1(inst_alu[4]), .A2(alu_and[6]), .Y(N251) );
  OR2X1_RVT C625 ( .A1(N251), .A2(N252), .Y(N253) );
  OR2X1_RVT C624 ( .A1(N253), .A2(N254), .Y(N255) );
  OR2X1_RVT C623 ( .A1(N255), .A2(N256), .Y(N257) );
  OR2X1_RVT C622 ( .A1(N257), .A2(N258), .Y(N259) );
  OR2X1_RVT C621 ( .A1(N259), .A2(N260), .Y(N261) );
  OR2X1_RVT C620 ( .A1(N261), .A2(N262), .Y(alu_short[6]) );
  AND2X1_RVT C619 ( .A1(alu_short_thro), .A2(n13), .Y(N250) );
  AND2X1_RVT C618 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N248) );
  AND2X1_RVT C617 ( .A1(inst_so[1]), .A2(op_src[15]), .Y(N246) );
  AND2X1_RVT C616 ( .A1(inst_alu[10]), .A2(alu_shift_7), .Y(N244) );
  AND2X1_RVT C615 ( .A1(inst_alu[6]), .A2(alu_xor[7]), .Y(N242) );
  AND2X1_RVT C614 ( .A1(inst_alu[5]), .A2(alu_or[7]), .Y(N240) );
  AND2X1_RVT C613 ( .A1(inst_alu[4]), .A2(alu_and[7]), .Y(N239) );
  OR2X1_RVT C612 ( .A1(N239), .A2(N240), .Y(N241) );
  OR2X1_RVT C611 ( .A1(N241), .A2(N242), .Y(N243) );
  OR2X1_RVT C610 ( .A1(N243), .A2(N244), .Y(N245) );
  OR2X1_RVT C609 ( .A1(N245), .A2(N246), .Y(N247) );
  OR2X1_RVT C608 ( .A1(N247), .A2(N248), .Y(N249) );
  OR2X1_RVT C607 ( .A1(N249), .A2(N250), .Y(alu_short[7]) );
  AND2X1_RVT C606 ( .A1(alu_short_thro), .A2(op_src_in[8]), .Y(N238) );
  AND2X1_RVT C605 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N236) );
  AND2X1_RVT C604 ( .A1(inst_so[1]), .A2(op_src[0]), .Y(N234) );
  AND2X1_RVT C603 ( .A1(inst_alu[10]), .A2(op_src[9]), .Y(N232) );
  AND2X1_RVT C602 ( .A1(inst_alu[6]), .A2(alu_xor[8]), .Y(N230) );
  AND2X1_RVT C601 ( .A1(inst_alu[5]), .A2(alu_or[8]), .Y(N228) );
  AND2X1_RVT C600 ( .A1(inst_alu[4]), .A2(alu_and[8]), .Y(N227) );
  OR2X1_RVT C599 ( .A1(N227), .A2(N228), .Y(N229) );
  OR2X1_RVT C598 ( .A1(N229), .A2(N230), .Y(N231) );
  OR2X1_RVT C597 ( .A1(N231), .A2(N232), .Y(N233) );
  OR2X1_RVT C596 ( .A1(N233), .A2(N234), .Y(N235) );
  OR2X1_RVT C595 ( .A1(N235), .A2(N236), .Y(N237) );
  OR2X1_RVT C594 ( .A1(N237), .A2(N238), .Y(alu_short[8]) );
  AND2X1_RVT C593 ( .A1(alu_short_thro), .A2(op_src_in[9]), .Y(N226) );
  AND2X1_RVT C592 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N224) );
  AND2X1_RVT C591 ( .A1(inst_so[1]), .A2(op_src[1]), .Y(N222) );
  AND2X1_RVT C590 ( .A1(inst_alu[10]), .A2(op_src[10]), .Y(N220) );
  AND2X1_RVT C589 ( .A1(inst_alu[6]), .A2(alu_xor[9]), .Y(N218) );
  AND2X1_RVT C588 ( .A1(inst_alu[5]), .A2(alu_or[9]), .Y(N216) );
  AND2X1_RVT C587 ( .A1(inst_alu[4]), .A2(alu_and[9]), .Y(N215) );
  OR2X1_RVT C586 ( .A1(N215), .A2(N216), .Y(N217) );
  OR2X1_RVT C585 ( .A1(N217), .A2(N218), .Y(N219) );
  OR2X1_RVT C584 ( .A1(N219), .A2(N220), .Y(N221) );
  OR2X1_RVT C583 ( .A1(N221), .A2(N222), .Y(N223) );
  OR2X1_RVT C582 ( .A1(N223), .A2(N224), .Y(N225) );
  OR2X1_RVT C581 ( .A1(N225), .A2(N226), .Y(alu_short[9]) );
  AND2X1_RVT C580 ( .A1(alu_short_thro), .A2(op_src_in[10]), .Y(N214) );
  AND2X1_RVT C579 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N212) );
  AND2X1_RVT C578 ( .A1(inst_so[1]), .A2(op_src[2]), .Y(N210) );
  AND2X1_RVT C577 ( .A1(inst_alu[10]), .A2(op_src[11]), .Y(N208) );
  AND2X1_RVT C576 ( .A1(inst_alu[6]), .A2(alu_xor[10]), .Y(N206) );
  AND2X1_RVT C575 ( .A1(inst_alu[5]), .A2(alu_or[10]), .Y(N204) );
  AND2X1_RVT C574 ( .A1(inst_alu[4]), .A2(alu_and[10]), .Y(N203) );
  OR2X1_RVT C573 ( .A1(N203), .A2(N204), .Y(N205) );
  OR2X1_RVT C572 ( .A1(N205), .A2(N206), .Y(N207) );
  OR2X1_RVT C571 ( .A1(N207), .A2(N208), .Y(N209) );
  OR2X1_RVT C570 ( .A1(N209), .A2(N210), .Y(N211) );
  OR2X1_RVT C569 ( .A1(N211), .A2(N212), .Y(N213) );
  OR2X1_RVT C568 ( .A1(N213), .A2(N214), .Y(alu_short[10]) );
  AND2X1_RVT C567 ( .A1(alu_short_thro), .A2(op_src_in[11]), .Y(N202) );
  AND2X1_RVT C566 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N200) );
  AND2X1_RVT C565 ( .A1(inst_so[1]), .A2(op_src[3]), .Y(N198) );
  AND2X1_RVT C564 ( .A1(inst_alu[10]), .A2(op_src[12]), .Y(N196) );
  AND2X1_RVT C563 ( .A1(inst_alu[6]), .A2(alu_xor[11]), .Y(N194) );
  AND2X1_RVT C562 ( .A1(inst_alu[5]), .A2(alu_or[11]), .Y(N192) );
  AND2X1_RVT C561 ( .A1(inst_alu[4]), .A2(alu_and[11]), .Y(N191) );
  OR2X1_RVT C560 ( .A1(N191), .A2(N192), .Y(N193) );
  OR2X1_RVT C559 ( .A1(N193), .A2(N194), .Y(N195) );
  OR2X1_RVT C558 ( .A1(N195), .A2(N196), .Y(N197) );
  OR2X1_RVT C557 ( .A1(N197), .A2(N198), .Y(N199) );
  OR2X1_RVT C556 ( .A1(N199), .A2(N200), .Y(N201) );
  OR2X1_RVT C555 ( .A1(N201), .A2(N202), .Y(alu_short[11]) );
  AND2X1_RVT C554 ( .A1(alu_short_thro), .A2(op_src_in[12]), .Y(N190) );
  AND2X1_RVT C553 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N188) );
  AND2X1_RVT C552 ( .A1(inst_so[1]), .A2(op_src[4]), .Y(N186) );
  AND2X1_RVT C551 ( .A1(inst_alu[10]), .A2(op_src[13]), .Y(N184) );
  AND2X1_RVT C550 ( .A1(inst_alu[6]), .A2(alu_xor[12]), .Y(N182) );
  AND2X1_RVT C549 ( .A1(inst_alu[5]), .A2(alu_or[12]), .Y(N180) );
  AND2X1_RVT C548 ( .A1(inst_alu[4]), .A2(alu_and[12]), .Y(N179) );
  OR2X1_RVT C547 ( .A1(N179), .A2(N180), .Y(N181) );
  OR2X1_RVT C546 ( .A1(N181), .A2(N182), .Y(N183) );
  OR2X1_RVT C545 ( .A1(N183), .A2(N184), .Y(N185) );
  OR2X1_RVT C544 ( .A1(N185), .A2(N186), .Y(N187) );
  OR2X1_RVT C543 ( .A1(N187), .A2(N188), .Y(N189) );
  OR2X1_RVT C542 ( .A1(N189), .A2(N190), .Y(alu_short[12]) );
  AND2X1_RVT C541 ( .A1(alu_short_thro), .A2(op_src_in[13]), .Y(N178) );
  AND2X1_RVT C540 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N176) );
  AND2X1_RVT C539 ( .A1(inst_so[1]), .A2(op_src[5]), .Y(N174) );
  AND2X1_RVT C538 ( .A1(inst_alu[10]), .A2(op_src[14]), .Y(N172) );
  AND2X1_RVT C537 ( .A1(inst_alu[6]), .A2(alu_xor[13]), .Y(N170) );
  AND2X1_RVT C536 ( .A1(inst_alu[5]), .A2(alu_or[13]), .Y(N168) );
  AND2X1_RVT C535 ( .A1(inst_alu[4]), .A2(alu_and[13]), .Y(N167) );
  OR2X1_RVT C534 ( .A1(N167), .A2(N168), .Y(N169) );
  OR2X1_RVT C533 ( .A1(N169), .A2(N170), .Y(N171) );
  OR2X1_RVT C532 ( .A1(N171), .A2(N172), .Y(N173) );
  OR2X1_RVT C531 ( .A1(N173), .A2(N174), .Y(N175) );
  OR2X1_RVT C530 ( .A1(N175), .A2(N176), .Y(N177) );
  OR2X1_RVT C529 ( .A1(N177), .A2(N178), .Y(alu_short[13]) );
  AND2X1_RVT C528 ( .A1(alu_short_thro), .A2(op_src_in[14]), .Y(N166) );
  AND2X1_RVT C527 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N164) );
  AND2X1_RVT C526 ( .A1(inst_so[1]), .A2(op_src[6]), .Y(N162) );
  AND2X1_RVT C525 ( .A1(inst_alu[10]), .A2(op_src[15]), .Y(N160) );
  AND2X1_RVT C524 ( .A1(inst_alu[6]), .A2(alu_xor[14]), .Y(N158) );
  AND2X1_RVT C523 ( .A1(inst_alu[5]), .A2(alu_or[14]), .Y(N156) );
  AND2X1_RVT C522 ( .A1(inst_alu[4]), .A2(alu_and[14]), .Y(N155) );
  OR2X1_RVT C521 ( .A1(N155), .A2(N156), .Y(N157) );
  OR2X1_RVT C520 ( .A1(N157), .A2(N158), .Y(N159) );
  OR2X1_RVT C519 ( .A1(N159), .A2(N160), .Y(N161) );
  OR2X1_RVT C518 ( .A1(N161), .A2(N162), .Y(N163) );
  OR2X1_RVT C517 ( .A1(N163), .A2(N164), .Y(N165) );
  OR2X1_RVT C516 ( .A1(N165), .A2(N166), .Y(alu_short[14]) );
  AND2X1_RVT C515 ( .A1(alu_short_thro), .A2(op_src_in[15]), .Y(N154) );
  AND2X1_RVT C514 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N152) );
  AND2X1_RVT C513 ( .A1(inst_so[1]), .A2(op_src[7]), .Y(N150) );
  AND2X1_RVT C512 ( .A1(inst_alu[10]), .A2(alu_shift_15_), .Y(N148) );
  AND2X1_RVT C511 ( .A1(inst_alu[6]), .A2(alu_xor[15]), .Y(N146) );
  AND2X1_RVT C510 ( .A1(inst_alu[5]), .A2(alu_or[15]), .Y(N144) );
  AND2X1_RVT C509 ( .A1(inst_alu[4]), .A2(alu_and[15]), .Y(N143) );
  OR2X1_RVT C508 ( .A1(N143), .A2(N144), .Y(N145) );
  OR2X1_RVT C507 ( .A1(N145), .A2(N146), .Y(N147) );
  OR2X1_RVT C506 ( .A1(N147), .A2(N148), .Y(N149) );
  OR2X1_RVT C505 ( .A1(N149), .A2(N150), .Y(N151) );
  OR2X1_RVT C504 ( .A1(N151), .A2(N152), .Y(N153) );
  OR2X1_RVT C503 ( .A1(N153), .A2(N154), .Y(alu_short[15]) );
  OR2X1_RVT C489 ( .A1(inst_alu[4]), .A2(inst_alu[5]), .Y(N126) );
  OR2X1_RVT C488 ( .A1(N126), .A2(inst_alu[6]), .Y(N127) );
  OR2X1_RVT C487 ( .A1(N127), .A2(inst_alu[10]), .Y(N128) );
  OR2X1_RVT C486 ( .A1(N128), .A2(inst_so[1]), .Y(N129) );
  OR2X1_RVT C485 ( .A1(N129), .A2(inst_so[3]), .Y(N130) );
  AND2X1_RVT C466 ( .A1(inst_alu[2]), .A2(status[0]), .Y(N124) );
  OR2X1_RVT C465 ( .A1(N124), .A2(inst_alu[1]), .Y(N125) );
  AND2X1_RVT C464 ( .A1(exec_cycle), .A2(N125), .Y(alu_inc) );
  OR2X1_RVT C446 ( .A1(n16), .A2(op_dst[0]), .Y(alu_or[0]) );
  OR2X1_RVT C445 ( .A1(n14), .A2(op_dst[1]), .Y(alu_or[1]) );
  OR2X1_RVT C444 ( .A1(n20), .A2(op_dst[2]), .Y(alu_or[2]) );
  OR2X1_RVT C443 ( .A1(n19), .A2(op_dst[3]), .Y(alu_or[3]) );
  OR2X1_RVT C442 ( .A1(n18), .A2(op_dst[4]), .Y(alu_or[4]) );
  OR2X1_RVT C441 ( .A1(n17), .A2(op_dst[5]), .Y(alu_or[5]) );
  OR2X1_RVT C440 ( .A1(n15), .A2(op_dst[6]), .Y(alu_or[6]) );
  OR2X1_RVT C439 ( .A1(n13), .A2(op_dst[7]), .Y(alu_or[7]) );
  OR2X1_RVT C438 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_or[8]) );
  OR2X1_RVT C437 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_or[9]) );
  OR2X1_RVT C436 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_or[10]) );
  OR2X1_RVT C435 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_or[11]) );
  OR2X1_RVT C434 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_or[12]) );
  OR2X1_RVT C433 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_or[13]) );
  OR2X1_RVT C432 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_or[14]) );
  OR2X1_RVT C431 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(alu_or[15]) );
  AND2X1_RVT C429 ( .A1(n16), .A2(op_dst[0]), .Y(alu_and[0]) );
  AND2X1_RVT C428 ( .A1(n14), .A2(op_dst[1]), .Y(alu_and[1]) );
  AND2X1_RVT C427 ( .A1(n20), .A2(op_dst[2]), .Y(alu_and[2]) );
  AND2X1_RVT C426 ( .A1(n19), .A2(op_dst[3]), .Y(alu_and[3]) );
  AND2X1_RVT C425 ( .A1(n18), .A2(op_dst[4]), .Y(alu_and[4]) );
  AND2X1_RVT C424 ( .A1(n17), .A2(op_dst[5]), .Y(alu_and[5]) );
  AND2X1_RVT C423 ( .A1(n15), .A2(op_dst[6]), .Y(alu_and[6]) );
  AND2X1_RVT C422 ( .A1(n13), .A2(op_dst[7]), .Y(alu_and[7]) );
  AND2X1_RVT C421 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_and[8]) );
  AND2X1_RVT C420 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_and[9]) );
  AND2X1_RVT C419 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_and[10]) );
  AND2X1_RVT C418 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_and[11]) );
  AND2X1_RVT C417 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_and[12]) );
  AND2X1_RVT C416 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_and[13]) );
  AND2X1_RVT C415 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_and[14]) );
  AND2X1_RVT C414 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(alu_and[15]) );
  AND2X1_RVT C411 ( .A1(n16), .A2(n22), .Y(op_src_in_jmp[0]) );
  AND2X1_RVT C409 ( .A1(n14), .A2(n22), .Y(op_src_in_jmp[1]) );
  AND2X1_RVT C407 ( .A1(n20), .A2(n22), .Y(op_src_in_jmp[2]) );
  AND2X1_RVT C405 ( .A1(n19), .A2(n22), .Y(op_src_in_jmp[3]) );
  AND2X1_RVT C403 ( .A1(n18), .A2(n22), .Y(op_src_in_jmp[4]) );
  AND2X1_RVT C401 ( .A1(n17), .A2(n22), .Y(op_src_in_jmp[5]) );
  AND2X1_RVT C399 ( .A1(n15), .A2(n22), .Y(op_src_in_jmp[6]) );
  AND2X1_RVT C397 ( .A1(n13), .A2(n22), .Y(op_src_in_jmp[7]) );
  AND2X1_RVT C395 ( .A1(op_src_in[8]), .A2(n22), .Y(op_src_in_jmp[8]) );
  AND2X1_RVT C393 ( .A1(op_src_in[9]), .A2(n22), .Y(op_src_in_jmp[9]) );
  AND2X1_RVT C391 ( .A1(op_src_in[10]), .A2(n22), .Y(op_src_in_jmp[10]) );
  AND2X1_RVT C389 ( .A1(op_src_in[11]), .A2(n22), .Y(op_src_in_jmp[11]) );
  AND2X1_RVT C387 ( .A1(op_src_in[12]), .A2(n22), .Y(op_src_in_jmp[12]) );
  AND2X1_RVT C385 ( .A1(op_src_in[13]), .A2(n22), .Y(op_src_in_jmp[13]) );
  AND2X1_RVT C383 ( .A1(op_src_in[14]), .A2(n22), .Y(op_src_in_jmp[14]) );
  AND2X1_RVT C381 ( .A1(op_src_in[15]), .A2(n22), .Y(op_src_in_jmp[15]) );
  AND2X1_RVT C378 ( .A1(inst_jmp[0]), .A2(status[1]), .Y(N122) );
  INVX0_RVT I_7 ( .A(status[1]), .Y(N119) );
  AND2X1_RVT C376 ( .A1(inst_jmp[1]), .A2(N119), .Y(N120) );
  AND2X1_RVT C375 ( .A1(inst_jmp[2]), .A2(status[0]), .Y(N117) );
  INVX0_RVT I_6 ( .A(status[0]), .Y(N114) );
  AND2X1_RVT C373 ( .A1(inst_jmp[3]), .A2(N114), .Y(N115) );
  INVX0_RVT I_5 ( .A(status[2]), .Y(N111) );
  AND2X1_RVT C371 ( .A1(inst_jmp[4]), .A2(N111), .Y(N112) );
  AND2X1_RVT C370 ( .A1(inst_jmp[5]), .A2(N5), .Y(N109) );
  INVX0_RVT I_4 ( .A(N5), .Y(N107) );
  AND2X1_RVT C368 ( .A1(inst_jmp[6]), .A2(N107), .Y(N108) );
  OR2X1_RVT C367 ( .A1(N108), .A2(N109), .Y(N110) );
  OR2X1_RVT C366 ( .A1(N110), .A2(N112), .Y(N113) );
  OR2X1_RVT C365 ( .A1(N113), .A2(N115), .Y(N116) );
  OR2X1_RVT C364 ( .A1(N116), .A2(N117), .Y(N118) );
  OR2X1_RVT C363 ( .A1(N118), .A2(N120), .Y(N121) );
  XOR2X1_RVT C361 ( .A1(status[3]), .A2(status[2]), .Y(N5) );
  AND2X1_RVT C360 ( .A1(op_dst[8]), .A2(op_bit8_msk), .Y(op_dst_in[8]) );
  AND2X1_RVT C359 ( .A1(op_dst[9]), .A2(op_bit8_msk), .Y(op_dst_in[9]) );
  AND2X1_RVT C358 ( .A1(op_dst[10]), .A2(op_bit8_msk), .Y(op_dst_in[10]) );
  AND2X1_RVT C357 ( .A1(op_dst[11]), .A2(op_bit8_msk), .Y(op_dst_in[11]) );
  AND2X1_RVT C356 ( .A1(op_dst[12]), .A2(op_bit8_msk), .Y(op_dst_in[12]) );
  AND2X1_RVT C355 ( .A1(op_dst[13]), .A2(op_bit8_msk), .Y(op_dst_in[13]) );
  AND2X1_RVT C354 ( .A1(op_dst[14]), .A2(op_bit8_msk), .Y(op_dst_in[14]) );
  AND2X1_RVT C353 ( .A1(op_dst[15]), .A2(op_bit8_msk), .Y(op_dst_in[15]) );
  AND2X1_RVT C352 ( .A1(op_src_inv[8]), .A2(op_bit8_msk), .Y(op_src_in[8]) );
  AND2X1_RVT C351 ( .A1(op_src_inv[9]), .A2(op_bit8_msk), .Y(op_src_in[9]) );
  AND2X1_RVT C350 ( .A1(op_src_inv[10]), .A2(op_bit8_msk), .Y(op_src_in[10])
         );
  AND2X1_RVT C349 ( .A1(op_src_inv[11]), .A2(op_bit8_msk), .Y(op_src_in[11])
         );
  AND2X1_RVT C348 ( .A1(op_src_inv[12]), .A2(op_bit8_msk), .Y(op_src_in[12])
         );
  AND2X1_RVT C347 ( .A1(op_src_inv[13]), .A2(op_bit8_msk), .Y(op_src_in[13])
         );
  AND2X1_RVT C346 ( .A1(op_src_inv[14]), .A2(op_bit8_msk), .Y(op_src_in[14])
         );
  AND2X1_RVT C345 ( .A1(op_src_inv[15]), .A2(op_bit8_msk), .Y(op_src_in[15])
         );
  OR2X1_RVT C342 ( .A1(N105), .A2(N106), .Y(op_bit8_msk) );
  OR2X1_RVT C303 ( .A1(alu_out[1]), .A2(N101), .Y(N102) );
  OR2X1_RVT C302 ( .A1(alu_out[2]), .A2(N100), .Y(N101) );
  OR2X1_RVT C301 ( .A1(alu_out[3]), .A2(N99), .Y(N100) );
  OR2X1_RVT C300 ( .A1(alu_out[4]), .A2(N98), .Y(N99) );
  OR2X1_RVT C299 ( .A1(alu_out[5]), .A2(N97), .Y(N98) );
  OR2X1_RVT C298 ( .A1(alu_out[6]), .A2(N96), .Y(N97) );
  OR2X1_RVT C297 ( .A1(alu_out[7]), .A2(N95), .Y(N96) );
  OR2X1_RVT C296 ( .A1(alu_out[8]), .A2(N94), .Y(N95) );
  OR2X1_RVT C295 ( .A1(alu_out[9]), .A2(N93), .Y(N94) );
  OR2X1_RVT C294 ( .A1(alu_out[10]), .A2(N92), .Y(N93) );
  OR2X1_RVT C293 ( .A1(alu_out[11]), .A2(N91), .Y(N92) );
  OR2X1_RVT C292 ( .A1(alu_out[12]), .A2(N90), .Y(N91) );
  OR2X1_RVT C291 ( .A1(alu_out[13]), .A2(N89), .Y(N90) );
  OR2X1_RVT C290 ( .A1(alu_out[14]), .A2(alu_out[15]), .Y(N89) );
  OR2X1_RVT C287 ( .A1(alu_out[1]), .A2(N85), .Y(N86) );
  OR2X1_RVT C286 ( .A1(alu_out[2]), .A2(N84), .Y(N85) );
  OR2X1_RVT C285 ( .A1(alu_out[3]), .A2(N83), .Y(N84) );
  OR2X1_RVT C284 ( .A1(alu_out[4]), .A2(N82), .Y(N83) );
  OR2X1_RVT C283 ( .A1(alu_out[5]), .A2(N81), .Y(N82) );
  OR2X1_RVT C282 ( .A1(alu_out[6]), .A2(alu_out[7]), .Y(N81) );
  NAND3X0_RVT U5 ( .A1(n3), .A2(n21), .A3(n5), .Y(alu_stat[0]) );
  NAND2X0_RVT U7 ( .A1(n10), .A2(N74), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(N79), .A2(N71), .Y(n5) );
  AO22X1_RVT U9 ( .A1(n6), .A2(N74), .A3(n7), .A4(N79), .Y(alu_stat[3]) );
  OA22X1_RVT U10 ( .A1(N68), .A2(inst_bw), .A3(N67), .A4(N106), .Y(n7) );
  OA22X1_RVT U11 ( .A1(N70), .A2(inst_bw), .A3(N69), .A4(N106), .Y(n6) );
  AO22X1_RVT U12 ( .A1(inst_bw), .A2(alu_out[7]), .A3(N106), .A4(alu_out[15]), 
        .Y(alu_stat[2]) );
  AO22X1_RVT U13 ( .A1(inst_bw), .A2(n24), .A3(N106), .A4(n23), .Y(alu_stat[1]) );
  OA22X1_RVT U14 ( .A1(n11), .A2(inst_bw), .A3(alu_out[8]), .A4(N106), .Y(n10)
         );
  AO22X1_RVT U15 ( .A1(alu_dadd3[4]), .A2(n26), .A3(alu_add_inc[16]), .A4(n12), 
        .Y(n11) );
  AO22X1_RVT U17 ( .A1(inst_bw), .A2(alu_shift_15_), .A3(N106), .A4(op_src[8]), 
        .Y(alu_shift_7) );
  AO222X1_RVT U19 ( .A1(inst_so[0]), .A2(status[0]), .A3(N59), .A4(op_src[15]), 
        .A5(N61), .A6(op_src[7]), .Y(alu_shift_15_) );
  AO222X1_RVT U20 ( .A1(n12), .A2(alu_add_inc[9]), .A3(N64), .A4(alu_short[9]), 
        .A5(alu_dadd2[1]), .A6(N66), .Y(alu_out[9]) );
  AO222X1_RVT U21 ( .A1(n12), .A2(alu_add_inc[8]), .A3(n26), .A4(alu_dadd2[0]), 
        .A5(N64), .A6(alu_short[8]), .Y(alu_out[8]) );
  AO222X1_RVT U22 ( .A1(n12), .A2(alu_add_inc[7]), .A3(N64), .A4(alu_short[7]), 
        .A5(alu_dadd1[3]), .A6(N66), .Y(alu_out[7]) );
  AO222X1_RVT U23 ( .A1(n12), .A2(alu_add_inc[6]), .A3(N64), .A4(alu_short[6]), 
        .A5(alu_dadd1[2]), .A6(N66), .Y(alu_out[6]) );
  AO222X1_RVT U24 ( .A1(n12), .A2(alu_add_inc[5]), .A3(N64), .A4(alu_short[5]), 
        .A5(alu_dadd1[1]), .A6(N66), .Y(alu_out[5]) );
  AO222X1_RVT U25 ( .A1(n12), .A2(alu_add_inc[4]), .A3(N64), .A4(alu_short[4]), 
        .A5(alu_dadd1[0]), .A6(N66), .Y(alu_out[4]) );
  AO222X1_RVT U26 ( .A1(n12), .A2(alu_add_inc[3]), .A3(N64), .A4(alu_short[3]), 
        .A5(alu_dadd0[3]), .A6(N66), .Y(alu_out[3]) );
  AO222X1_RVT U27 ( .A1(n12), .A2(alu_add_inc[2]), .A3(N64), .A4(alu_short[2]), 
        .A5(alu_dadd0[2]), .A6(N66), .Y(alu_out[2]) );
  AO222X1_RVT U28 ( .A1(n12), .A2(alu_add_inc[1]), .A3(N64), .A4(alu_short[1]), 
        .A5(alu_dadd0[1]), .A6(N66), .Y(alu_out[1]) );
  AO222X1_RVT U29 ( .A1(n12), .A2(alu_add_inc[15]), .A3(N64), .A4(
        alu_short[15]), .A5(alu_dadd3[3]), .A6(n26), .Y(alu_out[15]) );
  AO222X1_RVT U30 ( .A1(n12), .A2(alu_add_inc[14]), .A3(N64), .A4(
        alu_short[14]), .A5(alu_dadd3[2]), .A6(n26), .Y(alu_out[14]) );
  AO222X1_RVT U31 ( .A1(n12), .A2(alu_add_inc[13]), .A3(N64), .A4(
        alu_short[13]), .A5(alu_dadd3[1]), .A6(n26), .Y(alu_out[13]) );
  AO222X1_RVT U32 ( .A1(n12), .A2(alu_add_inc[12]), .A3(N64), .A4(
        alu_short[12]), .A5(alu_dadd3[0]), .A6(n26), .Y(alu_out[12]) );
  AO222X1_RVT U33 ( .A1(n12), .A2(alu_add_inc[11]), .A3(N64), .A4(
        alu_short[11]), .A5(alu_dadd2[3]), .A6(n26), .Y(alu_out[11]) );
  AO222X1_RVT U34 ( .A1(n12), .A2(alu_add_inc[10]), .A3(N64), .A4(
        alu_short[10]), .A5(alu_dadd2[2]), .A6(n26), .Y(alu_out[10]) );
  AO222X1_RVT U35 ( .A1(n12), .A2(alu_add_inc[0]), .A3(N64), .A4(alu_short[0]), 
        .A5(alu_dadd0[0]), .A6(n26), .Y(alu_out[0]) );
  INVX0_RVT U36 ( .A(N65), .Y(n12) );
  omsp_alu_DP_OP_68_122_3245_1 DP_OP_68_122_3245 ( .I1({1'b0, op_src_in_jmp}), 
        .I2({op_dst_in, op_dst[7:0]}), .I3(alu_inc), .O1({
        SYNOPSYS_UNCONNECTED_1, alu_out_add}), .O2(alu_add_inc) );
  omsp_alu_DP_OP_69_123_7159_1 DP_OP_69_123_7159 ( .I1({n19, n20, n14, n16}), 
        .I2(op_dst[3:0]), .I3(status[0]), .I4({N17, N17, 1'b0}), .O1(N16), 
        .O2({alu_dadd0_4_, alu_dadd0}) );
  omsp_alu_DP_OP_70_124_7159_1 DP_OP_70_124_7159 ( .I1({n13, n15, n17, n18}), 
        .I2(op_dst[7:4]), .I3(alu_dadd0_4_), .I4({N30, N30, 1'b0}), .O1(N29), 
        .O2({alu_dadd1_4_, alu_dadd1}) );
  omsp_alu_DP_OP_71_125_7159_1 DP_OP_71_125_7159 ( .I1(op_src_in[11:8]), .I2(
        op_dst_in[11:8]), .I3(alu_dadd1_4_), .I4({N43, N43, 1'b0}), .O1(N42), 
        .O2({alu_dadd2_4_, alu_dadd2}) );
  omsp_alu_DP_OP_72_126_7159_1 DP_OP_72_126_7159 ( .I1(op_src_in[15:12]), .I2(
        op_dst_in[15:12]), .I3(alu_dadd2_4_), .I4({N56, N56, 1'b0}), .O1(N55), 
        .O2(alu_dadd3) );
  INVX0_RVT I_2 ( .A(exec_cycle), .Y(N105) );
  INVX0_RVT I_13 ( .A(N58), .Y(N59) );
  XOR2X1_RVT C449 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_xor[14]) );
  XOR2X1_RVT C448 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(alu_xor[15]) );
  XOR2X1_RVT C451 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_xor[12]) );
  INVX0_RVT I_17 ( .A(N62), .Y(N65) );
  XOR2X1_RVT C453 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_xor[10]) );
  XOR2X1_RVT C452 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_xor[11]) );
  XOR2X1_RVT C454 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_xor[9]) );
  XOR2X1_RVT U52 ( .A1(op_dst[6]), .A2(n15), .Y(alu_xor[6]) );
  XOR2X1_RVT U58 ( .A1(op_dst[7]), .A2(n13), .Y(alu_xor[7]) );
  XOR2X1_RVT U43 ( .A1(op_dst[4]), .A2(n18), .Y(alu_xor[4]) );
  XOR2X1_RVT U46 ( .A1(op_dst[5]), .A2(n17), .Y(alu_xor[5]) );
  XOR2X1_RVT U37 ( .A1(op_dst[2]), .A2(n20), .Y(alu_xor[2]) );
  XOR2X1_RVT U55 ( .A1(op_dst[1]), .A2(n14), .Y(alu_xor[1]) );
  INVX0_RVT U61 ( .A(inst_so[0]), .Y(N60) );
  XOR2X1_RVT U62 ( .A1(op_dst[0]), .A2(n16), .Y(alu_xor[0]) );
  XOR2X1_RVT U63 ( .A1(op_dst[3]), .A2(n19), .Y(alu_xor[3]) );
  XOR2X1_RVT U64 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_xor[8]) );
  XOR2X1_RVT U65 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_xor[13]) );
  XOR2X1_RVT U66 ( .A1(op_src_inv_cmd), .A2(op_src[9]), .Y(op_src_inv[9]) );
  AND2X2_RVT U67 ( .A1(exec_cycle), .A2(inst_alu[0]), .Y(op_src_inv_cmd) );
  XOR2X1_RVT U68 ( .A1(op_src_inv_cmd), .A2(op_src[8]), .Y(op_src_inv[8]) );
  INVX0_RVT U69 ( .A(N130), .Y(alu_short_thro) );
  INVX0_RVT U70 ( .A(N63), .Y(N64) );
  XOR2X1_RVT U71 ( .A1(op_src_inv_cmd), .A2(op_src[7]), .Y(n13) );
  XOR2X1_RVT U72 ( .A1(op_src_inv_cmd), .A2(op_src[1]), .Y(n14) );
  XOR2X1_RVT U73 ( .A1(op_src_inv_cmd), .A2(op_src[6]), .Y(n15) );
  XOR2X1_RVT U74 ( .A1(op_src_inv_cmd), .A2(op_src[0]), .Y(n16) );
  XOR2X1_RVT U75 ( .A1(op_src_inv_cmd), .A2(op_src[5]), .Y(n17) );
  XOR2X1_RVT U76 ( .A1(op_src_inv_cmd), .A2(op_src[4]), .Y(n18) );
  XOR2X1_RVT U77 ( .A1(op_src_inv_cmd), .A2(op_src[3]), .Y(n19) );
  XOR2X1_RVT U78 ( .A1(op_src_inv_cmd), .A2(op_src[2]), .Y(n20) );
  AOI22X1_RVT U79 ( .A1(N71), .A2(N76), .A3(inst_alu[10]), .A4(n16), .Y(n21)
         );
  NOR2X1_RVT U80 ( .A1(N121), .A2(N122), .Y(n22) );
  NOR2X1_RVT U81 ( .A1(alu_out[0]), .A2(N102), .Y(n23) );
  NOR2X1_RVT U82 ( .A1(alu_out[0]), .A2(N86), .Y(n24) );
  INVX0_RVT U83 ( .A(inst_bw), .Y(N106) );
  INVX0_RVT U84 ( .A(N66), .Y(n25) );
  INVX0_RVT U85 ( .A(n25), .Y(n26) );
  XOR2X1_RVT U86 ( .A1(op_src_inv_cmd), .A2(op_src[15]), .Y(op_src_inv[15]) );
  XOR2X1_RVT U87 ( .A1(op_src_inv_cmd), .A2(op_src[14]), .Y(op_src_inv[14]) );
  XOR2X1_RVT U88 ( .A1(op_src_inv_cmd), .A2(op_src[13]), .Y(op_src_inv[13]) );
  XOR2X1_RVT U89 ( .A1(op_src_inv_cmd), .A2(op_src[12]), .Y(op_src_inv[12]) );
  XOR2X1_RVT U90 ( .A1(op_src_inv_cmd), .A2(op_src[11]), .Y(op_src_inv[11]) );
  XOR2X1_RVT U91 ( .A1(op_src_inv_cmd), .A2(op_src[10]), .Y(op_src_inv[10]) );
  INVX0_RVT U92 ( .A(alu_stat_wr[1]), .Y(n27) );
  INVX0_RVT U93 ( .A(n27), .Y(alu_stat_wr[2]) );
  INVX0_RVT U94 ( .A(n27), .Y(alu_stat_wr[3]) );
  INVX0_RVT U95 ( .A(n27), .Y(alu_stat_wr[0]) );
endmodule

