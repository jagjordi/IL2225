
module delay_line ( clk, sample_clk, rst_n, w_addr, w_en, sample_in, r_addr1, 
        r_addr2, sample_out1, sample_out2 );
  input [3:0] w_addr;
  input [9:0] sample_in;
  input [3:0] r_addr1;
  input [3:0] r_addr2;
  output [9:0] sample_out1;
  output [9:0] sample_out2;
  input clk, sample_clk, rst_n, w_en;
  wire   \data[10][9] , \data[10][8] , \data[10][7] , \data[10][6] ,
         \data[10][5] , \data[10][4] , \data[10][3] , \data[10][2] ,
         \data[10][1] , \data[10][0] , \data[9][9] , \data[9][8] ,
         \data[9][7] , \data[9][6] , \data[9][5] , \data[9][4] , \data[9][3] ,
         \data[9][2] , \data[9][1] , \data[9][0] , \data[8][9] , \data[8][8] ,
         \data[8][7] , \data[8][6] , \data[8][5] , \data[8][4] , \data[8][3] ,
         \data[8][2] , \data[8][1] , \data[8][0] , \data[7][9] , \data[7][8] ,
         \data[7][7] , \data[7][6] , \data[7][5] , \data[7][4] , \data[7][3] ,
         \data[7][2] , \data[7][1] , \data[7][0] , \data[6][9] , \data[6][8] ,
         \data[6][7] , \data[6][6] , \data[6][5] , \data[6][4] , \data[6][3] ,
         \data[6][2] , \data[6][1] , \data[6][0] , \data[5][9] , \data[5][8] ,
         \data[5][7] , \data[5][6] , \data[5][5] , \data[5][4] , \data[5][3] ,
         \data[5][2] , \data[5][1] , \data[5][0] , \data[4][9] , \data[4][8] ,
         \data[4][7] , \data[4][6] , \data[4][5] , \data[4][4] , \data[4][3] ,
         \data[4][2] , \data[4][1] , \data[4][0] , \data[3][9] , \data[3][8] ,
         \data[3][7] , \data[3][6] , \data[3][5] , \data[3][4] , \data[3][3] ,
         \data[3][2] , \data[3][1] , \data[3][0] , \data[2][9] , \data[2][8] ,
         \data[2][7] , \data[2][6] , \data[2][5] , \data[2][4] , \data[2][3] ,
         \data[2][2] , \data[2][1] , \data[2][0] , \data[1][9] , \data[1][8] ,
         \data[1][7] , \data[1][6] , \data[1][5] , \data[1][4] , \data[1][3] ,
         \data[1][2] , \data[1][1] , \data[1][0] , \data[0][9] , \data[0][8] ,
         \data[0][7] , \data[0][6] , \data[0][5] , \data[0][4] , \data[0][3] ,
         \data[0][2] , \data[0][1] , \data[0][0] , n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n177, n178, n180, n182, n184, n185, n187, n192, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n32, n33, n34, n35, n36,
         n37, n38, n39, n176, n179, n181, n183, n186, n188, n189, n190, n191,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215;

  EDFCNQD1 \data_reg[8][9]  ( .D(sample_in[9]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][9] ) );
  EDFCNQD1 \data_reg[8][8]  ( .D(sample_in[8]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][8] ) );
  EDFCNQD1 \data_reg[8][7]  ( .D(sample_in[7]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][7] ) );
  EDFCNQD1 \data_reg[8][6]  ( .D(sample_in[6]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][6] ) );
  EDFCNQD1 \data_reg[8][5]  ( .D(sample_in[5]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][5] ) );
  EDFCNQD1 \data_reg[8][4]  ( .D(sample_in[4]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][4] ) );
  EDFCNQD1 \data_reg[8][3]  ( .D(sample_in[3]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][3] ) );
  EDFCNQD1 \data_reg[8][2]  ( .D(sample_in[2]), .E(n34), .CP(clk), .CDN(n198), 
        .Q(\data[8][2] ) );
  EDFCNQD1 \data_reg[8][1]  ( .D(sample_in[1]), .E(n34), .CP(clk), .CDN(n199), 
        .Q(\data[8][1] ) );
  EDFCNQD1 \data_reg[8][0]  ( .D(sample_in[0]), .E(n34), .CP(clk), .CDN(n199), 
        .Q(\data[8][0] ) );
  EDFCNQD1 \data_reg[5][9]  ( .D(sample_in[9]), .E(n38), .CP(clk), .CDN(n200), 
        .Q(\data[5][9] ) );
  EDFCNQD1 \data_reg[5][8]  ( .D(sample_in[8]), .E(n38), .CP(clk), .CDN(n200), 
        .Q(\data[5][8] ) );
  EDFCNQD1 \data_reg[5][7]  ( .D(sample_in[7]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][7] ) );
  EDFCNQD1 \data_reg[5][6]  ( .D(sample_in[6]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][6] ) );
  EDFCNQD1 \data_reg[5][5]  ( .D(sample_in[5]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][5] ) );
  EDFCNQD1 \data_reg[5][4]  ( .D(sample_in[4]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][4] ) );
  EDFCNQD1 \data_reg[5][3]  ( .D(sample_in[3]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][3] ) );
  EDFCNQD1 \data_reg[5][2]  ( .D(sample_in[2]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][2] ) );
  EDFCNQD1 \data_reg[5][1]  ( .D(sample_in[1]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][1] ) );
  EDFCNQD1 \data_reg[5][0]  ( .D(sample_in[0]), .E(n38), .CP(clk), .CDN(n201), 
        .Q(\data[5][0] ) );
  EDFCNQD1 \data_reg[2][9]  ( .D(sample_in[9]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][9] ) );
  EDFCNQD1 \data_reg[2][8]  ( .D(sample_in[8]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][8] ) );
  EDFCNQD1 \data_reg[2][7]  ( .D(sample_in[7]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][7] ) );
  EDFCNQD1 \data_reg[2][6]  ( .D(sample_in[6]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][6] ) );
  EDFCNQD1 \data_reg[2][5]  ( .D(sample_in[5]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][5] ) );
  EDFCNQD1 \data_reg[2][4]  ( .D(sample_in[4]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][4] ) );
  EDFCNQD1 \data_reg[2][3]  ( .D(sample_in[3]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][3] ) );
  EDFCNQD1 \data_reg[2][2]  ( .D(sample_in[2]), .E(n181), .CP(clk), .CDN(n203), 
        .Q(\data[2][2] ) );
  EDFCNQD1 \data_reg[2][1]  ( .D(sample_in[1]), .E(n181), .CP(clk), .CDN(n204), 
        .Q(\data[2][1] ) );
  EDFCNQD1 \data_reg[2][0]  ( .D(sample_in[0]), .E(n181), .CP(clk), .CDN(n204), 
        .Q(\data[2][0] ) );
  EDFCNQD1 \data_reg[9][9]  ( .D(sample_in[9]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][9] ) );
  EDFCNQD1 \data_reg[9][8]  ( .D(sample_in[8]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][8] ) );
  EDFCNQD1 \data_reg[9][7]  ( .D(sample_in[7]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][7] ) );
  EDFCNQD1 \data_reg[9][6]  ( .D(sample_in[6]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][6] ) );
  EDFCNQD1 \data_reg[9][5]  ( .D(sample_in[5]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][5] ) );
  EDFCNQD1 \data_reg[9][4]  ( .D(sample_in[4]), .E(n35), .CP(clk), .CDN(n197), 
        .Q(\data[9][4] ) );
  EDFCNQD1 \data_reg[9][3]  ( .D(sample_in[3]), .E(n35), .CP(clk), .CDN(n198), 
        .Q(\data[9][3] ) );
  EDFCNQD1 \data_reg[9][2]  ( .D(sample_in[2]), .E(n35), .CP(clk), .CDN(n198), 
        .Q(\data[9][2] ) );
  EDFCNQD1 \data_reg[9][1]  ( .D(sample_in[1]), .E(n35), .CP(clk), .CDN(n198), 
        .Q(\data[9][1] ) );
  EDFCNQD1 \data_reg[9][0]  ( .D(sample_in[0]), .E(n35), .CP(clk), .CDN(n198), 
        .Q(\data[9][0] ) );
  EDFCNQD1 \data_reg[7][9]  ( .D(sample_in[9]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][9] ) );
  EDFCNQD1 \data_reg[7][8]  ( .D(sample_in[8]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][8] ) );
  EDFCNQD1 \data_reg[7][7]  ( .D(sample_in[7]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][7] ) );
  EDFCNQD1 \data_reg[7][6]  ( .D(sample_in[6]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][6] ) );
  EDFCNQD1 \data_reg[7][5]  ( .D(sample_in[5]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][5] ) );
  EDFCNQD1 \data_reg[7][4]  ( .D(sample_in[4]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][4] ) );
  EDFCNQD1 \data_reg[7][3]  ( .D(sample_in[3]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][3] ) );
  EDFCNQD1 \data_reg[7][2]  ( .D(sample_in[2]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][2] ) );
  EDFCNQD1 \data_reg[7][1]  ( .D(sample_in[1]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][1] ) );
  EDFCNQD1 \data_reg[7][0]  ( .D(sample_in[0]), .E(n188), .CP(clk), .CDN(n199), 
        .Q(\data[7][0] ) );
  EDFCNQD1 \data_reg[4][9]  ( .D(sample_in[9]), .E(n176), .CP(clk), .CDN(n201), 
        .Q(\data[4][9] ) );
  EDFCNQD1 \data_reg[4][8]  ( .D(sample_in[8]), .E(n176), .CP(clk), .CDN(n201), 
        .Q(\data[4][8] ) );
  EDFCNQD1 \data_reg[4][7]  ( .D(sample_in[7]), .E(n176), .CP(clk), .CDN(n201), 
        .Q(\data[4][7] ) );
  EDFCNQD1 \data_reg[4][6]  ( .D(sample_in[6]), .E(n176), .CP(clk), .CDN(n201), 
        .Q(\data[4][6] ) );
  EDFCNQD1 \data_reg[4][5]  ( .D(sample_in[5]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][5] ) );
  EDFCNQD1 \data_reg[4][4]  ( .D(sample_in[4]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][4] ) );
  EDFCNQD1 \data_reg[4][3]  ( .D(sample_in[3]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][3] ) );
  EDFCNQD1 \data_reg[4][2]  ( .D(sample_in[2]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][2] ) );
  EDFCNQD1 \data_reg[4][1]  ( .D(sample_in[1]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][1] ) );
  EDFCNQD1 \data_reg[4][0]  ( .D(sample_in[0]), .E(n176), .CP(clk), .CDN(n202), 
        .Q(\data[4][0] ) );
  EDFCNQD1 \data_reg[1][9]  ( .D(sample_in[9]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][9] ) );
  EDFCNQD1 \data_reg[1][8]  ( .D(sample_in[8]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][8] ) );
  EDFCNQD1 \data_reg[1][7]  ( .D(sample_in[7]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][7] ) );
  EDFCNQD1 \data_reg[1][6]  ( .D(sample_in[6]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][6] ) );
  EDFCNQD1 \data_reg[1][5]  ( .D(sample_in[5]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][5] ) );
  EDFCNQD1 \data_reg[1][4]  ( .D(sample_in[4]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][4] ) );
  EDFCNQD1 \data_reg[1][3]  ( .D(sample_in[3]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][3] ) );
  EDFCNQD1 \data_reg[1][2]  ( .D(sample_in[2]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][2] ) );
  EDFCNQD1 \data_reg[1][1]  ( .D(sample_in[1]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][1] ) );
  EDFCNQD1 \data_reg[1][0]  ( .D(sample_in[0]), .E(n179), .CP(clk), .CDN(n204), 
        .Q(\data[1][0] ) );
  EDFCNQD1 \data_reg[10][9]  ( .D(sample_in[9]), .E(n36), .CP(clk), .CDN(n196), 
        .Q(\data[10][9] ) );
  EDFCNQD1 \data_reg[10][8]  ( .D(sample_in[8]), .E(n36), .CP(clk), .CDN(n196), 
        .Q(\data[10][8] ) );
  EDFCNQD1 \data_reg[10][7]  ( .D(sample_in[7]), .E(n36), .CP(clk), .CDN(n196), 
        .Q(\data[10][7] ) );
  EDFCNQD1 \data_reg[10][6]  ( .D(sample_in[6]), .E(n36), .CP(clk), .CDN(n196), 
        .Q(\data[10][6] ) );
  EDFCNQD1 \data_reg[10][5]  ( .D(sample_in[5]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][5] ) );
  EDFCNQD1 \data_reg[10][4]  ( .D(sample_in[4]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][4] ) );
  EDFCNQD1 \data_reg[10][3]  ( .D(sample_in[3]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][3] ) );
  EDFCNQD1 \data_reg[10][2]  ( .D(sample_in[2]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][2] ) );
  EDFCNQD1 \data_reg[10][1]  ( .D(sample_in[1]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][1] ) );
  EDFCNQD1 \data_reg[10][0]  ( .D(sample_in[0]), .E(n36), .CP(clk), .CDN(n197), 
        .Q(\data[10][0] ) );
  EDFCNQD1 \data_reg[6][9]  ( .D(sample_in[9]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][9] ) );
  EDFCNQD1 \data_reg[6][8]  ( .D(sample_in[8]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][8] ) );
  EDFCNQD1 \data_reg[6][7]  ( .D(sample_in[7]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][7] ) );
  EDFCNQD1 \data_reg[6][6]  ( .D(sample_in[6]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][6] ) );
  EDFCNQD1 \data_reg[6][5]  ( .D(sample_in[5]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][5] ) );
  EDFCNQD1 \data_reg[6][4]  ( .D(sample_in[4]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][4] ) );
  EDFCNQD1 \data_reg[6][3]  ( .D(sample_in[3]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][3] ) );
  EDFCNQD1 \data_reg[6][2]  ( .D(sample_in[2]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][2] ) );
  EDFCNQD1 \data_reg[6][1]  ( .D(sample_in[1]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][1] ) );
  EDFCNQD1 \data_reg[6][0]  ( .D(sample_in[0]), .E(n186), .CP(clk), .CDN(n200), 
        .Q(\data[6][0] ) );
  EDFCNQD1 \data_reg[3][9]  ( .D(sample_in[9]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][9] ) );
  EDFCNQD1 \data_reg[3][8]  ( .D(sample_in[8]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][8] ) );
  EDFCNQD1 \data_reg[3][7]  ( .D(sample_in[7]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][7] ) );
  EDFCNQD1 \data_reg[3][6]  ( .D(sample_in[6]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][6] ) );
  EDFCNQD1 \data_reg[3][5]  ( .D(sample_in[5]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][5] ) );
  EDFCNQD1 \data_reg[3][4]  ( .D(sample_in[4]), .E(n183), .CP(clk), .CDN(n202), 
        .Q(\data[3][4] ) );
  EDFCNQD1 \data_reg[3][3]  ( .D(sample_in[3]), .E(n183), .CP(clk), .CDN(n203), 
        .Q(\data[3][3] ) );
  EDFCNQD1 \data_reg[3][2]  ( .D(sample_in[2]), .E(n183), .CP(clk), .CDN(n203), 
        .Q(\data[3][2] ) );
  EDFCNQD1 \data_reg[3][1]  ( .D(sample_in[1]), .E(n183), .CP(clk), .CDN(n203), 
        .Q(\data[3][1] ) );
  EDFCNQD1 \data_reg[3][0]  ( .D(sample_in[0]), .E(n183), .CP(clk), .CDN(n203), 
        .Q(\data[3][0] ) );
  EDFCNQD1 \data_reg[0][9]  ( .D(sample_in[9]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][9] ) );
  EDFCNQD1 \data_reg[0][8]  ( .D(sample_in[8]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][8] ) );
  EDFCNQD1 \data_reg[0][7]  ( .D(sample_in[7]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][7] ) );
  EDFCNQD1 \data_reg[0][6]  ( .D(sample_in[6]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][6] ) );
  EDFCNQD1 \data_reg[0][5]  ( .D(sample_in[5]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][5] ) );
  EDFCNQD1 \data_reg[0][4]  ( .D(sample_in[4]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][4] ) );
  EDFCNQD1 \data_reg[0][3]  ( .D(sample_in[3]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][3] ) );
  EDFCNQD1 \data_reg[0][2]  ( .D(sample_in[2]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][2] ) );
  EDFCNQD1 \data_reg[0][1]  ( .D(sample_in[1]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][1] ) );
  EDFCNQD1 \data_reg[0][0]  ( .D(sample_in[0]), .E(n39), .CP(clk), .CDN(n205), 
        .Q(\data[0][0] ) );
  EDFCND1 \data_reg[12][9]  ( .D(sample_in[9]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n12) );
  EDFCND1 \data_reg[12][8]  ( .D(sample_in[8]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n13) );
  EDFCND1 \data_reg[12][6]  ( .D(sample_in[6]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n15) );
  EDFCND1 \data_reg[12][5]  ( .D(sample_in[5]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n16) );
  EDFCND1 \data_reg[12][4]  ( .D(sample_in[4]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n17) );
  EDFCND1 \data_reg[12][3]  ( .D(sample_in[3]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n18) );
  EDFCND1 \data_reg[12][2]  ( .D(sample_in[2]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n19) );
  EDFCND1 \data_reg[12][1]  ( .D(sample_in[1]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n20) );
  EDFCND1 \data_reg[12][0]  ( .D(sample_in[0]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n21) );
  EDFCND1 \data_reg[11][9]  ( .D(sample_in[9]), .E(n37), .CP(clk), .CDN(n195), 
        .QN(n22) );
  EDFCND1 \data_reg[11][8]  ( .D(sample_in[8]), .E(n37), .CP(clk), .CDN(n195), 
        .QN(n23) );
  EDFCND1 \data_reg[11][6]  ( .D(sample_in[6]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n25) );
  EDFCND1 \data_reg[11][5]  ( .D(sample_in[5]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n26) );
  EDFCND1 \data_reg[11][4]  ( .D(sample_in[4]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n27) );
  EDFCND1 \data_reg[11][3]  ( .D(sample_in[3]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n28) );
  EDFCND1 \data_reg[11][2]  ( .D(sample_in[2]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n29) );
  EDFCND1 \data_reg[11][1]  ( .D(sample_in[1]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n30) );
  EDFCND1 \data_reg[11][0]  ( .D(sample_in[0]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n31) );
  EDFCND1 \data_reg[12][7]  ( .D(sample_in[7]), .E(n189), .CP(clk), .CDN(n195), 
        .QN(n14) );
  EDFCND1 \data_reg[11][7]  ( .D(sample_in[7]), .E(n37), .CP(clk), .CDN(n196), 
        .QN(n24) );
  ND2D1 U2 ( .A1(r_addr1[3]), .A2(r_addr1[2]), .ZN(n116) );
  CKND2D3 U3 ( .A1(n171), .A2(r_addr1[3]), .ZN(n115) );
  AOI222D2 U4 ( .A1(\data[0][5] ), .A2(n55), .B1(\data[2][5] ), .B2(n56), .C1(
        \data[1][5] ), .C2(n5), .ZN(n73) );
  AOI222D1 U5 ( .A1(\data[3][1] ), .A2(n52), .B1(\data[5][1] ), .B2(n53), .C1(
        \data[4][1] ), .C2(n191), .ZN(n94) );
  BUFFD6 U6 ( .I(n54), .Z(n191) );
  AN3D2 U7 ( .A1(n164), .A2(n163), .A3(n161), .Z(n1) );
  AOI222D1 U8 ( .A1(n4), .A2(\data[6][1] ), .B1(n118), .B2(\data[8][1] ), .C1(
        n119), .C2(\data[7][1] ), .ZN(n163) );
  AOI222D2 U9 ( .A1(\data[0][4] ), .A2(n55), .B1(\data[2][4] ), .B2(n56), .C1(
        \data[1][4] ), .C2(n5), .ZN(n78) );
  AOI222D1 U10 ( .A1(\data[0][0] ), .A2(n55), .B1(\data[2][0] ), .B2(n56), 
        .C1(\data[1][0] ), .C2(n5), .ZN(n98) );
  AOI222D1 U11 ( .A1(\data[3][6] ), .A2(n52), .B1(\data[5][6] ), .B2(n53), 
        .C1(\data[4][6] ), .C2(n191), .ZN(n69) );
  AN3D2 U12 ( .A1(r_addr1[3]), .A2(n213), .A3(n174), .Z(n118) );
  AOI221D2 U13 ( .A1(n3), .A2(\data[10][3] ), .B1(n113), .B2(\data[9][3] ), 
        .C(n155), .ZN(n154) );
  OAI22D1 U14 ( .A1(n28), .A2(n115), .B1(n18), .B2(n116), .ZN(n155) );
  AOI222D1 U15 ( .A1(n123), .A2(\data[0][7] ), .B1(n124), .B2(\data[2][7] ), 
        .C1(n125), .C2(\data[1][7] ), .ZN(n131) );
  AN2D2 U16 ( .A1(n175), .A2(n172), .Z(n125) );
  CKAN2D4 U17 ( .A1(n175), .A2(n174), .Z(n123) );
  AOI222D1 U18 ( .A1(n123), .A2(\data[0][5] ), .B1(n124), .B2(\data[2][5] ), 
        .C1(n125), .C2(\data[1][5] ), .ZN(n141) );
  AOI221D1 U19 ( .A1(n3), .A2(\data[10][1] ), .B1(n113), .B2(\data[9][1] ), 
        .C(n165), .ZN(n164) );
  BUFFD3 U20 ( .I(n112), .Z(n3) );
  AOI222D1 U21 ( .A1(\data[3][7] ), .A2(n52), .B1(\data[5][7] ), .B2(n53), 
        .C1(\data[4][7] ), .C2(n191), .ZN(n64) );
  AOI222D1 U22 ( .A1(\data[6][7] ), .A2(n2), .B1(\data[8][7] ), .B2(n50), .C1(
        \data[7][7] ), .C2(n9), .ZN(n65) );
  AOI222D0 U23 ( .A1(\data[3][0] ), .A2(n52), .B1(\data[5][0] ), .B2(n53), 
        .C1(\data[4][0] ), .C2(n191), .ZN(n99) );
  ND4D1 U24 ( .A1(n141), .A2(n142), .A3(n143), .A4(n144), .ZN(sample_out1[5])
         );
  AOI222D0 U25 ( .A1(\data[6][2] ), .A2(n2), .B1(\data[8][2] ), .B2(n50), .C1(
        \data[7][2] ), .C2(n9), .ZN(n90) );
  ND2D1 U26 ( .A1(n162), .A2(n1), .ZN(sample_out1[1]) );
  AOI222D0 U27 ( .A1(n120), .A2(\data[3][2] ), .B1(n121), .B2(\data[5][2] ), 
        .C1(n190), .C2(\data[4][2] ), .ZN(n157) );
  INVD1 U28 ( .I(r_addr2[1]), .ZN(n212) );
  INVD2 U29 ( .I(r_addr1[1]), .ZN(n214) );
  BUFFD4 U30 ( .I(n47), .Z(n33) );
  ND2D1 U31 ( .A1(r_addr2[3]), .A2(r_addr2[2]), .ZN(n48) );
  AN2D0 U32 ( .A1(n120), .A2(\data[3][1] ), .Z(n10) );
  AOI222D0 U33 ( .A1(\data[6][0] ), .A2(n2), .B1(\data[8][0] ), .B2(n50), .C1(
        \data[7][0] ), .C2(n9), .ZN(n100) );
  AOI222D0 U34 ( .A1(\data[6][9] ), .A2(n2), .B1(\data[8][9] ), .B2(n50), .C1(
        \data[7][9] ), .C2(n9), .ZN(n42) );
  AOI222D0 U35 ( .A1(n120), .A2(\data[3][9] ), .B1(n121), .B2(\data[5][9] ), 
        .C1(n190), .C2(\data[4][9] ), .ZN(n109) );
  CKAN2D0 U36 ( .A1(r_addr1[1]), .A2(r_addr1[0]), .Z(n171) );
  AN2D0 U37 ( .A1(n107), .A2(n104), .Z(n57) );
  AN2D1 U38 ( .A1(n104), .A2(r_addr2[2]), .Z(n53) );
  AN2D1 U39 ( .A1(r_addr2[0]), .A2(n212), .Z(n104) );
  AN2D1 U40 ( .A1(n103), .A2(r_addr2[2]), .Z(n51) );
  ND2D1 U41 ( .A1(n103), .A2(r_addr2[3]), .ZN(n47) );
  AN2D1 U42 ( .A1(n107), .A2(n103), .Z(n52) );
  AN2D1 U43 ( .A1(n104), .A2(r_addr2[3]), .Z(n45) );
  AOI222D1 U44 ( .A1(\data[6][6] ), .A2(n2), .B1(\data[8][6] ), .B2(n50), .C1(
        \data[7][6] ), .C2(n9), .ZN(n70) );
  AOI221D1 U45 ( .A1(\data[10][6] ), .A2(n44), .B1(\data[9][6] ), .B2(n45), 
        .C(n72), .ZN(n71) );
  AOI222D1 U46 ( .A1(n4), .A2(\data[6][5] ), .B1(n118), .B2(\data[8][5] ), 
        .C1(n119), .C2(\data[7][5] ), .ZN(n143) );
  BUFFD3 U47 ( .I(n117), .Z(n4) );
  AOI222D1 U48 ( .A1(n123), .A2(\data[0][3] ), .B1(n124), .B2(\data[2][3] ), 
        .C1(n125), .C2(\data[1][3] ), .ZN(n151) );
  AN2D2 U49 ( .A1(n175), .A2(n173), .Z(n124) );
  AOI221D1 U50 ( .A1(\data[10][1] ), .A2(n44), .B1(\data[9][1] ), .B2(n45), 
        .C(n97), .ZN(n96) );
  AOI221D1 U51 ( .A1(n3), .A2(\data[10][5] ), .B1(n113), .B2(\data[9][5] ), 
        .C(n145), .ZN(n144) );
  AOI222D1 U52 ( .A1(n4), .A2(\data[6][7] ), .B1(n118), .B2(\data[8][7] ), 
        .C1(n119), .C2(\data[7][7] ), .ZN(n133) );
  AOI222D1 U53 ( .A1(\data[3][3] ), .A2(n52), .B1(\data[5][3] ), .B2(n53), 
        .C1(\data[4][3] ), .C2(n191), .ZN(n84) );
  AOI222D1 U54 ( .A1(\data[6][4] ), .A2(n2), .B1(\data[8][4] ), .B2(n50), .C1(
        \data[7][4] ), .C2(n9), .ZN(n80) );
  AOI222D1 U55 ( .A1(\data[6][5] ), .A2(n2), .B1(\data[8][5] ), .B2(n50), .C1(
        \data[7][5] ), .C2(n9), .ZN(n75) );
  BUFFD2 U56 ( .I(n49), .Z(n2) );
  AOI222D1 U57 ( .A1(\data[0][9] ), .A2(n55), .B1(\data[2][9] ), .B2(n56), 
        .C1(\data[1][9] ), .C2(n5), .ZN(n40) );
  AOI221D1 U58 ( .A1(\data[10][7] ), .A2(n44), .B1(\data[9][7] ), .B2(n45), 
        .C(n67), .ZN(n66) );
  AOI221D1 U59 ( .A1(\data[10][3] ), .A2(n44), .B1(\data[9][3] ), .B2(n45), 
        .C(n87), .ZN(n86) );
  AOI221D1 U60 ( .A1(n3), .A2(\data[10][7] ), .B1(n113), .B2(\data[9][7] ), 
        .C(n135), .ZN(n134) );
  AOI221D1 U61 ( .A1(\data[10][4] ), .A2(n44), .B1(\data[9][4] ), .B2(n45), 
        .C(n82), .ZN(n81) );
  AOI221D1 U62 ( .A1(\data[10][5] ), .A2(n44), .B1(\data[9][5] ), .B2(n45), 
        .C(n77), .ZN(n76) );
  AN2D1 U63 ( .A1(n105), .A2(r_addr2[3]), .Z(n44) );
  BUFFD4 U64 ( .I(n51), .Z(n9) );
  AN3D2 U65 ( .A1(r_addr2[3]), .A2(n211), .A3(n106), .Z(n50) );
  AOI222D1 U66 ( .A1(\data[0][6] ), .A2(n55), .B1(\data[2][6] ), .B2(n56), 
        .C1(\data[1][6] ), .C2(n5), .ZN(n68) );
  AOI222D1 U67 ( .A1(\data[3][5] ), .A2(n52), .B1(\data[5][5] ), .B2(n53), 
        .C1(\data[4][5] ), .C2(n191), .ZN(n74) );
  AOI222D1 U68 ( .A1(\data[0][2] ), .A2(n55), .B1(\data[2][2] ), .B2(n56), 
        .C1(\data[1][2] ), .C2(n5), .ZN(n88) );
  AOI222D1 U69 ( .A1(n4), .A2(\data[6][3] ), .B1(n118), .B2(\data[8][3] ), 
        .C1(n119), .C2(\data[7][3] ), .ZN(n153) );
  AN2D2 U70 ( .A1(n171), .A2(r_addr1[2]), .Z(n119) );
  AOI222D1 U71 ( .A1(\data[0][7] ), .A2(n55), .B1(\data[2][7] ), .B2(n56), 
        .C1(\data[1][7] ), .C2(n5), .ZN(n63) );
  AOI222D1 U72 ( .A1(\data[0][3] ), .A2(n55), .B1(\data[2][3] ), .B2(n56), 
        .C1(\data[1][3] ), .C2(n5), .ZN(n83) );
  AOI222D1 U73 ( .A1(\data[0][1] ), .A2(n55), .B1(\data[2][1] ), .B2(n56), 
        .C1(\data[1][1] ), .C2(n5), .ZN(n93) );
  AN2D1 U74 ( .A1(n107), .A2(n106), .Z(n55) );
  AN2D1 U75 ( .A1(r_addr1[0]), .A2(n214), .Z(n172) );
  AOI222D1 U76 ( .A1(n120), .A2(\data[3][3] ), .B1(n121), .B2(\data[5][3] ), 
        .C1(n190), .C2(\data[4][3] ), .ZN(n152) );
  AOI222D1 U77 ( .A1(n120), .A2(\data[3][7] ), .B1(n121), .B2(\data[5][7] ), 
        .C1(n190), .C2(\data[4][7] ), .ZN(n132) );
  AOI222D1 U78 ( .A1(n120), .A2(\data[3][5] ), .B1(n121), .B2(\data[5][5] ), 
        .C1(n190), .C2(\data[4][5] ), .ZN(n142) );
  AN2D1 U79 ( .A1(n175), .A2(n171), .Z(n120) );
  AN2D2 U80 ( .A1(n172), .A2(r_addr1[2]), .Z(n121) );
  BUFFD4 U81 ( .I(n57), .Z(n5) );
  AN2D2 U82 ( .A1(n172), .A2(r_addr1[3]), .Z(n113) );
  NR2D2 U83 ( .A1(r_addr1[2]), .A2(r_addr1[3]), .ZN(n175) );
  AOI222D0 U84 ( .A1(\data[3][8] ), .A2(n52), .B1(\data[5][8] ), .B2(n53), 
        .C1(\data[4][8] ), .C2(n191), .ZN(n59) );
  AN2D0 U85 ( .A1(n105), .A2(r_addr2[2]), .Z(n49) );
  NR2D1 U86 ( .A1(n212), .A2(r_addr2[0]), .ZN(n105) );
  AN2D0 U87 ( .A1(n123), .A2(\data[0][1] ), .Z(n6) );
  AN2D0 U88 ( .A1(n124), .A2(\data[2][1] ), .Z(n7) );
  AN2D0 U89 ( .A1(n125), .A2(\data[1][1] ), .Z(n8) );
  NR3D0 U90 ( .A1(n6), .A2(n7), .A3(n8), .ZN(n161) );
  OAI22D0 U91 ( .A1(n33), .A2(n30), .B1(n48), .B2(n20), .ZN(n97) );
  AN2D0 U92 ( .A1(n121), .A2(\data[5][1] ), .Z(n11) );
  AN2D0 U93 ( .A1(n190), .A2(\data[4][1] ), .Z(n32) );
  NR3D0 U94 ( .A1(n10), .A2(n11), .A3(n32), .ZN(n162) );
  BUFFD4 U95 ( .I(n122), .Z(n190) );
  AOI222D1 U96 ( .A1(\data[3][4] ), .A2(n52), .B1(\data[5][4] ), .B2(n53), 
        .C1(\data[4][4] ), .C2(n191), .ZN(n79) );
  AN2D0 U97 ( .A1(r_addr2[1]), .A2(r_addr2[0]), .Z(n103) );
  AN2D1 U98 ( .A1(n107), .A2(n105), .Z(n56) );
  AOI222D1 U99 ( .A1(\data[6][1] ), .A2(n2), .B1(\data[8][1] ), .B2(n50), .C1(
        \data[7][1] ), .C2(n9), .ZN(n95) );
  OAI22D0 U100 ( .A1(n33), .A2(n28), .B1(n48), .B2(n18), .ZN(n87) );
  ND4D1 U101 ( .A1(n136), .A2(n137), .A3(n138), .A4(n139), .ZN(sample_out1[6])
         );
  NR2D0 U102 ( .A1(r_addr2[0]), .A2(r_addr2[1]), .ZN(n106) );
  AOI222D1 U103 ( .A1(\data[6][3] ), .A2(n2), .B1(\data[8][3] ), .B2(n50), 
        .C1(\data[7][3] ), .C2(n9), .ZN(n85) );
  AN2D0 U104 ( .A1(n173), .A2(r_addr1[3]), .Z(n112) );
  AN2D0 U105 ( .A1(n173), .A2(r_addr1[2]), .Z(n117) );
  ND4D1 U106 ( .A1(n131), .A2(n132), .A3(n133), .A4(n134), .ZN(sample_out1[7])
         );
  NR2D0 U107 ( .A1(r_addr1[0]), .A2(r_addr1[1]), .ZN(n174) );
  NR2D0 U108 ( .A1(n214), .A2(r_addr1[0]), .ZN(n173) );
  INVD0 U109 ( .I(r_addr1[2]), .ZN(n213) );
  INVD0 U110 ( .I(r_addr2[2]), .ZN(n211) );
  BUFFD0 U111 ( .I(n206), .Z(n204) );
  BUFFD0 U112 ( .I(n206), .Z(n203) );
  BUFFD0 U113 ( .I(n207), .Z(n202) );
  BUFFD0 U114 ( .I(n207), .Z(n201) );
  BUFFD0 U115 ( .I(n207), .Z(n200) );
  BUFFD0 U116 ( .I(n208), .Z(n199) );
  BUFFD0 U117 ( .I(n208), .Z(n198) );
  BUFFD0 U118 ( .I(n208), .Z(n197) );
  BUFFD0 U119 ( .I(n206), .Z(n205) );
  AN2D0 U120 ( .A1(n192), .A2(n178), .Z(n34) );
  AN2D0 U121 ( .A1(n192), .A2(n180), .Z(n35) );
  AN2D0 U122 ( .A1(n192), .A2(n182), .Z(n36) );
  AN2D0 U123 ( .A1(n192), .A2(n184), .Z(n37) );
  INVD1 U124 ( .I(w_en), .ZN(n215) );
  AN2D0 U125 ( .A1(n187), .A2(n180), .Z(n38) );
  AN2D0 U126 ( .A1(n177), .A2(n178), .Z(n39) );
  AN2D0 U127 ( .A1(n187), .A2(n178), .Z(n176) );
  AN2D0 U128 ( .A1(n180), .A2(n177), .Z(n179) );
  AN2D0 U129 ( .A1(n182), .A2(n177), .Z(n181) );
  AN2D0 U130 ( .A1(n184), .A2(n177), .Z(n183) );
  AN2D0 U131 ( .A1(n187), .A2(n182), .Z(n186) );
  AN2D0 U132 ( .A1(n187), .A2(n184), .Z(n188) );
  BUFFD0 U133 ( .I(n209), .Z(n195) );
  BUFFD0 U134 ( .I(n209), .Z(n196) );
  BUFFD0 U135 ( .I(n193), .Z(n206) );
  BUFFD0 U136 ( .I(n193), .Z(n207) );
  BUFFD0 U137 ( .I(n193), .Z(n208) );
  AOI222D0 U138 ( .A1(n123), .A2(\data[0][0] ), .B1(n124), .B2(\data[2][0] ), 
        .C1(n125), .C2(\data[1][0] ), .ZN(n166) );
  AOI222D0 U139 ( .A1(\data[0][8] ), .A2(n55), .B1(\data[2][8] ), .B2(n56), 
        .C1(\data[1][8] ), .C2(n5), .ZN(n58) );
  AOI222D0 U140 ( .A1(\data[6][8] ), .A2(n2), .B1(\data[8][8] ), .B2(n50), 
        .C1(\data[7][8] ), .C2(n9), .ZN(n60) );
  AOI222D0 U141 ( .A1(n4), .A2(\data[6][0] ), .B1(n118), .B2(\data[8][0] ), 
        .C1(n119), .C2(\data[7][0] ), .ZN(n168) );
  AOI222D0 U142 ( .A1(n4), .A2(\data[6][9] ), .B1(n118), .B2(\data[8][9] ), 
        .C1(n119), .C2(\data[7][9] ), .ZN(n110) );
  AOI222D0 U143 ( .A1(n4), .A2(\data[6][2] ), .B1(n118), .B2(\data[8][2] ), 
        .C1(n119), .C2(\data[7][2] ), .ZN(n158) );
  AOI222D0 U144 ( .A1(n4), .A2(\data[6][8] ), .B1(n118), .B2(\data[8][8] ), 
        .C1(n119), .C2(\data[7][8] ), .ZN(n128) );
  AOI222D0 U145 ( .A1(n4), .A2(\data[6][6] ), .B1(n118), .B2(\data[8][6] ), 
        .C1(n119), .C2(\data[7][6] ), .ZN(n138) );
  AOI222D0 U146 ( .A1(n4), .A2(\data[6][4] ), .B1(n118), .B2(\data[8][4] ), 
        .C1(n119), .C2(\data[7][4] ), .ZN(n148) );
  AOI221D0 U147 ( .A1(\data[10][0] ), .A2(n44), .B1(\data[9][0] ), .B2(n45), 
        .C(n102), .ZN(n101) );
  OAI22D0 U148 ( .A1(n33), .A2(n31), .B1(n48), .B2(n21), .ZN(n102) );
  OAI22D0 U149 ( .A1(n33), .A2(n24), .B1(n48), .B2(n14), .ZN(n67) );
  OAI22D0 U150 ( .A1(n33), .A2(n26), .B1(n48), .B2(n16), .ZN(n77) );
  OAI22D0 U151 ( .A1(n33), .A2(n22), .B1(n48), .B2(n12), .ZN(n46) );
  OAI22D0 U152 ( .A1(n33), .A2(n29), .B1(n48), .B2(n19), .ZN(n92) );
  OAI22D0 U153 ( .A1(n33), .A2(n23), .B1(n48), .B2(n13), .ZN(n62) );
  OAI22D0 U154 ( .A1(n33), .A2(n25), .B1(n48), .B2(n15), .ZN(n72) );
  OAI22D0 U155 ( .A1(n33), .A2(n27), .B1(n48), .B2(n17), .ZN(n82) );
  OAI22D0 U156 ( .A1(n30), .A2(n115), .B1(n20), .B2(n116), .ZN(n165) );
  OAI22D0 U157 ( .A1(n24), .A2(n115), .B1(n14), .B2(n116), .ZN(n135) );
  OAI22D0 U158 ( .A1(n26), .A2(n115), .B1(n16), .B2(n116), .ZN(n145) );
  OAI22D0 U159 ( .A1(n22), .A2(n115), .B1(n12), .B2(n116), .ZN(n114) );
  OAI22D0 U160 ( .A1(n29), .A2(n115), .B1(n19), .B2(n116), .ZN(n160) );
  OAI22D0 U161 ( .A1(n23), .A2(n115), .B1(n13), .B2(n116), .ZN(n130) );
  OAI22D0 U162 ( .A1(n25), .A2(n115), .B1(n15), .B2(n116), .ZN(n140) );
  OAI22D0 U163 ( .A1(n27), .A2(n115), .B1(n17), .B2(n116), .ZN(n150) );
  OAI22D0 U164 ( .A1(n31), .A2(n115), .B1(n21), .B2(n116), .ZN(n170) );
  ND4D1 U165 ( .A1(n151), .A2(n152), .A3(n153), .A4(n154), .ZN(sample_out1[3])
         );
  ND4D1 U166 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .ZN(sample_out1[9])
         );
  AOI221D0 U167 ( .A1(n3), .A2(\data[10][9] ), .B1(n113), .B2(\data[9][9] ), 
        .C(n114), .ZN(n111) );
  AOI222D0 U168 ( .A1(n123), .A2(\data[0][9] ), .B1(n124), .B2(\data[2][9] ), 
        .C1(n125), .C2(\data[1][9] ), .ZN(n108) );
  ND4D1 U169 ( .A1(n93), .A2(n94), .A3(n95), .A4(n96), .ZN(sample_out2[1]) );
  ND4D1 U170 ( .A1(n63), .A2(n64), .A3(n65), .A4(n66), .ZN(sample_out2[7]) );
  ND4D1 U171 ( .A1(n73), .A2(n74), .A3(n75), .A4(n76), .ZN(sample_out2[5]) );
  ND4D1 U172 ( .A1(n146), .A2(n147), .A3(n148), .A4(n149), .ZN(sample_out1[4])
         );
  AOI221D0 U173 ( .A1(n3), .A2(\data[10][4] ), .B1(n113), .B2(\data[9][4] ), 
        .C(n150), .ZN(n149) );
  AOI222D0 U174 ( .A1(n120), .A2(\data[3][4] ), .B1(n121), .B2(\data[5][4] ), 
        .C1(n190), .C2(\data[4][4] ), .ZN(n147) );
  AOI222D0 U175 ( .A1(n123), .A2(\data[0][4] ), .B1(n124), .B2(\data[2][4] ), 
        .C1(n125), .C2(\data[1][4] ), .ZN(n146) );
  ND4D1 U176 ( .A1(n156), .A2(n157), .A3(n158), .A4(n159), .ZN(sample_out1[2])
         );
  AOI221D0 U177 ( .A1(n3), .A2(\data[10][2] ), .B1(n113), .B2(\data[9][2] ), 
        .C(n160), .ZN(n159) );
  AOI222D0 U178 ( .A1(n123), .A2(\data[0][2] ), .B1(n124), .B2(\data[2][2] ), 
        .C1(n125), .C2(\data[1][2] ), .ZN(n156) );
  ND4D1 U179 ( .A1(n126), .A2(n127), .A3(n128), .A4(n129), .ZN(sample_out1[8])
         );
  AOI221D0 U180 ( .A1(n3), .A2(\data[10][8] ), .B1(n113), .B2(\data[9][8] ), 
        .C(n130), .ZN(n129) );
  AOI222D0 U181 ( .A1(n120), .A2(\data[3][8] ), .B1(n121), .B2(\data[5][8] ), 
        .C1(n190), .C2(\data[4][8] ), .ZN(n127) );
  AOI222D0 U182 ( .A1(n123), .A2(\data[0][8] ), .B1(n124), .B2(\data[2][8] ), 
        .C1(n125), .C2(\data[1][8] ), .ZN(n126) );
  AOI221D0 U183 ( .A1(n3), .A2(\data[10][6] ), .B1(n113), .B2(\data[9][6] ), 
        .C(n140), .ZN(n139) );
  AOI222D0 U184 ( .A1(n120), .A2(\data[3][6] ), .B1(n121), .B2(\data[5][6] ), 
        .C1(n190), .C2(\data[4][6] ), .ZN(n137) );
  AOI222D0 U185 ( .A1(n123), .A2(\data[0][6] ), .B1(n124), .B2(\data[2][6] ), 
        .C1(n125), .C2(\data[1][6] ), .ZN(n136) );
  ND4D1 U186 ( .A1(n83), .A2(n84), .A3(n85), .A4(n86), .ZN(sample_out2[3]) );
  ND4D1 U187 ( .A1(n166), .A2(n167), .A3(n168), .A4(n169), .ZN(sample_out1[0])
         );
  AOI221D0 U188 ( .A1(n3), .A2(\data[10][0] ), .B1(n113), .B2(\data[9][0] ), 
        .C(n170), .ZN(n169) );
  AOI222D0 U189 ( .A1(n120), .A2(\data[3][0] ), .B1(n121), .B2(\data[5][0] ), 
        .C1(n190), .C2(\data[4][0] ), .ZN(n167) );
  ND4D1 U190 ( .A1(n40), .A2(n41), .A3(n42), .A4(n43), .ZN(sample_out2[9]) );
  AOI222D0 U191 ( .A1(\data[3][9] ), .A2(n52), .B1(\data[5][9] ), .B2(n53), 
        .C1(\data[4][9] ), .C2(n191), .ZN(n41) );
  AOI221D0 U192 ( .A1(\data[10][9] ), .A2(n44), .B1(\data[9][9] ), .B2(n45), 
        .C(n46), .ZN(n43) );
  ND4D1 U193 ( .A1(n98), .A2(n99), .A3(n100), .A4(n101), .ZN(sample_out2[0])
         );
  ND4D1 U194 ( .A1(n88), .A2(n89), .A3(n90), .A4(n91), .ZN(sample_out2[2]) );
  AOI222D0 U195 ( .A1(\data[3][2] ), .A2(n52), .B1(\data[5][2] ), .B2(n53), 
        .C1(\data[4][2] ), .C2(n191), .ZN(n89) );
  AOI221D0 U196 ( .A1(\data[10][2] ), .A2(n44), .B1(\data[9][2] ), .B2(n45), 
        .C(n92), .ZN(n91) );
  ND4D1 U197 ( .A1(n58), .A2(n59), .A3(n60), .A4(n61), .ZN(sample_out2[8]) );
  AOI221D0 U198 ( .A1(\data[10][8] ), .A2(n44), .B1(\data[9][8] ), .B2(n45), 
        .C(n62), .ZN(n61) );
  ND4D1 U199 ( .A1(n68), .A2(n69), .A3(n70), .A4(n71), .ZN(sample_out2[6]) );
  ND4D1 U200 ( .A1(n78), .A2(n79), .A3(n80), .A4(n81), .ZN(sample_out2[4]) );
  INR3D0 U201 ( .A1(n106), .B1(n211), .B2(r_addr2[3]), .ZN(n54) );
  INR3D0 U202 ( .A1(n174), .B1(n213), .B2(r_addr1[3]), .ZN(n122) );
  INR3D0 U203 ( .A1(w_addr[3]), .B1(n215), .B2(w_addr[2]), .ZN(n192) );
  INR2D1 U204 ( .A1(n185), .B1(w_addr[2]), .ZN(n177) );
  NR2D1 U205 ( .A1(n215), .A2(w_addr[3]), .ZN(n185) );
  AN2D0 U206 ( .A1(w_addr[2]), .A2(n185), .Z(n187) );
  NR2D1 U207 ( .A1(w_addr[0]), .A2(w_addr[1]), .ZN(n178) );
  NR2D1 U208 ( .A1(n210), .A2(w_addr[1]), .ZN(n180) );
  AN2D0 U209 ( .A1(w_addr[1]), .A2(n210), .Z(n182) );
  AN2D0 U210 ( .A1(w_addr[1]), .A2(w_addr[0]), .Z(n184) );
  AN4D1 U211 ( .A1(w_addr[3]), .A2(w_addr[2]), .A3(n178), .A4(w_en), .Z(n189)
         );
  INVD1 U212 ( .I(w_addr[0]), .ZN(n210) );
  BUFFD0 U213 ( .I(rst_n), .Z(n193) );
  BUFFD0 U214 ( .I(n194), .Z(n209) );
  BUFFD0 U215 ( .I(rst_n), .Z(n194) );
  NR2D1 U216 ( .A1(r_addr2[2]), .A2(r_addr2[3]), .ZN(n107) );
