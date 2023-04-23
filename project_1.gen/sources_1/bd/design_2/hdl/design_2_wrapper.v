//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Apr  9 16:50:29 2023
//Host        : LAPTOP-8SO8FUEU running 64-bit major release  (build 9200)
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (clk_50MHz,
    clk_50MHz_1,
    clk_50MHz_2,
    reset_rtl_0,
    reset_rtl_0_0,
    reset_rtl_0_0_1);
  input clk_50MHz;
  input clk_50MHz_1;
  input clk_50MHz_2;
  input reset_rtl_0;
  input reset_rtl_0_0;
  input reset_rtl_0_0_1;

  wire clk_50MHz;
  wire clk_50MHz_1;
  wire clk_50MHz_2;
  wire reset_rtl_0;
  wire reset_rtl_0_0;
  wire reset_rtl_0_0_1;

  design_2 design_2_i
       (.clk_50MHz(clk_50MHz),
        .clk_50MHz_1(clk_50MHz_1),
        .clk_50MHz_2(clk_50MHz_2),
        .reset_rtl_0(reset_rtl_0),
        .reset_rtl_0_0(reset_rtl_0_0),
        .reset_rtl_0_0_1(reset_rtl_0_0_1));
endmodule
