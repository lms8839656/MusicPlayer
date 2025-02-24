-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May  4 17:36:23 2021
-- Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_mySPIRxTx_0_1_sim_netlist.vhdl
-- Design      : system_mySPIRxTx_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0 is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    miso : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tlast : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0 is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter[5]_i_3_n_0\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[5]\ : STD_LOGIC;
  signal buffer0 : STD_LOGIC;
  signal \buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_5_n_0\ : STD_LOGIC;
  signal buffer_full : STD_LOGIC;
  signal buffer_full_i_1_n_0 : STD_LOGIC;
  signal buffer_full_i_2_n_0 : STD_LOGIC;
  signal buffer_last : STD_LOGIC;
  signal buffer_last_i_1_n_0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal m00_axis_tvalid0 : STD_LOGIC;
  signal \^mosi\ : STD_LOGIC;
  signal mosi_i_1_n_0 : STD_LOGIC;
  signal mosi_i_2_n_0 : STD_LOGIC;
  signal mosi_i_3_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_out : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \prescaler_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rxbuffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rxbuffer[7]_i_1_n_0\ : STD_LOGIC;
  signal rxbuffer_0 : STD_LOGIC;
  attribute RTL_KEEP of rxbuffer_0 : signal is "yes";
  signal rxbuffer_full_d : STD_LOGIC;
  signal rxbuffer_full_i_1_n_0 : STD_LOGIC;
  signal rxbuffer_full_reg_n_0 : STD_LOGIC;
  signal state_last_i_1_n_0 : STD_LOGIC;
  signal state_last_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "S2:1000,S3:0100,IDLE:0001,S1:0010";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "S2:1000,S3:0100,IDLE:0001,S1:0010";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "S2:1000,S3:0100,IDLE:0001,S1:0010";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "S2:1000,S3:0100,IDLE:0001,S1:0010";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \buffer[7]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of buffer_last_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of mosi_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \prescaler[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prescaler[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \prescaler[3]_i_1\ : label is "soft_lutpair0";
begin
  mosi <= \^mosi\;
  \out\(0) <= \^out\(0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => buffer_full,
      I1 => state_last_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF40"
    )
        port map (
      I0 => state_last_reg_n_0,
      I1 => buffer_full,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^out\(0),
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rxbuffer_0,
      I1 => \FSM_onehot_state[3]_i_3_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFEFE"
    )
        port map (
      I0 => rxbuffer_0,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => buffer_full,
      I4 => \^out\(0),
      I5 => mosi_i_3_n_0,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => rxbuffer_0,
      I1 => \FSM_onehot_state[3]_i_3_n_0\,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[2]\,
      I1 => \bitcounter_reg_n_0_[3]\,
      I2 => \bitcounter_reg_n_0_[5]\,
      I3 => \bitcounter_reg_n_0_[4]\,
      I4 => \bitcounter_reg_n_0_[1]\,
      I5 => \bitcounter_reg_n_0_[0]\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => axis_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \^out\(0),
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => rxbuffer_0,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \FSM_onehot_state[3]_i_1_n_0\,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \^out\(0),
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[1]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \bitcounter_reg_n_0_[1]\,
      I3 => \bitcounter_reg_n_0_[2]\,
      O => \bitcounter[2]_i_1_n_0\
    );
\bitcounter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      I3 => \bitcounter_reg_n_0_[2]\,
      I4 => \bitcounter_reg_n_0_[3]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \bitcounter_reg_n_0_[3]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter_reg_n_0_[0]\,
      I4 => \bitcounter_reg_n_0_[1]\,
      I5 => \bitcounter_reg_n_0_[4]\,
      O => \bitcounter[4]_i_1_n_0\
    );
\bitcounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555100000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => state_last_reg_n_0,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \^out\(0),
      I4 => buffer_full,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bitcounter[5]_i_1_n_0\
    );
\bitcounter[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => \bitcounter[5]_i_3_n_0\,
      I1 => \bitcounter_reg_n_0_[4]\,
      I2 => \bitcounter_reg_n_0_[5]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \bitcounter[5]_i_2_n_0\
    );
\bitcounter[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[3]\,
      I1 => \bitcounter_reg_n_0_[2]\,
      I2 => \bitcounter_reg_n_0_[0]\,
      I3 => \bitcounter_reg_n_0_[1]\,
      O => \bitcounter[5]_i_3_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[0]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[0]\,
      R => '0'
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[1]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[1]\,
      R => '0'
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[2]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[2]\,
      R => '0'
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[3]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[3]\,
      R => '0'
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[4]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[4]\,
      R => '0'
    );
\bitcounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \bitcounter[5]_i_1_n_0\,
      D => \bitcounter[5]_i_2_n_0\,
      Q => \bitcounter_reg_n_0_[5]\,
      R => '0'
    );
\buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA08"
    )
        port map (
      I0 => s00_axis_tdata(0),
      I1 => rxbuffer_0,
      I2 => \FSM_onehot_state[3]_i_3_n_0\,
      I3 => mosi_i_3_n_0,
      I4 => \buffer[7]_i_3_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => p_1_in(0)
    );
\buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(1),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(1),
      O => p_1_in(1)
    );
\buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(2),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(2),
      O => p_1_in(2)
    );
\buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(3),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(3),
      O => p_1_in(3)
    );
\buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(4),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(4),
      O => p_1_in(4)
    );
\buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(5),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(5),
      O => p_1_in(5)
    );
\buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(6),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(6),
      O => p_1_in(6)
    );
\buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFF0E0F0F0F0E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \buffer[7]_i_3_n_0\,
      I2 => buffer0,
      I3 => mosi_i_3_n_0,
      I4 => rxbuffer_0,
      I5 => \FSM_onehot_state[3]_i_3_n_0\,
      O => \buffer[7]_i_1_n_0\
    );
\buffer[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEAEE40004000"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => rxbuffer_0,
      I2 => data1(7),
      I3 => \FSM_onehot_state[3]_i_3_n_0\,
      I4 => \buffer[7]_i_5_n_0\,
      I5 => s00_axis_tdata(7),
      O => p_1_in(7)
    );
\buffer[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \^out\(0),
      O => \buffer[7]_i_3_n_0\
    );
\buffer[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => buffer_full,
      O => buffer0
    );
\buffer[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \^out\(0),
      I2 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \buffer[7]_i_5_n_0\
    );
buffer_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFBF0000"
    )
        port map (
      I0 => \prescaler_reg__0\(1),
      I1 => \prescaler_reg__0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => buffer_full_i_2_n_0,
      I4 => buffer_full,
      I5 => s00_axis_tvalid,
      O => buffer_full_i_1_n_0
    );
buffer_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \prescaler_reg__0\(2),
      I1 => \prescaler_reg__0\(3),
      O => buffer_full_i_2_n_0
    );
buffer_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => buffer_full_i_1_n_0,
      Q => buffer_full,
      R => '0'
    );
buffer_last_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axis_tlast,
      I1 => s00_axis_tvalid,
      I2 => buffer_full,
      I3 => buffer_last,
      O => buffer_last_i_1_n_0
    );
buffer_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => buffer_last_i_1_n_0,
      Q => buffer_last,
      R => '0'
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => data1(1),
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => data1(2),
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => data1(3),
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => data1(4),
      R => '0'
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => data1(5),
      R => '0'
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => data1(6),
      R => '0'
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => data1(7),
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \buffer[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => p_0_in_1,
      R => '0'
    );
\m00_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \prescaler_reg__0\(0),
      I2 => \prescaler_reg__0\(1),
      I3 => \prescaler_reg__0\(2),
      I4 => \prescaler_reg__0\(3),
      O => p_1_out(7)
    );
\m00_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(0),
      Q => m00_axis_tdata(0),
      R => '0'
    );
\m00_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(1),
      Q => m00_axis_tdata(1),
      R => '0'
    );
\m00_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(2),
      Q => m00_axis_tdata(2),
      R => '0'
    );
\m00_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(3),
      Q => m00_axis_tdata(3),
      R => '0'
    );
\m00_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(4),
      Q => m00_axis_tdata(4),
      R => '0'
    );
\m00_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(5),
      Q => m00_axis_tdata(5),
      R => '0'
    );
\m00_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(6),
      Q => m00_axis_tdata(6),
      R => '0'
    );
\m00_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => p_1_out(7),
      D => rxbuffer(7),
      Q => m00_axis_tdata(7),
      R => '0'
    );
m00_axis_tvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rxbuffer_full_reg_n_0,
      I1 => rxbuffer_full_d,
      O => m00_axis_tvalid0
    );
m00_axis_tvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => m00_axis_tvalid0,
      Q => m00_axis_tvalid,
      R => '0'
    );
mosi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8FF0000A800"
    )
        port map (
      I0 => mosi_i_2_n_0,
      I1 => rxbuffer_0,
      I2 => p_0_in_1,
      I3 => \FSM_onehot_state[1]_i_1_n_0\,
      I4 => mosi_i_3_n_0,
      I5 => \^mosi\,
      O => mosi_i_1_n_0
    );
mosi_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \^out\(0),
      I1 => buffer_full,
      I2 => \FSM_onehot_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => rxbuffer_0,
      O => mosi_i_2_n_0
    );
