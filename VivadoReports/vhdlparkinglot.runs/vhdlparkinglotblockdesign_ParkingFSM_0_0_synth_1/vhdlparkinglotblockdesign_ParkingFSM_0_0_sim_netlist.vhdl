-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu May  4 19:12:49 2023
-- Host        : hp05 running 64-bit CentOS release 6.10 (Final)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vhdlparkinglotblockdesign_ParkingFSM_0_0_sim_netlist.vhdl
-- Design      : vhdlparkinglotblockdesign_ParkingFSM_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM is
  port (
    Open_1 : out STD_LOGIC;
    Closed : out STD_LOGIC;
    Full : out STD_LOGIC;
    Start : in STD_LOGIC;
    clk : in STD_LOGIC;
    Stop : in STD_LOGIC;
    Override : in STD_LOGIC;
    Sense_In : in STD_LOGIC;
    Sense_Out : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM is
  signal \FSM_sequential_NXT_ST[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_NXT_ST[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_NXT_ST[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_NXT_ST[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PRES_ST[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_PRES_ST[1]_i_1_n_0\ : STD_LOGIC;
  signal NXT_ST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal PRES_ST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal count : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \plusOp__6\ : STD_LOGIC_VECTOR ( 4 to 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Closed_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_NXT_ST[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_NXT_ST[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_PRES_ST[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_PRES_ST[1]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_PRES_ST_reg[0]\ : label is "sclose:11,sfull:10,soverride:01,sopen:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_PRES_ST_reg[1]\ : label is "sclose:11,sfull:10,soverride:01,sopen:00";
  attribute SOFT_HLUTNM of Full_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of Open_1_INST_0 : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \count_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \count_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \count_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \count_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \count_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \count_reg[3]_i_2\ : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \count_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \count_reg[4]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count_reg[4]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count_reg[4]_i_5\ : label is "soft_lutpair0";
begin
Closed_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => PRES_ST(1),
      I1 => PRES_ST(0),
      O => Closed
    );
\FSM_sequential_NXT_ST[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_NXT_ST[0]_i_2_n_0\,
      I1 => Start,
      O => \FSM_sequential_NXT_ST[0]_i_1_n_0\
    );
\FSM_sequential_NXT_ST[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C5FAC4C8C50AC4C8"
    )
        port map (
      I0 => \count_reg[4]_i_6_n_0\,
      I1 => Stop,
      I2 => PRES_ST(0),
      I3 => PRES_ST(1),
      I4 => Override,
      I5 => NXT_ST(0),
      O => \FSM_sequential_NXT_ST[0]_i_2_n_0\
    );
\FSM_sequential_NXT_ST[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_sequential_NXT_ST[1]_i_2_n_0\,
      I1 => Start,
      O => \FSM_sequential_NXT_ST[1]_i_1_n_0\
    );
\FSM_sequential_NXT_ST[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0F5C5DDC005C5DD"
    )
        port map (
      I0 => \count_reg[4]_i_6_n_0\,
      I1 => Stop,
      I2 => PRES_ST(0),
      I3 => PRES_ST(1),
      I4 => Override,
      I5 => NXT_ST(1),
      O => \FSM_sequential_NXT_ST[1]_i_2_n_0\
    );
\FSM_sequential_NXT_ST_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_NXT_ST[0]_i_1_n_0\,
      Q => NXT_ST(0),
      R => '0'
    );
\FSM_sequential_NXT_ST_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_NXT_ST[1]_i_1_n_0\,
      Q => NXT_ST(1),
      R => '0'
    );
\FSM_sequential_PRES_ST[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => NXT_ST(0),
      I1 => Start,
      O => \FSM_sequential_PRES_ST[0]_i_1_n_0\
    );
\FSM_sequential_PRES_ST[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => NXT_ST(1),
      I1 => Start,
      O => \FSM_sequential_PRES_ST[1]_i_1_n_0\
    );
\FSM_sequential_PRES_ST_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_PRES_ST[0]_i_1_n_0\,
      Q => PRES_ST(0),
      R => '0'
    );
\FSM_sequential_PRES_ST_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_PRES_ST[1]_i_1_n_0\,
      Q => PRES_ST(1),
      R => '0'
    );
Full_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => PRES_ST(1),
      I1 => PRES_ST(0),
      O => Full
    );
Open_1_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PRES_ST(1),
      I1 => PRES_ST(0),
      O => Open_1
    );
\count_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[0]_i_1_n_0\,
      G => \count_reg[4]_i_2_n_0\,
      GE => '1',
      Q => count(0)
    );
\count_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Start,
      I1 => PRES_ST(0),
      I2 => count(0),
      O => \count_reg[0]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[1]_i_1_n_0\,
      G => \count_reg[4]_i_2_n_0\,
      GE => '1',
      Q => count(1)
    );
\count_reg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1001100101101001"
    )
        port map (
      I0 => PRES_ST(0),
      I1 => Start,
      I2 => count(0),
      I3 => count(1),
      I4 => \count_reg[4]_i_7_n_0\,
      I5 => PRES_ST(1),
      O => \count_reg[1]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[2]_i_1_n_0\,
      G => \count_reg[4]_i_2_n_0\,
      GE => '1',
      Q => count(2)
    );
