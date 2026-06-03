/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09-SP5-4
// Date      : Tue Jun  2 14:46:49 2026
/////////////////////////////////////////////////////////////


module omsp_alu_DP_OP_77_125_7159_0 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n2, n3, n7, n32, n33, n34, n41, n42, n43, n44, n63, n64, n65;

  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  AOI221X1_RVT U44 ( .A1(n43), .A2(n41), .A3(n43), .A4(n42), .A5(n44), .Y(O1)
         );
  FADDX1_RVT U45 ( .A(n44), .B(n2), .CI(n7), .S(O2[4]) );
  HADDX1_RVT U46 ( .A0(n42), .B0(n63), .SO(O2[2]) );
  AO22X1_RVT U47 ( .A1(I4[2]), .A2(n64), .A3(n7), .A4(n41), .Y(O2[1]) );
  INVX0_RVT U48 ( .A(I4[2]), .Y(n7) );
  NAND2X0_RVT U49 ( .A1(n63), .A2(n65), .Y(n3) );
  INVX0_RVT U50 ( .A(n42), .Y(n65) );
  AND2X1_RVT U51 ( .A1(I4[2]), .A2(n64), .Y(n63) );
  INVX0_RVT U52 ( .A(n41), .Y(n64) );
endmodule


module omsp_alu_DP_OP_76_124_7159_0 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n2, n3, n7, n32, n33, n34, n41, n42, n43, n44, n63, n64, n65;

  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  AOI221X1_RVT U44 ( .A1(n43), .A2(n41), .A3(n43), .A4(n42), .A5(n44), .Y(O1)
         );
  FADDX1_RVT U45 ( .A(n44), .B(n2), .CI(n7), .S(O2[4]) );
  HADDX1_RVT U46 ( .A0(n42), .B0(n63), .SO(O2[2]) );
  AO22X1_RVT U47 ( .A1(I4[2]), .A2(n64), .A3(n7), .A4(n41), .Y(O2[1]) );
  INVX0_RVT U48 ( .A(I4[2]), .Y(n7) );
  NAND2X0_RVT U49 ( .A1(n63), .A2(n65), .Y(n3) );
  INVX0_RVT U50 ( .A(n42), .Y(n65) );
  AND2X1_RVT U51 ( .A1(I4[2]), .A2(n64), .Y(n63) );
  INVX0_RVT U52 ( .A(n41), .Y(n64) );
endmodule


module omsp_alu_DP_OP_74_122_7159_0 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n2, n3, n7, n32, n33, n34, n41, n42, n43, n44, n63, n64, n65;

  FADDX1_RVT U3 ( .A(n7), .B(n3), .CI(n43), .CO(n2), .S(O2[3]) );
  FADDX1_RVT U35 ( .A(I1[3]), .B(I2[3]), .CI(n32), .CO(n44), .S(n43) );
  FADDX1_RVT U36 ( .A(I1[2]), .B(I2[2]), .CI(n33), .CO(n32), .S(n42) );
  FADDX1_RVT U37 ( .A(I1[1]), .B(I2[1]), .CI(n34), .CO(n33), .S(n41) );
  FADDX1_RVT U38 ( .A(I1[0]), .B(I2[0]), .CI(I3), .CO(n34), .S(O2[0]) );
  AOI221X1_RVT U44 ( .A1(n43), .A2(n41), .A3(n43), .A4(n42), .A5(n44), .Y(O1)
         );
  FADDX1_RVT U45 ( .A(n44), .B(n2), .CI(n7), .S(O2[4]) );
  HADDX1_RVT U46 ( .A0(n42), .B0(n63), .SO(O2[2]) );
  AO22X1_RVT U47 ( .A1(I4[2]), .A2(n64), .A3(n7), .A4(n41), .Y(O2[1]) );
  INVX0_RVT U48 ( .A(I4[2]), .Y(n7) );
  NAND2X0_RVT U49 ( .A1(n63), .A2(n65), .Y(n3) );
  INVX0_RVT U50 ( .A(n42), .Y(n65) );
  AND2X1_RVT U51 ( .A1(I4[2]), .A2(n64), .Y(n63) );
  INVX0_RVT U52 ( .A(n41), .Y(n64) );
endmodule


module omsp_alu_DP_OP_77_126_9670_0 ( I1, I2, I3, I4, I5, I6, O1, O2 );
  input [16:0] I1;
  input [15:0] I2;
  input [15:0] I4;
  input [15:0] I6;
  output [16:0] O1;
  output [16:0] O2;
  input I3, I5;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n87, n155;

  FADDX1_RVT U2 ( .A(I6[15]), .B(n52), .CI(n2), .CO(n1), .S(O2[15]) );
  FADDX1_RVT U3 ( .A(I6[14]), .B(n51), .CI(n3), .CO(n2), .S(O2[14]) );
  FADDX1_RVT U4 ( .A(I6[13]), .B(n50), .CI(n4), .CO(n3), .S(O2[13]) );
  FADDX1_RVT U5 ( .A(I6[12]), .B(n49), .CI(n5), .CO(n4), .S(O2[12]) );
  FADDX1_RVT U6 ( .A(I6[11]), .B(n48), .CI(n6), .CO(n5), .S(O2[11]) );
  FADDX1_RVT U7 ( .A(I6[10]), .B(n47), .CI(n7), .CO(n6), .S(O2[10]) );
  FADDX1_RVT U8 ( .A(I6[9]), .B(n46), .CI(n8), .CO(n7), .S(O2[9]) );
  FADDX1_RVT U9 ( .A(I6[8]), .B(n45), .CI(n9), .CO(n8), .S(O2[8]) );
  FADDX1_RVT U10 ( .A(I6[7]), .B(n44), .CI(n10), .CO(n9), .S(O2[7]) );
  FADDX1_RVT U11 ( .A(I6[6]), .B(n43), .CI(n11), .CO(n10), .S(O2[6]) );
  FADDX1_RVT U12 ( .A(I6[5]), .B(n42), .CI(n12), .CO(n11), .S(O2[5]) );
  FADDX1_RVT U13 ( .A(I6[4]), .B(n41), .CI(n13), .CO(n12), .S(O2[4]) );
  FADDX1_RVT U14 ( .A(I6[3]), .B(n40), .CI(n14), .CO(n13), .S(O2[3]) );
  FADDX1_RVT U15 ( .A(I6[2]), .B(n39), .CI(n15), .CO(n14), .S(O2[2]) );
  FADDX1_RVT U16 ( .A(I6[1]), .B(n16), .CI(n38), .CO(n15), .S(O2[1]) );
  HADDX1_RVT U17 ( .A0(I6[0]), .B0(n37), .C1(n16), .SO(O2[0]) );
  FADDX1_RVT U36 ( .A(I2[15]), .B(I1[15]), .CI(n18), .CO(n87), .S(O1[15]) );
  FADDX1_RVT U37 ( .A(I2[14]), .B(I1[14]), .CI(n19), .CO(n18), .S(O1[14]) );
  FADDX1_RVT U38 ( .A(I2[13]), .B(I1[13]), .CI(n20), .CO(n19), .S(O1[13]) );
  FADDX1_RVT U39 ( .A(I2[12]), .B(I1[12]), .CI(n21), .CO(n20), .S(O1[12]) );
  FADDX1_RVT U40 ( .A(I2[11]), .B(I1[11]), .CI(n22), .CO(n21), .S(O1[11]) );
  FADDX1_RVT U41 ( .A(I2[10]), .B(I1[10]), .CI(n23), .CO(n22), .S(O1[10]) );
  FADDX1_RVT U42 ( .A(I2[9]), .B(I1[9]), .CI(n24), .CO(n23), .S(O1[9]) );
  FADDX1_RVT U43 ( .A(I2[8]), .B(I1[8]), .CI(n25), .CO(n24), .S(O1[8]) );
  FADDX1_RVT U44 ( .A(I2[7]), .B(I1[7]), .CI(n26), .CO(n25), .S(O1[7]) );
  FADDX1_RVT U45 ( .A(I2[6]), .B(I1[6]), .CI(n27), .CO(n26), .S(O1[6]) );
  FADDX1_RVT U46 ( .A(I2[5]), .B(I1[5]), .CI(n28), .CO(n27), .S(O1[5]) );
  FADDX1_RVT U47 ( .A(I2[4]), .B(I1[4]), .CI(n29), .CO(n28), .S(O1[4]) );
  FADDX1_RVT U48 ( .A(I2[3]), .B(I1[3]), .CI(n30), .CO(n29), .S(O1[3]) );
  FADDX1_RVT U49 ( .A(I2[2]), .B(I1[2]), .CI(n31), .CO(n30), .S(O1[2]) );
  FADDX1_RVT U50 ( .A(I2[1]), .B(I1[1]), .CI(n32), .CO(n31), .S(O1[1]) );
  HADDX1_RVT U51 ( .A0(I2[0]), .B0(I1[0]), .C1(n32), .SO(O1[0]) );
  HADDX1_RVT U54 ( .A0(n155), .B0(n1), .SO(O2[16]) );
  AND2X1_RVT U55 ( .A1(I3), .A2(n87), .Y(n155) );
  AO22X1_RVT U56 ( .A1(I3), .A2(O1[15]), .A3(I5), .A4(I4[15]), .Y(n52) );
  AO22X1_RVT U57 ( .A1(I3), .A2(O1[14]), .A3(I5), .A4(I4[14]), .Y(n51) );
  AO22X1_RVT U58 ( .A1(I3), .A2(O1[13]), .A3(I5), .A4(I4[13]), .Y(n50) );
  AO22X1_RVT U59 ( .A1(I3), .A2(O1[12]), .A3(I5), .A4(I4[12]), .Y(n49) );
  AO22X1_RVT U60 ( .A1(I3), .A2(O1[11]), .A3(I5), .A4(I4[11]), .Y(n48) );
  AO22X1_RVT U61 ( .A1(I3), .A2(O1[10]), .A3(I5), .A4(I4[10]), .Y(n47) );
  AO22X1_RVT U62 ( .A1(I3), .A2(O1[9]), .A3(I5), .A4(I4[9]), .Y(n46) );
  AO22X1_RVT U63 ( .A1(I3), .A2(O1[8]), .A3(I5), .A4(I4[8]), .Y(n45) );
  AO22X1_RVT U64 ( .A1(I3), .A2(O1[7]), .A3(I5), .A4(I4[7]), .Y(n44) );
  AO22X1_RVT U65 ( .A1(I3), .A2(O1[6]), .A3(I5), .A4(I4[6]), .Y(n43) );
  AO22X1_RVT U66 ( .A1(I3), .A2(O1[5]), .A3(I5), .A4(I4[5]), .Y(n42) );
  AO22X1_RVT U67 ( .A1(I3), .A2(O1[4]), .A3(I5), .A4(I4[4]), .Y(n41) );
  AO22X1_RVT U68 ( .A1(I3), .A2(O1[3]), .A3(I5), .A4(I4[3]), .Y(n40) );
  AO22X1_RVT U69 ( .A1(I3), .A2(O1[2]), .A3(I5), .A4(I4[2]), .Y(n39) );
  AO22X1_RVT U70 ( .A1(I3), .A2(O1[1]), .A3(I5), .A4(I4[1]), .Y(n38) );
  AO22X1_RVT U71 ( .A1(I3), .A2(O1[0]), .A3(I5), .A4(I4[0]), .Y(n37) );
endmodule


