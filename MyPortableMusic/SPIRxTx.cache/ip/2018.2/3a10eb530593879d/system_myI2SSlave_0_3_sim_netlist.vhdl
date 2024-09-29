-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue May  4 17:41:17 2021
-- Host        : DESKTOP-3HJGOBG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_myI2SSlave_0_3_sim_netlist.vhdl
-- Design      : system_myI2SSlave_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0 is
  port (
    s00_axis_tready : out STD_LOGIC;
    sdata : out STD_LOGIC;
    bclk : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    lrclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0 is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal bclkdebounced : STD_LOGIC;
  signal bclkdebounced_i_1_n_0 : STD_LOGIC;
  signal bclkdelay : STD_LOGIC;
  signal bitcounter : STD_LOGIC;
  signal \bitcounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \bitcounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \bitcounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \buffer\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bufvalid_i_1_n_0 : STD_LOGIC;
  signal bufvalid_i_2_n_0 : STD_LOGIC;
  signal bufvalid_reg_n_0 : STD_LOGIC;
  signal in5 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal lrclkdebounced : STD_LOGIC;
  signal lrclkdebounced9_in : STD_LOGIC;
  signal lrclkdelay : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^s00_axis_tready\ : STD_LOGIC;
  signal s00_axis_tready0 : STD_LOGIC;
  signal s00_axis_tready_i_1_n_0 : STD_LOGIC;
  signal sdata_i_1_n_0 : STD_LOGIC;
  signal sdata_i_2_n_0 : STD_LOGIC;
  signal sdata_i_3_n_0 : STD_LOGIC;
  signal shiftreg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "S0:00,S1:01,S2:10,S3:11,";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "S0:00,S1:01,S2:10,S3:11,";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of bufvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s00_axis_tready_i_1 : label is "soft_lutpair0";
begin
  s00_axis_tready <= \^s00_axis_tready\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57775444"
    )
        port map (
      I0 => \state__0\(0),
      I1 => sdata_i_3_n_0,
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \FSM_sequential_state[1]_i_3_n_0\,
      I4 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666F6F6F66606060"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => sdata_i_3_n_0,
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter_reg_n_0_[4]\,
      I4 => \bitcounter_reg_n_0_[3]\,
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => bclkdelay,
      I1 => bclk,
      I2 => bclkdebounced,
      I3 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
bclkdebounced_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => bclkdelay,
      I1 => bclk,
      I2 => bclkdebounced,
      O => bclkdebounced_i_1_n_0
    );
bclkdebounced_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => bclkdebounced_i_1_n_0,
      Q => bclkdebounced,
      R => '0'
    );
bclkdelay_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => bclk,
      Q => bclkdelay,
      R => '0'
    );
\bitcounter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \bitcounter_reg_n_0_[0]\,
      O => \bitcounter[0]_i_1_n_0\
    );
\bitcounter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[1]\,
      I1 => \bitcounter_reg_n_0_[0]\,
      I2 => \state__0\(0),
      O => \bitcounter[1]_i_1_n_0\
    );
\bitcounter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \state__0\(0),
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
      I0 => \state__0\(0),
      I1 => \bitcounter_reg_n_0_[2]\,
      I2 => \bitcounter_reg_n_0_[1]\,
      I3 => \bitcounter_reg_n_0_[0]\,
      I4 => \bitcounter_reg_n_0_[3]\,
      O => \bitcounter[3]_i_1_n_0\
    );
\bitcounter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABAAAAAAAAAAAA"
    )
        port map (
      I0 => sdata_i_3_n_0,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => bclkdelay,
      I3 => bclk,
      I4 => bclkdebounced,
      I5 => \state__0\(0),
      O => bitcounter
    );
\bitcounter[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => \bitcounter_reg_n_0_[0]\,
      I1 => \bitcounter_reg_n_0_[1]\,
      I2 => \bitcounter_reg_n_0_[2]\,
      I3 => \bitcounter_reg_n_0_[3]\,
      I4 => \bitcounter_reg_n_0_[4]\,
      I5 => \state__0\(0),
      O => \bitcounter[4]_i_2_n_0\
    );
\bitcounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => bitcounter,
      D => \bitcounter[0]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[0]\,
      R => '0'
    );
\bitcounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => bitcounter,
      D => \bitcounter[1]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[1]\,
      R => '0'
    );
\bitcounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => bitcounter,
      D => \bitcounter[2]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[2]\,
      R => '0'
    );
\bitcounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => bitcounter,
      D => \bitcounter[3]_i_1_n_0\,
      Q => \bitcounter_reg_n_0_[3]\,
      R => '0'
    );
\bitcounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => bitcounter,
      D => \bitcounter[4]_i_2_n_0\,
      Q => \bitcounter_reg_n_0_[4]\,
      R => '0'
    );
\buffer[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^s00_axis_tready\,
      I2 => bufvalid_reg_n_0,
      O => s00_axis_tready0
    );
\buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(0),
      Q => \buffer\(0),
      R => '0'
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(10),
      Q => \buffer\(10),
      R => '0'
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(11),
      Q => \buffer\(11),
      R => '0'
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(12),
      Q => \buffer\(12),
      R => '0'
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(13),
      Q => \buffer\(13),
      R => '0'
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(14),
      Q => \buffer\(14),
      R => '0'
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(15),
      Q => \buffer\(15),
      R => '0'
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(16),
      Q => \buffer\(16),
      R => '0'
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(17),
      Q => \buffer\(17),
      R => '0'
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(18),
      Q => \buffer\(18),
      R => '0'
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(19),
      Q => \buffer\(19),
      R => '0'
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(1),
      Q => \buffer\(1),
      R => '0'
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(20),
      Q => \buffer\(20),
      R => '0'
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(21),
      Q => \buffer\(21),
      R => '0'
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(22),
      Q => \buffer\(22),
      R => '0'
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(23),
      Q => \buffer\(23),
      R => '0'
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(24),
      Q => \buffer\(24),
      R => '0'
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(25),
      Q => \buffer\(25),
      R => '0'
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(26),
      Q => \buffer\(26),
      R => '0'
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(27),
      Q => \buffer\(27),
      R => '0'
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(28),
      Q => \buffer\(28),
      R => '0'
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(29),
      Q => \buffer\(29),
      R => '0'
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(2),
      Q => \buffer\(2),
      R => '0'
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(30),
      Q => \buffer\(30),
      R => '0'
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(31),
      Q => \buffer\(31),
      R => '0'
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(3),
      Q => \buffer\(3),
      R => '0'
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(4),
      Q => \buffer\(4),
      R => '0'
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(5),
      Q => \buffer\(5),
      R => '0'
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(6),
      Q => \buffer\(6),
      R => '0'
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(7),
      Q => \buffer\(7),
      R => '0'
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(8),
      Q => \buffer\(8),
      R => '0'
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => s00_axis_tready0,
      D => s00_axis_tdata(9),
      Q => \buffer\(9),
      R => '0'
    );
bufvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA40"
    )
        port map (
      I0 => bufvalid_reg_n_0,
      I1 => \^s00_axis_tready\,
      I2 => s00_axis_tvalid,
      I3 => bufvalid_i_2_n_0,
      O => bufvalid_i_1_n_0
    );
bufvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => lrclkdebounced9_in,
      I1 => bclkdebounced_i_1_n_0,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      I4 => bufvalid_reg_n_0,
      I5 => bclkdebounced,
      O => bufvalid_i_2_n_0
    );
bufvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => bufvalid_i_1_n_0,
      Q => bufvalid_reg_n_0,
      R => '0'
    );
lrclkdebounced_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => lrclkdelay,
      I1 => lrclk,
      I2 => lrclkdebounced,
      O => lrclkdebounced9_in
    );
lrclkdebounced_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => lrclkdebounced9_in,
      Q => lrclkdebounced,
      R => '0'
    );
lrclkdelay_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => lrclk,
      Q => lrclkdelay,
      R => '0'
    );
s00_axis_tready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D3"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => bufvalid_reg_n_0,
      I2 => \^s00_axis_tready\,
      O => s00_axis_tready_i_1_n_0
    );
s00_axis_tready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => s00_axis_tready_i_1_n_0,
      Q => \^s00_axis_tready\,
      R => '0'
    );
sdata_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0008"
    )
        port map (
      I0 => \state__0\(0),
      I1 => bclkdebounced,
      I2 => bclk,
      I3 => bclkdelay,
      I4 => sdata_i_3_n_0,
      O => sdata_i_1_n_0
    );
sdata_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in,
      I1 => \state__0\(0),
      O => sdata_i_2_n_0
    );
sdata_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0000040000"
    )
        port map (
      I0 => bclkdebounced,
      I1 => bufvalid_reg_n_0,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => bclkdebounced_i_1_n_0,
      I5 => lrclkdebounced9_in,
      O => sdata_i_3_n_0
    );
sdata_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => sdata_i_2_n_0,
      Q => sdata,
      R => '0'
    );
\shiftreg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \buffer\(16),
      I1 => \state__0\(1),
      I2 => \buffer\(0),
      I3 => \state__0\(0),
      O => shiftreg(0)
    );