\count_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0201030003000102"
    )
        port map (
      I0 => \count_reg[3]_i_2_n_0\,
      I1 => Start,
      I2 => PRES_ST(0),
      I3 => count(2),
      I4 => count(0),
      I5 => count(1),
      O => \count_reg[2]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[3]_i_1_n_0\,
      G => \count_reg[4]_i_2_n_0\,
      GE => '1',
      Q => count(3)
    );
\count_reg[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"84C0C0C0C0C0C048"
    )
        port map (
      I0 => \count_reg[3]_i_2_n_0\,
      I1 => \count_reg[4]_i_4_n_0\,
      I2 => count(3),
      I3 => count(2),
      I4 => count(1),
      I5 => count(0),
      O => \count_reg[3]_i_1_n_0\
    );
\count_reg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => PRES_ST(1),
      I1 => \count_reg[4]_i_7_n_0\,
      O => \count_reg[3]_i_2_n_0\
    );
\count_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \count_reg[4]_i_1_n_0\,
      G => \count_reg[4]_i_2_n_0\,
      GE => '1',
      Q => count(4)
    );
\count_reg[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F11F0000E00A0000"
    )
        port map (
      I0 => PRES_ST(1),
      I1 => Sense_Out,
      I2 => \count_reg[4]_i_3_n_0\,
      I3 => count(4),
      I4 => \count_reg[4]_i_4_n_0\,
      I5 => \plusOp__6\(4),
      O => \count_reg[4]_i_1_n_0\
    );
\count_reg[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAAAAFFFF"
    )
        port map (
      I0 => Start,
      I1 => Sense_In,
      I2 => PRES_ST(1),
      I3 => \count_reg[4]_i_6_n_0\,
      I4 => PRES_ST(0),
      I5 => \count_reg[4]_i_7_n_0\,
      O => \count_reg[4]_i_2_n_0\
    );
\count_reg[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(3),
      I3 => count(2),
      O => \count_reg[4]_i_3_n_0\
    );
\count_reg[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => PRES_ST(0),
      I1 => Start,
      O => \count_reg[4]_i_4_n_0\
    );
\count_reg[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count(2),
      I1 => count(3),
      I2 => count(0),
      I3 => count(1),
      I4 => count(4),
      O => \plusOp__6\(4)
    );
\count_reg[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => count(3),
      I1 => count(2),
      I2 => count(4),
      O => \count_reg[4]_i_6_n_0\
    );
\count_reg[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => count(4),
      I1 => count(1),
      I2 => count(0),
      I3 => count(3),
      I4 => count(2),
      I5 => Sense_Out,
      O => \count_reg[4]_i_7_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Sense_In : in STD_LOGIC;
    Sense_Out : in STD_LOGIC;
    Override : in STD_LOGIC;
    Start : in STD_LOGIC;
    Stop : in STD_LOGIC;
    clk : in STD_LOGIC;
    Open_1 : out STD_LOGIC;
    Full : out STD_LOGIC;
    Closed : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "vhdlparkinglotblockdesign_ParkingFSM_0_0,ParkingFSM,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "ParkingFSM,Vivado 2018.3";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN vhdlparkinglotblockdesign_clk, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM
     port map (
      Closed => Closed,
      Full => Full,
      Open_1 => Open_1,
      Override => Override,
      Sense_In => Sense_In,
      Sense_Out => Sense_Out,
      Start => Start,
      Stop => Stop,
      clk => clk
    );
end STRUCTURE;