module omsp_alu_DP_OP_78_127_5688_0 ( I1, I2, O1 );
  input [15:0] I1;
  input [15:0] I2;
  output [15:0] O1;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n214, n216, n217, n219, n220, n221, n223, n224, n225, n226,
         n228, n229, n230, n231, n232, n234, n235, n236, n237, n238, n239,
         n241, n242, n243, n244, n245, n246, n247, n249, n250, n251, n252,
         n253, n254, n255, n256, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n291, n292, n293, n294, n295, n296, n297, n298, n299, n300,
         n301, n302, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n330, n331, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n431,
         n432, n433, n434, n435, n436, n437, n438, n439, n440, n441, n442,
         n443, n444, n445, n446, n447, n448, n449, n450, n451, n452, n453,
         n454, n455, n456, n457, n458, n459, n460, n461;

  FADDX1_RVT U3 ( .A(n56), .B(n31), .CI(n3), .CO(n2), .S(O1[14]) );
  FADDX1_RVT U4 ( .A(n80), .B(n57), .CI(n4), .CO(n3), .S(O1[13]) );
  FADDX1_RVT U5 ( .A(n102), .B(n81), .CI(n5), .CO(n4), .S(O1[12]) );
  FADDX1_RVT U6 ( .A(n122), .B(n103), .CI(n6), .CO(n5), .S(O1[11]) );
  FADDX1_RVT U7 ( .A(n140), .B(n123), .CI(n7), .CO(n6), .S(O1[10]) );
  FADDX1_RVT U8 ( .A(n156), .B(n141), .CI(n8), .CO(n7), .S(O1[9]) );
  FADDX1_RVT U9 ( .A(n159), .B(n157), .CI(n9), .CO(n8), .S(O1[8]) );
  FADDX1_RVT U10 ( .A(n182), .B(n171), .CI(n10), .CO(n9), .S(O1[7]) );
  FADDX1_RVT U11 ( .A(n192), .B(n183), .CI(n11), .CO(n10), .S(O1[6]) );
  FADDX1_RVT U12 ( .A(n195), .B(n193), .CI(n12), .CO(n11), .S(O1[5]) );
  FADDX1_RVT U13 ( .A(n203), .B(n201), .CI(n13), .CO(n12), .S(O1[4]) );
  FADDX1_RVT U14 ( .A(n209), .B(n14), .CI(n207), .CO(n13), .S(O1[3]) );
  FADDX1_RVT U15 ( .A(n316), .B(n15), .CI(n211), .CO(n14), .S(O1[2]) );
  HADDX1_RVT U16 ( .A0(n331), .B0(n346), .C1(n15), .SO(O1[1]) );
  FADDX1_RVT U31 ( .A(n58), .B(n35), .CI(n33), .CO(n30), .S(n31) );
  FADDX1_RVT U32 ( .A(n39), .B(n60), .CI(n37), .CO(n32), .S(n33) );
  FADDX1_RVT U33 ( .A(n43), .B(n41), .CI(n62), .CO(n34), .S(n35) );
  FADDX1_RVT U34 ( .A(n66), .B(n45), .CI(n64), .CO(n36), .S(n37) );
  FADDX1_RVT U35 ( .A(n53), .B(n51), .CI(n68), .CO(n38), .S(n39) );
  FADDX1_RVT U36 ( .A(n76), .B(n47), .CI(n49), .CO(n40), .S(n41) );
  FADDX1_RVT U37 ( .A(n72), .B(n70), .CI(n74), .CO(n42), .S(n43) );
  FADDX1_RVT U38 ( .A(n279), .B(n78), .CI(n55), .CO(n44), .S(n45) );
  FADDX1_RVT U39 ( .A(n291), .B(n241), .CI(n268), .CO(n46), .S(n47) );
  FADDX1_RVT U40 ( .A(n249), .B(n304), .CI(n234), .CO(n48), .S(n49) );
  FADDX1_RVT U41 ( .A(n258), .B(n228), .CI(n318), .CO(n50), .S(n51) );
  FADDX1_RVT U42 ( .A(n333), .B(n219), .CI(n223), .CO(n52), .S(n53) );
  HADDX1_RVT U43 ( .A0(n216), .B0(n214), .C1(n54), .SO(n55) );
  FADDX1_RVT U44 ( .A(n82), .B(n61), .CI(n59), .CO(n56), .S(n57) );
  FADDX1_RVT U45 ( .A(n65), .B(n84), .CI(n63), .CO(n58), .S(n59) );
  FADDX1_RVT U46 ( .A(n88), .B(n86), .CI(n67), .CO(n60), .S(n61) );
  FADDX1_RVT U47 ( .A(n71), .B(n90), .CI(n69), .CO(n62), .S(n63) );
  FADDX1_RVT U48 ( .A(n73), .B(n77), .CI(n75), .CO(n64), .S(n65) );
  FADDX1_RVT U49 ( .A(n96), .B(n94), .CI(n92), .CO(n66), .S(n67) );
  FADDX1_RVT U50 ( .A(n100), .B(n79), .CI(n98), .CO(n68), .S(n69) );
  FADDX1_RVT U51 ( .A(n292), .B(n269), .CI(n280), .CO(n70), .S(n71) );
  FADDX1_RVT U52 ( .A(n242), .B(n305), .CI(n259), .CO(n72), .S(n73) );
  FADDX1_RVT U53 ( .A(n250), .B(n229), .CI(n235), .CO(n74), .S(n75) );
  FADDX1_RVT U54 ( .A(n334), .B(n224), .CI(n319), .CO(n76), .S(n77) );
  HADDX1_RVT U55 ( .A0(n220), .B0(n217), .C1(n78), .SO(n79) );
  FADDX1_RVT U56 ( .A(n104), .B(n85), .CI(n83), .CO(n80), .S(n81) );
  FADDX1_RVT U57 ( .A(n89), .B(n106), .CI(n87), .CO(n82), .S(n83) );
  FADDX1_RVT U58 ( .A(n110), .B(n91), .CI(n108), .CO(n84), .S(n85) );
  FADDX1_RVT U59 ( .A(n99), .B(n112), .CI(n93), .CO(n86), .S(n87) );
  FADDX1_RVT U60 ( .A(n118), .B(n95), .CI(n97), .CO(n88), .S(n89) );
  FADDX1_RVT U61 ( .A(n101), .B(n114), .CI(n116), .CO(n90), .S(n91) );
  FADDX1_RVT U62 ( .A(n281), .B(n270), .CI(n120), .CO(n92), .S(n93) );
  FADDX1_RVT U63 ( .A(n293), .B(n243), .CI(n251), .CO(n94), .S(n95) );
  FADDX1_RVT U64 ( .A(n260), .B(n320), .CI(n306), .CO(n96), .S(n97) );
  FADDX1_RVT U65 ( .A(n335), .B(n230), .CI(n236), .CO(n98), .S(n99) );
  HADDX1_RVT U66 ( .A0(n225), .B0(n221), .C1(n100), .SO(n101) );
  FADDX1_RVT U67 ( .A(n124), .B(n107), .CI(n105), .CO(n102), .S(n103) );
  FADDX1_RVT U68 ( .A(n111), .B(n126), .CI(n109), .CO(n104), .S(n105) );
  FADDX1_RVT U69 ( .A(n130), .B(n128), .CI(n113), .CO(n106), .S(n107) );
  FADDX1_RVT U70 ( .A(n115), .B(n119), .CI(n117), .CO(n108), .S(n109) );
  FADDX1_RVT U71 ( .A(n136), .B(n132), .CI(n134), .CO(n110), .S(n111) );
  FADDX1_RVT U72 ( .A(n294), .B(n138), .CI(n121), .CO(n112), .S(n113) );
  FADDX1_RVT U73 ( .A(n307), .B(n271), .CI(n282), .CO(n114), .S(n115) );
  FADDX1_RVT U74 ( .A(n261), .B(n244), .CI(n252), .CO(n116), .S(n117) );
  FADDX1_RVT U75 ( .A(n336), .B(n237), .CI(n321), .CO(n118), .S(n119) );
  HADDX1_RVT U76 ( .A0(n231), .B0(n226), .C1(n120), .SO(n121) );
  FADDX1_RVT U77 ( .A(n142), .B(n127), .CI(n125), .CO(n122), .S(n123) );
  FADDX1_RVT U78 ( .A(n131), .B(n144), .CI(n129), .CO(n124), .S(n125) );
  FADDX1_RVT U79 ( .A(n133), .B(n135), .CI(n146), .CO(n126), .S(n127) );
  FADDX1_RVT U80 ( .A(n150), .B(n148), .CI(n137), .CO(n128), .S(n129) );
  FADDX1_RVT U81 ( .A(n154), .B(n139), .CI(n152), .CO(n130), .S(n131) );
  FADDX1_RVT U82 ( .A(n295), .B(n262), .CI(n272), .CO(n132), .S(n133) );
  FADDX1_RVT U83 ( .A(n283), .B(n322), .CI(n308), .CO(n134), .S(n135) );
  FADDX1_RVT U84 ( .A(n337), .B(n245), .CI(n253), .CO(n136), .S(n137) );
  HADDX1_RVT U85 ( .A0(n238), .B0(n232), .C1(n138), .SO(n139) );
  FADDX1_RVT U86 ( .A(n158), .B(n145), .CI(n143), .CO(n140), .S(n141) );
  FADDX1_RVT U87 ( .A(n149), .B(n160), .CI(n147), .CO(n142), .S(n143) );
  FADDX1_RVT U88 ( .A(n151), .B(n153), .CI(n162), .CO(n144), .S(n145) );
  FADDX1_RVT U89 ( .A(n155), .B(n164), .CI(n166), .CO(n146), .S(n147) );
  FADDX1_RVT U90 ( .A(n309), .B(n296), .CI(n168), .CO(n148), .S(n149) );
  FADDX1_RVT U91 ( .A(n273), .B(n263), .CI(n284), .CO(n150), .S(n151) );
  FADDX1_RVT U92 ( .A(n338), .B(n254), .CI(n323), .CO(n152), .S(n153) );
  HADDX1_RVT U93 ( .A0(n246), .B0(n239), .C1(n154), .SO(n155) );
  FADDX1_RVT U94 ( .A(n172), .B(n161), .CI(n170), .CO(n156), .S(n157) );
  FADDX1_RVT U95 ( .A(n167), .B(n174), .CI(n163), .CO(n158), .S(n159) );
  FADDX1_RVT U96 ( .A(n178), .B(n176), .CI(n165), .CO(n160), .S(n161) );
  FADDX1_RVT U97 ( .A(n297), .B(n180), .CI(n169), .CO(n162), .S(n163) );
  FADDX1_RVT U98 ( .A(n285), .B(n310), .CI(n274), .CO(n164), .S(n165) );
  FADDX1_RVT U99 ( .A(n339), .B(n264), .CI(n324), .CO(n166), .S(n167) );
  HADDX1_RVT U100 ( .A0(n255), .B0(n247), .C1(n168), .SO(n169) );
  FADDX1_RVT U101 ( .A(n184), .B(n175), .CI(n173), .CO(n170), .S(n171) );
  FADDX1_RVT U102 ( .A(n186), .B(n177), .CI(n179), .CO(n172), .S(n173) );
  FADDX1_RVT U103 ( .A(n190), .B(n181), .CI(n188), .CO(n174), .S(n175) );
  FADDX1_RVT U104 ( .A(n286), .B(n298), .CI(n311), .CO(n176), .S(n177) );
  FADDX1_RVT U105 ( .A(n340), .B(n275), .CI(n325), .CO(n178), .S(n179) );
  HADDX1_RVT U106 ( .A0(n265), .B0(n256), .C1(n180), .SO(n181) );
  FADDX1_RVT U107 ( .A(n194), .B(n187), .CI(n185), .CO(n182), .S(n183) );
  FADDX1_RVT U108 ( .A(n191), .B(n196), .CI(n189), .CO(n184), .S(n185) );
  FADDX1_RVT U109 ( .A(n312), .B(n299), .CI(n198), .CO(n186), .S(n187) );
  FADDX1_RVT U110 ( .A(n341), .B(n287), .CI(n326), .CO(n188), .S(n189) );
  HADDX1_RVT U111 ( .A0(n276), .B0(n266), .C1(n190), .SO(n191) );
  FADDX1_RVT U112 ( .A(n202), .B(n197), .CI(n200), .CO(n192), .S(n193) );
  FADDX1_RVT U113 ( .A(n327), .B(n204), .CI(n199), .CO(n194), .S(n195) );
  FADDX1_RVT U114 ( .A(n342), .B(n300), .CI(n313), .CO(n196), .S(n197) );
  HADDX1_RVT U115 ( .A0(n288), .B0(n277), .C1(n198), .SO(n199) );
  FADDX1_RVT U116 ( .A(n208), .B(n205), .CI(n206), .CO(n200), .S(n201) );
  FADDX1_RVT U117 ( .A(n343), .B(n314), .CI(n328), .CO(n202), .S(n203) );
  HADDX1_RVT U118 ( .A0(n301), .B0(n289), .C1(n204), .SO(n205) );
  FADDX1_RVT U119 ( .A(n344), .B(n329), .CI(n210), .CO(n206), .S(n207) );
  HADDX1_RVT U120 ( .A0(n315), .B0(n302), .C1(n208), .SO(n209) );
  HADDX1_RVT U121 ( .A0(n345), .B0(n330), .C1(n210), .SO(n211) );
  FADDX1_RVT U292 ( .A(n431), .B(n432), .CI(n433), .S(O1[15]) );
  FADDX1_RVT U293 ( .A(n434), .B(n435), .CI(n436), .S(n433) );
  FADDX1_RVT U294 ( .A(n437), .B(n438), .CI(n439), .S(n436) );
  FADDX1_RVT U295 ( .A(n440), .B(n441), .CI(n442), .S(n439) );
  NAND2X0_RVT U296 ( .A1(n443), .A2(n444), .Y(n442) );
  NAND4X0_RVT U297 ( .A1(I1[4]), .A2(I2[11]), .A3(I1[9]), .A4(I2[6]), .Y(n444)
         );
  AO22X1_RVT U298 ( .A1(I1[4]), .A2(I2[11]), .A3(I1[9]), .A4(I2[6]), .Y(n443)
         );
  NAND2X0_RVT U299 ( .A1(I2[14]), .A2(I1[1]), .Y(n441) );
  NAND2X0_RVT U300 ( .A1(I2[7]), .A2(I1[8]), .Y(n440) );
  NAND2X0_RVT U301 ( .A1(I2[3]), .A2(I1[12]), .Y(n438) );
  NAND2X0_RVT U302 ( .A1(I2[10]), .A2(I1[5]), .Y(n437) );
  NAND2X0_RVT U303 ( .A1(I2[8]), .A2(I1[7]), .Y(n435) );
  NAND2X0_RVT U304 ( .A1(I2[1]), .A2(I1[14]), .Y(n434) );
  FADDX1_RVT U305 ( .A(n30), .B(n2), .CI(n445), .S(n432) );
  FADDX1_RVT U306 ( .A(n446), .B(n447), .CI(n448), .S(n445) );
  FADDX1_RVT U307 ( .A(n449), .B(n450), .CI(n451), .S(n448) );
  NAND2X0_RVT U308 ( .A1(n452), .A2(n453), .Y(n451) );
  NAND4X0_RVT U309 ( .A1(I1[15]), .A2(I2[0]), .A3(I1[13]), .A4(I2[2]), .Y(n453) );
  AO22X1_RVT U310 ( .A1(I1[15]), .A2(I2[0]), .A3(I1[13]), .A4(I2[2]), .Y(n452)
         );
  NAND2X0_RVT U311 ( .A1(I2[15]), .A2(I1[0]), .Y(n450) );
  NAND2X0_RVT U312 ( .A1(I2[12]), .A2(I1[3]), .Y(n449) );
  NAND2X0_RVT U313 ( .A1(I2[13]), .A2(I1[2]), .Y(n447) );
  NAND2X0_RVT U314 ( .A1(I2[5]), .A2(I1[10]), .Y(n446) );
  FADDX1_RVT U315 ( .A(n454), .B(n455), .CI(n456), .S(n431) );
  NAND2X0_RVT U316 ( .A1(I1[6]), .A2(I2[9]), .Y(n456) );
  FADDX1_RVT U317 ( .A(n38), .B(n34), .CI(n457), .S(n455) );
  FADDX1_RVT U318 ( .A(n50), .B(n44), .CI(n458), .S(n457) );
  FADDX1_RVT U319 ( .A(n48), .B(n52), .CI(n459), .S(n458) );
  HADDX1_RVT U320 ( .A0(n36), .B0(n32), .SO(n459) );
  FADDX1_RVT U321 ( .A(n42), .B(n46), .CI(n460), .S(n454) );
  FADDX1_RVT U322 ( .A(n54), .B(n40), .CI(n461), .S(n460) );
  NAND2X0_RVT U323 ( .A1(I2[4]), .A2(I1[11]), .Y(n461) );
  AND2X1_RVT U324 ( .A1(I1[0]), .A2(I2[0]), .Y(O1[0]) );
  AND2X1_RVT U325 ( .A1(I1[0]), .A2(I2[1]), .Y(n346) );
  AND2X1_RVT U326 ( .A1(I1[0]), .A2(I2[2]), .Y(n345) );
  AND2X1_RVT U327 ( .A1(I1[0]), .A2(I2[3]), .Y(n344) );
  AND2X1_RVT U328 ( .A1(I2[4]), .A2(I1[0]), .Y(n343) );
  AND2X1_RVT U329 ( .A1(I2[5]), .A2(I1[0]), .Y(n342) );
  AND2X1_RVT U330 ( .A1(I1[0]), .A2(I2[6]), .Y(n341) );
  AND2X1_RVT U331 ( .A1(I1[0]), .A2(I2[7]), .Y(n340) );
  AND2X1_RVT U332 ( .A1(I1[0]), .A2(I2[8]), .Y(n339) );
  AND2X1_RVT U333 ( .A1(I2[9]), .A2(I1[0]), .Y(n338) );
  AND2X1_RVT U334 ( .A1(I1[0]), .A2(I2[10]), .Y(n337) );
  AND2X1_RVT U335 ( .A1(I1[0]), .A2(I2[11]), .Y(n336) );
  AND2X1_RVT U336 ( .A1(I2[12]), .A2(I1[0]), .Y(n335) );
  AND2X1_RVT U337 ( .A1(I2[13]), .A2(I1[0]), .Y(n334) );
  AND2X1_RVT U338 ( .A1(I1[0]), .A2(I2[14]), .Y(n333) );
  AND2X1_RVT U339 ( .A1(I2[0]), .A2(I1[1]), .Y(n331) );
  AND2X1_RVT U340 ( .A1(I2[1]), .A2(I1[1]), .Y(n330) );
  AND2X1_RVT U341 ( .A1(I2[2]), .A2(I1[1]), .Y(n329) );
  AND2X1_RVT U342 ( .A1(I2[3]), .A2(I1[1]), .Y(n328) );
  AND2X1_RVT U343 ( .A1(I2[4]), .A2(I1[1]), .Y(n327) );
  AND2X1_RVT U344 ( .A1(I2[5]), .A2(I1[1]), .Y(n326) );
  AND2X1_RVT U345 ( .A1(I1[1]), .A2(I2[6]), .Y(n325) );
  AND2X1_RVT U346 ( .A1(I2[7]), .A2(I1[1]), .Y(n324) );
  AND2X1_RVT U347 ( .A1(I2[8]), .A2(I1[1]), .Y(n323) );
  AND2X1_RVT U348 ( .A1(I2[9]), .A2(I1[1]), .Y(n322) );
  AND2X1_RVT U349 ( .A1(I2[10]), .A2(I1[1]), .Y(n321) );
  AND2X1_RVT U350 ( .A1(I1[1]), .A2(I2[11]), .Y(n320) );
  AND2X1_RVT U351 ( .A1(I2[12]), .A2(I1[1]), .Y(n319) );
  AND2X1_RVT U352 ( .A1(I2[13]), .A2(I1[1]), .Y(n318) );
  AND2X1_RVT U353 ( .A1(I1[2]), .A2(I2[0]), .Y(n316) );
  AND2X1_RVT U354 ( .A1(I1[2]), .A2(I2[1]), .Y(n315) );
  AND2X1_RVT U355 ( .A1(I1[2]), .A2(I2[2]), .Y(n314) );
  AND2X1_RVT U356 ( .A1(I1[2]), .A2(I2[3]), .Y(n313) );
  AND2X1_RVT U357 ( .A1(I2[4]), .A2(I1[2]), .Y(n312) );
  AND2X1_RVT U358 ( .A1(I2[5]), .A2(I1[2]), .Y(n311) );
  AND2X1_RVT U359 ( .A1(I1[2]), .A2(I2[6]), .Y(n310) );
  AND2X1_RVT U360 ( .A1(I1[2]), .A2(I2[7]), .Y(n309) );
  AND2X1_RVT U361 ( .A1(I1[2]), .A2(I2[8]), .Y(n308) );
  AND2X1_RVT U362 ( .A1(I2[9]), .A2(I1[2]), .Y(n307) );
  AND2X1_RVT U363 ( .A1(I1[2]), .A2(I2[10]), .Y(n306) );
  AND2X1_RVT U364 ( .A1(I1[2]), .A2(I2[11]), .Y(n305) );
  AND2X1_RVT U365 ( .A1(I1[2]), .A2(I2[12]), .Y(n304) );
  AND2X1_RVT U366 ( .A1(I1[3]), .A2(I2[0]), .Y(n302) );
  AND2X1_RVT U367 ( .A1(I1[3]), .A2(I2[1]), .Y(n301) );
  AND2X1_RVT U368 ( .A1(I1[3]), .A2(I2[2]), .Y(n300) );
  AND2X1_RVT U369 ( .A1(I1[3]), .A2(I2[3]), .Y(n299) );
  AND2X1_RVT U370 ( .A1(I2[4]), .A2(I1[3]), .Y(n298) );
  AND2X1_RVT U371 ( .A1(I2[5]), .A2(I1[3]), .Y(n297) );
  AND2X1_RVT U372 ( .A1(I1[3]), .A2(I2[6]), .Y(n296) );
  AND2X1_RVT U373 ( .A1(I1[3]), .A2(I2[7]), .Y(n295) );
  AND2X1_RVT U374 ( .A1(I1[3]), .A2(I2[8]), .Y(n294) );
  AND2X1_RVT U375 ( .A1(I2[9]), .A2(I1[3]), .Y(n293) );
  AND2X1_RVT U376 ( .A1(I1[3]), .A2(I2[10]), .Y(n292) );
  AND2X1_RVT U377 ( .A1(I1[3]), .A2(I2[11]), .Y(n291) );
  AND2X1_RVT U378 ( .A1(I2[0]), .A2(I1[4]), .Y(n289) );
  AND2X1_RVT U379 ( .A1(I2[1]), .A2(I1[4]), .Y(n288) );
  AND2X1_RVT U380 ( .A1(I2[2]), .A2(I1[4]), .Y(n287) );
  AND2X1_RVT U381 ( .A1(I2[3]), .A2(I1[4]), .Y(n286) );
  AND2X1_RVT U382 ( .A1(I2[4]), .A2(I1[4]), .Y(n285) );
  AND2X1_RVT U383 ( .A1(I2[5]), .A2(I1[4]), .Y(n284) );
  AND2X1_RVT U384 ( .A1(I2[6]), .A2(I1[4]), .Y(n283) );
  AND2X1_RVT U385 ( .A1(I2[7]), .A2(I1[4]), .Y(n282) );
  AND2X1_RVT U386 ( .A1(I2[8]), .A2(I1[4]), .Y(n281) );
  AND2X1_RVT U387 ( .A1(I2[9]), .A2(I1[4]), .Y(n280) );
  AND2X1_RVT U388 ( .A1(I2[10]), .A2(I1[4]), .Y(n279) );
  AND2X1_RVT U389 ( .A1(I2[0]), .A2(I1[5]), .Y(n277) );
  AND2X1_RVT U390 ( .A1(I2[1]), .A2(I1[5]), .Y(n276) );
  AND2X1_RVT U391 ( .A1(I2[2]), .A2(I1[5]), .Y(n275) );
  AND2X1_RVT U392 ( .A1(I1[5]), .A2(I2[3]), .Y(n274) );
  AND2X1_RVT U393 ( .A1(I2[4]), .A2(I1[5]), .Y(n273) );
  AND2X1_RVT U394 ( .A1(I2[5]), .A2(I1[5]), .Y(n272) );
  AND2X1_RVT U395 ( .A1(I1[5]), .A2(I2[6]), .Y(n271) );
  AND2X1_RVT U396 ( .A1(I1[5]), .A2(I2[7]), .Y(n270) );
  AND2X1_RVT U397 ( .A1(I2[8]), .A2(I1[5]), .Y(n269) );
  AND2X1_RVT U398 ( .A1(I2[9]), .A2(I1[5]), .Y(n268) );
  AND2X1_RVT U399 ( .A1(I1[6]), .A2(I2[0]), .Y(n266) );
  AND2X1_RVT U400 ( .A1(I1[6]), .A2(I2[1]), .Y(n265) );
  AND2X1_RVT U401 ( .A1(I1[6]), .A2(I2[2]), .Y(n264) );
  AND2X1_RVT U402 ( .A1(I1[6]), .A2(I2[3]), .Y(n263) );
  AND2X1_RVT U403 ( .A1(I1[6]), .A2(I2[4]), .Y(n262) );
  AND2X1_RVT U404 ( .A1(I1[6]), .A2(I2[5]), .Y(n261) );
  AND2X1_RVT U405 ( .A1(I1[6]), .A2(I2[6]), .Y(n260) );
  AND2X1_RVT U406 ( .A1(I1[6]), .A2(I2[7]), .Y(n259) );
  AND2X1_RVT U407 ( .A1(I1[6]), .A2(I2[8]), .Y(n258) );
  AND2X1_RVT U408 ( .A1(I2[0]), .A2(I1[7]), .Y(n256) );
  AND2X1_RVT U409 ( .A1(I2[1]), .A2(I1[7]), .Y(n255) );
  AND2X1_RVT U410 ( .A1(I2[2]), .A2(I1[7]), .Y(n254) );
  AND2X1_RVT U411 ( .A1(I1[7]), .A2(I2[3]), .Y(n253) );
  AND2X1_RVT U412 ( .A1(I2[4]), .A2(I1[7]), .Y(n252) );
  AND2X1_RVT U413 ( .A1(I2[5]), .A2(I1[7]), .Y(n251) );
  AND2X1_RVT U414 ( .A1(I1[7]), .A2(I2[6]), .Y(n250) );
  AND2X1_RVT U415 ( .A1(I1[7]), .A2(I2[7]), .Y(n249) );
  AND2X1_RVT U416 ( .A1(I2[0]), .A2(I1[8]), .Y(n247) );
  AND2X1_RVT U417 ( .A1(I2[1]), .A2(I1[8]), .Y(n246) );
  AND2X1_RVT U418 ( .A1(I2[2]), .A2(I1[8]), .Y(n245) );
  AND2X1_RVT U419 ( .A1(I2[3]), .A2(I1[8]), .Y(n244) );
  AND2X1_RVT U420 ( .A1(I2[4]), .A2(I1[8]), .Y(n243) );
  AND2X1_RVT U421 ( .A1(I2[5]), .A2(I1[8]), .Y(n242) );
  AND2X1_RVT U422 ( .A1(I1[8]), .A2(I2[6]), .Y(n241) );
  AND2X1_RVT U423 ( .A1(I2[0]), .A2(I1[9]), .Y(n239) );
  AND2X1_RVT U424 ( .A1(I2[1]), .A2(I1[9]), .Y(n238) );
  AND2X1_RVT U425 ( .A1(I2[2]), .A2(I1[9]), .Y(n237) );
  AND2X1_RVT U426 ( .A1(I2[3]), .A2(I1[9]), .Y(n236) );
  AND2X1_RVT U427 ( .A1(I2[4]), .A2(I1[9]), .Y(n235) );
  AND2X1_RVT U428 ( .A1(I2[5]), .A2(I1[9]), .Y(n234) );
  AND2X1_RVT U429 ( .A1(I1[10]), .A2(I2[0]), .Y(n232) );
  AND2X1_RVT U430 ( .A1(I1[10]), .A2(I2[1]), .Y(n231) );
  AND2X1_RVT U431 ( .A1(I1[10]), .A2(I2[2]), .Y(n230) );
  AND2X1_RVT U432 ( .A1(I1[10]), .A2(I2[3]), .Y(n229) );
  AND2X1_RVT U433 ( .A1(I2[4]), .A2(I1[10]), .Y(n228) );
  AND2X1_RVT U434 ( .A1(I1[11]), .A2(I2[0]), .Y(n226) );
  AND2X1_RVT U435 ( .A1(I1[11]), .A2(I2[1]), .Y(n225) );
  AND2X1_RVT U436 ( .A1(I1[11]), .A2(I2[2]), .Y(n224) );
  AND2X1_RVT U437 ( .A1(I1[11]), .A2(I2[3]), .Y(n223) );
  AND2X1_RVT U438 ( .A1(I2[0]), .A2(I1[12]), .Y(n221) );
  AND2X1_RVT U439 ( .A1(I2[1]), .A2(I1[12]), .Y(n220) );
  AND2X1_RVT U440 ( .A1(I2[2]), .A2(I1[12]), .Y(n219) );
  AND2X1_RVT U441 ( .A1(I1[13]), .A2(I2[0]), .Y(n217) );
  AND2X1_RVT U442 ( .A1(I1[13]), .A2(I2[1]), .Y(n216) );
  AND2X1_RVT U443 ( .A1(I2[0]), .A2(I1[14]), .Y(n214) );
