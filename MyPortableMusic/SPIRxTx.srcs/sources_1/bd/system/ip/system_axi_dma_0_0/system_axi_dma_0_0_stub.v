// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  4 17:40:35 2021
// Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/ZLab2021/lab14OLED/SPIRxTx.srcs/sources_1/bd/system/ip/system_axi_dma_0_0/system_axi_dma_0_0_stub.v
// Design      : system_axi_dma_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "axi_dma,Vivado 2018.2" *)
module system_axi_dma_0_0(s_axi_lite_aclk, m_axi_sg_aclk, 
  m_axi_mm2s_aclk, axi_resetn, s_axi_lite_awvalid, s_axi_lite_awready, s_axi_lite_awaddr, 
  s_axi_lite_wvalid, s_axi_lite_wready, s_axi_lite_wdata, s_axi_lite_bresp, 
  s_axi_lite_bvalid, s_axi_lite_bready, s_axi_lite_arvalid, s_axi_lite_arready, 
  s_axi_lite_araddr, s_axi_lite_rvalid, s_axi_lite_rready, s_axi_lite_rdata, 
  s_axi_lite_rresp, m_axi_sg_awaddr, m_axi_sg_awlen, m_axi_sg_awsize, m_axi_sg_awburst, 
  m_axi_sg_awprot, m_axi_sg_awcache, m_axi_sg_awvalid, m_axi_sg_awready, m_axi_sg_wdata, 
  m_axi_sg_wstrb, m_axi_sg_wlast, m_axi_sg_wvalid, m_axi_sg_wready, m_axi_sg_bresp, 
  m_axi_sg_bvalid, m_axi_sg_bready, m_axi_sg_araddr, m_axi_sg_arlen, m_axi_sg_arsize, 
  m_axi_sg_arburst, m_axi_sg_arprot, m_axi_sg_arcache, m_axi_sg_arvalid, m_axi_sg_arready, 
  m_axi_sg_rdata, m_axi_sg_rresp, m_axi_sg_rlast, m_axi_sg_rvalid, m_axi_sg_rready, 
  m_axi_mm2s_araddr, m_axi_mm2s_arlen, m_axi_mm2s_arsize, m_axi_mm2s_arburst, 
  m_axi_mm2s_arprot, m_axi_mm2s_arcache, m_axi_mm2s_arvalid, m_axi_mm2s_arready, 
  m_axi_mm2s_rdata, m_axi_mm2s_rresp, m_axi_mm2s_rlast, m_axi_mm2s_rvalid, 
  m_axi_mm2s_rready, mm2s_prmry_reset_out_n, m_axis_mm2s_tdata, m_axis_mm2s_tkeep, 
  m_axis_mm2s_tvalid, m_axis_mm2s_tready, m_axis_mm2s_tlast, mm2s_introut, axi_dma_tstvec)