\shiftreg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(10),
      I1 => \state__0\(0),
      I2 => \buffer\(10),
      I3 => \state__0\(1),
      I4 => \buffer\(26),
      O => shiftreg(10)
    );
\shiftreg[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(11),
      I1 => \state__0\(0),
      I2 => \buffer\(11),
      I3 => \state__0\(1),
      I4 => \buffer\(27),
      O => shiftreg(11)
    );
\shiftreg[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(12),
      I1 => \state__0\(0),
      I2 => \buffer\(12),
      I3 => \state__0\(1),
      I4 => \buffer\(28),
      O => shiftreg(12)
    );
\shiftreg[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(13),
      I1 => \state__0\(0),
      I2 => \buffer\(13),
      I3 => \state__0\(1),
      I4 => \buffer\(29),
      O => shiftreg(13)
    );
\shiftreg[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(14),
      I1 => \state__0\(0),
      I2 => \buffer\(14),
      I3 => \state__0\(1),
      I4 => \buffer\(30),
      O => shiftreg(14)
    );
\shiftreg[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(15),
      I1 => \state__0\(0),
      I2 => \buffer\(15),
      I3 => \state__0\(1),
      I4 => \buffer\(31),
      O => shiftreg(15)
    );
\shiftreg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(1),
      I1 => \state__0\(0),
      I2 => \buffer\(1),
      I3 => \state__0\(1),
      I4 => \buffer\(17),
      O => shiftreg(1)
    );
\shiftreg[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(2),
      I1 => \state__0\(0),
      I2 => \buffer\(2),
      I3 => \state__0\(1),
      I4 => \buffer\(18),
      O => shiftreg(2)
    );
\shiftreg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(3),
      I1 => \state__0\(0),
      I2 => \buffer\(3),
      I3 => \state__0\(1),
      I4 => \buffer\(19),
      O => shiftreg(3)
    );
\shiftreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(4),
      I1 => \state__0\(0),
      I2 => \buffer\(4),
      I3 => \state__0\(1),
      I4 => \buffer\(20),
      O => shiftreg(4)
    );
\shiftreg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(5),
      I1 => \state__0\(0),
      I2 => \buffer\(5),
      I3 => \state__0\(1),
      I4 => \buffer\(21),
      O => shiftreg(5)
    );
\shiftreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(6),
      I1 => \state__0\(0),
      I2 => \buffer\(6),
      I3 => \state__0\(1),
      I4 => \buffer\(22),
      O => shiftreg(6)
    );
\shiftreg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(7),
      I1 => \state__0\(0),
      I2 => \buffer\(7),
      I3 => \state__0\(1),
      I4 => \buffer\(23),
      O => shiftreg(7)
    );
\shiftreg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(8),
      I1 => \state__0\(0),
      I2 => \buffer\(8),
      I3 => \state__0\(1),
      I4 => \buffer\(24),
      O => shiftreg(8)
    );
\shiftreg[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => in5(9),
      I1 => \state__0\(0),
      I2 => \buffer\(9),
      I3 => \state__0\(1),
      I4 => \buffer\(25),
      O => shiftreg(9)
    );
\shiftreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(0),
      Q => in5(1),
      R => '0'
    );
\shiftreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(10),
      Q => in5(11),
      R => '0'
    );
\shiftreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(11),
      Q => in5(12),
      R => '0'
    );
\shiftreg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(12),
      Q => in5(13),
      R => '0'
    );
\shiftreg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(13),
      Q => in5(14),
      R => '0'
    );
\shiftreg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(14),
      Q => in5(15),
      R => '0'
    );
\shiftreg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(15),
      Q => p_0_in,
      R => '0'
    );
\shiftreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(1),
      Q => in5(2),
      R => '0'
    );
\shiftreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(2),
      Q => in5(3),
      R => '0'
    );
\shiftreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(3),
      Q => in5(4),
      R => '0'
    );
\shiftreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(4),
      Q => in5(5),
      R => '0'
    );
\shiftreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(5),
      Q => in5(6),
      R => '0'
    );
\shiftreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(6),
      Q => in5(7),
      R => '0'
    );
\shiftreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(7),
      Q => in5(8),
      R => '0'
    );
\shiftreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(8),
      Q => in5(9),
      R => '0'
    );
\shiftreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => sdata_i_1_n_0,
      D => shiftreg(9),
      Q => in5(10),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    bclk : in STD_LOGIC;
    lrclk : in STD_LOGIC;
    sdata : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_myI2SSlave_0_3,myI2SSlave_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myI2SSlave_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myI2SSlave_v1_0
     port map (
      bclk => bclk,
      lrclk => lrclk,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      sdata => sdata
    );
end STRUCTURE;
