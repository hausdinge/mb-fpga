// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Dec 26 00:17:40 2023
// Host        : DESKTOP-H9C91L2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/hausd/Dateien/Xilinx_proj/bsc_mandelbulb1/bsc_mandelbulb1.gen/sources_1/ip/mult_35_35_core/mult_35_35_core_stub.v
// Design      : mult_35_35_core
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_18,Vivado 2022.2" *)
module mult_35_35_core(CLK, A, B, CE, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[34:0],B[34:0],CE,P[69:0]" */;
  input CLK;
  input [34:0]A;
  input [34:0]B;
  input CE;
  output [69:0]P;
endmodule
