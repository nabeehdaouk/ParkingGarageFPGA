-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu May  4 19:12:48 2023
-- Host        : hp05 running 64-bit CentOS release 6.10 (Final)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vhdlparkinglotblockdesign_ParkingFSM_0_0_stub.vhdl
-- Design      : vhdlparkinglotblockdesign_ParkingFSM_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Sense_In,Sense_Out,Override,Start,Stop,clk,Open_1,Full,Closed";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ParkingFSM,Vivado 2018.3";
begin
end;
