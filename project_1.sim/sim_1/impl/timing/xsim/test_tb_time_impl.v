// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Apr 16 22:12:54 2023
// Host        : LAPTOP-8SO8FUEU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/Ducanh-xillin-ise/project_1/project_1.sim/sim_1/impl/timing/xsim/test_tb_time_impl.v
// Design      : UART
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010iclg225-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module RAM32M_UNIQ_BASE_
   (DOA,
    DOB,
    DOC,
    DOD,
    ADDRA,
    ADDRB,
    ADDRC,
    ADDRD,
    DIA,
    DIB,
    DIC,
    DID,
    WCLK,
    WE);
  output [1:0]DOA;
  output [1:0]DOB;
  output [1:0]DOC;
  output [1:0]DOD;
  input [4:0]ADDRA;
  input [4:0]ADDRB;
  input [4:0]ADDRC;
  input [4:0]ADDRD;
  input [1:0]DIA;
  input [1:0]DIB;
  input [1:0]DIC;
  input [1:0]DID;
  input WCLK;
  input WE;

  wire ADDRA0;
  wire ADDRA1;
  wire ADDRA2;
  wire ADDRA3;
  wire ADDRA4;
  wire ADDRB0;
  wire ADDRB1;
  wire ADDRB2;
  wire ADDRB3;
  wire ADDRB4;
  wire ADDRC0;
  wire ADDRC1;
  wire ADDRC2;
  wire ADDRC3;
  wire ADDRC4;
  wire ADDRD0;
  wire ADDRD1;
  wire ADDRD2;
  wire ADDRD3;
  wire ADDRD4;
  wire DIA0;
  wire DIA1;
  wire DIB0;
  wire DIB1;
  wire DIC0;
  wire DIC1;
  wire DID0;
  wire DID1;
  wire DOA0;
  wire DOA1;
  wire DOB0;
  wire DOB1;
  wire DOC0;
  wire DOC1;
  wire DOD0;
  wire DOD1;
  wire WCLK;
  wire WE;

  assign ADDRA0 = ADDRA[0];
  assign ADDRA1 = ADDRA[1];
  assign ADDRA2 = ADDRA[2];
  assign ADDRA3 = ADDRA[3];
  assign ADDRA4 = ADDRA[4];
  assign ADDRB0 = ADDRB[0];
  assign ADDRB1 = ADDRB[1];
  assign ADDRB2 = ADDRB[2];
  assign ADDRB3 = ADDRB[3];
  assign ADDRB4 = ADDRB[4];
  assign ADDRC0 = ADDRC[0];
  assign ADDRC1 = ADDRC[1];
  assign ADDRC2 = ADDRC[2];
  assign ADDRC3 = ADDRC[3];
  assign ADDRC4 = ADDRC[4];
  assign ADDRD0 = ADDRD[0];
  assign ADDRD1 = ADDRD[1];
  assign ADDRD2 = ADDRD[2];
  assign ADDRD3 = ADDRD[3];
  assign ADDRD4 = ADDRD[4];
  assign DIA0 = DIA[0];
  assign DIA1 = DIA[1];
  assign DIB0 = DIB[0];
  assign DIB1 = DIB[1];
  assign DIC0 = DIC[0];
  assign DIC1 = DIC[1];
  assign DID0 = DID[0];
  assign DID1 = DID[1];
  assign DOA[1] = DOA1;
  assign DOA[0] = DOA0;
  assign DOB[1] = DOB1;
  assign DOB[0] = DOB0;
  assign DOC[1] = DOC1;
  assign DOC[0] = DOC0;
  assign DOD[1] = DOD1;
  assign DOD[0] = DOD0;
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA
       (.CLK(WCLK),
        .I(DIA0),
        .O(DOA0),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMA_D1
       (.CLK(WCLK),
        .I(DIA1),
        .O(DOA1),
        .RADR0(ADDRA0),
        .RADR1(ADDRA1),
        .RADR2(ADDRA2),
        .RADR3(ADDRA3),
        .RADR4(ADDRA4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB
       (.CLK(WCLK),
        .I(DIB0),
        .O(DOB0),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMB_D1
       (.CLK(WCLK),
        .I(DIB1),
        .O(DOB1),
        .RADR0(ADDRB0),
        .RADR1(ADDRB1),
        .RADR2(ADDRB2),
        .RADR3(ADDRB3),
        .RADR4(ADDRB4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC
       (.CLK(WCLK),
        .I(DIC0),
        .O(DOC0),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMC_D1
       (.CLK(WCLK),
        .I(DIC1),
        .O(DOC1),
        .RADR0(ADDRC0),
        .RADR1(ADDRC1),
        .RADR2(ADDRC2),
        .RADR3(ADDRC3),
        .RADR4(ADDRC4),
        .WADR0(ADDRD0),
        .WADR1(ADDRD1),
        .WADR2(ADDRD2),
        .WADR3(ADDRD3),
        .WADR4(ADDRD4),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID0),
        .O(DOD0),
        .WE(WE));
  RAMS32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    RAMD_D1
       (.ADR0(ADDRD0),
        .ADR1(ADDRD1),
        .ADR2(ADDRD2),
        .ADR3(ADDRD3),
        .ADR4(ADDRD4),
        .CLK(WCLK),
        .I(DID1),
        .O(DOD1),
        .WE(WE));
endmodule

module RAM32X1D_UNIQ_BASE_
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module RAM32X1D_HD6
   (DPO,
    SPO,
    A0,
    A1,
    A2,
    A3,
    A4,
    D,
    DPRA0,
    DPRA1,
    DPRA2,
    DPRA3,
    DPRA4,
    WCLK,
    WE);
  output DPO;
  output SPO;
  input A0;
  input A1;
  input A2;
  input A3;
  input A4;
  input D;
  input DPRA0;
  input DPRA1;
  input DPRA2;
  input DPRA3;
  input DPRA4;
  input WCLK;
  input WE;

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire A4;
  wire D;
  wire DPO;
  wire DPRA0;
  wire DPRA1;
  wire DPRA2;
  wire DPRA3;
  wire DPRA4;
  wire SPO;
  wire WCLK;
  wire WE;

  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    DP
       (.CLK(WCLK),
        .I(D),
        .O(DPO),
        .RADR0(DPRA0),
        .RADR1(DPRA1),
        .RADR2(DPRA2),
        .RADR3(DPRA3),
        .RADR4(DPRA4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
  RAMD32 #(
    .INIT(32'h00000000),
    .IS_CLK_INVERTED(1'b0)) 
    SP
       (.CLK(WCLK),
        .I(D),
        .O(SPO),
        .RADR0(A0),
        .RADR1(A1),
        .RADR2(A2),
        .RADR3(A3),
        .RADR4(A4),
        .WADR0(A0),
        .WADR1(A1),
        .WADR2(A2),
        .WADR3(A3),
        .WADR4(A4),
        .WE(WE));
endmodule

module FIFO_tx
   (\r_ptr_reg_reg[0]_0 ,
    \w_ptr_reg_reg[0]_0 ,
    \w_ptr_reg_reg[0]_1 ,
    empty_reg_reg_0,
    tx_full_OBUF,
    D,
    clk_IBUF_BUFG,
    reset_IBUF,
    \r_ptr_reg_reg[0]_1 ,
    \w_ptr_reg_reg[0]_2 ,
    w_data_IBUF,
    wr_uart_IBUF,
    \r_ptr_reg_reg[1]_0 ,
    \r_ptr_reg_reg[1]_1 ,
    state_reg);
  output [0:0]\r_ptr_reg_reg[0]_0 ;
  output [0:0]\w_ptr_reg_reg[0]_0 ;
  output [6:0]\w_ptr_reg_reg[0]_1 ;
  output empty_reg_reg_0;
  output tx_full_OBUF;
  output [0:0]D;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \r_ptr_reg_reg[0]_1 ;
  input \w_ptr_reg_reg[0]_2 ;
  input [7:0]w_data_IBUF;
  input wr_uart_IBUF;
  input \r_ptr_reg_reg[1]_0 ;
  input \r_ptr_reg_reg[1]_1 ;
  input [0:0]state_reg;

  wire [0:0]D;
  wire clk_IBUF_BUFG;
  wire empty_reg_i_1_n_0;
  wire empty_reg_i_2_n_0;
  wire empty_reg_reg_0;
  wire full_reg_i_1_n_0;
  wire full_reg_i_2_n_0;
  wire [7:7]r_data__0;
  wire [1:1]r_ptr_reg;
  wire \r_ptr_reg[1]_i_1_n_0 ;
  wire [0:0]\r_ptr_reg_reg[0]_0 ;
  wire \r_ptr_reg_reg[0]_1 ;
  wire \r_ptr_reg_reg[1]_0 ;
  wire \r_ptr_reg_reg[1]_1 ;
  wire reset_IBUF;
  wire [0:0]state_reg;
  wire tx_full_OBUF;
  wire [7:0]w_data_IBUF;
  wire [1:1]w_ptr_reg;
  wire \w_ptr_reg[1]_i_1_n_0 ;
  wire [0:0]\w_ptr_reg_reg[0]_0 ;
  wire [6:0]\w_ptr_reg_reg[0]_1 ;
  wire \w_ptr_reg_reg[0]_2 ;
  wire wr_en;
  wire wr_uart_IBUF;
  wire [1:0]NLW_array_reg_reg_0_3_0_5_DOD_UNCONNECTED;
  wire NLW_array_reg_reg_0_3_6_7_SPO_UNCONNECTED;
  wire NLW_array_reg_reg_0_3_6_7__0_SPO_UNCONNECTED;

  (* INIT_A = "64'h0000000000000000" *) 
  (* INIT_B = "64'h0000000000000000" *) 
  (* INIT_C = "64'h0000000000000000" *) 
  (* INIT_D = "64'h0000000000000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "fifo_tx_unit/array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M_UNIQ_BASE_ array_reg_reg_0_3_0_5
       (.ADDRA({1'b0,1'b0,1'b0,r_ptr_reg,\r_ptr_reg_reg[0]_0 }),
        .ADDRB({1'b0,1'b0,1'b0,r_ptr_reg,\r_ptr_reg_reg[0]_0 }),
        .ADDRC({1'b0,1'b0,1'b0,r_ptr_reg,\r_ptr_reg_reg[0]_0 }),
        .ADDRD({1'b0,1'b0,1'b0,w_ptr_reg,\w_ptr_reg_reg[0]_0 }),
        .DIA(w_data_IBUF[1:0]),
        .DIB(w_data_IBUF[3:2]),
        .DIC(w_data_IBUF[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(\w_ptr_reg_reg[0]_1 [1:0]),
        .DOB(\w_ptr_reg_reg[0]_1 [3:2]),
        .DOC(\w_ptr_reg_reg[0]_1 [5:4]),
        .DOD(NLW_array_reg_reg_0_3_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    array_reg_reg_0_3_0_5_i_1
       (.I0(wr_uart_IBUF),
        .I1(tx_full_OBUF),
        .O(wr_en));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "fifo_tx_unit/array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_UNIQ_BASE_ array_reg_reg_0_3_6_7
       (.A0(\w_ptr_reg_reg[0]_0 ),
        .A1(w_ptr_reg),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(w_data_IBUF[6]),
        .DPO(\w_ptr_reg_reg[0]_1 [6]),
        .DPRA0(\r_ptr_reg_reg[0]_0 ),
        .DPRA1(r_ptr_reg),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_array_reg_reg_0_3_6_7_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr_en));
  (* INIT = "32'h00000000" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "32" *) 
  (* RTL_RAM_NAME = "fifo_tx_unit/array_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "7" *) 
  RAM32X1D_HD6 array_reg_reg_0_3_6_7__0
       (.A0(\w_ptr_reg_reg[0]_0 ),
        .A1(w_ptr_reg),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .D(w_data_IBUF[7]),
        .DPO(r_data__0),
        .DPRA0(\r_ptr_reg_reg[0]_0 ),
        .DPRA1(r_ptr_reg),
        .DPRA2(1'b0),
        .DPRA3(1'b0),
        .DPRA4(1'b0),
        .SPO(NLW_array_reg_reg_0_3_6_7__0_SPO_UNCONNECTED),
        .WCLK(clk_IBUF_BUFG),
        .WE(wr_en));
  LUT2 #(
    .INIT(4'h2)) 
    \b_reg[7]_i_2 
       (.I0(r_data__0),
        .I1(state_reg),
        .O(D));
  LUT6 #(
    .INIT(64'hABFF0003ABFF0000)) 
    empty_reg_i_1
       (.I0(tx_full_OBUF),
        .I1(\r_ptr_reg_reg[1]_1 ),
        .I2(\r_ptr_reg_reg[1]_0 ),
        .I3(wr_uart_IBUF),
        .I4(empty_reg_reg_0),
        .I5(empty_reg_i_2_n_0),
        .O(empty_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0960)) 
    empty_reg_i_2
       (.I0(r_ptr_reg),
        .I1(w_ptr_reg),
        .I2(\r_ptr_reg_reg[0]_0 ),
        .I3(\w_ptr_reg_reg[0]_0 ),
        .O(empty_reg_i_2_n_0));
  FDPE #(
    .INIT(1'b1)) 
    empty_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(empty_reg_i_1_n_0),
        .PRE(reset_IBUF),
        .Q(empty_reg_reg_0));
  LUT6 #(
    .INIT(64'hEEECEEECCCCCCCC0)) 
    full_reg_i_1
       (.I0(full_reg_i_2_n_0),
        .I1(tx_full_OBUF),
        .I2(\r_ptr_reg_reg[1]_1 ),
        .I3(\r_ptr_reg_reg[1]_0 ),
        .I4(empty_reg_reg_0),
        .I5(wr_uart_IBUF),
        .O(full_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0690)) 
    full_reg_i_2
       (.I0(r_ptr_reg),
        .I1(w_ptr_reg),
        .I2(\r_ptr_reg_reg[0]_0 ),
        .I3(\w_ptr_reg_reg[0]_0 ),
        .O(full_reg_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    full_reg_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(full_reg_i_1_n_0),
        .Q(tx_full_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFF5D000000A2)) 
    \r_ptr_reg[1]_i_1 
       (.I0(\r_ptr_reg_reg[0]_0 ),
        .I1(empty_reg_reg_0),
        .I2(wr_uart_IBUF),
        .I3(\r_ptr_reg_reg[1]_0 ),
        .I4(\r_ptr_reg_reg[1]_1 ),
        .I5(r_ptr_reg),
        .O(\r_ptr_reg[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\r_ptr_reg_reg[0]_1 ),
        .Q(\r_ptr_reg_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \r_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\r_ptr_reg[1]_i_1_n_0 ),
        .Q(r_ptr_reg));
  LUT6 #(
    .INIT(64'hFD55FFFF02AA0000)) 
    \w_ptr_reg[1]_i_1 
       (.I0(\w_ptr_reg_reg[0]_0 ),
        .I1(\r_ptr_reg_reg[1]_1 ),
        .I2(\r_ptr_reg_reg[1]_0 ),
        .I3(tx_full_OBUF),
        .I4(wr_uart_IBUF),
        .I5(w_ptr_reg),
        .O(\w_ptr_reg[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\w_ptr_reg_reg[0]_2 ),
        .Q(\w_ptr_reg_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \w_ptr_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\w_ptr_reg[1]_i_1_n_0 ),
        .Q(w_ptr_reg));
endmodule

(* DVSR = "163" *) (* DVSR_BIT = "9" *) (* ECO_CHECKSUM = "1a37c4ac" *) 
(* FIFO_W = "2" *) (* dbit = "8" *) (* sb_tick = "16" *) 
(* NotValidForBitStream *)
module UART
   (clk,
    reset,
    rd_uart,
    wr_uart,
    rx,
    w_data,
    tx_full,
    rx_empty,
    tx,
    r_data);
  input clk;
  input reset;
  input rd_uart;
  input wr_uart;
  input rx;
  input [7:0]w_data;
  output tx_full;
  output rx_empty;
  output tx;
  output [7:0]r_data;

  wire [7:7]b_next;
  wire [8:8]\baud_gen_unit/r_next__9 ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:7]data0;
  wire fifo_tx_unit_n_9;
  wire [7:0]r_data;
  wire [6:0]r_data__0;
  wire [0:0]r_ptr_reg;
  wire \r_ptr_reg[1]_i_37_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire rx_empty;
  wire [1:1]state_reg;
  wire tx;
  wire tx_OBUF;
  wire tx_full;
  wire tx_full_OBUF;
  wire uart_tx_unit_n_1;
  wire uart_tx_unit_n_10;
  wire uart_tx_unit_n_11;
  wire uart_tx_unit_n_12;
  wire uart_tx_unit_n_13;
  wire uart_tx_unit_n_14;
  wire uart_tx_unit_n_15;
  wire uart_tx_unit_n_16;
  wire uart_tx_unit_n_3;
  wire uart_tx_unit_n_4;
  wire uart_tx_unit_n_5;
  wire uart_tx_unit_n_6;
  wire uart_tx_unit_n_7;
  wire uart_tx_unit_n_8;
  wire uart_tx_unit_n_9;
  wire [7:0]w_data;
  wire [7:0]w_data_IBUF;
  wire [0:0]w_ptr_reg;
  wire wr_uart;
  wire wr_uart_IBUF;

initial begin
 $sdf_annotate("test_tb_time_impl.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FIFO_tx fifo_tx_unit
       (.D(b_next),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .empty_reg_reg_0(fifo_tx_unit_n_9),
        .\r_ptr_reg_reg[0]_0 (r_ptr_reg),
        .\r_ptr_reg_reg[0]_1 (uart_tx_unit_n_1),
        .\r_ptr_reg_reg[1]_0 (uart_tx_unit_n_3),
        .\r_ptr_reg_reg[1]_1 (uart_tx_unit_n_16),
        .reset_IBUF(reset_IBUF),
        .state_reg(state_reg),
        .tx_full_OBUF(tx_full_OBUF),
        .w_data_IBUF(w_data_IBUF),
        .\w_ptr_reg_reg[0]_0 (w_ptr_reg),
        .\w_ptr_reg_reg[0]_1 (r_data__0),
        .\w_ptr_reg_reg[0]_2 (uart_tx_unit_n_4),
        .wr_uart_IBUF(wr_uart_IBUF));
  OBUFT \r_data_OBUF[0]_inst 
       (.I(1'b0),
        .O(r_data[0]),
        .T(1'b1));
  OBUFT \r_data_OBUF[1]_inst 
       (.I(1'b0),
        .O(r_data[1]),
        .T(1'b1));
  OBUFT \r_data_OBUF[2]_inst 
       (.I(1'b0),
        .O(r_data[2]),
        .T(1'b1));
  OBUFT \r_data_OBUF[3]_inst 
       (.I(1'b0),
        .O(r_data[3]),
        .T(1'b1));
  OBUFT \r_data_OBUF[4]_inst 
       (.I(1'b0),
        .O(r_data[4]),
        .T(1'b1));
  OBUFT \r_data_OBUF[5]_inst 
       (.I(1'b0),
        .O(r_data[5]),
        .T(1'b1));
  OBUFT \r_data_OBUF[6]_inst 
       (.I(1'b0),
        .O(r_data[6]),
        .T(1'b1));
  OBUFT \r_data_OBUF[7]_inst 
       (.I(1'b0),
        .O(r_data[7]),
        .T(1'b1));
  LUT3 #(
    .INIT(8'hAB)) 
    \r_ptr_reg[1]_i_36 
       (.I0(uart_tx_unit_n_5),
        .I1(uart_tx_unit_n_12),
        .I2(uart_tx_unit_n_6),
        .O(\baud_gen_unit/r_next__9 ));
  LUT5 #(
    .INIT(32'hAAAAABAA)) 
    \r_ptr_reg[1]_i_37 
       (.I0(uart_tx_unit_n_8),
        .I1(uart_tx_unit_n_7),
        .I2(uart_tx_unit_n_15),
        .I3(uart_tx_unit_n_14),
        .I4(uart_tx_unit_n_9),
        .O(\r_ptr_reg[1]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF10000)) 
    \r_ptr_reg[1]_i_38 
       (.I0(uart_tx_unit_n_13),
        .I1(uart_tx_unit_n_14),
        .I2(uart_tx_unit_n_15),
        .I3(uart_tx_unit_n_9),
        .I4(uart_tx_unit_n_11),
        .I5(uart_tx_unit_n_10),
        .O(data0));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF rx_empty_OBUF_inst
       (.I(1'b1),
        .O(rx_empty));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
  OBUF tx_full_OBUF_inst
       (.I(tx_full_OBUF),
        .O(tx_full));
  UART_transmitter uart_tx_unit
       (.CLK(clk_IBUF_BUFG),
        .D(b_next),
        .\FSM_sequential_state_reg_reg[0]_0 (uart_tx_unit_n_16),
        .\FSM_sequential_state_reg_reg[1]_0 (uart_tx_unit_n_1),
        .\FSM_sequential_state_reg_reg[1]_1 (state_reg),
        .\b_reg_reg[6]_0 (r_data__0),
        .full_reg_reg(uart_tx_unit_n_4),
        .r_next__9(\baud_gen_unit/r_next__9 ),
        .\r_ptr_reg[1]_i_14_0 (uart_tx_unit_n_12),
        .\r_ptr_reg[1]_i_23_0 (uart_tx_unit_n_15),
        .\r_ptr_reg[1]_i_24_0 (uart_tx_unit_n_6),
        .\r_ptr_reg[1]_i_24_1 (uart_tx_unit_n_11),
        .\r_ptr_reg[1]_i_24_2 (uart_tx_unit_n_13),
        .\r_ptr_reg[1]_i_24_3 (uart_tx_unit_n_14),
        .\r_ptr_reg[1]_i_33_0 (uart_tx_unit_n_9),
        .\r_ptr_reg[1]_i_33_1 (uart_tx_unit_n_10),
        .\r_ptr_reg[1]_i_36 (data0),
        .\r_ptr_reg[1]_i_36_0 (\r_ptr_reg[1]_i_37_n_0 ),
        .\r_ptr_reg[1]_i_42_0 (uart_tx_unit_n_8),
        .\r_ptr_reg_reg[0] (fifo_tx_unit_n_9),
        .\r_ptr_reg_reg[0]_0 (r_ptr_reg),
        .reset(uart_tx_unit_n_5),
        .reset_0(uart_tx_unit_n_7),
        .reset_IBUF(reset_IBUF),
        .\s_reg_reg[2]_0 (uart_tx_unit_n_3),
        .tx_OBUF(tx_OBUF),
        .tx_full_OBUF(tx_full_OBUF),
        .\w_ptr_reg_reg[0] (w_ptr_reg),
        .wr_uart_IBUF(wr_uart_IBUF));
  IBUF \w_data_IBUF[0]_inst 
       (.I(w_data[0]),
        .O(w_data_IBUF[0]));
  IBUF \w_data_IBUF[1]_inst 
       (.I(w_data[1]),
        .O(w_data_IBUF[1]));
  IBUF \w_data_IBUF[2]_inst 
       (.I(w_data[2]),
        .O(w_data_IBUF[2]));
  IBUF \w_data_IBUF[3]_inst 
       (.I(w_data[3]),
        .O(w_data_IBUF[3]));
  IBUF \w_data_IBUF[4]_inst 
       (.I(w_data[4]),
        .O(w_data_IBUF[4]));
  IBUF \w_data_IBUF[5]_inst 
       (.I(w_data[5]),
        .O(w_data_IBUF[5]));
  IBUF \w_data_IBUF[6]_inst 
       (.I(w_data[6]),
        .O(w_data_IBUF[6]));
  IBUF \w_data_IBUF[7]_inst 
       (.I(w_data[7]),
        .O(w_data_IBUF[7]));
  IBUF wr_uart_IBUF_inst
       (.I(wr_uart),
        .O(wr_uart_IBUF));
endmodule

module UART_transmitter
   (tx_OBUF,
    \FSM_sequential_state_reg_reg[1]_0 ,
    \FSM_sequential_state_reg_reg[1]_1 ,
    \s_reg_reg[2]_0 ,
    full_reg_reg,
    reset,
    \r_ptr_reg[1]_i_24_0 ,
    reset_0,
    \r_ptr_reg[1]_i_42_0 ,
    \r_ptr_reg[1]_i_33_0 ,
    \r_ptr_reg[1]_i_33_1 ,
    \r_ptr_reg[1]_i_24_1 ,
    \r_ptr_reg[1]_i_14_0 ,
    \r_ptr_reg[1]_i_24_2 ,
    \r_ptr_reg[1]_i_24_3 ,
    \r_ptr_reg[1]_i_23_0 ,
    \FSM_sequential_state_reg_reg[0]_0 ,
    CLK,
    reset_IBUF,
    wr_uart_IBUF,
    \r_ptr_reg_reg[0] ,
    \r_ptr_reg_reg[0]_0 ,
    tx_full_OBUF,
    \w_ptr_reg_reg[0] ,
    D,
    \b_reg_reg[6]_0 ,
    r_next__9,
    \r_ptr_reg[1]_i_36 ,
    \r_ptr_reg[1]_i_36_0 );
  output tx_OBUF;
  output \FSM_sequential_state_reg_reg[1]_0 ;
  output [0:0]\FSM_sequential_state_reg_reg[1]_1 ;
  output \s_reg_reg[2]_0 ;
  output full_reg_reg;
  output reset;
  output \r_ptr_reg[1]_i_24_0 ;
  output reset_0;
  output \r_ptr_reg[1]_i_42_0 ;
  output \r_ptr_reg[1]_i_33_0 ;
  output \r_ptr_reg[1]_i_33_1 ;
  output \r_ptr_reg[1]_i_24_1 ;
  output \r_ptr_reg[1]_i_14_0 ;
  output \r_ptr_reg[1]_i_24_2 ;
  output \r_ptr_reg[1]_i_24_3 ;
  output \r_ptr_reg[1]_i_23_0 ;
  output \FSM_sequential_state_reg_reg[0]_0 ;
  input CLK;
  input reset_IBUF;
  input wr_uart_IBUF;
  input \r_ptr_reg_reg[0] ;
  input [0:0]\r_ptr_reg_reg[0]_0 ;
  input tx_full_OBUF;
  input [0:0]\w_ptr_reg_reg[0] ;
  input [0:0]D;
  input [6:0]\b_reg_reg[6]_0 ;
  input [0:0]r_next__9;
  input [0:0]\r_ptr_reg[1]_i_36 ;
  input \r_ptr_reg[1]_i_36_0 ;

  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_2_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_3_n_0 ;
  wire \FSM_sequential_state_reg[1]_i_4_n_0 ;
  wire \FSM_sequential_state_reg_reg[0]_0 ;
  wire \FSM_sequential_state_reg_reg[1]_0 ;
  wire [0:0]\FSM_sequential_state_reg_reg[1]_1 ;
  wire [6:0]b_next;
  wire b_next_0;
  wire [6:0]\b_reg_reg[6]_0 ;
  wire \b_reg_reg_n_0_[0] ;
  wire \b_reg_reg_n_0_[1] ;
  wire \b_reg_reg_n_0_[2] ;
  wire \b_reg_reg_n_0_[3] ;
  wire \b_reg_reg_n_0_[4] ;
  wire \b_reg_reg_n_0_[5] ;
  wire \b_reg_reg_n_0_[6] ;
  wire \b_reg_reg_n_0_[7] ;
  wire [5:0]data0;
  wire full_reg_reg;
  wire [2:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire [0:0]r_next__9;
  wire \r_ptr_reg[1]_i_10_n_0 ;
  wire \r_ptr_reg[1]_i_12_n_0 ;
  wire \r_ptr_reg[1]_i_13_n_0 ;
  wire \r_ptr_reg[1]_i_14_0 ;
  wire \r_ptr_reg[1]_i_14_n_0 ;
  wire \r_ptr_reg[1]_i_16_n_0 ;
  wire \r_ptr_reg[1]_i_17_n_0 ;
  wire \r_ptr_reg[1]_i_18_n_0 ;
  wire \r_ptr_reg[1]_i_19_n_0 ;
  wire \r_ptr_reg[1]_i_23_0 ;
  wire \r_ptr_reg[1]_i_24_0 ;
  wire \r_ptr_reg[1]_i_24_1 ;
  wire \r_ptr_reg[1]_i_24_2 ;
  wire \r_ptr_reg[1]_i_24_3 ;
  wire \r_ptr_reg[1]_i_25_n_0 ;
  wire \r_ptr_reg[1]_i_26_n_0 ;
  wire \r_ptr_reg[1]_i_27_n_0 ;
  wire \r_ptr_reg[1]_i_28_n_0 ;
  wire \r_ptr_reg[1]_i_29_n_0 ;
  wire \r_ptr_reg[1]_i_33_0 ;
  wire \r_ptr_reg[1]_i_33_1 ;
  wire \r_ptr_reg[1]_i_35_n_0 ;
  wire [0:0]\r_ptr_reg[1]_i_36 ;
  wire \r_ptr_reg[1]_i_36_0 ;
  wire \r_ptr_reg[1]_i_39_n_0 ;
  wire \r_ptr_reg[1]_i_41_n_0 ;
  wire \r_ptr_reg[1]_i_42_0 ;
  wire \r_ptr_reg[1]_i_42_n_0 ;
  wire \r_ptr_reg[1]_i_5_n_0 ;
  wire \r_ptr_reg[1]_i_8_n_0 ;
  wire \r_ptr_reg[1]_i_9_n_0 ;
  wire \r_ptr_reg_reg[0] ;
  wire [0:0]\r_ptr_reg_reg[0]_0 ;
  wire reset;
  wire reset_0;
  wire reset_IBUF;
  wire s_next;
  wire [3:0]s_reg;
  wire \s_reg[0]_i_1_n_0 ;
  wire \s_reg[1]_i_1_n_0 ;
  wire \s_reg[2]_i_1_n_0 ;
  wire \s_reg[3]_i_2_n_0 ;
  wire \s_reg_reg[2]_0 ;
  wire [0:0]state_reg;
  wire tx_OBUF;
  wire tx_full_OBUF;
  wire tx_next;
  wire [0:0]\w_ptr_reg_reg[0] ;
  wire wr_uart_IBUF;

  LUT6 #(
    .INIT(64'hFBFFFBFF0400FFFF)) 
    \FSM_sequential_state_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(s_reg[3]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[1]_1 ),
        .I5(state_reg),
        .O(\FSM_sequential_state_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFF0400FFFF0000)) 
    \FSM_sequential_state_reg[1]_i_1 
       (.I0(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I1(s_reg[3]),
        .I2(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I3(\FSM_sequential_state_reg[1]_i_4_n_0 ),
        .I4(\FSM_sequential_state_reg_reg[1]_1 ),
        .I5(state_reg),
        .O(\FSM_sequential_state_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_sequential_state_reg[1]_i_2 
       (.I0(\r_ptr_reg[1]_i_8_n_0 ),
        .I1(\r_ptr_reg[1]_i_24_3 ),
        .I2(\r_ptr_reg[1]_i_24_2 ),
        .I3(\r_ptr_reg[1]_i_5_n_0 ),
        .I4(\r_ptr_reg[1]_i_14_0 ),
        .O(\FSM_sequential_state_reg[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state_reg[1]_i_3 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .O(\FSM_sequential_state_reg[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state_reg[1]_i_4 
       (.I0(state_reg),
        .I1(n_reg[2]),
        .I2(n_reg[0]),
        .I3(n_reg[1]),
        .O(\FSM_sequential_state_reg[1]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[0]_i_1_n_0 ),
        .Q(state_reg));
  (* FSM_ENCODED_STATES = "start:01,data:10,idle:00,stop:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\FSM_sequential_state_reg[1]_i_1_n_0 ),
        .Q(\FSM_sequential_state_reg_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[0]_i_1 
       (.I0(\b_reg_reg_n_0_[1] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [0]),
        .O(b_next[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[1]_i_1 
       (.I0(\b_reg_reg_n_0_[2] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [1]),
        .O(b_next[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[2]_i_1 
       (.I0(\b_reg_reg_n_0_[3] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [2]),
        .O(b_next[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[3]_i_1 
       (.I0(\b_reg_reg_n_0_[4] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [3]),
        .O(b_next[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[4]_i_1 
       (.I0(\b_reg_reg_n_0_[5] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [4]),
        .O(b_next[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[5]_i_1 
       (.I0(\b_reg_reg_n_0_[6] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [5]),
        .O(b_next[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \b_reg[6]_i_1 
       (.I0(\b_reg_reg_n_0_[7] ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg[6]_0 [6]),
        .O(b_next[6]));
  LUT3 #(
    .INIT(8'h07)) 
    \b_reg[7]_i_1 
       (.I0(\s_reg_reg[2]_0 ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(state_reg),
        .O(b_next_0));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[0] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[0]),
        .Q(\b_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[1]),
        .Q(\b_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[2]),
        .Q(\b_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[3]),
        .Q(\b_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[4]),
        .Q(\b_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[5]),
        .Q(\b_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(b_next[6]),
        .Q(\b_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next_0),
        .CLR(reset_IBUF),
        .D(D),
        .Q(\b_reg_reg_n_0_[7] ));
  LUT6 #(
    .INIT(64'hEE00EE00FB44BB44)) 
    \n_reg[0]_i_1 
       (.I0(\s_reg_reg[2]_0 ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .I4(n_reg[2]),
        .I5(state_reg),
        .O(\n_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0F4F0B4F0)) 
    \n_reg[1]_i_1 
       (.I0(\s_reg_reg[2]_0 ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .I4(n_reg[2]),
        .I5(state_reg),
        .O(\n_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE0000FFFF4000)) 
    \n_reg[2]_i_1 
       (.I0(\s_reg_reg[2]_0 ),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(n_reg[1]),
        .I3(n_reg[0]),
        .I4(n_reg[2]),
        .I5(state_reg),
        .O(\n_reg[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  LUT6 #(
    .INIT(64'hF7FFF7F708000808)) 
    \r_ptr_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(state_reg),
        .I2(\s_reg_reg[2]_0 ),
        .I3(wr_uart_IBUF),
        .I4(\r_ptr_reg_reg[0] ),
        .I5(\r_ptr_reg_reg[0]_0 ),
        .O(\FSM_sequential_state_reg_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF777D)) 
    \r_ptr_reg[1]_i_10 
       (.I0(data0[5]),
        .I1(data0[0]),
        .I2(\r_ptr_reg[1]_i_19_n_0 ),
        .I3(\r_ptr_reg[1]_i_18_n_0 ),
        .I4(reset_0),
        .I5(data0[4]),
        .O(\r_ptr_reg[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h0000EEEA)) 
    \r_ptr_reg[1]_i_11 
       (.I0(\r_ptr_reg[1]_i_33_1 ),
        .I1(\r_ptr_reg[1]_i_24_1 ),
        .I2(\r_ptr_reg[1]_i_33_0 ),
        .I3(\r_ptr_reg[1]_i_24_0 ),
        .I4(reset_0),
        .O(\r_ptr_reg[1]_i_24_1 ));
  LUT5 #(
    .INIT(32'h32323233)) 
    \r_ptr_reg[1]_i_12 
       (.I0(\r_ptr_reg[1]_i_8_n_0 ),
        .I1(reset_0),
        .I2(\r_ptr_reg[1]_i_42_0 ),
        .I3(\r_ptr_reg[1]_i_24_0 ),
        .I4(\r_ptr_reg[1]_i_33_0 ),
        .O(\r_ptr_reg[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDFFDFFFDFFF)) 
    \r_ptr_reg[1]_i_13 
       (.I0(data0[5]),
        .I1(\r_ptr_reg[1]_i_42_0 ),
        .I2(reset_0),
        .I3(\r_ptr_reg[1]_i_33_1 ),
        .I4(\r_ptr_reg[1]_i_24_1 ),
        .I5(\r_ptr_reg[1]_i_35_n_0 ),
        .O(\r_ptr_reg[1]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF1)) 
    \r_ptr_reg[1]_i_14 
       (.I0(\r_ptr_reg[1]_i_24_0 ),
        .I1(\r_ptr_reg[1]_i_14_0 ),
        .I2(reset),
        .I3(reset_IBUF),
        .O(\r_ptr_reg[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h4444444444044444)) 
    \r_ptr_reg[1]_i_15 
       (.I0(reset_IBUF),
        .I1(r_next__9),
        .I2(data0[5]),
        .I3(\r_ptr_reg[1]_i_36_0 ),
        .I4(\r_ptr_reg[1]_i_36 ),
        .I5(\r_ptr_reg[1]_i_24_0 ),
        .O(reset));
  LUT6 #(
    .INIT(64'h0101010101000101)) 
    \r_ptr_reg[1]_i_16 
       (.I0(\r_ptr_reg[1]_i_24_0 ),
        .I1(\r_ptr_reg[1]_i_14_n_0 ),
        .I2(\r_ptr_reg[1]_i_13_n_0 ),
        .I3(\r_ptr_reg[1]_i_12_n_0 ),
        .I4(\r_ptr_reg[1]_i_24_1 ),
        .I5(\r_ptr_reg[1]_i_10_n_0 ),
        .O(\r_ptr_reg[1]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \r_ptr_reg[1]_i_17 
       (.I0(\r_ptr_reg[1]_i_10_n_0 ),
        .I1(\r_ptr_reg[1]_i_24_1 ),
        .I2(\r_ptr_reg[1]_i_12_n_0 ),
        .O(\r_ptr_reg[1]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E0)) 
    \r_ptr_reg[1]_i_18 
       (.I0(\r_ptr_reg[1]_i_19_n_0 ),
        .I1(\r_ptr_reg[1]_i_18_n_0 ),
        .I2(data0[0]),
        .I3(reset_0),
        .O(\r_ptr_reg[1]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_ptr_reg[1]_i_19 
       (.I0(data0[0]),
        .I1(\r_ptr_reg[1]_i_18_n_0 ),
        .I2(\r_ptr_reg[1]_i_19_n_0 ),
        .I3(reset_0),
        .O(\r_ptr_reg[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \r_ptr_reg[1]_i_2 
       (.I0(\r_ptr_reg[1]_i_14_0 ),
        .I1(\r_ptr_reg[1]_i_5_n_0 ),
        .I2(\r_ptr_reg[1]_i_24_2 ),
        .I3(\r_ptr_reg[1]_i_24_3 ),
        .I4(\r_ptr_reg[1]_i_8_n_0 ),
        .I5(\r_ptr_reg[1]_i_9_n_0 ),
        .O(\s_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55010000)) 
    \r_ptr_reg[1]_i_20 
       (.I0(reset_0),
        .I1(\r_ptr_reg[1]_i_25_n_0 ),
        .I2(\r_ptr_reg[1]_i_26_n_0 ),
        .I3(\r_ptr_reg[1]_i_27_n_0 ),
        .I4(data0[4]),
        .I5(\r_ptr_reg[1]_i_24_3 ),
        .O(data0[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55540000)) 
    \r_ptr_reg[1]_i_21 
       (.I0(reset_IBUF),
        .I1(reset),
        .I2(\r_ptr_reg[1]_i_16_n_0 ),
        .I3(\r_ptr_reg[1]_i_17_n_0 ),
        .I4(\r_ptr_reg[1]_i_28_n_0 ),
        .I5(\r_ptr_reg[1]_i_29_n_0 ),
        .O(data0[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \r_ptr_reg[1]_i_22 
       (.I0(reset_0),
        .I1(data0[0]),
        .O(data0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF55540000)) 
    \r_ptr_reg[1]_i_23 
       (.I0(reset_IBUF),
        .I1(reset),
        .I2(\r_ptr_reg[1]_i_16_n_0 ),
        .I3(\r_ptr_reg[1]_i_17_n_0 ),
        .I4(\r_ptr_reg[1]_i_25_n_0 ),
        .I5(\r_ptr_reg[1]_i_26_n_0 ),
        .O(data0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \r_ptr_reg[1]_i_24 
       (.I0(reset_IBUF),
        .I1(reset),
        .I2(\r_ptr_reg[1]_i_17_n_0 ),
        .O(reset_0));
  LUT6 #(
    .INIT(64'hF300F300F1F1F100)) 
    \r_ptr_reg[1]_i_25 
       (.I0(\r_ptr_reg[1]_i_28_n_0 ),
        .I1(\r_ptr_reg[1]_i_29_n_0 ),
        .I2(\r_ptr_reg[1]_i_39_n_0 ),
        .I3(\r_ptr_reg[1]_i_26_n_0 ),
        .I4(\r_ptr_reg[1]_i_25_n_0 ),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001010100)) 
    \r_ptr_reg[1]_i_26 
       (.I0(\r_ptr_reg[1]_i_25_n_0 ),
        .I1(\r_ptr_reg[1]_i_26_n_0 ),
        .I2(\r_ptr_reg[1]_i_39_n_0 ),
        .I3(\r_ptr_reg[1]_i_29_n_0 ),
        .I4(\r_ptr_reg[1]_i_28_n_0 ),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFF0FFFEFEFEFF)) 
    \r_ptr_reg[1]_i_27 
       (.I0(data0[0]),
        .I1(\r_ptr_reg[1]_i_18_n_0 ),
        .I2(\r_ptr_reg[1]_i_19_n_0 ),
        .I3(\r_ptr_reg[1]_i_29_n_0 ),
        .I4(\r_ptr_reg[1]_i_28_n_0 ),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hF000F000FEFEFE00)) 
    \r_ptr_reg[1]_i_28 
       (.I0(data0[0]),
        .I1(\r_ptr_reg[1]_i_18_n_0 ),
        .I2(\r_ptr_reg[1]_i_19_n_0 ),
        .I3(\r_ptr_reg[1]_i_29_n_0 ),
        .I4(\r_ptr_reg[1]_i_28_n_0 ),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \r_ptr_reg[1]_i_29 
       (.I0(\r_ptr_reg[1]_i_28_n_0 ),
        .I1(\r_ptr_reg[1]_i_29_n_0 ),
        .I2(\r_ptr_reg[1]_i_19_n_0 ),
        .I3(\r_ptr_reg[1]_i_18_n_0 ),
        .I4(data0[0]),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_ptr_reg[1]_i_3 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .O(\FSM_sequential_state_reg_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFD0)) 
    \r_ptr_reg[1]_i_30 
       (.I0(\r_ptr_reg[1]_i_24_3 ),
        .I1(\r_ptr_reg[1]_i_23_0 ),
        .I2(\r_ptr_reg[1]_i_41_n_0 ),
        .I3(\r_ptr_reg[1]_i_42_n_0 ),
        .O(data0[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \r_ptr_reg[1]_i_31 
       (.I0(\r_ptr_reg[1]_i_33_1 ),
        .I1(reset_0),
        .I2(\r_ptr_reg[1]_i_33_0 ),
        .I3(\r_ptr_reg[1]_i_24_0 ),
        .O(\r_ptr_reg[1]_i_33_1 ));
  LUT6 #(
    .INIT(64'hF0F0F0FFF1FFF1FF)) 
    \r_ptr_reg[1]_i_32 
       (.I0(\r_ptr_reg[1]_i_33_0 ),
        .I1(reset_0),
        .I2(\r_ptr_reg[1]_i_42_0 ),
        .I3(\r_ptr_reg[1]_i_42_n_0 ),
        .I4(\r_ptr_reg[1]_i_41_n_0 ),
        .I5(\r_ptr_reg[1]_i_24_0 ),
        .O(\r_ptr_reg[1]_i_33_0 ));
  LUT5 #(
    .INIT(32'hDFDFDDDF)) 
    \r_ptr_reg[1]_i_33 
       (.I0(\r_ptr_reg[1]_i_24_3 ),
        .I1(\r_ptr_reg[1]_i_27_n_0 ),
        .I2(\r_ptr_reg[1]_i_26_n_0 ),
        .I3(\r_ptr_reg[1]_i_25_n_0 ),
        .I4(reset_0),
        .O(\r_ptr_reg[1]_i_24_0 ));
  LUT5 #(
    .INIT(32'h44004445)) 
    \r_ptr_reg[1]_i_34 
       (.I0(reset_0),
        .I1(\r_ptr_reg[1]_i_42_0 ),
        .I2(\r_ptr_reg[1]_i_33_0 ),
        .I3(\r_ptr_reg[1]_i_24_0 ),
        .I4(\r_ptr_reg[1]_i_42_n_0 ),
        .O(\r_ptr_reg[1]_i_42_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \r_ptr_reg[1]_i_35 
       (.I0(\r_ptr_reg[1]_i_23_0 ),
        .I1(\r_ptr_reg[1]_i_24_3 ),
        .I2(\r_ptr_reg[1]_i_33_0 ),
        .O(\r_ptr_reg[1]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'hAAFE)) 
    \r_ptr_reg[1]_i_39 
       (.I0(\r_ptr_reg[1]_i_19_n_0 ),
        .I1(\r_ptr_reg[1]_i_18_n_0 ),
        .I2(data0[0]),
        .I3(reset_0),
        .O(\r_ptr_reg[1]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFF04)) 
    \r_ptr_reg[1]_i_4 
       (.I0(\r_ptr_reg[1]_i_10_n_0 ),
        .I1(\r_ptr_reg[1]_i_24_1 ),
        .I2(\r_ptr_reg[1]_i_12_n_0 ),
        .I3(\r_ptr_reg[1]_i_13_n_0 ),
        .I4(\r_ptr_reg[1]_i_14_n_0 ),
        .O(\r_ptr_reg[1]_i_14_0 ));
  LUT6 #(
    .INIT(64'hDDDDFFFDFFFFFFFF)) 
    \r_ptr_reg[1]_i_40 
       (.I0(data0[2]),
        .I1(\r_ptr_reg[1]_i_19_n_0 ),
        .I2(\r_ptr_reg[1]_i_18_n_0 ),
        .I3(data0[0]),
        .I4(reset_0),
        .I5(data0[3]),
        .O(\r_ptr_reg[1]_i_23_0 ));
  LUT4 #(
    .INIT(16'h00EA)) 
    \r_ptr_reg[1]_i_41 
       (.I0(\r_ptr_reg[1]_i_42_n_0 ),
        .I1(\r_ptr_reg[1]_i_41_n_0 ),
        .I2(\r_ptr_reg[1]_i_24_0 ),
        .I3(reset_0),
        .O(\r_ptr_reg[1]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \r_ptr_reg[1]_i_42 
       (.I0(\r_ptr_reg[1]_i_42_n_0 ),
        .I1(reset_0),
        .I2(\r_ptr_reg[1]_i_24_0 ),
        .O(\r_ptr_reg[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55540000)) 
    \r_ptr_reg[1]_i_5 
       (.I0(reset_IBUF),
        .I1(reset),
        .I2(\r_ptr_reg[1]_i_16_n_0 ),
        .I3(\r_ptr_reg[1]_i_17_n_0 ),
        .I4(\r_ptr_reg[1]_i_18_n_0 ),
        .I5(\r_ptr_reg[1]_i_19_n_0 ),
        .O(\r_ptr_reg[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \r_ptr_reg[1]_i_6 
       (.I0(data0[4]),
        .I1(data0[2]),
        .I2(\r_ptr_reg[1]_i_5_n_0 ),
        .I3(data0[0]),
        .I4(data0[3]),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_24_2 ));
  LUT5 #(
    .INIT(32'h0000000E)) 
    \r_ptr_reg[1]_i_7 
       (.I0(\r_ptr_reg[1]_i_25_n_0 ),
        .I1(\r_ptr_reg[1]_i_26_n_0 ),
        .I2(\r_ptr_reg[1]_i_27_n_0 ),
        .I3(\r_ptr_reg[1]_i_24_3 ),
        .I4(reset_0),
        .O(\r_ptr_reg[1]_i_24_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \r_ptr_reg[1]_i_8 
       (.I0(data0[0]),
        .I1(\r_ptr_reg[1]_i_28_n_0 ),
        .I2(\r_ptr_reg[1]_i_29_n_0 ),
        .I3(\r_ptr_reg[1]_i_26_n_0 ),
        .I4(\r_ptr_reg[1]_i_25_n_0 ),
        .I5(reset_0),
        .O(\r_ptr_reg[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \r_ptr_reg[1]_i_9 
       (.I0(s_reg[2]),
        .I1(s_reg[0]),
        .I2(s_reg[1]),
        .I3(s_reg[3]),
        .O(\r_ptr_reg[1]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \s_reg[0]_i_1 
       (.I0(\FSM_sequential_state_reg_reg[1]_1 ),
        .I1(state_reg),
        .I2(s_reg[0]),
        .O(\s_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s_reg[1]_i_1 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(s_reg[0]),
        .I3(s_reg[1]),
        .O(\s_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s_reg[2]_i_1 
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(s_reg[1]),
        .I3(s_reg[0]),
        .I4(s_reg[2]),
        .O(\s_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0D0F0FFF)) 
    \s_reg[3]_i_1 
       (.I0(s_reg[3]),
        .I1(\FSM_sequential_state_reg[1]_i_3_n_0 ),
        .I2(\FSM_sequential_state_reg[1]_i_2_n_0 ),
        .I3(state_reg),
        .I4(\FSM_sequential_state_reg_reg[1]_1 ),
        .O(s_next));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \s_reg[3]_i_2 
       (.I0(s_reg[1]),
        .I1(s_reg[0]),
        .I2(s_reg[2]),
        .I3(\FSM_sequential_state_reg_reg[1]_1 ),
        .I4(state_reg),
        .I5(s_reg[3]),
        .O(\s_reg[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[0] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[0]_i_1_n_0 ),
        .Q(s_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[1] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[1]_i_1_n_0 ),
        .Q(s_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[2] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[2]_i_1_n_0 ),
        .Q(s_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \s_reg_reg[3] 
       (.C(CLK),
        .CE(s_next),
        .CLR(reset_IBUF),
        .D(\s_reg[3]_i_2_n_0 ),
        .Q(s_reg[3]));
  LUT3 #(
    .INIT(8'hD9)) 
    tx_reg_i_1
       (.I0(state_reg),
        .I1(\FSM_sequential_state_reg_reg[1]_1 ),
        .I2(\b_reg_reg_n_0_[0] ),
        .O(tx_next));
  FDPE #(
    .INIT(1'b1)) 
    tx_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_next),
        .PRE(reset_IBUF),
        .Q(tx_OBUF));
  LUT6 #(
    .INIT(64'hD5DDDDDD2A222222)) 
    \w_ptr_reg[0]_i_1 
       (.I0(wr_uart_IBUF),
        .I1(tx_full_OBUF),
        .I2(\s_reg_reg[2]_0 ),
        .I3(state_reg),
        .I4(\FSM_sequential_state_reg_reg[1]_1 ),
        .I5(\w_ptr_reg_reg[0] ),
        .O(full_reg_reg));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
