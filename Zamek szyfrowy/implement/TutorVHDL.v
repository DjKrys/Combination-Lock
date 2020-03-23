// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sun Jan 20 15:51:09 2019
// Host        : DESKTOP-CGIHDQ6 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force TutorVHDL.v
// Design      : TutorVHDL
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "fb394f2e" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module TutorVHDL
   (CLK,
    CLR,
    ENTER,
    PASSWORD,
    Q);
  input CLK;
  input CLR;
  input ENTER;
  input [3:0]PASSWORD;
  output [2:0]Q;

  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire ENTER;
  wire ENTER_IBUF;
  wire ERROR_i_1_n_0;
  wire ERROR_i_2_n_0;
  wire ERROR_reg_n_0;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire [3:0]PASSWORD;
  wire [3:0]PASSWORD_IBUF;
  wire [2:0]Q;
  wire [1:0]Q_OBUF;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  IBUF ENTER_IBUF_inst
       (.I(ENTER),
        .O(ENTER_IBUF));
  LUT4 #(
    .INIT(16'hFF40)) 
    ERROR_i_1
       (.I0(state[2]),
        .I1(ERROR_i_2_n_0),
        .I2(ENTER_IBUF),
        .I3(ERROR_reg_n_0),
        .O(ERROR_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7BDE)) 
    ERROR_i_2
       (.I0(state[1]),
        .I1(state[0]),
        .I2(PASSWORD_IBUF[1]),
        .I3(PASSWORD_IBUF[0]),
        .I4(PASSWORD_IBUF[2]),
        .I5(PASSWORD_IBUF[3]),
        .O(ERROR_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ERROR_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(ERROR_i_1_n_0),
        .Q(ERROR_reg_n_0));
  LUT3 #(
    .INIT(8'h9C)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(state[0]),
        .I2(ENTER_IBUF),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9CCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ENTER_IBUF),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .I3(ENTER_IBUF),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "s0:000,s1:001,s2:010,s3:011,s4:100" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(CLR_IBUF),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  IBUF \PASSWORD_IBUF[0]_inst 
       (.I(PASSWORD[0]),
        .O(PASSWORD_IBUF[0]));
  IBUF \PASSWORD_IBUF[1]_inst 
       (.I(PASSWORD[1]),
        .O(PASSWORD_IBUF[1]));
  IBUF \PASSWORD_IBUF[2]_inst 
       (.I(PASSWORD[2]),
        .O(PASSWORD_IBUF[2]));
  IBUF \PASSWORD_IBUF[3]_inst 
       (.I(PASSWORD[3]),
        .O(PASSWORD_IBUF[3]));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  LUT4 #(
    .INIT(16'h0008)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(ERROR_reg_n_0),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(Q_OBUF[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  LUT4 #(
    .INIT(16'h0010)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .I3(ERROR_reg_n_0),
        .O(Q_OBUF[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(1'b0),
        .O(Q[2]));
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