/* synthesis syn_black_box black_box_pad_pin="s_axi_lite_aclk,m_axi_sg_aclk,m_axi_mm2s_aclk,axi_resetn,s_axi_lite_awvalid,s_axi_lite_awready,s_axi_lite_awaddr[9:0],s_axi_lite_wvalid,s_axi_lite_wready,s_axi_lite_wdata[31:0],s_axi_lite_bresp[1:0],s_axi_lite_bvalid,s_axi_lite_bready,s_axi_lite_arvalid,s_axi_lite_arready,s_axi_lite_araddr[9:0],s_axi_lite_rvalid,s_axi_lite_rready,s_axi_lite_rdata[31:0],s_axi_lite_rresp[1:0],m_axi_sg_awaddr[31:0],m_axi_sg_awlen[7:0],m_axi_sg_awsize[2:0],m_axi_sg_awburst[1:0],m_axi_sg_awprot[2:0],m_axi_sg_awcache[3:0],m_axi_sg_awvalid,m_axi_sg_awready,m_axi_sg_wdata[31:0],m_axi_sg_wstrb[3:0],m_axi_sg_wlast,m_axi_sg_wvalid,m_axi_sg_wready,m_axi_sg_bresp[1:0],m_axi_sg_bvalid,m_axi_sg_bready,m_axi_sg_araddr[31:0],m_axi_sg_arlen[7:0],m_axi_sg_arsize[2:0],m_axi_sg_arburst[1:0],m_axi_sg_arprot[2:0],m_axi_sg_arcache[3:0],m_axi_sg_arvalid,m_axi_sg_arready,m_axi_sg_rdata[31:0],m_axi_sg_rresp[1:0],m_axi_sg_rlast,m_axi_sg_rvalid,m_axi_sg_rready,m_axi_mm2s_araddr[31:0],m_axi_mm2s_arlen[7:0],m_axi_mm2s_arsize[2:0],m_axi_mm2s_arburst[1:0],m_axi_mm2s_arprot[2:0],m_axi_mm2s_arcache[3:0],m_axi_mm2s_arvalid,m_axi_mm2s_arready,m_axi_mm2s_rdata[31:0],m_axi_mm2s_rresp[1:0],m_axi_mm2s_rlast,m_axi_mm2s_rvalid,m_axi_mm2s_rready,mm2s_prmry_reset_out_n,m_axis_mm2s_tdata[31:0],m_axis_mm2s_tkeep[3:0],m_axis_mm2s_tvalid,m_axis_mm2s_tready,m_axis_mm2s_tlast,mm2s_introut,axi_dma_tstvec[31:0]" */;
  input s_axi_lite_aclk;
  input m_axi_sg_aclk;
  input m_axi_mm2s_aclk;
  input axi_resetn;
  input s_axi_lite_awvalid;
  output s_axi_lite_awready;
  input [9:0]s_axi_lite_awaddr;
  input s_axi_lite_wvalid;
  output s_axi_lite_wready;
  input [31:0]s_axi_lite_wdata;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  input s_axi_lite_bready;
  input s_axi_lite_arvalid;
  output s_axi_lite_arready;
  input [9:0]s_axi_lite_araddr;
  output s_axi_lite_rvalid;
  input s_axi_lite_rready;
  output [31:0]s_axi_lite_rdata;
  output [1:0]s_axi_lite_rresp;
  output [31:0]m_axi_sg_awaddr;
  output [7:0]m_axi_sg_awlen;
  output [2:0]m_axi_sg_awsize;
  output [1:0]m_axi_sg_awburst;
  output [2:0]m_axi_sg_awprot;
  output [3:0]m_axi_sg_awcache;
  output m_axi_sg_awvalid;
  input m_axi_sg_awready;
  output [31:0]m_axi_sg_wdata;
  output [3:0]m_axi_sg_wstrb;
  output m_axi_sg_wlast;
  output m_axi_sg_wvalid;
  input m_axi_sg_wready;
  input [1:0]m_axi_sg_bresp;
  input m_axi_sg_bvalid;
  output m_axi_sg_bready;
  output [31:0]m_axi_sg_araddr;
  output [7:0]m_axi_sg_arlen;
  output [2:0]m_axi_sg_arsize;
  output [1:0]m_axi_sg_arburst;
  output [2:0]m_axi_sg_arprot;
  output [3:0]m_axi_sg_arcache;
  output m_axi_sg_arvalid;
  input m_axi_sg_arready;
  input [31:0]m_axi_sg_rdata;
  input [1:0]m_axi_sg_rresp;
  input m_axi_sg_rlast;
  input m_axi_sg_rvalid;
  output m_axi_sg_rready;
  output [31:0]m_axi_mm2s_araddr;
  output [7:0]m_axi_mm2s_arlen;
  output [2:0]m_axi_mm2s_arsize;
  output [1:0]m_axi_mm2s_arburst;
  output [2:0]m_axi_mm2s_arprot;
  output [3:0]m_axi_mm2s_arcache;
  output m_axi_mm2s_arvalid;
  input m_axi_mm2s_arready;
  input [31:0]m_axi_mm2s_rdata;
  input [1:0]m_axi_mm2s_rresp;
  input m_axi_mm2s_rlast;
  input m_axi_mm2s_rvalid;
  output m_axi_mm2s_rready;
  output mm2s_prmry_reset_out_n;
  output [31:0]m_axis_mm2s_tdata;
  output [3:0]m_axis_mm2s_tkeep;
  output m_axis_mm2s_tvalid;
  input m_axis_mm2s_tready;
  output m_axis_mm2s_tlast;
  output mm2s_introut;
  output [31:0]axi_dma_tstvec;
endmodule
