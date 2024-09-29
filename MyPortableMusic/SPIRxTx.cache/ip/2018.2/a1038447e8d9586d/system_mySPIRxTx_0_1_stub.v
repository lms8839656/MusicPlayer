// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  4 17:36:23 2021
// Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_mySPIRxTx_0_1_stub.v
// Design      : system_mySPIRxTx_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mySPIRxTx_v1_0,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sclk, mosi, miso, ss, axis_aclk, axis_aresetn, 
  s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, s00_axis_tvalid, m00_axis_tvalid, 
  m00_axis_tdata, m00_axis_tstrb, m00_axis_tlast, m00_axis_tready, s00_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="sclk,mosi,miso,ss,axis_aclk,axis_aresetn,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,m00_axis_tvalid,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tready,s00_axis_tready" */;
  output sclk;
  output mosi;
  input miso;
  output ss;
  input axis_aclk;
  input axis_aresetn;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  input m00_axis_tready;
  output s00_axis_tready;
endmodule
