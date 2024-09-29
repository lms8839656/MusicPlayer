// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May  4 14:50:51 2021
// Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_myI2SSlave_0_3_sim_netlist.v
// Design      : system_myI2SSlave_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0
   (s00_axis_tready,
    sdata,
    bclk,
    s00_axis_aclk,
    lrclk,
    s00_axis_tdata,
    s00_axis_tvalid);
  output s00_axis_tready;
  output sdata;
  input bclk;
  input s00_axis_aclk;
  input lrclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_tvalid;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire bclk;
  wire bclkdebounced;
  wire bclkdebounced_i_1_n_0;
  wire bclkdelay;
  wire bitcounter;
  wire \bitcounter[0]_i_1_n_0 ;
  wire \bitcounter[1]_i_1_n_0 ;
  wire \bitcounter[2]_i_1_n_0 ;
  wire \bitcounter[3]_i_1_n_0 ;
  wire \bitcounter[4]_i_2_n_0 ;
  wire \bitcounter_reg_n_0_[0] ;
  wire \bitcounter_reg_n_0_[1] ;
  wire \bitcounter_reg_n_0_[2] ;
  wire \bitcounter_reg_n_0_[3] ;
  wire \bitcounter_reg_n_0_[4] ;
  wire [31:0]buffer;
  wire bufvalid_i_1_n_0;
  wire bufvalid_i_2_n_0;
  wire bufvalid_reg_n_0;
  wire [15:1]in5;
  wire lrclk;
  wire lrclkdebounced;
  wire lrclkdebounced9_in;
  wire lrclkdelay;
  wire p_0_in;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tready0;
  wire s00_axis_tready_i_1_n_0;
  wire s00_axis_tvalid;
  wire sdata;
  wire sdata_i_1_n_0;
  wire sdata_i_2_n_0;
  wire sdata_i_3_n_0;
  wire [15:0]shiftreg;
  (* RTL_KEEP = "yes" *) wire [1:0]state__0;

  LUT5 #(
    .INIT(32'h57775444)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(sdata_i_3_n_0),
        .I2(\FSM_sequential_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_i_3_n_0 ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h666F6F6F66606060)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(sdata_i_3_n_0),
        .I3(\FSM_sequential_state[1]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_i_3_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\bitcounter_reg_n_0_[0] ),
        .I1(\bitcounter_reg_n_0_[1] ),
        .I2(\bitcounter_reg_n_0_[2] ),
        .I3(\bitcounter_reg_n_0_[4] ),
        .I4(\bitcounter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(bclkdelay),
        .I1(bclk),
        .I2(bclkdebounced),
        .I3(state__0[0]),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S0:00,S1:01,S2:10,S3:11," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "S0:00,S1:01,S2:10,S3:11," *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    bclkdebounced_i_1
       (.I0(bclkdelay),
        .I1(bclk),
        .I2(bclkdebounced),
        .O(bclkdebounced_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bclkdebounced_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(bclkdebounced_i_1_n_0),
        .Q(bclkdebounced),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bclkdelay_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(bclk),
        .Q(bclkdelay),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \bitcounter[0]_i_1 
       (.I0(state__0[0]),
        .I1(\bitcounter_reg_n_0_[0] ),
        .O(\bitcounter[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \bitcounter[1]_i_1 
       (.I0(\bitcounter_reg_n_0_[1] ),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(state__0[0]),
        .O(\bitcounter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2A80)) 
    \bitcounter[2]_i_1 
       (.I0(state__0[0]),
        .I1(\bitcounter_reg_n_0_[0] ),
        .I2(\bitcounter_reg_n_0_[1] ),
        .I3(\bitcounter_reg_n_0_[2] ),
        .O(\bitcounter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \bitcounter[3]_i_1 
       (.I0(state__0[0]),
        .I1(\bitcounter_reg_n_0_[2] ),
        .I2(\bitcounter_reg_n_0_[1] ),
        .I3(\bitcounter_reg_n_0_[0] ),
        .I4(\bitcounter_reg_n_0_[3] ),
        .O(\bitcounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \bitcounter[4]_i_1 
       (.I0(sdata_i_3_n_0),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(bclkdelay),
        .I3(bclk),
        .I4(bclkdebounced),
        .I5(state__0[0]),
        .O(bitcounter));
  LUT6 #(
    .INIT(64'h7FFF800000000000)) 
    \bitcounter[4]_i_2 
       (.I0(\bitcounter_reg_n_0_[0] ),
        .I1(\bitcounter_reg_n_0_[1] ),
        .I2(\bitcounter_reg_n_0_[2] ),
        .I3(\bitcounter_reg_n_0_[3] ),
        .I4(\bitcounter_reg_n_0_[4] ),
        .I5(state__0[0]),
        .O(\bitcounter[4]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(bitcounter),
        .D(\bitcounter[0]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(bitcounter),
        .D(\bitcounter[1]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(bitcounter),
        .D(\bitcounter[2]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(bitcounter),
        .D(\bitcounter[3]_i_1_n_0 ),
        .Q(\bitcounter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcounter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(bitcounter),
        .D(\bitcounter[4]_i_2_n_0 ),
        .Q(\bitcounter_reg_n_0_[4] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \buffer[31]_i_1 
       (.I0(s00_axis_tvalid),
        .I1(s00_axis_tready),
        .I2(bufvalid_reg_n_0),
        .O(s00_axis_tready0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[0]),
        .Q(buffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[10] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[10]),
        .Q(buffer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[11] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[11]),
        .Q(buffer[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[12] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[12]),
        .Q(buffer[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[13] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[13]),
        .Q(buffer[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[14] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[14]),
        .Q(buffer[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[15] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[15]),
        .Q(buffer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[16] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[16]),
        .Q(buffer[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[17] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[17]),
        .Q(buffer[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[18] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[18]),
        .Q(buffer[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[19] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[19]),
        .Q(buffer[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[1]),
        .Q(buffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[20] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[20]),
        .Q(buffer[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[21] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[21]),
        .Q(buffer[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[22] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[22]),
        .Q(buffer[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[23] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[23]),
        .Q(buffer[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[24] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[24]),
        .Q(buffer[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[25] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[25]),
        .Q(buffer[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[26] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[26]),
        .Q(buffer[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[27] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[27]),
        .Q(buffer[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[28] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[28]),
        .Q(buffer[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[29] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[29]),
        .Q(buffer[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[2]),
        .Q(buffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[30] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[30]),
        .Q(buffer[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[31] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[31]),
        .Q(buffer[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[3]),
        .Q(buffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[4]),
        .Q(buffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[5]),
        .Q(buffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[6]),
        .Q(buffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[7]),
        .Q(buffer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[8]),
        .Q(buffer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \buffer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tready0),
        .D(s00_axis_tdata[9]),
        .Q(buffer[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEA40)) 
    bufvalid_i_1
       (.I0(bufvalid_reg_n_0),
        .I1(s00_axis_tready),
        .I2(s00_axis_tvalid),
        .I3(bufvalid_i_2_n_0),
        .O(bufvalid_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    bufvalid_i_2
       (.I0(lrclkdebounced9_in),
        .I1(bclkdebounced_i_1_n_0),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(bufvalid_reg_n_0),
        .I5(bclkdebounced),
        .O(bufvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bufvalid_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(bufvalid_i_1_n_0),
        .Q(bufvalid_reg_n_0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hE8)) 
    lrclkdebounced_i_1
       (.I0(lrclkdelay),
        .I1(lrclk),
        .I2(lrclkdebounced),
        .O(lrclkdebounced9_in));
  FDRE #(
    .INIT(1'b0)) 
    lrclkdebounced_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(lrclkdebounced9_in),
        .Q(lrclkdebounced),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    lrclkdelay_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(lrclk),
        .Q(lrclkdelay),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hD3)) 
    s00_axis_tready_i_1
       (.I0(s00_axis_tvalid),
        .I1(bufvalid_reg_n_0),
        .I2(s00_axis_tready),
        .O(s00_axis_tready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s00_axis_tready_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(s00_axis_tready_i_1_n_0),
        .Q(s00_axis_tready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    sdata_i_1
       (.I0(state__0[0]),
        .I1(bclkdebounced),
        .I2(bclk),
        .I3(bclkdelay),
        .I4(sdata_i_3_n_0),
        .O(sdata_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sdata_i_2
       (.I0(p_0_in),
        .I1(state__0[0]),
        .O(sdata_i_2_n_0));
  LUT6 #(
    .INIT(64'h00000A0000040000)) 
    sdata_i_3
       (.I0(bclkdebounced),
        .I1(bufvalid_reg_n_0),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(bclkdebounced_i_1_n_0),
        .I5(lrclkdebounced9_in),
        .O(sdata_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sdata_reg
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(sdata_i_2_n_0),
        .Q(sdata),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \shiftreg[0]_i_1 
       (.I0(buffer[16]),
        .I1(state__0[1]),
        .I2(buffer[0]),
        .I3(state__0[0]),
        .O(shiftreg[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[10]_i_1 
       (.I0(in5[10]),
        .I1(state__0[0]),
        .I2(buffer[10]),
        .I3(state__0[1]),
        .I4(buffer[26]),
        .O(shiftreg[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[11]_i_1 
       (.I0(in5[11]),
        .I1(state__0[0]),
        .I2(buffer[11]),
        .I3(state__0[1]),
        .I4(buffer[27]),
        .O(shiftreg[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[12]_i_1 
       (.I0(in5[12]),
        .I1(state__0[0]),
        .I2(buffer[12]),
        .I3(state__0[1]),
        .I4(buffer[28]),
        .O(shiftreg[12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[13]_i_1 
       (.I0(in5[13]),
        .I1(state__0[0]),
        .I2(buffer[13]),
        .I3(state__0[1]),
        .I4(buffer[29]),
        .O(shiftreg[13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[14]_i_1 
       (.I0(in5[14]),
        .I1(state__0[0]),
        .I2(buffer[14]),
        .I3(state__0[1]),
        .I4(buffer[30]),
        .O(shiftreg[14]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[15]_i_1 
       (.I0(in5[15]),
        .I1(state__0[0]),
        .I2(buffer[15]),
        .I3(state__0[1]),
        .I4(buffer[31]),
        .O(shiftreg[15]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[1]_i_1 
       (.I0(in5[1]),
        .I1(state__0[0]),
        .I2(buffer[1]),
        .I3(state__0[1]),
        .I4(buffer[17]),
        .O(shiftreg[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[2]_i_1 
       (.I0(in5[2]),
        .I1(state__0[0]),
        .I2(buffer[2]),
        .I3(state__0[1]),
        .I4(buffer[18]),
        .O(shiftreg[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[3]_i_1 
       (.I0(in5[3]),
        .I1(state__0[0]),
        .I2(buffer[3]),
        .I3(state__0[1]),
        .I4(buffer[19]),
        .O(shiftreg[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[4]_i_1 
       (.I0(in5[4]),
        .I1(state__0[0]),
        .I2(buffer[4]),
        .I3(state__0[1]),
        .I4(buffer[20]),
        .O(shiftreg[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[5]_i_1 
       (.I0(in5[5]),
        .I1(state__0[0]),
        .I2(buffer[5]),
        .I3(state__0[1]),
        .I4(buffer[21]),
        .O(shiftreg[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[6]_i_1 
       (.I0(in5[6]),
        .I1(state__0[0]),
        .I2(buffer[6]),
        .I3(state__0[1]),
        .I4(buffer[22]),
        .O(shiftreg[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[7]_i_1 
       (.I0(in5[7]),
        .I1(state__0[0]),
        .I2(buffer[7]),
        .I3(state__0[1]),
        .I4(buffer[23]),
        .O(shiftreg[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[8]_i_1 
       (.I0(in5[8]),
        .I1(state__0[0]),
        .I2(buffer[8]),
        .I3(state__0[1]),
        .I4(buffer[24]),
        .O(shiftreg[8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \shiftreg[9]_i_1 
       (.I0(in5[9]),
        .I1(state__0[0]),
        .I2(buffer[9]),
        .I3(state__0[1]),
        .I4(buffer[25]),
        .O(shiftreg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[0] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[0]),
        .Q(in5[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[10] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[10]),
        .Q(in5[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[11] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[11]),
        .Q(in5[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[12] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[12]),
        .Q(in5[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[13] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[13]),
        .Q(in5[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[14] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[14]),
        .Q(in5[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[15] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[15]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[1] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[1]),
        .Q(in5[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[2] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[2]),
        .Q(in5[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[3] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[3]),
        .Q(in5[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[4] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[4]),
        .Q(in5[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[5] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[5]),
        .Q(in5[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[6] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[6]),
        .Q(in5[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[7] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[7]),
        .Q(in5[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[8] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[8]),
        .Q(in5[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \shiftreg_reg[9] 
       (.C(s00_axis_aclk),
        .CE(sdata_i_1_n_0),
        .D(shiftreg[9]),
        .Q(in5[10]),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_myI2SSlave_0_3,myI2SSlave_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myI2SSlave_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (bclk,
    lrclk,
    sdata,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn);
  input bclk;
  input lrclk;
  output sdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW" *) input s00_axis_aresetn;

  wire bclk;
  wire lrclk;
  wire s00_axis_aclk;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire sdata;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0 inst
       (.bclk(bclk),
        .lrclk(lrclk),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .sdata(sdata));
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
