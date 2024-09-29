// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  4 17:42:35 2021
// Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ZLab2021/lab14OLED/SPIRxTx.srcs/sources_1/bd/system/ip/system_xlslice_3_0/system_xlslice_3_0_stub.v
// Design      : system_xlslice_3_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2018.2" *)
module system_xlslice_3_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[3:0],Dout[0:0]" */;
  input [3:0]Din;
  output [0:0]Dout;
endmodule
