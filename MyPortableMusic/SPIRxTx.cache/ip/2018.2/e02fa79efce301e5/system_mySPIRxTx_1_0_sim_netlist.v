// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  4 17:43:15 2021
// Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_mySPIRxTx_1_0_sim_netlist.v
// Design      : system_mySPIRxTx_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0
   (m00_axis_tvalid,
    m00_axis_tdata,
    sclk,
    s00_axis_tready,
    ss,
    mosi,
    axis_aclk,
    miso,
    s00_axis_tvalid,
    s00_axis_tdata,
    s00_axis_tlast);
  output m00_axis_tvalid;
  output [7:0]m00_axis_tdata;
  output sclk;
  output s00_axis_tready;
  output ss;
  output mosi;
  input axis_aclk;
  input miso;
  input s00_axis_tvalid;
  input [7:0]s00_axis_tdata;
  input s00_axis_tlast;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[3]_i_3_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_state_reg_n_0_[3] ;
  wire axis_aclk;
  wire \bitcounter[0]_i_1_n_0 ;
  wire \bitcounter[1]_i_1_n_0 ;
  wire \bitcounter[2]_i_1_n_0 ;
  wire \bitcounter[3]_i_1_n_0 ;
  wire \bitcounter[4]_i_1_n_0 ;
  wire \bitcounter[5]_i_1_n_0 ;
  wire \bitcounter[5]_i_2_n_0 ;
  wire \bitcounter[5]_i_3_n_0 ;
  wire \bitcounter_reg_n_0_[0] ;
  wire \bitcounter_reg_n_0_[1] ;
  wire \bitcounter_reg_n_0_[2] ;
  wire \bitcounter_reg_n_0_[3] ;
  wire \bitcounter_reg_n_0_[4] ;
  wire \bitcounter_reg_n_0_[5] ;
  wire buffer0;
  wire \buffer[7]_i_1_n_0 ;
  wire \buffer[7]_i_4_n_0 ;
  wire buffer_full;
  wire buffer_full_i_1_n_0;
  wire buffer_full_i_2_n_0;
  wire buffer_last;
  wire buffer_last_i_1_n_0;
  wire [7:1]data1;
  wire [7:0]m00_axis_tdata;
  wire m00_axis_tvalid;
  wire m00_axis_tvalid0;
  wire miso;
  wire mosi;
  wire mosi_i_1_n_0;
  wire mosi_i_2_n_0;
  wire mosi_i_3_n_0;
  wire [3:0]p_0_in;
  wire p_0_in_1;
  wire [7:0]p_1_in;
  wire [7:7]p_1_out;
  wire [3:0]prescaler_reg__0;
  wire [7:0]rxbuffer;
  wire \rxbuffer[7]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire rxbuffer_0;
  wire rxbuffer_full_d;
  wire rxbuffer_full_i_1_n_0;
  wire rxbuffer_full_reg_n_0;
  wire [7:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire sclk;
  wire ss;
  wire state_last_i_1_n_0;
  wire state_last_reg_n_0;

  LUT3 #(
    .INIT(8'hD0)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(buffer_full),
        .I1(state_last_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF40)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(state_last_reg_n_0),
        .I1(buffer_full),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(rxbuffer_0),
        .I1(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEFEFE)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(rxbuffer_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(buffer_full),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(mosi_i_3_n_0),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(rxbuffer_0),
        .I1(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \FSM_onehot_state[3]_i_3 
       (.I0(\bitcounter_reg_n_0_[2] ),
        .I1(\bitcounter_reg_n_0_[3] ),
        .I2(\bitcounter_reg_n_0_[5] ),
        .I3(\bitcounter_reg_n_0_[4] ),
        .I4(\bitcounter_reg_n_0_[1] ),
        .I5(\bitcounter_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S2:1000,S3:0100,IDLE:0001,S1:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(axis_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S2:1000,S3:0100,IDLE:0001,S1:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(axis_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(rxbuffer_0),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S2:1000,S3:0100,IDLE:0001,S1:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(axis_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S2:1000,S3:0100,IDLE:0001,S1:0010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(axis_aclk),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \bitcounter[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\bitcounter_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bitcounter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \bitcounter[1]_i_1 
       (.I0(\bitcounter_reg_n_0_[1] ),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bitcounter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \bitcounter[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(\bitcounter_reg_n_0_[1] ),
        .I3(\bitcounter_reg_n_0_[2] ),
        .O(\bitcounter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bitcounter[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\bitcounter_reg_n_0_[1] ),
        .I2(\bitcounter_reg_n_0_[0] ),
        .I3(\bitcounter_reg_n_0_[2] ),
        .I4(\bitcounter_reg_n_0_[3] ),
        .O(\bitcounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \bitcounter[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\bitcounter_reg_n_0_[3] ),
        .I2(\bitcounter_reg_n_0_[2] ),
        .I3(\bitcounter_reg_n_0_[0] ),
        .I4(\bitcounter_reg_n_0_[1] ),
        .I5(\bitcounter_reg_n_0_[4] ),
        .O(\bitcounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555100000)) 
    \bitcounter[5]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(state_last_reg_n_0),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(buffer_full),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bitcounter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7800)) 
    \bitcounter[5]_i_2 
       (.I0(\bitcounter[5]_i_3_n_0 ),
        .I1(\bitcounter_reg_n_0_[4] ),
        .I2(\bitcounter_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\bitcounter[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \bitcounter[5]_i_3 
       (.I0(\bitcounter_reg_n_0_[3] ),
        .I1(\bitcounter_reg_n_0_[2] ),
        .I2(\bitcounter_reg_n_0_[0] ),
        .I3(\bitcounter_reg_n_0_[1] ),
        .O(\bitcounter[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[0] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[0]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[1] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[1]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[2] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[2]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[3] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[3]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[4] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[4]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[5] 
       (.C(axis_aclk),
        .CE(\bitcounter[5]_i_1_n_0 ),
        .D(\bitcounter[5]_i_2_n_0 ),
        .Q(\bitcounter_reg_n_0_[5] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA08)) 
    \buffer[0]_i_1 
       (.I0(s00_axis_tdata[0]),
        .I1(rxbuffer_0),
        .I2(\FSM_onehot_state[3]_i_3_n_0 ),
        .I3(mosi_i_3_n_0),
        .I4(sclk),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[1]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[1]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[1]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[2]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[2]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[2]),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[3]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[3]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[3]),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[4]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[4]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[4]),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[5]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[5]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[5]),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[6]_i_1 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[6]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[6]),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hF0FFF0E0F0F0F0E0)) 
    \buffer[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(sclk),
        .I2(buffer0),
        .I3(mosi_i_3_n_0),
        .I4(rxbuffer_0),
        .I5(\FSM_onehot_state[3]_i_3_n_0 ),
        .O(\buffer[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEAEE40004000)) 
    \buffer[7]_i_2 
       (.I0(mosi_i_3_n_0),
        .I1(rxbuffer_0),
        .I2(data1[7]),
        .I3(\FSM_onehot_state[3]_i_3_n_0 ),
        .I4(\buffer[7]_i_4_n_0 ),
        .I5(s00_axis_tdata[7]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \buffer[7]_i_3 
       (.I0(s00_axis_tvalid),
        .I1(buffer_full),
        .O(buffer0));
  LUT3 #(
    .INIT(8'hFE)) 
    \buffer[7]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\buffer[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFBF0000)) 
    buffer_full_i_1
       (.I0(prescaler_reg__0[1]),
        .I1(prescaler_reg__0[0]),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(buffer_full_i_2_n_0),
        .I4(buffer_full),
        .I5(s00_axis_tvalid),
        .O(buffer_full_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    buffer_full_i_2
       (.I0(prescaler_reg__0[2]),
        .I1(prescaler_reg__0[3]),
        .O(buffer_full_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    buffer_full_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(buffer_full_i_1_n_0),
        .Q(buffer_full),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    buffer_last_i_1
       (.I0(s00_axis_tlast),
        .I1(s00_axis_tvalid),
        .I2(buffer_full),
        .I3(buffer_last),
        .O(buffer_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    buffer_last_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(buffer_last_i_1_n_0),
        .Q(buffer_last),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(data1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(data1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(data1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(data1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(data1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(data1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(data1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(axis_aclk),
        .CE(\buffer[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(p_0_in_1),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \m00_axis_tdata[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(prescaler_reg__0[0]),
        .I2(prescaler_reg__0[1]),
        .I3(prescaler_reg__0[2]),
        .I4(prescaler_reg__0[3]),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[0]),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[1]),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[2]),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[3]),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[4]),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[5]),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[6]),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \m00_axis_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(p_1_out),
        .D(rxbuffer[7]),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    m00_axis_tvalid_i_1
       (.I0(rxbuffer_full_reg_n_0),
        .I1(rxbuffer_full_d),
        .O(m00_axis_tvalid0));
  FDRE #(
    .INIT(1'b0)) 
    m00_axis_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(m00_axis_tvalid0),
        .Q(m00_axis_tvalid),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFA8FF0000A800)) 
    mosi_i_1
       (.I0(mosi_i_2_n_0),
        .I1(rxbuffer_0),
        .I2(p_0_in_1),
        .I3(\FSM_onehot_state[1]_i_1_n_0 ),
        .I4(mosi_i_3_n_0),
        .I5(mosi),
        .O(mosi_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    mosi_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(buffer_full),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .I4(rxbuffer_0),
        .O(mosi_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    mosi_i_3
       (.I0(prescaler_reg__0[3]),
        .I1(prescaler_reg__0[2]),
        .I2(prescaler_reg__0[1]),
        .I3(prescaler_reg__0[0]),
        .O(mosi_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mosi_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(mosi_i_1_n_0),
        .Q(mosi),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \prescaler[0]_i_1 
       (.I0(prescaler_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \prescaler[1]_i_1 
       (.I0(prescaler_reg__0[0]),
        .I1(prescaler_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \prescaler[2]_i_1 
       (.I0(prescaler_reg__0[0]),
        .I1(prescaler_reg__0[1]),
        .I2(prescaler_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \prescaler[3]_i_1 
       (.I0(prescaler_reg__0[3]),
        .I1(prescaler_reg__0[0]),
        .I2(prescaler_reg__0[1]),
        .I3(prescaler_reg__0[2]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(prescaler_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(prescaler_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(prescaler_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \prescaler_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(prescaler_reg__0[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \rxbuffer[7]_i_1 
       (.I0(rxbuffer_0),
        .I1(prescaler_reg__0[0]),
        .I2(prescaler_reg__0[1]),
        .I3(prescaler_reg__0[2]),
        .I4(prescaler_reg__0[3]),
        .O(\rxbuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    rxbuffer_full_d_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(rxbuffer_full_reg_n_0),
        .Q(rxbuffer_full_d),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFAFB5050)) 
    rxbuffer_full_i_1
       (.I0(mosi_i_3_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(rxbuffer_0),
        .I4(rxbuffer_full_reg_n_0),
        .O(rxbuffer_full_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rxbuffer_full_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(rxbuffer_full_i_1_n_0),
        .Q(rxbuffer_full_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[0] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(miso),
        .Q(rxbuffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[1] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[0]),
        .Q(rxbuffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[2] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[1]),
        .Q(rxbuffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[3] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[2]),
        .Q(rxbuffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[4] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[3]),
        .Q(rxbuffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[5] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[4]),
        .Q(rxbuffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[6] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[5]),
        .Q(rxbuffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rxbuffer_reg[7] 
       (.C(axis_aclk),
        .CE(\rxbuffer[7]_i_1_n_0 ),
        .D(rxbuffer[6]),
        .Q(rxbuffer[7]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    s00_axis_tready_INST_0
       (.I0(buffer_full),
        .O(s00_axis_tready));
  LUT2 #(
    .INIT(4'hE)) 
    sclk_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .O(sclk));
  LUT1 #(
    .INIT(2'h1)) 
    ss_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .O(ss));
  LUT6 #(
    .INIT(64'hFFFF0000BFBF8880)) 
    state_last_i_1
       (.I0(buffer_last),
        .I1(buffer_full),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(state_last_reg_n_0),
        .I5(mosi_i_3_n_0),
        .O(state_last_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    state_last_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(state_last_i_1_n_0),
        .Q(state_last_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_mySPIRxTx_1_0,mySPIRxTx_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mySPIRxTx_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (sclk,
    mosi,
    miso,
    ss,
    axis_aclk,
    axis_aresetn,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tready,
    s00_axis_tready);
  output sclk;
  output mosi;
  input miso;
  output ss;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST, xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output s00_axis_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire axis_aclk;
  wire [7:0]\^m00_axis_tdata ;
  wire m00_axis_tvalid;
  wire miso;
  wire mosi;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire sclk;
  wire ss;

  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7:0] = \^m00_axis_tdata [7:0];
  assign m00_axis_tlast = \<const1> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0 inst
       (.axis_aclk(axis_aclk),
        .m00_axis_tdata(\^m00_axis_tdata ),
        .m00_axis_tvalid(m00_axis_tvalid),
        .miso(miso),
        .mosi(mosi),
        .s00_axis_tdata(s00_axis_tdata[7:0]),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .sclk(sclk),
        .ss(ss));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