endmodule


module omsp_alu_DP_OP_75_123_7159_1 ( I1, I2, I3, I4, O1, O2 );
  input [3:0] I1;
  input [3:0] I2;
  input [2:0] I4;
  output [4:0] O2;
  input I3;
  output O1;
  wire   n1, n2, n3, n4, n5, n7, n8, n9, n10, n11, n12, n13, n18, n19, n20,
         n21, n22, n23, n24, n28, n29, n30, n32, n33, n35, n36, n37, n38, n39,
         n40, n48, n49, n54, n63, n64, n65, n66, n84, n85, n91, n92, n93, n94,
         n102, n103, n110, n111, n112, n113, n115, n143, n144;

  NAND2X0_RVT U2 ( .A1(n144), .A2(n7), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(n35), .A2(n32), .Y(n7) );
  XNOR2X1_RVT U6 ( .A1(n13), .A2(n3), .Y(O2[3]) );
  AOI21X1_RVT U7 ( .A1(n21), .A2(n9), .A3(n10), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n28), .A2(n12), .Y(n3) );
  NAND2X0_RVT U13 ( .A1(n33), .A2(I4[1]), .Y(n12) );
  XOR2X1_RVT U14 ( .A1(n20), .A2(n4), .Y(O2[2]) );
  OAI21X1_RVT U15 ( .A1(n18), .A2(n20), .A3(n19), .Y(n13) );
  NAND2X0_RVT U20 ( .A1(n29), .A2(n19), .Y(n4) );
  NAND2X0_RVT U23 ( .A1(n38), .A2(n37), .Y(n19) );
  XNOR2X1_RVT U24 ( .A1(n5), .A2(n24), .Y(O2[1]) );
  OAI21X2_RVT U26 ( .A1(n1), .A2(n22), .A3(n23), .Y(n21) );
  NAND2X0_RVT U28 ( .A1(n30), .A2(n23), .Y(n5) );
  NAND2X0_RVT U31 ( .A1(n39), .A2(n40), .Y(n23) );
  FADDX1_RVT U32 ( .A(I2[0]), .B(I1[0]), .CI(I3), .CO(n24), .S(O2[0]) );
  FADDX1_RVT U36 ( .A(n35), .B(I1[3]), .CI(n36), .CO(n32), .S(n33) );
  OR2X1_RVT U39 ( .A1(I2[2]), .A2(I1[2]), .Y(n36) );
  OR2X1_RVT U41 ( .A1(I2[1]), .A2(I1[1]), .Y(n38) );
  AOI21X1_RVT U45 ( .A1(I3), .A2(n143), .A3(n48), .Y(O1) );
  NAND2X0_RVT U47 ( .A1(n49), .A2(n54), .Y(n48) );
  AOI21X1_RVT U55 ( .A1(n92), .A2(n63), .A3(n64), .Y(n54) );
  NAND2X0_RVT U69 ( .A1(n111), .A2(I1[3]), .Y(n66) );
  NOR2X1_RVT U90 ( .A1(n113), .A2(I1[2]), .Y(n84) );
  NAND2X0_RVT U91 ( .A1(n113), .A2(I1[2]), .Y(n85) );
  NOR2X1_RVT U98 ( .A1(n93), .A2(n102), .Y(n91) );
  NAND2X0_RVT U103 ( .A1(n115), .A2(I1[1]), .Y(n94) );
  NOR2X1_RVT U114 ( .A1(I2[0]), .A2(I1[0]), .Y(n102) );
  NAND2X0_RVT U115 ( .A1(I2[0]), .A2(I1[0]), .Y(n103) );
  HADDX1_RVT U118 ( .A0(I2[3]), .B0(n112), .C1(n110), .SO(n111) );
  OR2X1_RVT U120 ( .A1(I2[2]), .A2(I2[1]), .Y(n112) );
  NOR2X0_RVT U30 ( .A1(n39), .A2(n40), .Y(n22) );
  NOR2X1_RVT U102 ( .A1(n115), .A2(I1[1]), .Y(n93) );
  OAI21X1_RVT U65 ( .A1(n85), .A2(n65), .A3(n66), .Y(n64) );
  NOR2X1_RVT U64 ( .A1(n84), .A2(n65), .Y(n63) );
  NOR2X1_RVT U12 ( .A1(n33), .A2(I4[1]), .Y(n11) );
  XNOR2X1_RVT U40 ( .A1(I1[1]), .A2(I2[1]), .Y(n39) );
  XNOR2X1_RVT U38 ( .A1(I1[2]), .A2(I2[2]), .Y(n37) );
  NOR2X1_RVT U8 ( .A1(n18), .A2(n11), .Y(n9) );
  OAI21X1_RVT U99 ( .A1(n103), .A2(n93), .A3(n94), .Y(n92) );
  NOR2X1_RVT U68 ( .A1(n111), .A2(I1[3]), .Y(n65) );
  XNOR2X1_RVT U126 ( .A1(I2[1]), .A2(I2[2]), .Y(n113) );
  INVX0_RVT U127 ( .A(n110), .Y(n49) );
  INVX0_RVT U128 ( .A(I2[3]), .Y(n35) );
  INVX0_RVT U129 ( .A(I4[2]), .Y(n40) );
  INVX0_RVT U130 ( .A(n24), .Y(n1) );
  OAI21X1_RVT U131 ( .A1(n19), .A2(n11), .A3(n12), .Y(n10) );
  NOR2X0_RVT U132 ( .A1(n38), .A2(n37), .Y(n18) );
  XOR2X1_RVT U133 ( .A1(n8), .A2(n2), .Y(O2[4]) );
  AND2X1_RVT U134 ( .A1(n91), .A2(n63), .Y(n143) );
  OR2X1_RVT U135 ( .A1(n35), .A2(n32), .Y(n144) );
  INVX0_RVT U136 ( .A(n22), .Y(n30) );
  INVX0_RVT U137 ( .A(n18), .Y(n29) );
  INVX0_RVT U138 ( .A(n11), .Y(n28) );
  INVX0_RVT U139 ( .A(n21), .Y(n20) );
  INVX1_RVT U140 ( .A(I2[1]), .Y(n115) );