endmodule


module Coef_ROM ( coeff_addr, coeff );
  input [3:0] coeff_addr;
  output [9:0] coeff;
  wire   n12, n5, n6, n7, n8, n9, n1, n3, n4, n11;
  assign coeff[0] = 1'b1;
  assign coeff[7] = 1'b0;
  assign coeff[8] = 1'b0;
  assign coeff[9] = 1'b0;

  ND3D2 U6 ( .A1(n4), .A2(n11), .A3(n7), .ZN(coeff[1]) );
  BUFFD2 U3 ( .I(n6), .Z(n1) );
  AOI21D2 U4 ( .A1(coeff_addr[2]), .A2(coeff_addr[0]), .B(coeff[6]), .ZN(n5)
         );
  OR2D8 U5 ( .A1(n1), .A2(coeff[3]), .Z(coeff[2]) );
  INVD2 U7 ( .I(n12), .ZN(n4) );
  AN2D2 U8 ( .A1(coeff_addr[2]), .A2(n1), .Z(coeff[6]) );
  INVD3 U9 ( .I(coeff_addr[1]), .ZN(n11) );
  NR2D1 U10 ( .A1(n11), .A2(coeff_addr[0]), .ZN(n6) );
  BUFFD0 U11 ( .I(n12), .Z(coeff[4]) );
  OAI211D4 U12 ( .A1(n3), .A2(n7), .B(n8), .C(n4), .ZN(coeff[3]) );
  OAI31D2 U13 ( .A1(n9), .A2(coeff_addr[1]), .A3(coeff_addr[0]), .B(n5), .ZN(
        n12) );
  INVD0 U14 ( .I(n5), .ZN(coeff[5]) );
  XNR2D2 U15 ( .A1(coeff_addr[3]), .A2(coeff_addr[2]), .ZN(n9) );
  ND3D0 U16 ( .A1(coeff_addr[1]), .A2(n3), .A3(coeff_addr[0]), .ZN(n8) );
  INVD0 U17 ( .I(coeff_addr[3]), .ZN(n3) );
  ND2D0 U18 ( .A1(coeff_addr[0]), .A2(n11), .ZN(n7) );