mosi_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \prescaler_reg__0\(3),
      I1 => \prescaler_reg__0\(2),
      I2 => \prescaler_reg__0\(1),
      I3 => \prescaler_reg__0\(0),
      O => mosi_i_3_n_0
    );
mosi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => mosi_i_1_n_0,
      Q => \^mosi\,
      R => '0'
    );
\prescaler[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \prescaler_reg__0\(0),
      O => p_0_in(0)
    );
\prescaler[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \prescaler_reg__0\(0),
      I1 => \prescaler_reg__0\(1),
      O => p_0_in(1)
    );
\prescaler[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \prescaler_reg__0\(0),
      I1 => \prescaler_reg__0\(1),
      I2 => \prescaler_reg__0\(2),
      O => p_0_in(2)
    );
\prescaler[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \prescaler_reg__0\(3),
      I1 => \prescaler_reg__0\(0),
      I2 => \prescaler_reg__0\(1),
      I3 => \prescaler_reg__0\(2),
      O => p_0_in(3)
    );
\prescaler_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(0),
      Q => \prescaler_reg__0\(0),
      R => '0'
    );
\prescaler_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(1),
      Q => \prescaler_reg__0\(1),
      R => '0'
    );
\prescaler_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(2),
      Q => \prescaler_reg__0\(2),
      R => '0'
    );
\prescaler_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => p_0_in(3),
      Q => \prescaler_reg__0\(3),
      R => '0'
    );
\rxbuffer[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => rxbuffer_0,
      I1 => \prescaler_reg__0\(0),
      I2 => \prescaler_reg__0\(1),
      I3 => \prescaler_reg__0\(2),
      I4 => \prescaler_reg__0\(3),
      O => \rxbuffer[7]_i_1_n_0\
    );
rxbuffer_full_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => rxbuffer_full_reg_n_0,
      Q => rxbuffer_full_d,
      R => '0'
    );
rxbuffer_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEF4444"
    )
        port map (
      I0 => mosi_i_3_n_0,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \^out\(0),
      I3 => rxbuffer_0,
      I4 => rxbuffer_full_reg_n_0,
      O => rxbuffer_full_i_1_n_0
    );
rxbuffer_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => rxbuffer_full_i_1_n_0,
      Q => rxbuffer_full_reg_n_0,
      R => '0'
    );
\rxbuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => miso,
      Q => rxbuffer(0),
      R => '0'
    );
\rxbuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(0),
      Q => rxbuffer(1),
      R => '0'
    );
\rxbuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(1),
      Q => rxbuffer(2),
      R => '0'
    );
\rxbuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(2),
      Q => rxbuffer(3),
      R => '0'
    );
\rxbuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(3),
      Q => rxbuffer(4),
      R => '0'
    );
\rxbuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(4),
      Q => rxbuffer(5),
      R => '0'
    );
\rxbuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(5),
      Q => rxbuffer(6),
      R => '0'
    );
\rxbuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => \rxbuffer[7]_i_1_n_0\,
      D => rxbuffer(6),
      Q => rxbuffer(7),
      R => '0'
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => buffer_full,
      O => s00_axis_tready
    );
sclk_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      O => sclk
    );
state_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000BFBF8880"
    )
        port map (
      I0 => buffer_last,
      I1 => buffer_full,
      I2 => \^out\(0),
      I3 => \FSM_onehot_state_reg_n_0_[2]\,
      I4 => state_last_reg_n_0,
      I5 => mosi_i_3_n_0,
      O => state_last_i_1_n_0
    );
state_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => axis_aclk,
      CE => '1',
      D => state_last_i_1_n_0,
      Q => state_last_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    sclk : out STD_LOGIC;
    mosi : out STD_LOGIC;
    miso : in STD_LOGIC;
    ss : out STD_LOGIC;
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_mySPIRxTx_0_1,mySPIRxTx_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "mySPIRxTx_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK, xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 100000000, PHASE 0.000, XIL_INTERFACENAME axis_aclk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF S00_AXIS:M00_AXIS, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST, xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7 downto 0) <= \^m00_axis_tdata\(7 downto 0);
  m00_axis_tlast <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mySPIRxTx_v1_0
     port map (
      axis_aclk => axis_aclk,
      m00_axis_tdata(7 downto 0) => \^m00_axis_tdata\(7 downto 0),
      m00_axis_tvalid => m00_axis_tvalid,
      miso => miso,
      mosi => mosi,
      \out\(0) => ss,
      s00_axis_tdata(7 downto 0) => s00_axis_tdata(7 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      sclk => sclk
    );
end STRUCTURE;
