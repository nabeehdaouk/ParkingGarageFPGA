// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May  4 19:12:48 2023
// Host        : hp05 running 64-bit CentOS release 6.10 (Final)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vhdlparkinglotblockdesign_ParkingFSM_0_0_stub.v
// Design      : vhdlparkinglotblockdesign_ParkingFSM_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ParkingFSM,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(Sense_In, Sense_Out, Override, Start, Stop, clk, 
  Open_1, Full, Closed)
/* synthesis syn_black_box black_box_pad_pin="Sense_In,Sense_Out,Override,Start,Stop,clk,Open_1,Full,Closed" */;
  input Sense_In;
  input Sense_Out;
  input Override;
  input Start;
  input Stop;
  input clk;
  output Open_1;
  output Full;
  output Closed;
endmodule