endmodule


module omsp_alu ( alu_out, alu_out_add, alu_stat, alu_stat_wr, dbg_halt_st, 
        exec_cycle, inst_alu, inst_bw, inst_jmp, inst_so, op_dst, op_src, 
        status );
  output [15:0] alu_out;
  output [15:0] alu_out_add;
  output [3:0] alu_stat;
  output [3:0] alu_stat_wr;
  input [13:0] inst_alu;
  input [7:0] inst_jmp;
  input [7:0] inst_so;
  input [15:0] op_dst;
  input [15:0] op_src;
  input [3:0] status;
  input dbg_halt_st, exec_cycle, inst_bw;
  wire   N3, op_src_inv_cmd, op_bit8_msk, N5, jmp_not_taken, alu_inc, N16, N17,
         N29, N30, N42, N43, N55, N56, N59, N61, alu_shift_15_, alu_shift_7,
         alu_mul_en, alu_mac_en, alu_short_thro, N62, N66, N68, N71, N74, N77,
         N78, N79, N80, N84, N86, N89, N92, N94, N95, N96, N97, N98, N99, N102,
         N103, N104, N105, N106, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N118, N119, N120, N121, N122, N123, N124, N125, N126,
         N127, N128, N129, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N158, N159, N160,
         N161, N162, N163, N164, N165, N166, N167, N168, N169, N170, N171,
         N172, N173, N174, N175, N176, N177, N178, N179, N180, N181, N182,
         N183, N184, N185, N186, N187, N188, N189, N190, N191, N192, N193,
         N194, N195, N196, N197, N198, N199, N200, N201, N202, N203, N204,
         N205, N206, N207, N208, N209, N210, N211, N212, N213, N214, N215,
         N216, N217, N218, N219, N220, N221, N222, N223, N224, N225, N226,
         N227, N228, N229, N230, N231, N232, N233, N234, N235, N236, N237,
         N238, N239, N240, N241, N242, N243, N244, N245, N246, N247, N248,
         N249, N250, N251, N252, N253, N254, N255, N256, N257, N258, N259,
         N260, N261, N262, N263, N264, N265, N266, N267, N268, N269, N270,
         N271, N272, N273, N274, N275, N276, N277, N278, N279, N280, N281,
         N282, N283, N284, N285, N286, N287, N288, N289, N290, N291, N292,
         N293, N294, N295, N296, N297, N298, N299, N300, N301, N302, N303,
         N304, N305, N306, N307, N308, N309, N310, N311, N312, N313, N314,
         N315, N316, N317, N318, N319, N320, N321, N322, N323, N324, N325,
         N326, N327, N328, N329, N330, N331, N332, N333, N334, N335, N336,
         N337, N338, N339, N340, N341, N342, N343, N344, N345, N346, N347,
         N348, N349, N350, N351, N352, N353, N354, N355, N356, N357, N358,
         N359, N360, N361, N362, N363, N364, N91, N90, N88, N87, N85, N83, N82,
         N81, N73, N72, N70, N69, N67, N65, N64, N63, N60, N58, C9_CONTROL4,
         C9_DATA4_0, C9_DATA4_1, C9_DATA4_2, C9_DATA4_3, C9_DATA4_4,
         C9_DATA4_5, C9_DATA4_6, C9_DATA4_7, C9_DATA4_8, C9_DATA4_9,
         C9_DATA4_10, C9_DATA4_11, C9_DATA4_12, C9_DATA4_13, C9_DATA4_14,
         C9_DATA4_15, C9_DATA4_16, alu_dadd2_4_, alu_dadd1_4_, alu_dadd0_4_,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, C1_Z_15, C1_Z_14, C1_Z_13, C1_Z_12, C1_Z_11,
         C1_Z_10, C1_Z_9, C1_Z_8, C1_Z_7, C1_Z_6, C1_Z_5, C1_Z_4, C1_Z_3,
         C1_Z_2, C1_Z_1, C1_Z_0, C2_DATA1_16, n36, n37, n38, n42, n43,
         SYNOPSYS_UNCONNECTED_1;
  wire   [15:8] op_src_inv;
  wire   [15:8] op_src_in;
  wire   [15:8] op_dst_in;
  wire   [15:0] op_src_in_jmp;
  wire   [14:0] alu_and;
  wire   [15:0] alu_or;
  wire   [15:0] alu_xor;
  wire   [3:0] alu_dadd0;
  wire   [3:0] alu_dadd1;
  wire   [3:0] alu_dadd2;
  wire   [4:0] alu_dadd3;
  wire   [15:0] mul_product;
  wire   [15:0] alu_short;

  OR2X1_RVT U0 ( .A1(N3), .A2(N74), .Y(C9_CONTROL4) );
  AND2X1_RVT C792 ( .A1(inst_alu[6]), .A2(N91), .Y(N92) );
  AND2X1_RVT C791 ( .A1(N88), .A2(N90), .Y(N91) );
  INVX0_RVT I_30 ( .A(inst_alu[8]), .Y(N90) );
  AND2X1_RVT C789 ( .A1(inst_alu[8]), .A2(N88), .Y(N89) );
  AND2X1_RVT C788 ( .A1(N85), .A2(N87), .Y(N88) );
  INVX0_RVT I_29 ( .A(inst_alu[10]), .Y(N87) );
  AND2X1_RVT C786 ( .A1(inst_alu[10]), .A2(N85), .Y(N86) );
  INVX0_RVT I_28 ( .A(N80), .Y(N85) );
  INVX0_RVT I_27 ( .A(N83), .Y(N84) );
  OR2X1_RVT C783 ( .A1(inst_alu[6]), .A2(N82), .Y(N83) );
  OR2X1_RVT C782 ( .A1(inst_alu[8]), .A2(N81), .Y(N82) );
  OR2X1_RVT C781 ( .A1(inst_alu[10]), .A2(N80), .Y(N81) );
  AND2X1_RVT C753 ( .A1(alu_mac_en), .A2(N73), .Y(N74) );
  AND2X1_RVT C752 ( .A1(N70), .A2(N72), .Y(N73) );
  AND2X1_RVT C750 ( .A1(alu_mul_en), .A2(N70), .Y(N71) );
  AND2X1_RVT C749 ( .A1(N67), .A2(N69), .Y(N70) );
  AND2X1_RVT C747 ( .A1(inst_alu[7]), .A2(N67), .Y(N68) );
  OR2X1_RVT C744 ( .A1(alu_mac_en), .A2(N64), .Y(N65) );
  OR2X1_RVT C743 ( .A1(alu_mul_en), .A2(N63), .Y(N64) );
  OR2X1_RVT C742 ( .A1(inst_alu[7]), .A2(N62), .Y(N63) );
  AND2X1_RVT C504 ( .A1(inst_bw), .A2(N60), .Y(N61) );
  OR2X1_RVT C501 ( .A1(inst_bw), .A2(inst_so[0]), .Y(N58) );
  NBUFFX2_RVT B_3 ( .A(N62), .Y(N3) );
  AND2X1_RVT C793 ( .A1(inst_alu[9]), .A2(exec_cycle), .Y(alu_stat_wr[1]) );
  OR2X1_RVT C776 ( .A1(alu_mul_en), .A2(alu_mac_en), .Y(N80) );
  INVX0_RVT I_25 ( .A(alu_out[15]), .Y(N363) );
  AND2X1_RVT C770 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(N362) );
  AND2X1_RVT C769 ( .A1(N362), .A2(N363), .Y(N364) );
  INVX0_RVT I_24 ( .A(op_dst_in[15]), .Y(N359) );
  INVX0_RVT I_23 ( .A(op_src_in[15]), .Y(N358) );
  AND2X1_RVT C766 ( .A1(N358), .A2(N359), .Y(N360) );
  AND2X1_RVT C765 ( .A1(N360), .A2(alu_out[15]), .Y(N361) );
  OR2X1_RVT C764 ( .A1(N361), .A2(N364), .Y(N78) );
  INVX0_RVT I_22 ( .A(alu_out[7]), .Y(N356) );
  AND2X1_RVT C762 ( .A1(n28), .A2(op_dst[7]), .Y(N355) );
  AND2X1_RVT C761 ( .A1(N355), .A2(N356), .Y(N357) );
  INVX0_RVT I_21 ( .A(op_dst[7]), .Y(N352) );
  INVX0_RVT I_20 ( .A(n28), .Y(N351) );
  AND2X1_RVT C758 ( .A1(N351), .A2(N352), .Y(N353) );
  AND2X1_RVT C757 ( .A1(N353), .A2(alu_out[7]), .Y(N354) );
  OR2X1_RVT C756 ( .A1(N354), .A2(N357), .Y(N77) );
  OR2X1_RVT C737 ( .A1(inst_so[7]), .A2(dbg_halt_st), .Y(N350) );
  OR2X1_RVT C736 ( .A1(N350), .A2(inst_alu[3]), .Y(N62) );
  AND2X1_RVT C735 ( .A1(alu_short_thro), .A2(n31), .Y(N349) );
  AND2X1_RVT C734 ( .A1(inst_so[3]), .A2(op_src[0]), .Y(N347) );
  AND2X1_RVT C733 ( .A1(inst_so[1]), .A2(op_src[8]), .Y(N345) );
  AND2X1_RVT C732 ( .A1(inst_alu[10]), .A2(op_src[1]), .Y(N343) );
  AND2X1_RVT C731 ( .A1(inst_alu[6]), .A2(alu_xor[0]), .Y(N341) );
  AND2X1_RVT C730 ( .A1(inst_alu[5]), .A2(alu_or[0]), .Y(N339) );
  AND2X1_RVT C729 ( .A1(inst_alu[4]), .A2(alu_and[0]), .Y(N338) );
  OR2X1_RVT C728 ( .A1(N338), .A2(N339), .Y(N340) );
  OR2X1_RVT C727 ( .A1(N340), .A2(N341), .Y(N342) );
  OR2X1_RVT C726 ( .A1(N342), .A2(N343), .Y(N344) );
  OR2X1_RVT C725 ( .A1(N344), .A2(N345), .Y(N346) );
  OR2X1_RVT C724 ( .A1(N346), .A2(N347), .Y(N348) );
  OR2X1_RVT C723 ( .A1(N348), .A2(N349), .Y(alu_short[0]) );
  AND2X1_RVT C722 ( .A1(alu_short_thro), .A2(n29), .Y(N337) );
  AND2X1_RVT C721 ( .A1(inst_so[3]), .A2(op_src[1]), .Y(N335) );
  AND2X1_RVT C720 ( .A1(inst_so[1]), .A2(op_src[9]), .Y(N333) );
  AND2X1_RVT C719 ( .A1(inst_alu[10]), .A2(op_src[2]), .Y(N331) );
  AND2X1_RVT C718 ( .A1(inst_alu[6]), .A2(alu_xor[1]), .Y(N329) );
  AND2X1_RVT C717 ( .A1(inst_alu[5]), .A2(alu_or[1]), .Y(N327) );
  AND2X1_RVT C716 ( .A1(inst_alu[4]), .A2(alu_and[1]), .Y(N326) );
  OR2X1_RVT C715 ( .A1(N326), .A2(N327), .Y(N328) );
  OR2X1_RVT C714 ( .A1(N328), .A2(N329), .Y(N330) );
  OR2X1_RVT C713 ( .A1(N330), .A2(N331), .Y(N332) );
  OR2X1_RVT C712 ( .A1(N332), .A2(N333), .Y(N334) );
  OR2X1_RVT C711 ( .A1(N334), .A2(N335), .Y(N336) );
  OR2X1_RVT C710 ( .A1(N336), .A2(N337), .Y(alu_short[1]) );
  AND2X1_RVT C709 ( .A1(alu_short_thro), .A2(n35), .Y(N325) );
  AND2X1_RVT C708 ( .A1(inst_so[3]), .A2(op_src[2]), .Y(N323) );
  AND2X1_RVT C707 ( .A1(inst_so[1]), .A2(op_src[10]), .Y(N321) );
  AND2X1_RVT C706 ( .A1(inst_alu[10]), .A2(op_src[3]), .Y(N319) );
  AND2X1_RVT C705 ( .A1(inst_alu[6]), .A2(alu_xor[2]), .Y(N317) );
  AND2X1_RVT C704 ( .A1(inst_alu[5]), .A2(alu_or[2]), .Y(N315) );
  AND2X1_RVT C703 ( .A1(inst_alu[4]), .A2(alu_and[2]), .Y(N314) );
  OR2X1_RVT C702 ( .A1(N314), .A2(N315), .Y(N316) );
  OR2X1_RVT C701 ( .A1(N316), .A2(N317), .Y(N318) );
  OR2X1_RVT C700 ( .A1(N318), .A2(N319), .Y(N320) );
  OR2X1_RVT C699 ( .A1(N320), .A2(N321), .Y(N322) );
  OR2X1_RVT C698 ( .A1(N322), .A2(N323), .Y(N324) );
  OR2X1_RVT C697 ( .A1(N324), .A2(N325), .Y(alu_short[2]) );
  AND2X1_RVT C696 ( .A1(alu_short_thro), .A2(n34), .Y(N313) );
  AND2X1_RVT C695 ( .A1(inst_so[3]), .A2(op_src[3]), .Y(N311) );
  AND2X1_RVT C694 ( .A1(inst_so[1]), .A2(op_src[11]), .Y(N309) );
  AND2X1_RVT C693 ( .A1(inst_alu[10]), .A2(op_src[4]), .Y(N307) );
  AND2X1_RVT C692 ( .A1(inst_alu[6]), .A2(alu_xor[3]), .Y(N305) );
  AND2X1_RVT C691 ( .A1(inst_alu[5]), .A2(alu_or[3]), .Y(N303) );
  AND2X1_RVT C690 ( .A1(inst_alu[4]), .A2(alu_and[3]), .Y(N302) );
  OR2X1_RVT C689 ( .A1(N302), .A2(N303), .Y(N304) );
  OR2X1_RVT C688 ( .A1(N304), .A2(N305), .Y(N306) );
  OR2X1_RVT C687 ( .A1(N306), .A2(N307), .Y(N308) );
  OR2X1_RVT C686 ( .A1(N308), .A2(N309), .Y(N310) );
  OR2X1_RVT C685 ( .A1(N310), .A2(N311), .Y(N312) );
  OR2X1_RVT C684 ( .A1(N312), .A2(N313), .Y(alu_short[3]) );
  AND2X1_RVT C683 ( .A1(alu_short_thro), .A2(n33), .Y(N301) );
  AND2X1_RVT C682 ( .A1(inst_so[3]), .A2(op_src[4]), .Y(N299) );
  AND2X1_RVT C681 ( .A1(inst_so[1]), .A2(op_src[12]), .Y(N297) );
  AND2X1_RVT C680 ( .A1(inst_alu[10]), .A2(op_src[5]), .Y(N295) );
  AND2X1_RVT C679 ( .A1(inst_alu[6]), .A2(alu_xor[4]), .Y(N293) );
  AND2X1_RVT C678 ( .A1(inst_alu[5]), .A2(alu_or[4]), .Y(N291) );
  AND2X1_RVT C677 ( .A1(inst_alu[4]), .A2(alu_and[4]), .Y(N290) );
  OR2X1_RVT C676 ( .A1(N290), .A2(N291), .Y(N292) );
  OR2X1_RVT C675 ( .A1(N292), .A2(N293), .Y(N294) );
  OR2X1_RVT C674 ( .A1(N294), .A2(N295), .Y(N296) );
  OR2X1_RVT C673 ( .A1(N296), .A2(N297), .Y(N298) );
  OR2X1_RVT C672 ( .A1(N298), .A2(N299), .Y(N300) );
  OR2X1_RVT C671 ( .A1(N300), .A2(N301), .Y(alu_short[4]) );
  AND2X1_RVT C670 ( .A1(alu_short_thro), .A2(n32), .Y(N289) );
  AND2X1_RVT C669 ( .A1(inst_so[3]), .A2(op_src[5]), .Y(N287) );
  AND2X1_RVT C668 ( .A1(inst_so[1]), .A2(op_src[13]), .Y(N285) );
  AND2X1_RVT C667 ( .A1(inst_alu[10]), .A2(op_src[6]), .Y(N283) );
  AND2X1_RVT C666 ( .A1(inst_alu[6]), .A2(alu_xor[5]), .Y(N281) );
  AND2X1_RVT C665 ( .A1(inst_alu[5]), .A2(alu_or[5]), .Y(N279) );
  AND2X1_RVT C664 ( .A1(inst_alu[4]), .A2(alu_and[5]), .Y(N278) );
  OR2X1_RVT C663 ( .A1(N278), .A2(N279), .Y(N280) );
  OR2X1_RVT C662 ( .A1(N280), .A2(N281), .Y(N282) );
  OR2X1_RVT C661 ( .A1(N282), .A2(N283), .Y(N284) );
  OR2X1_RVT C660 ( .A1(N284), .A2(N285), .Y(N286) );
  OR2X1_RVT C659 ( .A1(N286), .A2(N287), .Y(N288) );
  OR2X1_RVT C658 ( .A1(N288), .A2(N289), .Y(alu_short[5]) );
  AND2X1_RVT C657 ( .A1(alu_short_thro), .A2(n30), .Y(N277) );
  AND2X1_RVT C656 ( .A1(inst_so[3]), .A2(op_src[6]), .Y(N275) );
  AND2X1_RVT C655 ( .A1(inst_so[1]), .A2(op_src[14]), .Y(N273) );
  AND2X1_RVT C654 ( .A1(inst_alu[10]), .A2(op_src[7]), .Y(N271) );
  AND2X1_RVT C653 ( .A1(inst_alu[6]), .A2(alu_xor[6]), .Y(N269) );
  AND2X1_RVT C652 ( .A1(inst_alu[5]), .A2(alu_or[6]), .Y(N267) );
  AND2X1_RVT C651 ( .A1(inst_alu[4]), .A2(alu_and[6]), .Y(N266) );
  OR2X1_RVT C650 ( .A1(N266), .A2(N267), .Y(N268) );
  OR2X1_RVT C649 ( .A1(N268), .A2(N269), .Y(N270) );
  OR2X1_RVT C648 ( .A1(N270), .A2(N271), .Y(N272) );
  OR2X1_RVT C647 ( .A1(N272), .A2(N273), .Y(N274) );
  OR2X1_RVT C646 ( .A1(N274), .A2(N275), .Y(N276) );
  OR2X1_RVT C645 ( .A1(N276), .A2(N277), .Y(alu_short[6]) );
  AND2X1_RVT C644 ( .A1(alu_short_thro), .A2(n28), .Y(N265) );
  AND2X1_RVT C643 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N263) );
  AND2X1_RVT C642 ( .A1(inst_so[1]), .A2(op_src[15]), .Y(N261) );
  AND2X1_RVT C641 ( .A1(inst_alu[10]), .A2(alu_shift_7), .Y(N259) );
  AND2X1_RVT C640 ( .A1(inst_alu[6]), .A2(alu_xor[7]), .Y(N257) );
  AND2X1_RVT C639 ( .A1(inst_alu[5]), .A2(alu_or[7]), .Y(N255) );
  AND2X1_RVT C638 ( .A1(inst_alu[4]), .A2(N355), .Y(N254) );
  OR2X1_RVT C637 ( .A1(N254), .A2(N255), .Y(N256) );
  OR2X1_RVT C636 ( .A1(N256), .A2(N257), .Y(N258) );
  OR2X1_RVT C635 ( .A1(N258), .A2(N259), .Y(N260) );
  OR2X1_RVT C634 ( .A1(N260), .A2(N261), .Y(N262) );
  OR2X1_RVT C633 ( .A1(N262), .A2(N263), .Y(N264) );
  OR2X1_RVT C632 ( .A1(N264), .A2(N265), .Y(alu_short[7]) );
  AND2X1_RVT C631 ( .A1(alu_short_thro), .A2(op_src_in[8]), .Y(N253) );
  AND2X1_RVT C630 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N251) );
  AND2X1_RVT C629 ( .A1(inst_so[1]), .A2(op_src[0]), .Y(N249) );
  AND2X1_RVT C628 ( .A1(inst_alu[10]), .A2(op_src[9]), .Y(N247) );
  AND2X1_RVT C627 ( .A1(inst_alu[6]), .A2(alu_xor[8]), .Y(N245) );
  AND2X1_RVT C626 ( .A1(inst_alu[5]), .A2(alu_or[8]), .Y(N243) );
  AND2X1_RVT C625 ( .A1(inst_alu[4]), .A2(alu_and[8]), .Y(N242) );
  OR2X1_RVT C624 ( .A1(N242), .A2(N243), .Y(N244) );
  OR2X1_RVT C623 ( .A1(N244), .A2(N245), .Y(N246) );
  OR2X1_RVT C622 ( .A1(N246), .A2(N247), .Y(N248) );
  OR2X1_RVT C621 ( .A1(N248), .A2(N249), .Y(N250) );
  OR2X1_RVT C620 ( .A1(N250), .A2(N251), .Y(N252) );
  OR2X1_RVT C619 ( .A1(N252), .A2(N253), .Y(alu_short[8]) );
  AND2X1_RVT C618 ( .A1(alu_short_thro), .A2(op_src_in[9]), .Y(N241) );
  AND2X1_RVT C617 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N239) );
  AND2X1_RVT C616 ( .A1(inst_so[1]), .A2(op_src[1]), .Y(N237) );
  AND2X1_RVT C615 ( .A1(inst_alu[10]), .A2(op_src[10]), .Y(N235) );
  AND2X1_RVT C614 ( .A1(inst_alu[6]), .A2(alu_xor[9]), .Y(N233) );
  AND2X1_RVT C613 ( .A1(inst_alu[5]), .A2(alu_or[9]), .Y(N231) );
  AND2X1_RVT C612 ( .A1(inst_alu[4]), .A2(alu_and[9]), .Y(N230) );
  OR2X1_RVT C611 ( .A1(N230), .A2(N231), .Y(N232) );
  OR2X1_RVT C610 ( .A1(N232), .A2(N233), .Y(N234) );
  OR2X1_RVT C609 ( .A1(N234), .A2(N235), .Y(N236) );
  OR2X1_RVT C608 ( .A1(N236), .A2(N237), .Y(N238) );
  OR2X1_RVT C607 ( .A1(N238), .A2(N239), .Y(N240) );
  OR2X1_RVT C606 ( .A1(N240), .A2(N241), .Y(alu_short[9]) );
  AND2X1_RVT C605 ( .A1(alu_short_thro), .A2(op_src_in[10]), .Y(N229) );
  AND2X1_RVT C604 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N227) );
  AND2X1_RVT C603 ( .A1(inst_so[1]), .A2(op_src[2]), .Y(N225) );
  AND2X1_RVT C602 ( .A1(inst_alu[10]), .A2(op_src[11]), .Y(N223) );
  AND2X1_RVT C601 ( .A1(inst_alu[6]), .A2(alu_xor[10]), .Y(N221) );
  AND2X1_RVT C600 ( .A1(inst_alu[5]), .A2(alu_or[10]), .Y(N219) );
  AND2X1_RVT C599 ( .A1(inst_alu[4]), .A2(alu_and[10]), .Y(N218) );
  OR2X1_RVT C598 ( .A1(N218), .A2(N219), .Y(N220) );
  OR2X1_RVT C597 ( .A1(N220), .A2(N221), .Y(N222) );
  OR2X1_RVT C596 ( .A1(N222), .A2(N223), .Y(N224) );
  OR2X1_RVT C595 ( .A1(N224), .A2(N225), .Y(N226) );
  OR2X1_RVT C594 ( .A1(N226), .A2(N227), .Y(N228) );
  OR2X1_RVT C593 ( .A1(N228), .A2(N229), .Y(alu_short[10]) );
  AND2X1_RVT C592 ( .A1(alu_short_thro), .A2(op_src_in[11]), .Y(N217) );
  AND2X1_RVT C591 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N215) );
  AND2X1_RVT C590 ( .A1(inst_so[1]), .A2(op_src[3]), .Y(N213) );
  AND2X1_RVT C589 ( .A1(inst_alu[10]), .A2(op_src[12]), .Y(N211) );
  AND2X1_RVT C588 ( .A1(inst_alu[6]), .A2(alu_xor[11]), .Y(N209) );
  AND2X1_RVT C587 ( .A1(inst_alu[5]), .A2(alu_or[11]), .Y(N207) );
  AND2X1_RVT C586 ( .A1(inst_alu[4]), .A2(alu_and[11]), .Y(N206) );
  OR2X1_RVT C585 ( .A1(N206), .A2(N207), .Y(N208) );
  OR2X1_RVT C584 ( .A1(N208), .A2(N209), .Y(N210) );
  OR2X1_RVT C583 ( .A1(N210), .A2(N211), .Y(N212) );
  OR2X1_RVT C582 ( .A1(N212), .A2(N213), .Y(N214) );
  OR2X1_RVT C581 ( .A1(N214), .A2(N215), .Y(N216) );
  OR2X1_RVT C580 ( .A1(N216), .A2(N217), .Y(alu_short[11]) );
  AND2X1_RVT C579 ( .A1(alu_short_thro), .A2(op_src_in[12]), .Y(N205) );
  AND2X1_RVT C578 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N203) );
  AND2X1_RVT C577 ( .A1(inst_so[1]), .A2(op_src[4]), .Y(N201) );
  AND2X1_RVT C576 ( .A1(inst_alu[10]), .A2(op_src[13]), .Y(N199) );
  AND2X1_RVT C575 ( .A1(inst_alu[6]), .A2(alu_xor[12]), .Y(N197) );
  AND2X1_RVT C574 ( .A1(inst_alu[5]), .A2(alu_or[12]), .Y(N195) );
  AND2X1_RVT C573 ( .A1(inst_alu[4]), .A2(alu_and[12]), .Y(N194) );
  OR2X1_RVT C572 ( .A1(N194), .A2(N195), .Y(N196) );
  OR2X1_RVT C571 ( .A1(N196), .A2(N197), .Y(N198) );
  OR2X1_RVT C570 ( .A1(N198), .A2(N199), .Y(N200) );
  OR2X1_RVT C569 ( .A1(N200), .A2(N201), .Y(N202) );
  OR2X1_RVT C568 ( .A1(N202), .A2(N203), .Y(N204) );
  OR2X1_RVT C567 ( .A1(N204), .A2(N205), .Y(alu_short[12]) );
  AND2X1_RVT C566 ( .A1(alu_short_thro), .A2(op_src_in[13]), .Y(N193) );
  AND2X1_RVT C565 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N191) );
  AND2X1_RVT C564 ( .A1(inst_so[1]), .A2(op_src[5]), .Y(N189) );
  AND2X1_RVT C563 ( .A1(inst_alu[10]), .A2(op_src[14]), .Y(N187) );
  AND2X1_RVT C562 ( .A1(inst_alu[6]), .A2(alu_xor[13]), .Y(N185) );
  AND2X1_RVT C561 ( .A1(inst_alu[5]), .A2(alu_or[13]), .Y(N183) );
  AND2X1_RVT C560 ( .A1(inst_alu[4]), .A2(alu_and[13]), .Y(N182) );
  OR2X1_RVT C559 ( .A1(N182), .A2(N183), .Y(N184) );
  OR2X1_RVT C558 ( .A1(N184), .A2(N185), .Y(N186) );
  OR2X1_RVT C557 ( .A1(N186), .A2(N187), .Y(N188) );
  OR2X1_RVT C556 ( .A1(N188), .A2(N189), .Y(N190) );
  OR2X1_RVT C555 ( .A1(N190), .A2(N191), .Y(N192) );
  OR2X1_RVT C554 ( .A1(N192), .A2(N193), .Y(alu_short[13]) );
  AND2X1_RVT C553 ( .A1(alu_short_thro), .A2(op_src_in[14]), .Y(N181) );
  AND2X1_RVT C552 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N179) );
  AND2X1_RVT C551 ( .A1(inst_so[1]), .A2(op_src[6]), .Y(N177) );
  AND2X1_RVT C550 ( .A1(inst_alu[10]), .A2(op_src[15]), .Y(N175) );
  AND2X1_RVT C549 ( .A1(inst_alu[6]), .A2(alu_xor[14]), .Y(N173) );
  AND2X1_RVT C548 ( .A1(inst_alu[5]), .A2(alu_or[14]), .Y(N171) );
  AND2X1_RVT C547 ( .A1(inst_alu[4]), .A2(alu_and[14]), .Y(N170) );
  OR2X1_RVT C546 ( .A1(N170), .A2(N171), .Y(N172) );
  OR2X1_RVT C545 ( .A1(N172), .A2(N173), .Y(N174) );
  OR2X1_RVT C544 ( .A1(N174), .A2(N175), .Y(N176) );
  OR2X1_RVT C543 ( .A1(N176), .A2(N177), .Y(N178) );
  OR2X1_RVT C542 ( .A1(N178), .A2(N179), .Y(N180) );
  OR2X1_RVT C541 ( .A1(N180), .A2(N181), .Y(alu_short[14]) );
  AND2X1_RVT C540 ( .A1(alu_short_thro), .A2(op_src_in[15]), .Y(N169) );
  AND2X1_RVT C539 ( .A1(inst_so[3]), .A2(op_src[7]), .Y(N167) );
  AND2X1_RVT C538 ( .A1(inst_so[1]), .A2(op_src[7]), .Y(N165) );
  AND2X1_RVT C537 ( .A1(inst_alu[10]), .A2(alu_shift_15_), .Y(N163) );
  AND2X1_RVT C536 ( .A1(inst_alu[6]), .A2(alu_xor[15]), .Y(N161) );
  AND2X1_RVT C535 ( .A1(inst_alu[5]), .A2(alu_or[15]), .Y(N159) );
  AND2X1_RVT C534 ( .A1(inst_alu[4]), .A2(N362), .Y(N158) );
  OR2X1_RVT C533 ( .A1(N158), .A2(N159), .Y(N160) );
  OR2X1_RVT C532 ( .A1(N160), .A2(N161), .Y(N162) );
  OR2X1_RVT C531 ( .A1(N162), .A2(N163), .Y(N164) );
  OR2X1_RVT C530 ( .A1(N164), .A2(N165), .Y(N166) );
  OR2X1_RVT C529 ( .A1(N166), .A2(N167), .Y(N168) );
  OR2X1_RVT C528 ( .A1(N168), .A2(N169), .Y(alu_short[15]) );
  OR2X1_RVT C514 ( .A1(inst_alu[4]), .A2(inst_alu[5]), .Y(N139) );
  OR2X1_RVT C513 ( .A1(N139), .A2(inst_alu[6]), .Y(N140) );
  OR2X1_RVT C512 ( .A1(N140), .A2(inst_alu[10]), .Y(N141) );
  OR2X1_RVT C511 ( .A1(N141), .A2(inst_so[1]), .Y(N142) );
  OR2X1_RVT C510 ( .A1(N142), .A2(inst_so[3]), .Y(N143) );
  OR2X1_RVT C509 ( .A1(N143), .A2(alu_mul_en), .Y(N144) );
  OR2X1_RVT C508 ( .A1(N144), .A2(alu_mac_en), .Y(N145) );
  AND2X1_RVT C506 ( .A1(exec_cycle), .A2(inst_alu[13]), .Y(alu_mac_en) );
  AND2X1_RVT C505 ( .A1(exec_cycle), .A2(inst_alu[12]), .Y(alu_mul_en) );
  AND2X1_RVT C487 ( .A1(inst_alu[2]), .A2(status[0]), .Y(N137) );
  OR2X1_RVT C486 ( .A1(N137), .A2(inst_alu[1]), .Y(N138) );
  AND2X1_RVT C485 ( .A1(exec_cycle), .A2(N138), .Y(alu_inc) );
  OR2X1_RVT C467 ( .A1(n31), .A2(op_dst[0]), .Y(alu_or[0]) );
  OR2X1_RVT C466 ( .A1(n29), .A2(op_dst[1]), .Y(alu_or[1]) );
  OR2X1_RVT C465 ( .A1(n35), .A2(op_dst[2]), .Y(alu_or[2]) );
  OR2X1_RVT C464 ( .A1(n34), .A2(op_dst[3]), .Y(alu_or[3]) );
  OR2X1_RVT C463 ( .A1(n33), .A2(op_dst[4]), .Y(alu_or[4]) );
  OR2X1_RVT C462 ( .A1(n32), .A2(op_dst[5]), .Y(alu_or[5]) );
  OR2X1_RVT C461 ( .A1(n30), .A2(op_dst[6]), .Y(alu_or[6]) );
  OR2X1_RVT C460 ( .A1(n28), .A2(op_dst[7]), .Y(alu_or[7]) );
  OR2X1_RVT C459 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_or[8]) );
  OR2X1_RVT C458 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_or[9]) );
  OR2X1_RVT C457 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_or[10]) );
  OR2X1_RVT C456 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_or[11]) );
  OR2X1_RVT C455 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_or[12]) );
  OR2X1_RVT C454 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_or[13]) );
  OR2X1_RVT C453 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_or[14]) );
  OR2X1_RVT C452 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(alu_or[15]) );
  AND2X1_RVT C450 ( .A1(n31), .A2(op_dst[0]), .Y(alu_and[0]) );
  AND2X1_RVT C449 ( .A1(n29), .A2(op_dst[1]), .Y(alu_and[1]) );
  AND2X1_RVT C448 ( .A1(n35), .A2(op_dst[2]), .Y(alu_and[2]) );
  AND2X1_RVT C447 ( .A1(n34), .A2(op_dst[3]), .Y(alu_and[3]) );
  AND2X1_RVT C446 ( .A1(n33), .A2(op_dst[4]), .Y(alu_and[4]) );
  AND2X1_RVT C445 ( .A1(n32), .A2(op_dst[5]), .Y(alu_and[5]) );
  AND2X1_RVT C444 ( .A1(n30), .A2(op_dst[6]), .Y(alu_and[6]) );
  AND2X1_RVT C442 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_and[8]) );
  AND2X1_RVT C441 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_and[9]) );
  AND2X1_RVT C440 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_and[10]) );
  AND2X1_RVT C439 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_and[11]) );
  AND2X1_RVT C438 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_and[12]) );
  AND2X1_RVT C437 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_and[13]) );
  AND2X1_RVT C436 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_and[14]) );
  AND2X1_RVT C432 ( .A1(n31), .A2(N136), .Y(op_src_in_jmp[0]) );
  AND2X1_RVT C430 ( .A1(n29), .A2(N136), .Y(op_src_in_jmp[1]) );
  AND2X1_RVT C428 ( .A1(n35), .A2(N136), .Y(op_src_in_jmp[2]) );
  AND2X1_RVT C426 ( .A1(n34), .A2(N136), .Y(op_src_in_jmp[3]) );
  AND2X1_RVT C424 ( .A1(n33), .A2(N136), .Y(op_src_in_jmp[4]) );
  AND2X1_RVT C422 ( .A1(n32), .A2(N136), .Y(op_src_in_jmp[5]) );
  AND2X1_RVT C420 ( .A1(n30), .A2(N136), .Y(op_src_in_jmp[6]) );
  AND2X1_RVT C418 ( .A1(n28), .A2(N136), .Y(op_src_in_jmp[7]) );
  AND2X1_RVT C416 ( .A1(op_src_in[8]), .A2(N136), .Y(op_src_in_jmp[8]) );
  AND2X1_RVT C414 ( .A1(op_src_in[9]), .A2(N136), .Y(op_src_in_jmp[9]) );
  AND2X1_RVT C412 ( .A1(op_src_in[10]), .A2(N136), .Y(op_src_in_jmp[10]) );
  AND2X1_RVT C410 ( .A1(op_src_in[11]), .A2(N136), .Y(op_src_in_jmp[11]) );
  AND2X1_RVT C408 ( .A1(op_src_in[12]), .A2(N136), .Y(op_src_in_jmp[12]) );
  AND2X1_RVT C406 ( .A1(op_src_in[13]), .A2(N136), .Y(op_src_in_jmp[13]) );
  AND2X1_RVT C404 ( .A1(op_src_in[14]), .A2(N136), .Y(op_src_in_jmp[14]) );
  AND2X1_RVT C402 ( .A1(op_src_in[15]), .A2(N136), .Y(op_src_in_jmp[15]) );
  AND2X1_RVT C399 ( .A1(inst_jmp[0]), .A2(status[1]), .Y(N135) );
  INVX0_RVT I_7 ( .A(status[1]), .Y(N132) );
  AND2X1_RVT C397 ( .A1(inst_jmp[1]), .A2(N132), .Y(N133) );
  AND2X1_RVT C396 ( .A1(inst_jmp[2]), .A2(status[0]), .Y(N130) );
  INVX0_RVT I_6 ( .A(status[0]), .Y(N127) );
  AND2X1_RVT C394 ( .A1(inst_jmp[3]), .A2(N127), .Y(N128) );
  INVX0_RVT I_5 ( .A(status[2]), .Y(N124) );
  AND2X1_RVT C392 ( .A1(inst_jmp[4]), .A2(N124), .Y(N125) );
  AND2X1_RVT C391 ( .A1(inst_jmp[5]), .A2(N5), .Y(N122) );
  INVX0_RVT I_4 ( .A(N5), .Y(N120) );
  AND2X1_RVT C389 ( .A1(inst_jmp[6]), .A2(N120), .Y(N121) );
  OR2X1_RVT C388 ( .A1(N121), .A2(N122), .Y(N123) );
  OR2X1_RVT C387 ( .A1(N123), .A2(N125), .Y(N126) );
  OR2X1_RVT C386 ( .A1(N126), .A2(N128), .Y(N129) );
  OR2X1_RVT C385 ( .A1(N129), .A2(N130), .Y(N131) );
  OR2X1_RVT C384 ( .A1(N131), .A2(N133), .Y(N134) );
  OR2X1_RVT C383 ( .A1(N134), .A2(N135), .Y(jmp_not_taken) );
  XOR2X1_RVT C382 ( .A1(status[3]), .A2(status[2]), .Y(N5) );
  AND2X1_RVT C381 ( .A1(op_dst[8]), .A2(op_bit8_msk), .Y(op_dst_in[8]) );
  AND2X1_RVT C380 ( .A1(op_dst[9]), .A2(op_bit8_msk), .Y(op_dst_in[9]) );
  AND2X1_RVT C379 ( .A1(op_dst[10]), .A2(op_bit8_msk), .Y(op_dst_in[10]) );
  AND2X1_RVT C378 ( .A1(op_dst[11]), .A2(op_bit8_msk), .Y(op_dst_in[11]) );
  AND2X1_RVT C377 ( .A1(op_dst[12]), .A2(op_bit8_msk), .Y(op_dst_in[12]) );
  AND2X1_RVT C376 ( .A1(op_dst[13]), .A2(op_bit8_msk), .Y(op_dst_in[13]) );
  AND2X1_RVT C375 ( .A1(op_dst[14]), .A2(op_bit8_msk), .Y(op_dst_in[14]) );
  AND2X1_RVT C374 ( .A1(op_dst[15]), .A2(op_bit8_msk), .Y(op_dst_in[15]) );
  AND2X1_RVT C373 ( .A1(op_src_inv[8]), .A2(op_bit8_msk), .Y(op_src_in[8]) );
  AND2X1_RVT C372 ( .A1(op_src_inv[9]), .A2(op_bit8_msk), .Y(op_src_in[9]) );
  AND2X1_RVT C371 ( .A1(op_src_inv[10]), .A2(op_bit8_msk), .Y(op_src_in[10])
         );
  AND2X1_RVT C370 ( .A1(op_src_inv[11]), .A2(op_bit8_msk), .Y(op_src_in[11])
         );
  AND2X1_RVT C369 ( .A1(op_src_inv[12]), .A2(op_bit8_msk), .Y(op_src_in[12])
         );
  AND2X1_RVT C368 ( .A1(op_src_inv[13]), .A2(op_bit8_msk), .Y(op_src_in[13])
         );
  AND2X1_RVT C367 ( .A1(op_src_inv[14]), .A2(op_bit8_msk), .Y(op_src_in[14])
         );
  AND2X1_RVT C366 ( .A1(op_src_inv[15]), .A2(op_bit8_msk), .Y(op_src_in[15])
         );
  OR2X1_RVT C363 ( .A1(N118), .A2(N119), .Y(op_bit8_msk) );
  OR2X1_RVT C324 ( .A1(alu_out[1]), .A2(N114), .Y(N115) );
  OR2X1_RVT C323 ( .A1(alu_out[2]), .A2(N113), .Y(N114) );
  OR2X1_RVT C322 ( .A1(alu_out[3]), .A2(N112), .Y(N113) );
  OR2X1_RVT C321 ( .A1(alu_out[4]), .A2(N111), .Y(N112) );
  OR2X1_RVT C320 ( .A1(alu_out[5]), .A2(N110), .Y(N111) );
  OR2X1_RVT C319 ( .A1(alu_out[6]), .A2(N109), .Y(N110) );
  OR2X1_RVT C318 ( .A1(alu_out[7]), .A2(N108), .Y(N109) );
  OR2X1_RVT C317 ( .A1(alu_out[8]), .A2(N107), .Y(N108) );
  OR2X1_RVT C316 ( .A1(alu_out[9]), .A2(N106), .Y(N107) );
  OR2X1_RVT C315 ( .A1(alu_out[10]), .A2(N105), .Y(N106) );
  OR2X1_RVT C314 ( .A1(alu_out[11]), .A2(N104), .Y(N105) );
  OR2X1_RVT C313 ( .A1(alu_out[12]), .A2(N103), .Y(N104) );
  OR2X1_RVT C312 ( .A1(alu_out[13]), .A2(N102), .Y(N103) );
  OR2X1_RVT C311 ( .A1(alu_out[14]), .A2(alu_out[15]), .Y(N102) );
  OR2X1_RVT C308 ( .A1(alu_out[1]), .A2(N98), .Y(N99) );
  OR2X1_RVT C307 ( .A1(alu_out[2]), .A2(N97), .Y(N98) );
  OR2X1_RVT C306 ( .A1(alu_out[3]), .A2(N96), .Y(N97) );
  OR2X1_RVT C305 ( .A1(alu_out[4]), .A2(N95), .Y(N96) );
  OR2X1_RVT C304 ( .A1(alu_out[5]), .A2(N94), .Y(N95) );
  OR2X1_RVT C303 ( .A1(alu_out[6]), .A2(alu_out[7]), .Y(N94) );
  NAND3X0_RVT U5 ( .A1(n3), .A2(n4), .A3(n5), .Y(alu_stat[0]) );
  NAND2X0_RVT U7 ( .A1(n10), .A2(N84), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(N92), .A2(N79), .Y(n5) );
  AO22X1_RVT U9 ( .A1(n6), .A2(N84), .A3(n7), .A4(N92), .Y(alu_stat[3]) );
  OA22X1_RVT U10 ( .A1(N362), .A2(inst_bw), .A3(N355), .A4(n8), .Y(n7) );
  OA22X1_RVT U11 ( .A1(N78), .A2(inst_bw), .A3(N77), .A4(n8), .Y(n6) );
  AO22X1_RVT U12 ( .A1(inst_bw), .A2(alu_out[7]), .A3(n8), .A4(alu_out[15]), 
        .Y(alu_stat[2]) );
  AO22X1_RVT U13 ( .A1(inst_bw), .A2(n42), .A3(n8), .A4(n43), .Y(alu_stat[1])
         );
  OA22X1_RVT U14 ( .A1(n11), .A2(inst_bw), .A3(alu_out[8]), .A4(n8), .Y(n10)
         );
  AO22X1_RVT U15 ( .A1(C9_CONTROL4), .A2(C9_DATA4_16), .A3(N68), .A4(
        alu_dadd3[4]), .Y(n11) );
  AO22X1_RVT U16 ( .A1(N79), .A2(N89), .A3(N86), .A4(n31), .Y(n9) );
  AO22X1_RVT U17 ( .A1(inst_bw), .A2(alu_shift_15_), .A3(n8), .A4(op_src[8]), 
        .Y(alu_shift_7) );
  INVX0_RVT U18 ( .A(inst_bw), .Y(n8) );
  AO222X1_RVT U19 ( .A1(inst_so[0]), .A2(status[0]), .A3(N59), .A4(op_src[15]), 
        .A5(N61), .A6(op_src[7]), .Y(alu_shift_15_) );
  AO221X1_RVT U20 ( .A1(N71), .A2(mul_product[9]), .A3(N68), .A4(alu_dadd2[1]), 
        .A5(n12), .Y(alu_out[9]) );
  AO22X1_RVT U21 ( .A1(C9_CONTROL4), .A2(C9_DATA4_9), .A3(N66), .A4(
        alu_short[9]), .Y(n12) );
  AO221X1_RVT U22 ( .A1(N71), .A2(mul_product[8]), .A3(N68), .A4(alu_dadd2[0]), 
        .A5(n13), .Y(alu_out[8]) );
  AO22X1_RVT U23 ( .A1(C9_CONTROL4), .A2(C9_DATA4_8), .A3(N66), .A4(
        alu_short[8]), .Y(n13) );
  AO221X1_RVT U24 ( .A1(N71), .A2(mul_product[7]), .A3(N68), .A4(alu_dadd1[3]), 
        .A5(n14), .Y(alu_out[7]) );
  AO22X1_RVT U25 ( .A1(C9_CONTROL4), .A2(C9_DATA4_7), .A3(N66), .A4(
        alu_short[7]), .Y(n14) );
  AO221X1_RVT U26 ( .A1(N71), .A2(mul_product[6]), .A3(N68), .A4(alu_dadd1[2]), 
        .A5(n15), .Y(alu_out[6]) );
  AO22X1_RVT U27 ( .A1(C9_CONTROL4), .A2(C9_DATA4_6), .A3(N66), .A4(
        alu_short[6]), .Y(n15) );
  AO221X1_RVT U28 ( .A1(N71), .A2(mul_product[5]), .A3(N68), .A4(alu_dadd1[1]), 
        .A5(n16), .Y(alu_out[5]) );
  AO22X1_RVT U29 ( .A1(C9_CONTROL4), .A2(C9_DATA4_5), .A3(N66), .A4(
        alu_short[5]), .Y(n16) );
  AO221X1_RVT U30 ( .A1(N71), .A2(mul_product[4]), .A3(N68), .A4(alu_dadd1[0]), 
        .A5(n17), .Y(alu_out[4]) );
  AO22X1_RVT U31 ( .A1(C9_CONTROL4), .A2(C9_DATA4_4), .A3(N66), .A4(
        alu_short[4]), .Y(n17) );
  AO221X1_RVT U32 ( .A1(N71), .A2(mul_product[3]), .A3(N68), .A4(alu_dadd0[3]), 
        .A5(n18), .Y(alu_out[3]) );
  AO22X1_RVT U33 ( .A1(C9_CONTROL4), .A2(C9_DATA4_3), .A3(N66), .A4(
        alu_short[3]), .Y(n18) );
  AO221X1_RVT U34 ( .A1(N71), .A2(mul_product[2]), .A3(N68), .A4(alu_dadd0[2]), 
        .A5(n19), .Y(alu_out[2]) );
  AO22X1_RVT U35 ( .A1(C9_CONTROL4), .A2(C9_DATA4_2), .A3(N66), .A4(
        alu_short[2]), .Y(n19) );
  AO221X1_RVT U36 ( .A1(N71), .A2(mul_product[1]), .A3(N68), .A4(alu_dadd0[1]), 
        .A5(n20), .Y(alu_out[1]) );
  AO22X1_RVT U37 ( .A1(C9_CONTROL4), .A2(C9_DATA4_1), .A3(N66), .A4(
        alu_short[1]), .Y(n20) );
  AO221X1_RVT U38 ( .A1(N71), .A2(mul_product[15]), .A3(N68), .A4(alu_dadd3[3]), .A5(n21), .Y(alu_out[15]) );
  AO22X1_RVT U39 ( .A1(C9_CONTROL4), .A2(C9_DATA4_15), .A3(N66), .A4(
        alu_short[15]), .Y(n21) );
  AO221X1_RVT U40 ( .A1(N71), .A2(mul_product[14]), .A3(N68), .A4(alu_dadd3[2]), .A5(n22), .Y(alu_out[14]) );
  AO22X1_RVT U41 ( .A1(C9_CONTROL4), .A2(C9_DATA4_14), .A3(N66), .A4(
        alu_short[14]), .Y(n22) );
  AO221X1_RVT U42 ( .A1(N71), .A2(mul_product[13]), .A3(N68), .A4(alu_dadd3[1]), .A5(n23), .Y(alu_out[13]) );
  AO22X1_RVT U43 ( .A1(C9_CONTROL4), .A2(C9_DATA4_13), .A3(N66), .A4(
        alu_short[13]), .Y(n23) );
  AO221X1_RVT U44 ( .A1(N71), .A2(mul_product[12]), .A3(N68), .A4(alu_dadd3[0]), .A5(n24), .Y(alu_out[12]) );
  AO22X1_RVT U45 ( .A1(C9_CONTROL4), .A2(C9_DATA4_12), .A3(N66), .A4(
        alu_short[12]), .Y(n24) );
  AO221X1_RVT U46 ( .A1(N71), .A2(mul_product[11]), .A3(N68), .A4(alu_dadd2[3]), .A5(n25), .Y(alu_out[11]) );
  AO22X1_RVT U47 ( .A1(C9_CONTROL4), .A2(C9_DATA4_11), .A3(N66), .A4(
        alu_short[11]), .Y(n25) );
  AO221X1_RVT U48 ( .A1(N71), .A2(mul_product[10]), .A3(N68), .A4(alu_dadd2[2]), .A5(n26), .Y(alu_out[10]) );
  AO22X1_RVT U49 ( .A1(C9_CONTROL4), .A2(C9_DATA4_10), .A3(N66), .A4(
        alu_short[10]), .Y(n26) );
  AO221X1_RVT U50 ( .A1(N71), .A2(mul_product[0]), .A3(N68), .A4(alu_dadd0[0]), 
        .A5(n27), .Y(alu_out[0]) );
  AO22X1_RVT U51 ( .A1(C9_CONTROL4), .A2(C9_DATA4_0), .A3(N66), .A4(
        alu_short[0]), .Y(n27) );
  XOR2X2_RVT U66 ( .A1(op_src_inv_cmd), .A2(op_src[0]), .Y(n31) );
  omsp_alu_DP_OP_77_125_7159_0 DP_OP_77_125_7159 ( .I1(op_src_in[15:12]), .I2(
        op_dst_in[15:12]), .I3(alu_dadd2_4_), .I4({N56, N56, 1'b0}), .O1(N55), 
        .O2(alu_dadd3) );
  omsp_alu_DP_OP_76_124_7159_0 DP_OP_76_124_7159 ( .I1(op_src_in[11:8]), .I2(
        op_dst_in[11:8]), .I3(alu_dadd1_4_), .I4({N43, N43, 1'b0}), .O1(N42), 
        .O2({alu_dadd2_4_, alu_dadd2}) );
  omsp_alu_DP_OP_74_122_7159_0 DP_OP_74_122_7159 ( .I1({n34, n35, n29, n31}), 
        .I2(op_dst[3:0]), .I3(status[0]), .I4({N17, N17, 1'b0}), .O1(N16), 
        .O2({alu_dadd0_4_, alu_dadd0}) );
  omsp_alu_DP_OP_77_126_9670_0 DP_OP_77_126_9670 ( .I1({1'b0, op_src_in_jmp}), 
        .I2({op_dst_in, op_dst[7:0]}), .I3(N3), .I4(mul_product), .I5(n37), 
        .I6({C1_Z_15, C1_Z_14, C1_Z_13, C1_Z_12, C1_Z_11, C1_Z_10, C1_Z_9, 
        C1_Z_8, C1_Z_7, C1_Z_6, C1_Z_5, C1_Z_4, C1_Z_3, C1_Z_2, C1_Z_1, C1_Z_0}), .O1({SYNOPSYS_UNCONNECTED_1, alu_out_add}), .O2({C2_DATA1_16, C9_DATA4_15, 
        C9_DATA4_14, C9_DATA4_13, C9_DATA4_12, C9_DATA4_11, C9_DATA4_10, 
        C9_DATA4_9, C9_DATA4_8, C9_DATA4_7, C9_DATA4_6, C9_DATA4_5, C9_DATA4_4, 
        C9_DATA4_3, C9_DATA4_2, C9_DATA4_1, C9_DATA4_0}) );
  omsp_alu_DP_OP_78_127_5688_0 DP_OP_78_127_5688 ( .I1(op_src), .I2(op_dst), 
        .O1(mul_product) );
  omsp_alu_DP_OP_75_123_7159_1 DP_OP_75_123_7159 ( .I1({n28, n30, n32, n33}), 
        .I2(op_dst[7:4]), .I3(alu_dadd0_4_), .I4({N30, N30, 1'b0}), .O1(N29), 
        .O2({alu_dadd1_4_, alu_dadd1}) );
  AND2X2_RVT C346 ( .A1(exec_cycle), .A2(inst_alu[0]), .Y(op_src_inv_cmd) );
  INVX1_RVT I_10 ( .A(N29), .Y(N30) );
  INVX1_RVT I_17 ( .A(N62), .Y(N67) );
  INVX0_RVT I_2 ( .A(exec_cycle), .Y(N118) );
  INVX0_RVT I_3 ( .A(inst_bw), .Y(N119) );
  XOR2X1_RVT C354 ( .A1(op_src_inv_cmd), .A2(op_src[8]), .Y(op_src_inv[8]) );
  XOR2X1_RVT C352 ( .A1(op_src_inv_cmd), .A2(op_src[10]), .Y(op_src_inv[10])
         );
  XOR2X1_RVT C351 ( .A1(op_src_inv_cmd), .A2(op_src[11]), .Y(op_src_inv[11])
         );
  XOR2X1_RVT C348 ( .A1(op_src_inv_cmd), .A2(op_src[14]), .Y(op_src_inv[14])
         );
  XOR2X1_RVT C349 ( .A1(op_src_inv_cmd), .A2(op_src[13]), .Y(op_src_inv[13])
         );
  INVX0_RVT I_13 ( .A(N58), .Y(N59) );
  XOR2X1_RVT C470 ( .A1(op_src_in[14]), .A2(op_dst_in[14]), .Y(alu_xor[14]) );
  XOR2X1_RVT C469 ( .A1(op_src_in[15]), .A2(op_dst_in[15]), .Y(alu_xor[15]) );
  XOR2X1_RVT C473 ( .A1(op_src_in[11]), .A2(op_dst_in[11]), .Y(alu_xor[11]) );
  XOR2X1_RVT C472 ( .A1(op_src_in[12]), .A2(op_dst_in[12]), .Y(alu_xor[12]) );
  XOR2X1_RVT C475 ( .A1(op_src_in[9]), .A2(op_dst_in[9]), .Y(alu_xor[9]) );
  XOR2X1_RVT C474 ( .A1(op_src_in[10]), .A2(op_dst_in[10]), .Y(alu_xor[10]) );
  XOR2X1_RVT C476 ( .A1(op_src_in[8]), .A2(op_dst_in[8]), .Y(alu_xor[8]) );
  XOR2X1_RVT U73 ( .A1(op_dst[7]), .A2(n28), .Y(alu_xor[7]) );
  XOR2X1_RVT U67 ( .A1(op_dst[6]), .A2(n30), .Y(alu_xor[6]) );
  XOR2X1_RVT U55 ( .A1(op_dst[3]), .A2(n34), .Y(alu_xor[3]) );
  XOR2X1_RVT U58 ( .A1(op_dst[4]), .A2(n33), .Y(alu_xor[4]) );
  XOR2X1_RVT U52 ( .A1(op_dst[2]), .A2(n35), .Y(alu_xor[2]) );
  XOR2X1_RVT U70 ( .A1(op_dst[1]), .A2(n29), .Y(alu_xor[1]) );
  INVX0_RVT U76 ( .A(inst_so[0]), .Y(N60) );
  XOR2X1_RVT U77 ( .A1(op_dst[0]), .A2(n31), .Y(alu_xor[0]) );
  XOR2X1_RVT U78 ( .A1(op_dst[5]), .A2(n32), .Y(alu_xor[5]) );
  XOR2X1_RVT U79 ( .A1(op_src_in[13]), .A2(op_dst_in[13]), .Y(alu_xor[13]) );
  INVX0_RVT U80 ( .A(alu_mul_en), .Y(N72) );
  INVX0_RVT U81 ( .A(N145), .Y(alu_short_thro) );
  XOR2X1_RVT U82 ( .A1(op_src_inv_cmd), .A2(op_src[9]), .Y(op_src_inv[9]) );
  XOR2X1_RVT U83 ( .A1(op_src_inv_cmd), .A2(op_src[15]), .Y(op_src_inv[15]) );
  XOR2X1_RVT U84 ( .A1(op_src_inv_cmd), .A2(op_src[12]), .Y(op_src_inv[12]) );
  INVX0_RVT U85 ( .A(inst_alu[7]), .Y(N69) );
  INVX0_RVT U86 ( .A(alu_stat[1]), .Y(N79) );
  INVX0_RVT U87 ( .A(jmp_not_taken), .Y(N136) );
  INVX0_RVT U88 ( .A(N16), .Y(N17) );
  INVX0_RVT U89 ( .A(N42), .Y(N43) );
  INVX0_RVT U90 ( .A(N55), .Y(N56) );
  INVX0_RVT U91 ( .A(N65), .Y(N66) );
  INVX0_RVT U92 ( .A(n9), .Y(n4) );
  INVX0_RVT U93 ( .A(N74), .Y(n36) );
  INVX0_RVT U94 ( .A(n36), .Y(n37) );
  INVX0_RVT U95 ( .A(n36), .Y(n38) );
  NBUFFX2_RVT U96 ( .A(alu_stat_wr[1]), .Y(alu_stat_wr[2]) );
  NBUFFX2_RVT U97 ( .A(alu_stat_wr[1]), .Y(alu_stat_wr[3]) );
  NBUFFX2_RVT U98 ( .A(alu_stat_wr[1]), .Y(alu_stat_wr[0]) );
  XOR2X1_RVT U99 ( .A1(op_src_inv_cmd), .A2(op_src[7]), .Y(n28) );
  XOR2X1_RVT U100 ( .A1(op_src_inv_cmd), .A2(op_src[1]), .Y(n29) );
  XOR2X1_RVT U101 ( .A1(op_src_inv_cmd), .A2(op_src[6]), .Y(n30) );
  XOR2X1_RVT U102 ( .A1(op_src_inv_cmd), .A2(op_src[5]), .Y(n32) );
  XOR2X1_RVT U103 ( .A1(op_src_inv_cmd), .A2(op_src[4]), .Y(n33) );
  XOR2X1_RVT U104 ( .A1(op_src_inv_cmd), .A2(op_src[3]), .Y(n34) );
  NOR2X0_RVT U105 ( .A1(alu_out[0]), .A2(N99), .Y(n42) );
  XOR2X1_RVT U106 ( .A1(op_src_inv_cmd), .A2(op_src[2]), .Y(n35) );
  NOR2X0_RVT U107 ( .A1(alu_out[0]), .A2(N115), .Y(n43) );
  AND2X1_RVT U108 ( .A1(N3), .A2(C2_DATA1_16), .Y(C9_DATA4_16) );
  AND2X1_RVT U109 ( .A1(N74), .A2(op_dst[9]), .Y(C1_Z_9) );
  AND2X1_RVT U110 ( .A1(n38), .A2(op_dst[8]), .Y(C1_Z_8) );
  AND2X1_RVT U111 ( .A1(N74), .A2(op_dst[7]), .Y(C1_Z_7) );
  AND2X1_RVT U112 ( .A1(n38), .A2(op_dst[6]), .Y(C1_Z_6) );
  AND2X1_RVT U113 ( .A1(n38), .A2(op_dst[5]), .Y(C1_Z_5) );
  AND2X1_RVT U114 ( .A1(n38), .A2(op_dst[4]), .Y(C1_Z_4) );
  AND2X1_RVT U115 ( .A1(n38), .A2(op_dst[3]), .Y(C1_Z_3) );
  AND2X1_RVT U116 ( .A1(n38), .A2(op_dst[2]), .Y(C1_Z_2) );
  AND2X1_RVT U117 ( .A1(n38), .A2(op_dst[15]), .Y(C1_Z_15) );
  AND2X1_RVT U118 ( .A1(n38), .A2(op_dst[14]), .Y(C1_Z_14) );
  AND2X1_RVT U119 ( .A1(N74), .A2(op_dst[13]), .Y(C1_Z_13) );
  AND2X1_RVT U120 ( .A1(n38), .A2(op_dst[12]), .Y(C1_Z_12) );
  AND2X1_RVT U121 ( .A1(N74), .A2(op_dst[11]), .Y(C1_Z_11) );
  AND2X1_RVT U122 ( .A1(n38), .A2(op_dst[10]), .Y(C1_Z_10) );
  AND2X1_RVT U123 ( .A1(n38), .A2(op_dst[1]), .Y(C1_Z_1) );
  AO22X1_RVT U124 ( .A1(N3), .A2(alu_inc), .A3(n38), .A4(op_dst[0]), .Y(C1_Z_0) );
endmodule