endmodule


module MAC_0_DW_mult_tc_0 ( a, b, product );
  input [9:0] a;
  input [9:0] b;
  output [19:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32,
         n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n119, n120, n121, n122, n123, n124, n125, n126,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n314, n315, n316,
         n317, n318, n319, n320, n321, n322, n323, n324, n325, n326, n327,
         n328, n329, n330, n331, n332, n333, n334, n335, n336, n337, n338,
         n339, n340, n341, n342, n343, n344, n345, n346, n347, n348, n349,
         n350, n351, n352, n353, n354, n355, n356, n357, n358, n359, n360,
         n361, n362, n363, n364, n365, n366, n367, n368, n369, n370, n371,
         n372, n373;

  CMPE32D1 U14 ( .A(n74), .B(n73), .CI(n14), .CO(n13), .S(product[6]) );
  CMPE32D1 U15 ( .A(n78), .B(n75), .CI(n15), .CO(n14), .S(product[5]) );
  CMPE32D1 U21 ( .A(n97), .B(n88), .CI(n25), .CO(n21), .S(n22) );
  CMPE32D1 U22 ( .A(n89), .B(n299), .CI(n27), .CO(n23), .S(n24) );
  CMPE42D1 U24 ( .A(n107), .B(n98), .C(n33), .CIX(n30), .D(n90), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U25 ( .A(n99), .B(n91), .C(n296), .CIX(n35), .D(n38), .CO(n31), 
        .COX(n30), .S(n32) );
  CMPE42D1 U27 ( .A(n108), .B(n100), .C(n43), .CIX(n40), .D(n39), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE32D1 U28 ( .A(n117), .B(n92), .CI(n45), .CO(n38), .S(n39) );
  CMPE42D1 U29 ( .A(n294), .B(n52), .C(n50), .CIX(n47), .D(n44), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE32D1 U30 ( .A(n93), .B(n101), .CI(n109), .CO(n43), .S(n44) );
  CMPE42D1 U32 ( .A(n59), .B(n53), .C(n57), .CIX(n54), .D(n51), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE32D1 U33 ( .A(n94), .B(n102), .CI(n110), .CO(n50), .S(n51) );
  CMPE42D1 U36 ( .A(n128), .B(n60), .C(n64), .CIX(n61), .D(n58), .CO(n55), 
        .COX(n54), .S(n56) );
  CMPE32D1 U37 ( .A(n111), .B(n103), .CI(n119), .CO(n57), .S(n58) );
  CMPE22D1 U38 ( .A(n95), .B(n82), .CO(n59), .S(n60) );
  CMPE42D1 U39 ( .A(n120), .B(n104), .C(n69), .CIX(n66), .D(n65), .CO(n62), 
        .COX(n61), .S(n63) );
  CMPE32D1 U40 ( .A(n96), .B(n112), .CI(n129), .CO(n64), .S(n65) );
  CMPE42D1 U41 ( .A(n130), .B(n113), .C(n121), .CIX(n71), .D(n70), .CO(n67), 
        .COX(n66), .S(n68) );
  CMPE42D1 U43 ( .A(n106), .B(n131), .C(n122), .CIX(n76), .D(n114), .CO(n72), 
        .COX(n71), .S(n73) );
  ND2D3 U210 ( .A1(n284), .A2(n285), .ZN(n135) );
  CMPE32D2 U211 ( .A(n24), .B(n28), .CI(n5), .CO(n4), .S(product[15]) );
  CMPE32D2 U212 ( .A(n29), .B(n31), .CI(n6), .CO(n5), .S(product[14]) );
  CMPE22D2 U213 ( .A(n105), .B(n83), .CO(n69), .S(n70) );
  OAI32D4 U214 ( .A1(n288), .A2(b[0]), .A3(n313), .B1(n288), .B2(n312), .ZN(
        n83) );
  BUFFD2 U215 ( .I(a[5]), .Z(n281) );
  CMPE32D2 U216 ( .A(n300), .B(n21), .CI(n3), .CO(n2), .S(product[17]) );
  CMPE32D2 U217 ( .A(n22), .B(n23), .CI(n4), .CO(n3), .S(product[16]) );
  OR2D4 U218 ( .A1(n342), .A2(n328), .Z(n284) );
  OAI22D2 U219 ( .A1(b[0]), .A2(n328), .B1(n342), .B2(n293), .ZN(n136) );
  OAI22D0 U220 ( .A1(n346), .A2(n328), .B1(n347), .B2(n293), .ZN(n131) );
  CKND2D2 U221 ( .A1(a[1]), .A2(n293), .ZN(n328) );
  CKND2 U222 ( .CLK(a[0]), .CN(n293) );
  ND2D2 U223 ( .A1(n283), .A2(n341), .ZN(n318) );
  INVD4 U224 ( .I(a[1]), .ZN(n295) );
  INVD2 U225 ( .I(n282), .ZN(n283) );
  INVD2 U226 ( .I(a[7]), .ZN(n288) );
  XNR2D1 U227 ( .A1(n298), .A2(n303), .ZN(n360) );
  ND2D2 U228 ( .A1(n290), .A2(n291), .ZN(n313) );
  ND2D1 U229 ( .A1(n298), .A2(n289), .ZN(n291) );
  ND2D2 U230 ( .A1(n331), .A2(n366), .ZN(n332) );
  CKXOR2D2 U231 ( .A1(n297), .A2(a[4]), .Z(n331) );
  CMPE22D1 U232 ( .A(n134), .B(n125), .CO(n80), .S(n81) );
  ND2D2 U233 ( .A1(n329), .A2(n357), .ZN(n330) );
  FA1D1 U234 ( .A(n32), .B(n36), .CI(n7), .CO(n6), .S(product[13]) );
  FA1D1 U235 ( .A(n37), .B(n41), .CI(n8), .CO(n7), .S(product[12]) );
  FA1D1 U236 ( .A(n42), .B(n48), .CI(n9), .CO(n8), .S(product[11]) );
  INVD1 U237 ( .I(n1), .ZN(product[19]) );
  CMPE22D2 U238 ( .A(n115), .B(n84), .CO(n76), .S(n77) );
  OAI32D4 U239 ( .A1(n298), .A2(b[0]), .A3(n331), .B1(n298), .B2(n332), .ZN(
        n84) );
  XOR2D1 U240 ( .A1(a[7]), .A2(a[8]), .Z(n282) );
  OAI32D1 U241 ( .A1(n301), .A2(b[0]), .A3(n283), .B1(n301), .B2(n318), .ZN(
        n82) );
  INVD3 U242 ( .I(n281), .ZN(n298) );
  CMPE32D2 U243 ( .A(n87), .B(n19), .CI(n2), .CO(n1), .S(product[18]) );
  CMPE32D2 U244 ( .A(n17), .B(n81), .CI(n85), .CO(n16), .S(product[3]) );
  CMPE32D2 U245 ( .A(n80), .B(n79), .CI(n16), .CO(n15), .S(product[4]) );
  OR2D4 U246 ( .A1(n343), .A2(n293), .Z(n285) );
  XNR2D1 U247 ( .A1(n297), .A2(n304), .ZN(n354) );
  INVD1 U248 ( .I(b[4]), .ZN(n304) );
  HA1D4 U249 ( .A(n86), .B(n136), .CO(n18), .S(product[1]) );
  OAI22D1 U250 ( .A1(n358), .A2(n332), .B1(n331), .B2(n359), .ZN(n115) );
  CMPE32D2 U251 ( .A(n116), .B(n133), .CI(n124), .CO(n78), .S(n79) );
  OAI22D2 U252 ( .A1(n344), .A2(n328), .B1(n345), .B2(n293), .ZN(n133) );
  INVD4 U253 ( .I(b[2]), .ZN(n303) );
  OAI22D1 U254 ( .A1(n351), .A2(n330), .B1(n329), .B2(n352), .ZN(n124) );
  XNR2D2 U255 ( .A1(n295), .A2(n305), .ZN(n342) );
  XNR2D2 U256 ( .A1(n295), .A2(n303), .ZN(n343) );
  CMPE32D1 U257 ( .A(n126), .B(n135), .CI(n18), .CO(n17), .S(product[2]) );
  OR2D1 U258 ( .A1(n350), .A2(n330), .Z(n286) );
  OR2D0 U259 ( .A1(n329), .A2(n351), .Z(n287) );
  ND2D1 U260 ( .A1(n286), .A2(n287), .ZN(n125) );
  XOR2D4 U261 ( .A1(n295), .A2(a[2]), .Z(n329) );
  XNR2D1 U262 ( .A1(n295), .A2(n306), .ZN(n347) );
  XNR2D1 U263 ( .A1(n295), .A2(n307), .ZN(n346) );
  XNR2D0 U264 ( .A1(n308), .A2(n297), .ZN(n350) );
  ND2D0 U265 ( .A1(n281), .A2(a[6]), .ZN(n290) );
  XNR2D0 U266 ( .A1(n308), .A2(n298), .ZN(n358) );
  XNR2D0 U267 ( .A1(n298), .A2(n305), .ZN(n359) );
  XNR2D0 U268 ( .A1(n298), .A2(n302), .ZN(n361) );
  XNR2D0 U269 ( .A1(n298), .A2(n304), .ZN(n362) );
  XNR2D0 U270 ( .A1(n298), .A2(a[4]), .ZN(n366) );
  INVD2 U271 ( .I(b[1]), .ZN(n305) );
  XNR2D0 U272 ( .A1(n297), .A2(n305), .ZN(n351) );
  XNR2D0 U273 ( .A1(n297), .A2(n303), .ZN(n352) );
  ND2D2 U274 ( .A1(n313), .A2(n373), .ZN(n312) );
  NR2D1 U275 ( .A1(n313), .A2(n308), .ZN(n106) );
  INVD1 U276 ( .I(a[6]), .ZN(n289) );
  OAI22D1 U277 ( .A1(n367), .A2(n312), .B1(n313), .B2(n368), .ZN(n105) );
  INVD0 U278 ( .I(b[6]), .ZN(n306) );
  CKND2 U279 ( .CLK(a[9]), .CN(n301) );
  CKND2 U280 ( .CLK(a[3]), .CN(n297) );
  INVD1 U281 ( .I(b[5]), .ZN(n307) );
  XNR2D1 U282 ( .A1(n295), .A2(n302), .ZN(n344) );
  INVD1 U283 ( .I(n45), .ZN(n294) );
  INVD1 U284 ( .I(n33), .ZN(n296) );
  INVD1 U285 ( .I(n25), .ZN(n299) );
  INVD1 U286 ( .I(n19), .ZN(n300) );
  INVD1 U287 ( .I(b[3]), .ZN(n302) );
  FA1D1 U288 ( .A(n72), .B(n68), .CI(n13), .CO(n12), .S(product[7]) );
  FA1D1 U289 ( .A(n55), .B(n49), .CI(n10), .CO(n9), .S(product[10]) );
  FA1D1 U290 ( .A(n67), .B(n63), .CI(n12), .CO(n11), .S(product[8]) );
  FA1D1 U291 ( .A(n62), .B(n56), .CI(n11), .CO(n10), .S(product[9]) );
  FA1D1 U292 ( .A(n132), .B(n123), .CI(n77), .CO(n74), .S(n75) );
  OAI22D1 U293 ( .A1(n343), .A2(n328), .B1(n344), .B2(n293), .ZN(n134) );
  INVD1 U294 ( .I(b[0]), .ZN(n308) );
  INVD1 U295 ( .I(b[8]), .ZN(n310) );
  INVD1 U296 ( .I(b[7]), .ZN(n309) );
  XNR2D1 U297 ( .A1(n288), .A2(n305), .ZN(n368) );
  XNR2D1 U298 ( .A1(n295), .A2(n304), .ZN(n345) );
  NR2D0 U299 ( .A1(n293), .A2(n308), .ZN(product[0]) );
  OAI22D0 U300 ( .A1(n311), .A2(n312), .B1(n313), .B2(n314), .ZN(n99) );
  OAI22D0 U301 ( .A1(n314), .A2(n312), .B1(n313), .B2(n315), .ZN(n98) );
  XNR2D0 U302 ( .A1(n288), .A2(n309), .ZN(n314) );
  AO21D0 U303 ( .A1(n312), .A2(n313), .B(n316), .Z(n97) );
  NR2D0 U304 ( .A1(n283), .A2(n308), .ZN(n96) );
  OAI22D0 U305 ( .A1(n317), .A2(n318), .B1(n283), .B2(n319), .ZN(n95) );
  XNR2D0 U306 ( .A1(n308), .A2(n301), .ZN(n317) );
  OAI22D0 U307 ( .A1(n319), .A2(n318), .B1(n283), .B2(n320), .ZN(n94) );
  XNR2D0 U308 ( .A1(n301), .A2(n305), .ZN(n319) );
  OAI22D0 U309 ( .A1(n320), .A2(n318), .B1(n283), .B2(n321), .ZN(n93) );
  XNR2D0 U310 ( .A1(n301), .A2(n303), .ZN(n320) );
  OAI22D0 U311 ( .A1(n321), .A2(n318), .B1(n283), .B2(n322), .ZN(n92) );
  XNR2D0 U312 ( .A1(n301), .A2(n302), .ZN(n321) );
  OAI22D0 U313 ( .A1(n322), .A2(n318), .B1(n283), .B2(n323), .ZN(n91) );
  XNR2D0 U314 ( .A1(n301), .A2(n304), .ZN(n322) );
  OAI22D0 U315 ( .A1(n323), .A2(n318), .B1(n283), .B2(n324), .ZN(n90) );
  XNR2D0 U316 ( .A1(n301), .A2(n307), .ZN(n323) );
  OAI22D0 U317 ( .A1(n324), .A2(n318), .B1(n283), .B2(n325), .ZN(n89) );
  XNR2D0 U318 ( .A1(n301), .A2(n306), .ZN(n324) );
  OAI22D0 U319 ( .A1(n325), .A2(n318), .B1(n283), .B2(n326), .ZN(n88) );
  XNR2D0 U320 ( .A1(n301), .A2(n309), .ZN(n325) );
  AO21D0 U321 ( .A1(n318), .A2(n283), .B(n327), .Z(n87) );
  OAI21D0 U322 ( .A1(b[0]), .A2(n295), .B(n328), .ZN(n86) );
  OAI32D0 U323 ( .A1(n297), .A2(b[0]), .A3(n329), .B1(n297), .B2(n330), .ZN(
        n85) );
  XNR2D0 U324 ( .A1(n333), .A2(n334), .ZN(n53) );
  ND2D0 U325 ( .A1(n333), .A2(n334), .ZN(n52) );
  AOI21D0 U326 ( .A1(n293), .A2(n328), .B(n335), .ZN(n334) );
  OA22D0 U327 ( .A1(n336), .A2(n330), .B1(n329), .B2(n337), .Z(n333) );
  OAI22D0 U328 ( .A1(n329), .A2(n338), .B1(n337), .B2(n330), .ZN(n45) );
  XNR2D0 U329 ( .A1(n297), .A2(n310), .ZN(n337) );
  OAI22D0 U330 ( .A1(n331), .A2(n339), .B1(n340), .B2(n332), .ZN(n33) );
  OAI22D0 U331 ( .A1(n315), .A2(n312), .B1(n313), .B2(n316), .ZN(n25) );
  XNR2D0 U332 ( .A1(a[7]), .A2(b[9]), .ZN(n316) );
  XNR2D0 U333 ( .A1(n288), .A2(n310), .ZN(n315) );
  OAI22D0 U334 ( .A1(n326), .A2(n318), .B1(n283), .B2(n327), .ZN(n19) );
  XNR2D0 U335 ( .A1(a[9]), .A2(b[9]), .ZN(n327) );
  XNR2D0 U336 ( .A1(n301), .A2(a[8]), .ZN(n341) );
  XNR2D0 U337 ( .A1(n301), .A2(n310), .ZN(n326) );
  OAI22D0 U338 ( .A1(n345), .A2(n328), .B1(n346), .B2(n293), .ZN(n132) );
  OAI22D0 U339 ( .A1(n347), .A2(n328), .B1(n348), .B2(n293), .ZN(n130) );
  OAI22D0 U340 ( .A1(n348), .A2(n328), .B1(n349), .B2(n293), .ZN(n129) );
  XNR2D0 U341 ( .A1(n295), .A2(n309), .ZN(n348) );
  OAI22D0 U342 ( .A1(n349), .A2(n328), .B1(n335), .B2(n293), .ZN(n128) );
  XNR2D0 U343 ( .A1(a[1]), .A2(b[9]), .ZN(n335) );
  XNR2D0 U344 ( .A1(n295), .A2(n310), .ZN(n349) );
  NR2D0 U345 ( .A1(n329), .A2(n308), .ZN(n126) );
  OAI22D0 U346 ( .A1(n352), .A2(n330), .B1(n329), .B2(n353), .ZN(n123) );
  OAI22D0 U347 ( .A1(n353), .A2(n330), .B1(n329), .B2(n354), .ZN(n122) );
  XNR2D0 U348 ( .A1(n297), .A2(n302), .ZN(n353) );
  OAI22D0 U349 ( .A1(n354), .A2(n330), .B1(n329), .B2(n355), .ZN(n121) );
  OAI22D0 U350 ( .A1(n355), .A2(n330), .B1(n329), .B2(n356), .ZN(n120) );
  XNR2D0 U351 ( .A1(n297), .A2(n307), .ZN(n355) );
  OAI22D0 U352 ( .A1(n356), .A2(n330), .B1(n329), .B2(n336), .ZN(n119) );
  XNR2D0 U353 ( .A1(n297), .A2(n309), .ZN(n336) );
  XNR2D0 U354 ( .A1(n297), .A2(n306), .ZN(n356) );
  AO21D0 U355 ( .A1(n330), .A2(n329), .B(n338), .Z(n117) );
  XNR2D0 U356 ( .A1(a[3]), .A2(b[9]), .ZN(n338) );
  XNR2D0 U357 ( .A1(n297), .A2(a[2]), .ZN(n357) );
  NR2D0 U358 ( .A1(n331), .A2(n308), .ZN(n116) );
  OAI22D0 U359 ( .A1(n359), .A2(n332), .B1(n331), .B2(n360), .ZN(n114) );
  OAI22D0 U360 ( .A1(n360), .A2(n332), .B1(n331), .B2(n361), .ZN(n113) );
  OAI22D0 U361 ( .A1(n361), .A2(n332), .B1(n331), .B2(n362), .ZN(n112) );
  OAI22D0 U362 ( .A1(n362), .A2(n332), .B1(n331), .B2(n363), .ZN(n111) );
  OAI22D0 U363 ( .A1(n363), .A2(n332), .B1(n331), .B2(n364), .ZN(n110) );
  XNR2D0 U364 ( .A1(n298), .A2(n307), .ZN(n363) );
  OAI22D0 U365 ( .A1(n364), .A2(n332), .B1(n331), .B2(n365), .ZN(n109) );
  XNR2D0 U366 ( .A1(n298), .A2(n306), .ZN(n364) );
  OAI22D0 U367 ( .A1(n365), .A2(n332), .B1(n331), .B2(n340), .ZN(n108) );
  XNR2D0 U368 ( .A1(n298), .A2(n310), .ZN(n340) );
  XNR2D0 U369 ( .A1(n298), .A2(n309), .ZN(n365) );
  AO21D0 U370 ( .A1(n332), .A2(n331), .B(n339), .Z(n107) );
  XNR2D0 U371 ( .A1(n281), .A2(b[9]), .ZN(n339) );
  XNR2D0 U372 ( .A1(n308), .A2(n288), .ZN(n367) );
  OAI22D0 U373 ( .A1(n368), .A2(n312), .B1(n313), .B2(n369), .ZN(n104) );
  OAI22D0 U374 ( .A1(n369), .A2(n312), .B1(n313), .B2(n370), .ZN(n103) );
  XNR2D0 U375 ( .A1(n288), .A2(n303), .ZN(n369) );
  OAI22D0 U376 ( .A1(n370), .A2(n312), .B1(n313), .B2(n371), .ZN(n102) );
  XNR2D0 U377 ( .A1(n288), .A2(n302), .ZN(n370) );
  OAI22D0 U378 ( .A1(n371), .A2(n312), .B1(n313), .B2(n372), .ZN(n101) );
  XNR2D0 U379 ( .A1(n288), .A2(n304), .ZN(n371) );
  OAI22D0 U380 ( .A1(n372), .A2(n312), .B1(n313), .B2(n311), .ZN(n100) );
  XNR2D0 U381 ( .A1(n288), .A2(n306), .ZN(n311) );
  XNR2D0 U382 ( .A1(n288), .A2(a[6]), .ZN(n373) );
  XNR2D0 U383 ( .A1(n288), .A2(n307), .ZN(n372) );
endmodule


module MAC_0_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  CMPE32D1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CMPE32D1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPE32D1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPE32D1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3D1 U1_23 ( .A1(A[23]), .A2(B[23]), .A3(carry[23]), .Z(SUM[23]) );
  FA1D1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CMPE32D1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPE32D1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CMPE32D1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPE32D1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CMPE32D1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  CMPE32D1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CMPE32D2 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CMPE32D2 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CMPE32D2 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CMPE32D2 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D2 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CMPE32D2 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D2 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPE32D2 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FA1D2 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPE32D2 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D2 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CKXOR2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_0 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_0_DW_mult_tc_0 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
  MAC_0_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
endmodule


module MAC_1_DW_mult_tc_0 ( a, b, product );
  input [9:0] a;
  input [9:0] b;
  output [19:0] product;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n21, n22, n23, n24, n25, n27, n28, n29, n30, n31, n32,
         n33, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103,
         n104, n105, n106, n107, n108, n109, n110, n111, n112, n113, n114,
         n115, n116, n117, n119, n120, n121, n122, n124, n125, n126, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n281, n282, n283,
         n284, n285, n286, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n298, n299, n300, n301, n302, n303, n304, n305, n306,
         n307, n308, n309, n310, n311, n312, n313, n314, n315, n316, n317,
         n318, n319, n320, n321, n322, n323, n324, n325, n326, n327, n328,
         n329, n330, n331, n332, n333, n334, n335, n336, n337, n338, n339,
         n340, n341, n342, n343, n344, n345, n346, n347, n348, n349, n350,
         n351, n352, n353, n354, n355, n356, n357, n358, n359, n360, n361,
         n362, n363, n364, n365, n366, n367, n368, n369, n370, n371, n372,
         n373, n374, n375, n376, n377, n378, n379, n380;

  CMPE32D1 U16 ( .A(n80), .B(n79), .CI(n16), .CO(n15), .S(product[4]) );
  CMPE32D1 U17 ( .A(n85), .B(n81), .CI(n17), .CO(n16), .S(product[3]) );
  CMPE32D1 U21 ( .A(n97), .B(n88), .CI(n25), .CO(n21), .S(n22) );
  CMPE32D1 U22 ( .A(n89), .B(n304), .CI(n27), .CO(n23), .S(n24) );
  CMPE42D1 U24 ( .A(n107), .B(n98), .C(n33), .CIX(n30), .D(n90), .CO(n28), 
        .COX(n27), .S(n29) );
  CMPE42D1 U25 ( .A(n99), .B(n91), .C(n301), .CIX(n35), .D(n38), .CO(n31), 
        .COX(n30), .S(n32) );
  CMPE42D1 U27 ( .A(n108), .B(n100), .C(n43), .CIX(n40), .D(n39), .CO(n36), 
        .COX(n35), .S(n37) );
  CMPE32D1 U28 ( .A(n117), .B(n92), .CI(n45), .CO(n38), .S(n39) );
  CMPE42D1 U29 ( .A(n299), .B(n52), .C(n50), .CIX(n47), .D(n44), .CO(n41), 
        .COX(n40), .S(n42) );
  CMPE32D1 U30 ( .A(n93), .B(n101), .CI(n109), .CO(n43), .S(n44) );
  CMPE42D1 U32 ( .A(n59), .B(n53), .C(n57), .CIX(n54), .D(n51), .CO(n48), 
        .COX(n47), .S(n49) );
  CMPE32D1 U33 ( .A(n94), .B(n102), .CI(n110), .CO(n50), .S(n51) );
  CMPE42D1 U36 ( .A(n128), .B(n60), .C(n64), .CIX(n61), .D(n58), .CO(n55), 
        .COX(n54), .S(n56) );
  CMPE32D1 U37 ( .A(n111), .B(n103), .CI(n119), .CO(n57), .S(n58) );
  CMPE22D1 U38 ( .A(n95), .B(n82), .CO(n59), .S(n60) );
  CMPE42D1 U39 ( .A(n120), .B(n104), .C(n69), .CIX(n66), .D(n65), .CO(n62), 
        .COX(n61), .S(n63) );
  CMPE32D1 U40 ( .A(n96), .B(n112), .CI(n129), .CO(n64), .S(n65) );
  CMPE42D1 U41 ( .A(n130), .B(n282), .C(n121), .CIX(n71), .D(n70), .CO(n67), 
        .COX(n66), .S(n68) );
  CMPE42D1 U43 ( .A(n106), .B(n131), .C(n122), .CIX(n76), .D(n114), .CO(n72), 
        .COX(n71), .S(n73) );
  INVD3 U210 ( .I(a[7]), .ZN(n306) );
  OA22D0 U211 ( .A1(n343), .A2(n337), .B1(n336), .B2(n344), .Z(n340) );
  OAI22D2 U212 ( .A1(n324), .A2(n325), .B1(n323), .B2(n326), .ZN(n95) );
  CMPE22D1 U213 ( .A(n134), .B(n125), .CO(n80), .S(n81) );
  INVD1 U214 ( .I(b[4]), .ZN(n310) );
  BUFFD2 U215 ( .I(n319), .Z(n293) );
  ND2D3 U216 ( .A1(n338), .A2(n373), .ZN(n339) );
  XNR2D1 U217 ( .A1(n300), .A2(n310), .ZN(n352) );
  CKND2D2 U218 ( .A1(n291), .A2(n292), .ZN(n323) );
  ND2D1 U219 ( .A1(a[7]), .A2(a[8]), .ZN(n291) );
  ND2D3 U220 ( .A1(n336), .A2(n364), .ZN(n337) );
  FA1D1 U221 ( .A(n62), .B(n56), .CI(n11), .CO(n10), .S(product[9]) );
  FA1D1 U222 ( .A(n67), .B(n63), .CI(n12), .CO(n11), .S(product[8]) );
  FA1D1 U223 ( .A(n72), .B(n68), .CI(n13), .CO(n12), .S(product[7]) );
  FA1D1 U224 ( .A(n126), .B(n135), .CI(n18), .CO(n17), .S(product[2]) );
  INVD1 U225 ( .I(n1), .ZN(product[19]) );
  OAI32D1 U226 ( .A1(n306), .A2(b[0]), .A3(n293), .B1(n306), .B2(n318), .ZN(
        n83) );
  OA22D0 U227 ( .A1(n359), .A2(n337), .B1(n336), .B2(n360), .Z(n281) );
  FA1D1 U228 ( .A(n74), .B(n73), .CI(n14), .CO(n13), .S(product[6]) );
  FA1D2 U229 ( .A(n78), .B(n75), .CI(n15), .CO(n14), .S(product[5]) );
  OAI22D1 U230 ( .A1(n367), .A2(n339), .B1(n338), .B2(n368), .ZN(n113) );
  XNR2D1 U231 ( .A1(n303), .A2(n309), .ZN(n367) );
  ND2D1 U232 ( .A1(n288), .A2(n289), .ZN(n135) );
  OR2D1 U233 ( .A1(n350), .A2(n298), .Z(n289) );
  BUFFD2 U234 ( .I(n113), .Z(n282) );
  OR2D1 U235 ( .A1(n351), .A2(n298), .Z(n287) );
  XNR2D1 U236 ( .A1(n300), .A2(n308), .ZN(n351) );
  XNR2D1 U237 ( .A1(n302), .A2(n309), .ZN(n359) );
  INVD3 U238 ( .I(b[2]), .ZN(n309) );
  INVD3 U239 ( .I(b[1]), .ZN(n311) );
  ND2D3 U240 ( .A1(n293), .A2(n380), .ZN(n318) );
  OAI32D1 U241 ( .A1(n302), .A2(b[0]), .A3(n336), .B1(n302), .B2(n337), .ZN(
        n85) );
  OAI22D2 U242 ( .A1(n357), .A2(n337), .B1(n336), .B2(n358), .ZN(n125) );
  CMPE32D2 U243 ( .A(n116), .B(n133), .CI(n124), .CO(n78), .S(n79) );
  CKND1 U244 ( .CLK(n281), .CN(n283) );
  OR2D0 U245 ( .A1(n374), .A2(n318), .Z(n284) );
  OR2D0 U246 ( .A1(n293), .A2(n375), .Z(n285) );
  ND2D1 U247 ( .A1(n284), .A2(n285), .ZN(n105) );
  XNR2D0 U248 ( .A1(n306), .A2(n311), .ZN(n375) );
  CMPE22D2 U249 ( .A(n105), .B(n83), .CO(n69), .S(n70) );
  OR2D1 U250 ( .A1(n350), .A2(n335), .Z(n286) );
  ND2D2 U251 ( .A1(n286), .A2(n287), .ZN(n134) );
  ND2D0 U252 ( .A1(n306), .A2(n290), .ZN(n292) );
  CMPE22D2 U253 ( .A(n115), .B(n84), .CO(n76), .S(n77) );
  OAI32D4 U254 ( .A1(n303), .A2(b[0]), .A3(n338), .B1(n303), .B2(n339), .ZN(
        n84) );
  OR2D0 U255 ( .A1(n349), .A2(n335), .Z(n288) );
  XNR2D2 U256 ( .A1(n300), .A2(n311), .ZN(n349) );
  ND2D4 U257 ( .A1(a[1]), .A2(n298), .ZN(n335) );
  XNR2D2 U258 ( .A1(n300), .A2(n309), .ZN(n350) );
  INVD3 U259 ( .I(a[0]), .ZN(n298) );
  NR2D1 U260 ( .A1(n323), .A2(n314), .ZN(n96) );
  CKND2 U261 ( .CLK(a[1]), .CN(n300) );
  XNR2D1 U262 ( .A1(n303), .A2(a[4]), .ZN(n373) );
  XNR2D0 U263 ( .A1(n314), .A2(n303), .ZN(n365) );
  INVD1 U264 ( .I(a[8]), .ZN(n290) );
  OAI32D1 U265 ( .A1(n307), .A2(b[0]), .A3(n323), .B1(n307), .B2(n325), .ZN(
        n82) );
  OAI22D1 U266 ( .A1(n326), .A2(n325), .B1(n323), .B2(n327), .ZN(n94) );
  XNR2D0 U267 ( .A1(n303), .A2(n311), .ZN(n366) );
  XNR2D0 U268 ( .A1(n303), .A2(n310), .ZN(n369) );
  XNR2D0 U269 ( .A1(n303), .A2(n308), .ZN(n368) );
  INVD2 U270 ( .I(a[5]), .ZN(n303) );
  ND2D2 U271 ( .A1(n300), .A2(n294), .ZN(n295) );
  INVD1 U272 ( .I(a[2]), .ZN(n294) );
  OAI22D1 U273 ( .A1(b[0]), .A2(n335), .B1(n349), .B2(n298), .ZN(n136) );
  ND2D0 U274 ( .A1(a[1]), .A2(a[2]), .ZN(n296) );
  CKND2D4 U275 ( .A1(n295), .A2(n296), .ZN(n336) );
  XNR2D0 U276 ( .A1(a[5]), .A2(a[6]), .ZN(n319) );
  XNR2D0 U277 ( .A1(n302), .A2(n311), .ZN(n358) );
  OAI22D0 U278 ( .A1(n363), .A2(n337), .B1(n336), .B2(n343), .ZN(n119) );
  XOR2D2 U279 ( .A1(n302), .A2(a[4]), .Z(n338) );
  NR2D1 U280 ( .A1(n336), .A2(n314), .ZN(n126) );
  XNR2D0 U281 ( .A1(n314), .A2(n302), .ZN(n357) );
  OAI22D0 U282 ( .A1(n336), .A2(n345), .B1(n344), .B2(n337), .ZN(n45) );
  OAI22D1 U283 ( .A1(n362), .A2(n337), .B1(n336), .B2(n363), .ZN(n120) );
  OAI22D1 U284 ( .A1(n360), .A2(n337), .B1(n336), .B2(n361), .ZN(n122) );
  OAI22D1 U285 ( .A1(n361), .A2(n337), .B1(n336), .B2(n362), .ZN(n121) );
  CKND4 U286 ( .CLK(a[3]), .CN(n302) );
  ND2D4 U287 ( .A1(n323), .A2(n348), .ZN(n325) );
  INVD0 U288 ( .I(b[6]), .ZN(n312) );
  XNR2D0 U289 ( .A1(n302), .A2(n308), .ZN(n360) );
  XNR2D0 U290 ( .A1(n302), .A2(n310), .ZN(n361) );
  CKND2 U291 ( .CLK(a[9]), .CN(n307) );
  INVD1 U292 ( .I(b[5]), .ZN(n313) );
  FA1D1 U293 ( .A(n32), .B(n36), .CI(n7), .CO(n6), .S(product[13]) );
  FA1D1 U294 ( .A(n37), .B(n41), .CI(n8), .CO(n7), .S(product[12]) );
  INVD1 U295 ( .I(b[3]), .ZN(n308) );
  INVD1 U296 ( .I(n45), .ZN(n299) );
  INVD1 U297 ( .I(n33), .ZN(n301) );
  INVD1 U298 ( .I(n25), .ZN(n304) );
  FA1D1 U299 ( .A(n22), .B(n23), .CI(n4), .CO(n3), .S(product[16]) );
  FA1D1 U300 ( .A(n305), .B(n21), .CI(n3), .CO(n2), .S(product[17]) );
  INVD1 U301 ( .I(n19), .ZN(n305) );
  FA1D1 U302 ( .A(n42), .B(n48), .CI(n9), .CO(n8), .S(product[11]) );
  FA1D1 U303 ( .A(n29), .B(n31), .CI(n6), .CO(n5), .S(product[14]) );
  FA1D1 U304 ( .A(n24), .B(n28), .CI(n5), .CO(n4), .S(product[15]) );
  FA1D1 U305 ( .A(n55), .B(n49), .CI(n10), .CO(n9), .S(product[10]) );
  FA1D1 U306 ( .A(n132), .B(n283), .CI(n77), .CO(n74), .S(n75) );
  FA1D1 U307 ( .A(n87), .B(n19), .CI(n2), .CO(n1), .S(product[18]) );
  CMPE22D1 U308 ( .A(n86), .B(n136), .CO(n18), .S(product[1]) );
  INVD1 U309 ( .I(b[0]), .ZN(n314) );
  INVD1 U310 ( .I(b[8]), .ZN(n316) );
  INVD1 U311 ( .I(b[7]), .ZN(n315) );
  OAI22D1 U312 ( .A1(n365), .A2(n339), .B1(n338), .B2(n366), .ZN(n115) );
  OAI22D1 U313 ( .A1(n358), .A2(n337), .B1(n336), .B2(n359), .ZN(n124) );
  OAI22D1 U314 ( .A1(n351), .A2(n335), .B1(n352), .B2(n298), .ZN(n133) );
  NR2D0 U315 ( .A1(n298), .A2(n314), .ZN(product[0]) );
  OAI22D0 U316 ( .A1(n317), .A2(n318), .B1(n293), .B2(n320), .ZN(n99) );
  OAI22D0 U317 ( .A1(n320), .A2(n318), .B1(n293), .B2(n321), .ZN(n98) );
  XNR2D0 U318 ( .A1(n306), .A2(n315), .ZN(n320) );
  AO21D0 U319 ( .A1(n318), .A2(n293), .B(n322), .Z(n97) );
  XNR2D0 U320 ( .A1(n314), .A2(n307), .ZN(n324) );
  XNR2D0 U321 ( .A1(n307), .A2(n311), .ZN(n326) );
  OAI22D0 U322 ( .A1(n327), .A2(n325), .B1(n323), .B2(n328), .ZN(n93) );
  XNR2D0 U323 ( .A1(n307), .A2(n309), .ZN(n327) );
  OAI22D0 U324 ( .A1(n328), .A2(n325), .B1(n323), .B2(n329), .ZN(n92) );
  XNR2D0 U325 ( .A1(n307), .A2(n308), .ZN(n328) );
  OAI22D0 U326 ( .A1(n329), .A2(n325), .B1(n323), .B2(n330), .ZN(n91) );
  XNR2D0 U327 ( .A1(n307), .A2(n310), .ZN(n329) );
  OAI22D0 U328 ( .A1(n330), .A2(n325), .B1(n323), .B2(n331), .ZN(n90) );
  XNR2D0 U329 ( .A1(n307), .A2(n313), .ZN(n330) );
  OAI22D0 U330 ( .A1(n331), .A2(n325), .B1(n323), .B2(n332), .ZN(n89) );
  XNR2D0 U331 ( .A1(n307), .A2(n312), .ZN(n331) );
  OAI22D0 U332 ( .A1(n332), .A2(n325), .B1(n323), .B2(n333), .ZN(n88) );
  XNR2D0 U333 ( .A1(n307), .A2(n315), .ZN(n332) );
  AO21D0 U334 ( .A1(n325), .A2(n323), .B(n334), .Z(n87) );
  OAI21D0 U335 ( .A1(b[0]), .A2(n300), .B(n335), .ZN(n86) );
  XNR2D0 U336 ( .A1(n340), .A2(n341), .ZN(n53) );
  ND2D0 U337 ( .A1(n340), .A2(n341), .ZN(n52) );
  AOI21D0 U338 ( .A1(n298), .A2(n335), .B(n342), .ZN(n341) );
  XNR2D0 U339 ( .A1(n302), .A2(n316), .ZN(n344) );
  OAI22D0 U340 ( .A1(n338), .A2(n346), .B1(n347), .B2(n339), .ZN(n33) );
  OAI22D0 U341 ( .A1(n321), .A2(n318), .B1(n293), .B2(n322), .ZN(n25) );
  XNR2D0 U342 ( .A1(a[7]), .A2(b[9]), .ZN(n322) );
  XNR2D0 U343 ( .A1(n306), .A2(n316), .ZN(n321) );
  OAI22D0 U344 ( .A1(n333), .A2(n325), .B1(n323), .B2(n334), .ZN(n19) );
  XNR2D0 U345 ( .A1(a[9]), .A2(b[9]), .ZN(n334) );
  XNR2D0 U346 ( .A1(n307), .A2(a[8]), .ZN(n348) );
  XNR2D0 U347 ( .A1(n307), .A2(n316), .ZN(n333) );
  OAI22D0 U348 ( .A1(n352), .A2(n335), .B1(n353), .B2(n298), .ZN(n132) );
  OAI22D0 U349 ( .A1(n353), .A2(n335), .B1(n354), .B2(n298), .ZN(n131) );
  XNR2D0 U350 ( .A1(n300), .A2(n313), .ZN(n353) );
  OAI22D0 U351 ( .A1(n354), .A2(n335), .B1(n355), .B2(n298), .ZN(n130) );
  XNR2D0 U352 ( .A1(n300), .A2(n312), .ZN(n354) );
  OAI22D0 U353 ( .A1(n355), .A2(n335), .B1(n356), .B2(n298), .ZN(n129) );
  XNR2D0 U354 ( .A1(n300), .A2(n315), .ZN(n355) );
  OAI22D0 U355 ( .A1(n356), .A2(n335), .B1(n342), .B2(n298), .ZN(n128) );
  XNR2D0 U356 ( .A1(a[1]), .A2(b[9]), .ZN(n342) );
  XNR2D0 U357 ( .A1(n300), .A2(n316), .ZN(n356) );
  XNR2D0 U358 ( .A1(n302), .A2(n313), .ZN(n362) );
  XNR2D0 U359 ( .A1(n302), .A2(n315), .ZN(n343) );
  XNR2D0 U360 ( .A1(n302), .A2(n312), .ZN(n363) );
  AO21D0 U361 ( .A1(n337), .A2(n336), .B(n345), .Z(n117) );
  XNR2D0 U362 ( .A1(a[3]), .A2(b[9]), .ZN(n345) );
  XNR2D0 U363 ( .A1(n302), .A2(a[2]), .ZN(n364) );
  NR2D0 U364 ( .A1(n338), .A2(n314), .ZN(n116) );
  OAI22D0 U365 ( .A1(n366), .A2(n339), .B1(n338), .B2(n367), .ZN(n114) );
  OAI22D0 U366 ( .A1(n368), .A2(n339), .B1(n338), .B2(n369), .ZN(n112) );
  OAI22D0 U367 ( .A1(n369), .A2(n339), .B1(n338), .B2(n370), .ZN(n111) );
  OAI22D0 U368 ( .A1(n370), .A2(n339), .B1(n338), .B2(n371), .ZN(n110) );
  XNR2D0 U369 ( .A1(n303), .A2(n313), .ZN(n370) );
  OAI22D0 U370 ( .A1(n371), .A2(n339), .B1(n338), .B2(n372), .ZN(n109) );
  XNR2D0 U371 ( .A1(n303), .A2(n312), .ZN(n371) );
  OAI22D0 U372 ( .A1(n372), .A2(n339), .B1(n338), .B2(n347), .ZN(n108) );
  XNR2D0 U373 ( .A1(n303), .A2(n316), .ZN(n347) );
  XNR2D0 U374 ( .A1(n303), .A2(n315), .ZN(n372) );
  AO21D0 U375 ( .A1(n339), .A2(n338), .B(n346), .Z(n107) );
  XNR2D0 U376 ( .A1(a[5]), .A2(b[9]), .ZN(n346) );
  NR2D0 U377 ( .A1(n293), .A2(n314), .ZN(n106) );
  XNR2D0 U378 ( .A1(n314), .A2(n306), .ZN(n374) );
  OAI22D0 U379 ( .A1(n375), .A2(n318), .B1(n293), .B2(n376), .ZN(n104) );
  OAI22D0 U380 ( .A1(n376), .A2(n318), .B1(n293), .B2(n377), .ZN(n103) );
  XNR2D0 U381 ( .A1(n306), .A2(n309), .ZN(n376) );
  OAI22D0 U382 ( .A1(n377), .A2(n318), .B1(n293), .B2(n378), .ZN(n102) );
  XNR2D0 U383 ( .A1(n306), .A2(n308), .ZN(n377) );
  OAI22D0 U384 ( .A1(n378), .A2(n318), .B1(n293), .B2(n379), .ZN(n101) );
  XNR2D0 U385 ( .A1(n306), .A2(n310), .ZN(n378) );
  OAI22D0 U386 ( .A1(n379), .A2(n318), .B1(n293), .B2(n317), .ZN(n100) );
  XNR2D0 U387 ( .A1(n306), .A2(n312), .ZN(n317) );
  XNR2D0 U388 ( .A1(n306), .A2(a[6]), .ZN(n380) );
  XNR2D0 U389 ( .A1(n306), .A2(n313), .ZN(n379) );
endmodule


module MAC_1_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  CMPE32D1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPE32D1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPE32D1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  FA1D1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  XOR3D1 U1_23 ( .A1(A[23]), .A2(B[23]), .A3(carry[23]), .Z(SUM[23]) );
  CMPE32D1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CMPE32D1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CMPE32D1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CMPE32D1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CMPE32D1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPE32D1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPE32D1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CMPE32D1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FA1D1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FA1D1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FA1D1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FA1D1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FA1D1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CMPE32D2 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPE32D2 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FA1D2 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FA1D2 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FA1D2 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CKXOR2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
  AN2D0 U2 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
endmodule


module MAC_1 ( sample_in, coeff, acc, result );
  input [9:0] sample_in;
  input [9:0] coeff;
  input [23:0] acc;
  output [23:0] result;
  wire   N9, N8, N7, N6, N5, N4, N3, N2, N19, N18, N17, N16, N15, N14, N13,
         N12, N11, N10, N1, N0;

  MAC_1_DW_mult_tc_0 mult_16 ( .a(sample_in), .b(coeff), .product({N19, N18, 
        N17, N16, N15, N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, 
        N1, N0}) );
  MAC_1_DW01_add_0 add_16 ( .A({N19, N19, N19, N19, N19, N18, N17, N16, N15, 
        N14, N13, N12, N11, N10, N9, N8, N7, N6, N5, N4, N3, N2, N1, N0}), .B(
        acc), .CI(1'b0), .SUM(result) );
endmodule


module Arith_Unit_DW01_add_0 ( A, B, CI, SUM, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [23:1] carry;

  CMPE32D1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  CMPE32D1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  CMPE32D1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  CMPE32D1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  CMPE32D1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  CMPE32D1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  CMPE32D1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  CMPE32D1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  CMPE32D1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  CMPE32D1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  CMPE32D1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  CMPE32D1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  CMPE32D1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  CMPE32D1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  CMPE32D1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  CMPE32D1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  CMPE32D1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  CMPE32D1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  CMPE32D1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  CMPE32D1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  CMPE32D1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  CMPE32D1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  XOR3D1 U1_23 ( .A1(A[23]), .A2(B[23]), .A3(carry[23]), .Z(SUM[23]) );
  AN2D0 U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XOR2D1 U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module Arith_Unit ( clk, rst_n, rst_mac_n, sample1, sample2, coeff, result, 
        ctrl_sig );
  input [9:0] sample1;
  input [9:0] sample2;
  input [9:0] coeff;
  output [23:0] result;
  input clk, rst_n, rst_mac_n, ctrl_sig;
  wire   n2, n3, n4, n5;
  wire   [23:0] tmp_result1;
  wire   [23:0] MAC_result1;
  wire   [9:0] sample2_mux;
  wire   [23:0] tmp_result2;
  wire   [23:0] MAC_result2;

  MAC_0 MAC1 ( .sample_in(sample1), .coeff(coeff), .acc(tmp_result1), .result(
        MAC_result1) );
  MAC_1 MAC2 ( .sample_in(sample2_mux), .coeff(coeff), .acc(tmp_result2), 
        .result(MAC_result2) );
  Arith_Unit_DW01_add_0 add_42 ( .A(tmp_result1), .B(tmp_result2), .CI(1'b0), 
        .SUM(result) );
  DFCNQD1 \tmp_result1_reg[19]  ( .D(MAC_result1[19]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[19]) );
  DFCNQD1 \tmp_result1_reg[20]  ( .D(MAC_result1[20]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[20]) );
  DFCNQD1 \tmp_result1_reg[21]  ( .D(MAC_result1[21]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[21]) );
  DFCNQD1 \tmp_result1_reg[22]  ( .D(MAC_result1[22]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[22]) );
  DFCNQD1 \tmp_result1_reg[23]  ( .D(MAC_result1[23]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[23]) );
  DFCNQD1 \tmp_result2_reg[19]  ( .D(MAC_result2[19]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[19]) );
  DFCNQD1 \tmp_result2_reg[20]  ( .D(MAC_result2[20]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[20]) );
  DFCNQD1 \tmp_result2_reg[21]  ( .D(MAC_result2[21]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[21]) );
  DFCNQD1 \tmp_result2_reg[22]  ( .D(MAC_result2[22]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[22]) );
  DFCNQD1 \tmp_result2_reg[23]  ( .D(MAC_result2[23]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[23]) );
  DFCNQD1 \tmp_result1_reg[2]  ( .D(MAC_result1[2]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[2]) );
  DFCNQD1 \tmp_result1_reg[3]  ( .D(MAC_result1[3]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[3]) );
  DFCNQD1 \tmp_result1_reg[4]  ( .D(MAC_result1[4]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[4]) );
  DFCNQD1 \tmp_result1_reg[5]  ( .D(MAC_result1[5]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[5]) );
  DFCNQD1 \tmp_result1_reg[6]  ( .D(MAC_result1[6]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[6]) );
  DFCNQD1 \tmp_result1_reg[7]  ( .D(MAC_result1[7]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[7]) );
  DFCNQD1 \tmp_result1_reg[8]  ( .D(MAC_result1[8]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[8]) );
  DFCNQD1 \tmp_result1_reg[9]  ( .D(MAC_result1[9]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[9]) );
  DFCNQD1 \tmp_result1_reg[10]  ( .D(MAC_result1[10]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[10]) );
  DFCNQD1 \tmp_result1_reg[11]  ( .D(MAC_result1[11]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[11]) );
  DFCNQD1 \tmp_result1_reg[12]  ( .D(MAC_result1[12]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[12]) );
  DFCNQD1 \tmp_result1_reg[13]  ( .D(MAC_result1[13]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[13]) );
  DFCNQD1 \tmp_result1_reg[14]  ( .D(MAC_result1[14]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[14]) );
  DFCNQD1 \tmp_result1_reg[15]  ( .D(MAC_result1[15]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[15]) );
  DFCNQD1 \tmp_result1_reg[16]  ( .D(MAC_result1[16]), .CP(clk), .CDN(n4), .Q(
        tmp_result1[16]) );
  DFCNQD1 \tmp_result1_reg[17]  ( .D(MAC_result1[17]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[17]) );
  DFCNQD1 \tmp_result1_reg[18]  ( .D(MAC_result1[18]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[18]) );
  DFCNQD1 \tmp_result2_reg[2]  ( .D(MAC_result2[2]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[2]) );
  DFCNQD1 \tmp_result2_reg[3]  ( .D(MAC_result2[3]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[3]) );
  DFCNQD1 \tmp_result2_reg[4]  ( .D(MAC_result2[4]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[4]) );
  DFCNQD1 \tmp_result2_reg[5]  ( .D(MAC_result2[5]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[5]) );
  DFCNQD1 \tmp_result2_reg[6]  ( .D(MAC_result2[6]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[6]) );
  DFCNQD1 \tmp_result2_reg[7]  ( .D(MAC_result2[7]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[7]) );
  DFCNQD1 \tmp_result2_reg[8]  ( .D(MAC_result2[8]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[8]) );
  DFCNQD1 \tmp_result2_reg[9]  ( .D(MAC_result2[9]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[9]) );
  DFCNQD1 \tmp_result2_reg[10]  ( .D(MAC_result2[10]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[10]) );
  DFCNQD1 \tmp_result2_reg[11]  ( .D(MAC_result2[11]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[11]) );
  DFCNQD1 \tmp_result2_reg[12]  ( .D(MAC_result2[12]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[12]) );
  DFCNQD1 \tmp_result2_reg[13]  ( .D(MAC_result2[13]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[13]) );
  DFCNQD1 \tmp_result2_reg[14]  ( .D(MAC_result2[14]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[14]) );
  DFCNQD1 \tmp_result2_reg[15]  ( .D(MAC_result2[15]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[15]) );
  DFCNQD1 \tmp_result2_reg[16]  ( .D(MAC_result2[16]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[16]) );
  DFCNQD1 \tmp_result2_reg[17]  ( .D(MAC_result2[17]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[17]) );
  DFCNQD1 \tmp_result2_reg[18]  ( .D(MAC_result2[18]), .CP(clk), .CDN(n3), .Q(
        tmp_result2[18]) );
  DFCNQD1 \tmp_result1_reg[1]  ( .D(MAC_result1[1]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[1]) );
  DFCNQD1 \tmp_result2_reg[1]  ( .D(MAC_result2[1]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[1]) );
  DFCNQD1 \tmp_result1_reg[0]  ( .D(MAC_result1[0]), .CP(clk), .CDN(n3), .Q(
        tmp_result1[0]) );
  DFCNQD1 \tmp_result2_reg[0]  ( .D(MAC_result2[0]), .CP(clk), .CDN(n4), .Q(
        tmp_result2[0]) );
  AN2D2 U3 ( .A1(sample2[7]), .A2(n5), .Z(sample2_mux[7]) );
  AN2D1 U5 ( .A1(sample2[8]), .A2(n5), .Z(sample2_mux[8]) );
  AN2D1 U6 ( .A1(sample2[2]), .A2(n5), .Z(sample2_mux[2]) );
  ND2D1 U7 ( .A1(rst_n), .A2(rst_mac_n), .ZN(n2) );
  AN2D2 U8 ( .A1(sample2[6]), .A2(n5), .Z(sample2_mux[6]) );
  AN2D2 U9 ( .A1(sample2[1]), .A2(n5), .Z(sample2_mux[1]) );
  AN2D2 U10 ( .A1(sample2[3]), .A2(n5), .Z(sample2_mux[3]) );
  INVD2 U11 ( .I(ctrl_sig), .ZN(n5) );
  AN2D2 U12 ( .A1(sample2[5]), .A2(n5), .Z(sample2_mux[5]) );
  INVD1 U13 ( .I(n2), .ZN(n3) );
  INVD1 U14 ( .I(n2), .ZN(n4) );
  AN2D1 U15 ( .A1(sample2[9]), .A2(n5), .Z(sample2_mux[9]) );
  AN2D0 U16 ( .A1(sample2[0]), .A2(n5), .Z(sample2_mux[0]) );
  AN2D0 U17 ( .A1(sample2[4]), .A2(n5), .Z(sample2_mux[4]) );
endmodule


module FSM ( rst_n, clk, sample_clk, delayLineWrEn, delayLineAdr, delayLineR1, 
        delayLineR2, dav, rst_mac_n, coeffAdr, ctrl_sig );
  output [3:0] delayLineAdr;
  output [3:0] delayLineR1;
  output [3:0] delayLineR2;
  output [3:0] coeffAdr;
  input rst_n, clk, sample_clk;
  output delayLineWrEn, dav, rst_mac_n, ctrl_sig;
  wire   N29, N33, N34, N35, N75, N76, N77, N78, N79, N80, N81, N82, N83, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54,
         n55, n56, n57, n58, n59, n60, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;
  wire   [3:0] count;
  wire   [1:0] present_state;
  assign ctrl_sig = N83;

  DFCNQD2 \adrR2_reg[2]  ( .D(N81), .CP(clk), .CDN(rst_n), .Q(delayLineR2[2])
         );
  DFCNQD2 \adrR1_reg[2]  ( .D(N77), .CP(clk), .CDN(rst_n), .Q(delayLineR1[2])
         );
  DFCNQD2 \count_reg[1]  ( .D(N33), .CP(clk), .CDN(n4), .Q(count[1]) );
  MOAI22D1 U27 ( .A1(n43), .A2(n38), .B1(N29), .B2(sample_clk), .ZN(N80) );
  MOAI22D1 U32 ( .A1(sample_clk), .A2(n46), .B1(sample_clk), .B2(
        delayLineAdr[3]), .ZN(N78) );
  DFCNQD4 \count_reg[0]  ( .D(n20), .CP(clk), .CDN(n4), .Q(count[0]) );
  DFQD1 rst_counter_n_sync_reg ( .D(n4), .CP(clk), .Q(rst_mac_n) );
  EDFCNQD1 \wrAdr_reg[0]  ( .D(n5), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(
        delayLineAdr[0]) );
  EDFCNQD1 \wrAdr_reg[3]  ( .D(n7), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(
        delayLineAdr[3]) );
  EDFCNQD1 \wrAdr_reg[2]  ( .D(n6), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(
        delayLineAdr[2]) );
  DFCNQD4 \adrR1_reg[1]  ( .D(N76), .CP(clk), .CDN(rst_n), .Q(delayLineR1[1])
         );
  DFCNQD4 \adrR2_reg[0]  ( .D(N79), .CP(clk), .CDN(rst_n), .Q(delayLineR2[0])
         );
  DFCNQD4 \adrR1_reg[0]  ( .D(N75), .CP(clk), .CDN(rst_n), .Q(delayLineR1[0])
         );
  DFCNQD4 \present_state_reg[0]  ( .D(n60), .CP(clk), .CDN(rst_n), .Q(
        present_state[0]) );
  DFCNQD4 \adrR2_reg[1]  ( .D(N80), .CP(clk), .CDN(rst_n), .Q(delayLineR2[1])
         );
  EDFCND1 \wrAdr_reg[1]  ( .D(N29), .E(sample_clk), .CP(clk), .CDN(rst_n), .Q(
        delayLineAdr[1]), .QN(n9) );
  DFCNQD1 \count_reg[3]  ( .D(N35), .CP(clk), .CDN(n4), .Q(count[3]) );
  DFCNQD2 \count_reg[2]  ( .D(N34), .CP(clk), .CDN(n4), .Q(count[2]) );
  DFCNQD2 \present_state_reg[1]  ( .D(n59), .CP(clk), .CDN(rst_n), .Q(
        present_state[1]) );
  DFCNQD2 \adrR1_reg[3]  ( .D(N78), .CP(clk), .CDN(rst_n), .Q(delayLineR1[3])
         );
  DFCNQD2 \adrR2_reg[3]  ( .D(N82), .CP(clk), .CDN(rst_n), .Q(delayLineR2[3])
         );
  INVD6 U3 ( .I(count[0]), .ZN(n20) );
  NR4D1 U4 ( .A1(n32), .A2(n33), .A3(n34), .A4(n35), .ZN(N83) );
  INVD4 U5 ( .I(n28), .ZN(n18) );
  INVD2 U6 ( .I(count[1]), .ZN(n22) );
  NR2D4 U7 ( .A1(n31), .A2(count[2]), .ZN(n29) );
  CKND2D1 U8 ( .A1(count[1]), .A2(count[0]), .ZN(n53) );
  AOI21D4 U9 ( .A1(n23), .A2(n29), .B(n18), .ZN(n30) );
  INVD1 U10 ( .I(count[3]), .ZN(n23) );
  CKND2D4 U11 ( .A1(n22), .A2(n20), .ZN(n31) );
  AN2D1 U12 ( .A1(n31), .A2(n53), .Z(N33) );
  AN2D1 U13 ( .A1(present_state[1]), .A2(n3), .Z(dav) );
  INVD4 U14 ( .I(n30), .ZN(n17) );
  NR2D0 U15 ( .A1(n21), .A2(n53), .ZN(n52) );
  BUFFD0 U16 ( .I(delayLineR2[1]), .Z(n2) );
  INVD0 U17 ( .I(present_state[0]), .ZN(n3) );
  NR2D8 U18 ( .A1(n19), .A2(present_state[1]), .ZN(n28) );
  NR2D8 U19 ( .A1(n17), .A2(count[0]), .ZN(coeffAdr[0]) );
  INVD4 U20 ( .I(present_state[0]), .ZN(n19) );
  NR2D2 U21 ( .A1(N33), .A2(n17), .ZN(coeffAdr[1]) );
  INVD0 U22 ( .I(delayLineR2[2]), .ZN(n12) );
  INVD0 U23 ( .I(delayLineR2[0]), .ZN(n11) );
  INVD0 U24 ( .I(n2), .ZN(n13) );
  INVD0 U25 ( .I(count[2]), .ZN(n21) );
  XNR2D0 U26 ( .A1(n12), .A2(delayLineR1[2]), .ZN(n33) );
  NR2D0 U28 ( .A1(n12), .A2(n40), .ZN(n39) );
  OAI32D0 U29 ( .A1(n47), .A2(sample_clk), .A3(delayLineR1[0]), .B1(n24), .B2(
        n8), .ZN(N75) );
  AO211D0 U30 ( .A1(n3), .A2(sample_clk), .B(n28), .C(dav), .Z(n4) );
  NR2D0 U31 ( .A1(n14), .A2(delayLineR1[3]), .ZN(n47) );
  NR2D0 U33 ( .A1(delayLineR1[1]), .A2(delayLineR1[0]), .ZN(n51) );
  NR2D0 U34 ( .A1(n15), .A2(delayLineR1[2]), .ZN(n49) );
  ND2D0 U35 ( .A1(delayLineR2[0]), .A2(n2), .ZN(n40) );
  ND4D0 U36 ( .A1(delayLineR2[3]), .A2(delayLineR2[2]), .A3(n11), .A4(n13), 
        .ZN(n45) );
  XNR2D0 U37 ( .A1(n13), .A2(n11), .ZN(n43) );
  XNR2D0 U38 ( .A1(n53), .A2(count[2]), .ZN(N34) );
  INVD1 U39 ( .I(n26), .ZN(n16) );
  NR2D1 U40 ( .A1(n18), .A2(n16), .ZN(n59) );
  INVD1 U41 ( .I(n44), .ZN(n5) );
  INVD1 U42 ( .I(n49), .ZN(n14) );
  ND2D1 U43 ( .A1(n52), .A2(n23), .ZN(n27) );
  INVD1 U44 ( .I(n51), .ZN(n15) );
  OAI22D0 U45 ( .A1(n24), .A2(n41), .B1(n42), .B2(n38), .ZN(N81) );
  XNR2D1 U46 ( .A1(n12), .A2(n40), .ZN(n42) );
  OAI21D0 U47 ( .A1(n52), .A2(n23), .B(n27), .ZN(N35) );
  ND2D1 U48 ( .A1(n55), .A2(n8), .ZN(n44) );
  XOR2D1 U49 ( .A1(n9), .A2(n8), .Z(N29) );
  INVD1 U50 ( .I(n36), .ZN(n7) );
  INVD1 U51 ( .I(n41), .ZN(n6) );
  XNR2D1 U52 ( .A1(n13), .A2(delayLineR1[1]), .ZN(n32) );
  XNR2D1 U53 ( .A1(n11), .A2(delayLineR1[0]), .ZN(n34) );
  XOR2D1 U54 ( .A1(delayLineR2[3]), .A2(delayLineR1[3]), .Z(n35) );
  AOI21D0 U55 ( .A1(delayLineR1[3]), .A2(n14), .B(n47), .ZN(n46) );
  OAI32D1 U56 ( .A1(n50), .A2(sample_clk), .A3(n47), .B1(n24), .B2(n9), .ZN(
        N76) );
  AOI21D0 U57 ( .A1(delayLineR1[0]), .A2(delayLineR1[1]), .B(n51), .ZN(n50) );
  OAI22D0 U58 ( .A1(n24), .A2(n36), .B1(n37), .B2(n38), .ZN(N82) );
  OAI22D0 U59 ( .A1(n24), .A2(n44), .B1(delayLineR2[0]), .B2(n38), .ZN(N79) );
  OAI22D0 U60 ( .A1(n24), .A2(n10), .B1(sample_clk), .B2(n48), .ZN(N77) );
  AOI21D0 U61 ( .A1(delayLineR1[2]), .A2(n15), .B(n49), .ZN(n48) );
  ND4D1 U62 ( .A1(delayLineAdr[3]), .A2(delayLineAdr[2]), .A3(n8), .A4(n9), 
        .ZN(n55) );
  ND2D1 U63 ( .A1(n45), .A2(n24), .ZN(n38) );
  INVD1 U64 ( .I(delayLineAdr[0]), .ZN(n8) );
  INVD1 U65 ( .I(delayLineAdr[2]), .ZN(n10) );
  ND2D1 U66 ( .A1(delayLineAdr[1]), .A2(delayLineAdr[0]), .ZN(n57) );
  ND2D1 U67 ( .A1(n58), .A2(n55), .ZN(n41) );
  XNR2D1 U68 ( .A1(n57), .A2(delayLineAdr[2]), .ZN(n58) );
  ND2D1 U69 ( .A1(n54), .A2(n55), .ZN(n36) );
  XOR2D1 U70 ( .A1(delayLineAdr[3]), .A2(n56), .Z(n54) );
  NR2D1 U71 ( .A1(n10), .A2(n57), .ZN(n56) );
  INVD1 U72 ( .I(sample_clk), .ZN(n24) );
  NR3D0 U73 ( .A1(n23), .A2(n29), .A3(n17), .ZN(coeffAdr[3]) );
  AOI22D0 U74 ( .A1(n27), .A2(n28), .B1(n24), .B2(n3), .ZN(n26) );
  XNR2D0 U75 ( .A1(n39), .A2(delayLineR2[3]), .ZN(n37) );
  NR3D0 U76 ( .A1(n24), .A2(present_state[1]), .A3(present_state[0]), .ZN(
        delayLineWrEn) );
  OAI32D0 U77 ( .A1(n16), .A2(present_state[1]), .A3(present_state[0]), .B1(
        n26), .B2(n3), .ZN(n60) );
  AO33D2 U78 ( .A1(coeffAdr[0]), .A2(n21), .A3(n22), .B1(n30), .B2(n31), .B3(
        count[2]), .Z(coeffAdr[2]) );
endmodule


module Top_PartiallyParallel_FIR ( clk, rst_n, sample_clk, sample, conv_sum, 
        dav, ctrl_sig_test );
  input [9:0] sample;
  output [23:0] conv_sum;
  input clk, rst_n, sample_clk;
  output dav, ctrl_sig_test;
  wire   w_en, rst_mac_n;
  wire   [3:0] w_addr;
  wire   [3:0] r_addr1;
  wire   [3:0] r_addr2;
  wire   [9:0] sample_out1;
  wire   [9:0] sample_out2;
  wire   [3:0] coeff_addr;
  wire   [9:0] coeff;
  wire   [23:0] result;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  delay_line D1 ( .clk(clk), .sample_clk(sample_clk), .rst_n(rst_n), .w_addr(
        w_addr), .w_en(w_en), .sample_in(sample), .r_addr1(r_addr1), .r_addr2(
        r_addr2), .sample_out1(sample_out1), .sample_out2(sample_out2) );
  Coef_ROM C1 ( .coeff_addr(coeff_addr), .coeff({SYNOPSYS_UNCONNECTED__0, 
        SYNOPSYS_UNCONNECTED__1, SYNOPSYS_UNCONNECTED__2, coeff[6:1], 
        SYNOPSYS_UNCONNECTED__3}) );
  Arith_Unit A1 ( .clk(clk), .rst_n(rst_n), .rst_mac_n(rst_mac_n), .sample1(
        sample_out1), .sample2(sample_out2), .coeff({1'b0, 1'b0, 1'b0, 
        coeff[6:1], 1'b1}), .result(result), .ctrl_sig(ctrl_sig_test) );
  FSM F1 ( .rst_n(rst_n), .clk(clk), .sample_clk(sample_clk), .delayLineWrEn(
        w_en), .delayLineAdr(w_addr), .delayLineR1(r_addr1), .delayLineR2(
        r_addr2), .dav(dav), .rst_mac_n(rst_mac_n), .coeffAdr(coeff_addr), 
        .ctrl_sig(ctrl_sig_test) );
  AN2D0 U26 ( .A1(result[1]), .A2(dav), .Z(conv_sum[1]) );
  AN2D0 U27 ( .A1(result[2]), .A2(dav), .Z(conv_sum[2]) );
  AN2D0 U28 ( .A1(result[3]), .A2(dav), .Z(conv_sum[3]) );
  AN2D0 U29 ( .A1(result[4]), .A2(dav), .Z(conv_sum[4]) );
  AN2D0 U30 ( .A1(result[5]), .A2(dav), .Z(conv_sum[5]) );
  AN2D0 U31 ( .A1(result[6]), .A2(dav), .Z(conv_sum[6]) );
  AN2D0 U32 ( .A1(result[7]), .A2(dav), .Z(conv_sum[7]) );
  AN2D0 U33 ( .A1(result[8]), .A2(dav), .Z(conv_sum[8]) );
  AN2D0 U34 ( .A1(result[9]), .A2(dav), .Z(conv_sum[9]) );
  AN2D0 U35 ( .A1(result[10]), .A2(dav), .Z(conv_sum[10]) );
  AN2D0 U36 ( .A1(result[11]), .A2(dav), .Z(conv_sum[11]) );
  AN2D0 U37 ( .A1(result[12]), .A2(dav), .Z(conv_sum[12]) );
  AN2D0 U38 ( .A1(result[13]), .A2(dav), .Z(conv_sum[13]) );
  AN2D0 U39 ( .A1(result[14]), .A2(dav), .Z(conv_sum[14]) );
  AN2D0 U40 ( .A1(result[15]), .A2(dav), .Z(conv_sum[15]) );
  AN2D0 U41 ( .A1(result[16]), .A2(dav), .Z(conv_sum[16]) );
  AN2D0 U42 ( .A1(result[17]), .A2(dav), .Z(conv_sum[17]) );
  AN2D0 U43 ( .A1(result[18]), .A2(dav), .Z(conv_sum[18]) );
  AN2D0 U44 ( .A1(result[19]), .A2(dav), .Z(conv_sum[19]) );
  AN2D0 U45 ( .A1(result[20]), .A2(dav), .Z(conv_sum[20]) );
  AN2D0 U46 ( .A1(result[21]), .A2(dav), .Z(conv_sum[21]) );
  AN2D0 U47 ( .A1(result[22]), .A2(dav), .Z(conv_sum[22]) );
  AN2D0 U48 ( .A1(result[0]), .A2(dav), .Z(conv_sum[0]) );
  AN2D0 U49 ( .A1(result[23]), .A2(dav), .Z(conv_sum[23]) );
endmodule

