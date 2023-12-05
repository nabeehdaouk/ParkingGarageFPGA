// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu May  4 19:12:48 2023
// Host        : hp05 running 64-bit CentOS release 6.10 (Final)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ vhdlparkinglotblockdesign_ParkingFSM_0_0_sim_netlist.v
// Design      : vhdlparkinglotblockdesign_ParkingFSM_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM
   (Open_1,
    Closed,
    Full,
    Start,
    clk,
    Stop,
    Override,
    Sense_In,
    Sense_Out);
  output Open_1;
  output Closed;
  output Full;
  input Start;
  input clk;
  input Stop;
  input Override;
  input Sense_In;
  input Sense_Out;

  wire Closed;
  wire \FSM_sequential_NXT_ST[0]_i_1_n_0 ;
  wire \FSM_sequential_NXT_ST[0]_i_2_n_0 ;
  wire \FSM_sequential_NXT_ST[1]_i_1_n_0 ;
  wire \FSM_sequential_NXT_ST[1]_i_2_n_0 ;
  wire \FSM_sequential_PRES_ST[0]_i_1_n_0 ;
  wire \FSM_sequential_PRES_ST[1]_i_1_n_0 ;
  wire Full;
  wire [1:0]NXT_ST;
  wire Open_1;
  wire Override;
  wire [1:0]PRES_ST;
  wire Sense_In;
  wire Sense_Out;
  wire Start;
  wire Stop;
  wire clk;
  wire [4:0]count;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire \count_reg[3]_i_1_n_0 ;
  wire \count_reg[3]_i_2_n_0 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_3_n_0 ;
  wire \count_reg[4]_i_4_n_0 ;
  wire \count_reg[4]_i_6_n_0 ;
  wire \count_reg[4]_i_7_n_0 ;
  wire [4:4]plusOp__6;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Closed_INST_0
       (.I0(PRES_ST[1]),
        .I1(PRES_ST[0]),
        .O(Closed));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_NXT_ST[0]_i_1 
       (.I0(\FSM_sequential_NXT_ST[0]_i_2_n_0 ),
        .I1(Start),
        .O(\FSM_sequential_NXT_ST[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC5FAC4C8C50AC4C8)) 
    \FSM_sequential_NXT_ST[0]_i_2 
       (.I0(\count_reg[4]_i_6_n_0 ),
        .I1(Stop),
        .I2(PRES_ST[0]),
        .I3(PRES_ST[1]),
        .I4(Override),
        .I5(NXT_ST[0]),
        .O(\FSM_sequential_NXT_ST[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_NXT_ST[1]_i_1 
       (.I0(\FSM_sequential_NXT_ST[1]_i_2_n_0 ),
        .I1(Start),
        .O(\FSM_sequential_NXT_ST[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC0F5C5DDC005C5DD)) 
    \FSM_sequential_NXT_ST[1]_i_2 
       (.I0(\count_reg[4]_i_6_n_0 ),
        .I1(Stop),
        .I2(PRES_ST[0]),
        .I3(PRES_ST[1]),
        .I4(Override),
        .I5(NXT_ST[1]),
        .O(\FSM_sequential_NXT_ST[1]_i_2_n_0 ));
  FDRE \FSM_sequential_NXT_ST_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_NXT_ST[0]_i_1_n_0 ),
        .Q(NXT_ST[0]),
        .R(1'b0));
  FDRE \FSM_sequential_NXT_ST_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_NXT_ST[1]_i_1_n_0 ),
        .Q(NXT_ST[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_PRES_ST[0]_i_1 
       (.I0(NXT_ST[0]),
        .I1(Start),
        .O(\FSM_sequential_PRES_ST[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_PRES_ST[1]_i_1 
       (.I0(NXT_ST[1]),
        .I1(Start),
        .O(\FSM_sequential_PRES_ST[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sclose:11,sfull:10,soverride:01,sopen:00" *) 
  FDRE \FSM_sequential_PRES_ST_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_PRES_ST[0]_i_1_n_0 ),
        .Q(PRES_ST[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sclose:11,sfull:10,soverride:01,sopen:00" *) 
  FDRE \FSM_sequential_PRES_ST_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_PRES_ST[1]_i_1_n_0 ),
        .Q(PRES_ST[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    Full_INST_0
       (.I0(PRES_ST[1]),
        .I1(PRES_ST[0]),
        .O(Full));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    Open_1_INST_0
       (.I0(PRES_ST[1]),
        .I1(PRES_ST[0]),
        .O(Open_1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.CLR(1'b0),
        .D(\count_reg[0]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(count[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \count_reg[0]_i_1 
       (.I0(Start),
        .I1(PRES_ST[0]),
        .I2(count[0]),
        .O(\count_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.CLR(1'b0),
        .D(\count_reg[1]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(count[1]));
  LUT6 #(
    .INIT(64'h1001100101101001)) 
    \count_reg[1]_i_1 
       (.I0(PRES_ST[0]),
        .I1(Start),
        .I2(count[0]),
        .I3(count[1]),
        .I4(\count_reg[4]_i_7_n_0 ),
        .I5(PRES_ST[1]),
        .O(\count_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.CLR(1'b0),
        .D(\count_reg[2]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(count[2]));
  LUT6 #(
    .INIT(64'h0201030003000102)) 
    \count_reg[2]_i_1 
       (.I0(\count_reg[3]_i_2_n_0 ),
        .I1(Start),
        .I2(PRES_ST[0]),
        .I3(count[2]),
        .I4(count[0]),
        .I5(count[1]),
        .O(\count_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.CLR(1'b0),
        .D(\count_reg[3]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(count[3]));
  LUT6 #(
    .INIT(64'h84C0C0C0C0C0C048)) 
    \count_reg[3]_i_1 
       (.I0(\count_reg[3]_i_2_n_0 ),
        .I1(\count_reg[4]_i_4_n_0 ),
        .I2(count[3]),
        .I3(count[2]),
        .I4(count[1]),
        .I5(count[0]),
        .O(\count_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \count_reg[3]_i_2 
       (.I0(PRES_ST[1]),
        .I1(\count_reg[4]_i_7_n_0 ),
        .O(\count_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.CLR(1'b0),
        .D(\count_reg[4]_i_1_n_0 ),
        .G(\count_reg[4]_i_2_n_0 ),
        .GE(1'b1),
        .Q(count[4]));
  LUT6 #(
    .INIT(64'hF11F0000E00A0000)) 
    \count_reg[4]_i_1 
       (.I0(PRES_ST[1]),
        .I1(Sense_Out),
        .I2(\count_reg[4]_i_3_n_0 ),
        .I3(count[4]),
        .I4(\count_reg[4]_i_4_n_0 ),
        .I5(plusOp__6),
        .O(\count_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAEAAAAAAFFFF)) 
    \count_reg[4]_i_2 
       (.I0(Start),
        .I1(Sense_In),
        .I2(PRES_ST[1]),
        .I3(\count_reg[4]_i_6_n_0 ),
        .I4(PRES_ST[0]),
        .I5(\count_reg[4]_i_7_n_0 ),
        .O(\count_reg[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count_reg[4]_i_3 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[3]),
        .I3(count[2]),
        .O(\count_reg[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \count_reg[4]_i_4 
       (.I0(PRES_ST[0]),
        .I1(Start),
        .O(\count_reg[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_reg[4]_i_5 
       (.I0(count[2]),
        .I1(count[3]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[4]),
        .O(plusOp__6));
  LUT3 #(
    .INIT(8'h1F)) 
    \count_reg[4]_i_6 
       (.I0(count[3]),
        .I1(count[2]),
        .I2(count[4]),
        .O(\count_reg[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFF)) 
    \count_reg[4]_i_7 
       (.I0(count[4]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[3]),
        .I4(count[2]),
        .I5(Sense_Out),
        .O(\count_reg[4]_i_7_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "vhdlparkinglotblockdesign_ParkingFSM_0_0,ParkingFSM,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ParkingFSM,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (Sense_In,
    Sense_Out,
    Override,
    Start,
    Stop,
    clk,
    Open_1,
    Full,
    Closed);
  input Sense_In;
  input Sense_Out;
  input Override;
  input Start;
  input Stop;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN vhdlparkinglotblockdesign_clk, INSERT_VIP 0" *) input clk;
  output Open_1;
  output Full;
  output Closed;

  wire Closed;
  wire Full;
  wire Open_1;
  wire Override;
  wire Sense_In;
  wire Sense_Out;
  wire Start;
  wire Stop;
  wire clk;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ParkingFSM inst
       (.Closed(Closed),
        .Full(Full),
        .Open_1(Open_1),
        .Override(Override),
        .Sense_In(Sense_In),
        .Sense_Out(Sense_Out),
        .Start(Start),
        .Stop(Stop),
        .clk(clk));
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
