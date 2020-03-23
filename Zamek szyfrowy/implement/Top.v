// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Jan 22 22:45:49 2019
// Host        : Lenovo-Y50 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force Top.v
// Design      : Top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CLK,
    EN_LED_OBUF,
    ERROR_reg,
    FSM_onehot_state_reg,
    eqOp__26,
    AR,
    D,
    \DIVIDER_reg[10] ,
    E);
  input CLK;
  input EN_LED_OBUF;
  output ERROR_reg;
  input [2:2]FSM_onehot_state_reg;
  input eqOp__26;
  input [0:0]AR;
  input [0:0]D;
  input [0:0]\DIVIDER_reg[10] ;
  output [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire \DELAY[1]_i_1_n_0 ;
  wire \DELAY[2]_i_1_n_0 ;
  wire [0:0]\DIVIDER_reg[10] ;
  wire [0:0]E;
  wire EN_LED_OBUF;
  wire ERROR_reg;
  wire [2:2]FSM_onehot_state_reg;
  wire eqOp__26;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \DELAY[1]_i_1 
       (.I0(DELAY[0]),
        .I1(eqOp__26),
        .I2(EN_LED_OBUF),
        .I3(DELAY[1]),
        .O(\DELAY[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \DELAY[2]_i_1 
       (.I0(DELAY[1]),
        .I1(eqOp__26),
        .I2(EN_LED_OBUF),
        .I3(DELAY[2]),
        .O(\DELAY[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(\DIVIDER_reg[10] ),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\DELAY[1]_i_1_n_0 ),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\DELAY[2]_i_1_n_0 ),
        .Q(DELAY[2]));
  LUT3 #(
    .INIT(8'h40)) 
    ERROR_i_2
       (.I0(DELAY[2]),
        .I1(DELAY[1]),
        .I2(DELAY[0]),
        .O(ERROR_reg));
  LUT5 #(
    .INIT(32'h20000000)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(FSM_onehot_state_reg),
        .I1(DELAY[2]),
        .I2(DELAY[1]),
        .I3(DELAY[0]),
        .I4(eqOp__26),
        .O(E));
endmodule

module Prescaler
   (CLK,
    EN_LED_OBUF,
    eqOp__26,
    AR,
    E);
  input CLK;
  input EN_LED_OBUF;
  output eqOp__26;
  input [0:0]AR;
  output [0:0]E;

  wire [0:0]AR;
  wire CLK;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[20]_i_5_n_0 ;
  wire \DIVIDER[24]_i_2_n_0 ;
  wire \DIVIDER[24]_i_3_n_0 ;
  wire \DIVIDER[24]_i_4_n_0 ;
  wire \DIVIDER[24]_i_5_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [27:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_0 ;
  wire \DIVIDER_reg[20]_i_1_n_4 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[24]_i_1_n_4 ;
  wire \DIVIDER_reg[24]_i_1_n_5 ;
  wire \DIVIDER_reg[24]_i_1_n_6 ;
  wire \DIVIDER_reg[24]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire [0:0]E;
  wire EN_LED_OBUF;
  wire \FSM_onehot_state[4]_i_10_n_0 ;
  wire \FSM_onehot_state[4]_i_5_n_0 ;
  wire \FSM_onehot_state[4]_i_6_n_0 ;
  wire \FSM_onehot_state[4]_i_7_n_0 ;
  wire \FSM_onehot_state[4]_i_8_n_0 ;
  wire \FSM_onehot_state[4]_i_9_n_0 ;
  wire eqOp__26;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    \DELAY[0]_i_1 
       (.I0(eqOp__26),
        .I1(EN_LED_OBUF),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__26),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(eqOp__26),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(eqOp__26),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(eqOp__26),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[27]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_3 
       (.I0(DIVIDER_reg[26]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_4 
       (.I0(DIVIDER_reg[25]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_5 
       (.I0(DIVIDER_reg[24]),
        .I1(eqOp__26),
        .O(\DIVIDER[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(eqOp__26),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(eqOp__26),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO({\DIVIDER_reg[20]_i_1_n_0 ,\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[20]_i_1_n_4 ,\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 ,\DIVIDER[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[24]_i_1_n_4 ,\DIVIDER_reg[24]_i_1_n_5 ,\DIVIDER_reg[24]_i_1_n_6 ,\DIVIDER_reg[24]_i_1_n_7 }),
        .S({\DIVIDER[24]_i_2_n_0 ,\DIVIDER[24]_i_3_n_0 ,\DIVIDER[24]_i_4_n_0 ,\DIVIDER[24]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[25] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_6 ),
        .Q(DIVIDER_reg[25]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[26] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_5 ),
        .Q(DIVIDER_reg[26]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[27] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_4 ),
        .Q(DIVIDER_reg[27]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK),
        .CE(EN_LED_OBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[4]_i_10 
       (.I0(DIVIDER_reg[18]),
        .I1(DIVIDER_reg[17]),
        .I2(DIVIDER_reg[16]),
        .I3(DIVIDER_reg[14]),
        .O(\FSM_onehot_state[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[4]_i_4 
       (.I0(\FSM_onehot_state[4]_i_5_n_0 ),
        .I1(\FSM_onehot_state[4]_i_6_n_0 ),
        .I2(\FSM_onehot_state[4]_i_7_n_0 ),
        .I3(\FSM_onehot_state[4]_i_8_n_0 ),
        .I4(\FSM_onehot_state[4]_i_9_n_0 ),
        .I5(\FSM_onehot_state[4]_i_10_n_0 ),
        .O(eqOp__26));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_onehot_state[4]_i_5 
       (.I0(DIVIDER_reg[10]),
        .I1(DIVIDER_reg[12]),
        .I2(DIVIDER_reg[15]),
        .I3(DIVIDER_reg[19]),
        .I4(DIVIDER_reg[23]),
        .I5(DIVIDER_reg[20]),
        .O(\FSM_onehot_state[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[4]_i_6 
       (.I0(DIVIDER_reg[1]),
        .I1(DIVIDER_reg[0]),
        .I2(DIVIDER_reg[3]),
        .I3(DIVIDER_reg[2]),
        .O(\FSM_onehot_state[4]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_state[4]_i_7 
       (.I0(DIVIDER_reg[9]),
        .I1(DIVIDER_reg[6]),
        .I2(DIVIDER_reg[5]),
        .I3(DIVIDER_reg[4]),
        .O(\FSM_onehot_state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[4]_i_8 
       (.I0(DIVIDER_reg[21]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[24]),
        .I3(DIVIDER_reg[25]),
        .I4(DIVIDER_reg[27]),
        .I5(DIVIDER_reg[26]),
        .O(\FSM_onehot_state[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_state[4]_i_9 
       (.I0(DIVIDER_reg[8]),
        .I1(DIVIDER_reg[7]),
        .I2(DIVIDER_reg[13]),
        .I3(DIVIDER_reg[11]),
        .O(\FSM_onehot_state[4]_i_9_n_0 ));
endmodule

(* ECO_CHECKSUM = "dda3080c" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module Top
   (CE,
    CLK,
    CLR,
    CLR_LED,
    ENTER,
    EN_LED,
    PASSWORD,
    PASS_LEDS,
    Q);
  input CE;
  input CLK;
  input CLR;
  output CLR_LED;
  input ENTER;
  output EN_LED;
  input [3:0]PASSWORD;
  output [3:0]PASS_LEDS;
  output [2:0]Q;

  wire CE;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_LED;
  wire CLR_LED_OBUF;
  wire ENTER;
  wire ENTER_IBUF;
  wire EN_LED;
  wire EN_LED_OBUF;
  wire NET210;
  wire [3:0]PASSWORD;
  wire [3:0]PASSWORD_IBUF;
  wire [3:0]PASS_LEDS;
  wire [2:0]Q;
  wire [1:0]Q_OBUF;
  wire U2_n_0;
  wire U2_n_1;
  wire U3_n_0;
  wire eqOp__26;

  IBUF CE_IBUF_inst
       (.I(CE),
        .O(EN_LED_OBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_LED_OBUF));
  OBUF CLR_LED_OBUF_inst
       (.I(CLR_LED_OBUF),
        .O(CLR_LED));
  IBUF ENTER_IBUF_inst
       (.I(ENTER),
        .O(ENTER_IBUF));
  OBUF EN_LED_OBUF_inst
       (.I(EN_LED_OBUF),
        .O(EN_LED));
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
  OBUFT \PASS_LEDS_OBUF[0]_inst 
       (.I(1'b0),
        .O(PASS_LEDS[0]),
        .T(1'b1));
  OBUFT \PASS_LEDS_OBUF[1]_inst 
       (.I(1'b0),
        .O(PASS_LEDS[1]),
        .T(1'b1));
  OBUFT \PASS_LEDS_OBUF[2]_inst 
       (.I(1'b0),
        .O(PASS_LEDS[2]),
        .T(1'b1));
  OBUFT \PASS_LEDS_OBUF[3]_inst 
       (.I(1'b0),
        .O(PASS_LEDS[3]),
        .T(1'b1));
  OBUF \Q_OBUF[0]_inst 
       (.I(Q_OBUF[0]),
        .O(Q[0]));
  OBUF \Q_OBUF[1]_inst 
       (.I(Q_OBUF[1]),
        .O(Q[1]));
  OBUF \Q_OBUF[2]_inst 
       (.I(1'b0),
        .O(Q[2]));
  Prescaler U1
       (.AR(CLR_LED_OBUF),
        .CLK(CLK_IBUF_BUFG),
        .E(NET210),
        .EN_LED_OBUF(EN_LED_OBUF),
        .eqOp__26(eqOp__26));
  Debouncer U2
       (.AR(CLR_LED_OBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(ENTER_IBUF),
        .\DIVIDER_reg[10] (NET210),
        .E(U2_n_0),
        .EN_LED_OBUF(EN_LED_OBUF),
        .ERROR_reg(U2_n_1),
        .FSM_onehot_state_reg(U3_n_0),
        .eqOp__26(eqOp__26));
  TutorVHDL U3
       (.AR(CLR_LED_OBUF),
        .CLK(CLK_IBUF_BUFG),
        .DELAY_reg(U2_n_1),
        .E(U2_n_0),
        .EN_LED_OBUF(EN_LED_OBUF),
        .\FSM_onehot_state_reg[4]_0 (U3_n_0),
        .PASSWORD_IBUF(PASSWORD_IBUF),
        .Q_OBUF(Q_OBUF),
        .eqOp__26(eqOp__26));
endmodule

module TutorVHDL
   (CLK,
    DELAY_reg,
    EN_LED_OBUF,
    \FSM_onehot_state_reg[4]_0 ,
    eqOp__26,
    AR,
    E,
    PASSWORD_IBUF,
    Q_OBUF);
  input CLK;
  input [2:2]DELAY_reg;
  input EN_LED_OBUF;
  output \FSM_onehot_state_reg[4]_0 ;
  input eqOp__26;
  input [0:0]AR;
  input [0:0]E;
  input [3:0]PASSWORD_IBUF;
  output [1:0]Q_OBUF;

  wire [0:0]AR;
  wire CLK;
  wire [2:2]DELAY_reg;
  wire [0:0]E;
  wire EN_LED_OBUF;
  wire ERROR_i_1_n_0;
  wire ERROR_reg_n_0;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[4]_0 ;
  (* RTL_KEEP = "yes" *) wire [4:0]FSM_onehot_state_reg_n_0_;
  wire [3:0]PASSWORD_IBUF;
  wire [1:0]Q_OBUF;
  wire \__0/i__n_0 ;
  wire eqOp__26;
  wire neqOp__0;

  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    ERROR_i_1
       (.I0(\__0/i__n_0 ),
        .I1(neqOp__0),
        .I2(EN_LED_OBUF),
        .I3(DELAY_reg),
        .I4(eqOp__26),
        .I5(ERROR_reg_n_0),
        .O(ERROR_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    ERROR_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(ERROR_i_1_n_0),
        .Q(ERROR_reg_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(FSM_onehot_state_reg_n_0_[3]),
        .I1(FSM_onehot_state_reg_n_0_[4]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    \FSM_onehot_state[4]_i_3 
       (.I0(FSM_onehot_state_reg_n_0_[2]),
        .I1(FSM_onehot_state_reg_n_0_[4]),
        .I2(FSM_onehot_state_reg_n_0_[0]),
        .I3(FSM_onehot_state_reg_n_0_[1]),
        .I4(FSM_onehot_state_reg_n_0_[3]),
        .I5(EN_LED_OBUF),
        .O(\FSM_onehot_state_reg[4]_0 ));
  (* FSM_ENCODED_STATES = "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(1'b0),
        .PRE(AR),
        .Q(FSM_onehot_state_reg_n_0_[0]));
  (* FSM_ENCODED_STATES = "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(FSM_onehot_state_reg_n_0_[0]),
        .Q(FSM_onehot_state_reg_n_0_[1]));
  (* FSM_ENCODED_STATES = "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(FSM_onehot_state_reg_n_0_[1]),
        .Q(FSM_onehot_state_reg_n_0_[2]));
  (* FSM_ENCODED_STATES = "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(FSM_onehot_state_reg_n_0_[2]),
        .Q(FSM_onehot_state_reg_n_0_[3]));
  (* FSM_ENCODED_STATES = "s0:00001,s1:00010,s2:00100,s3:01000,s4:10000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_onehot_state[4]_i_2_n_0 ),
        .Q(FSM_onehot_state_reg_n_0_[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \Q_OBUF[0]_inst_i_1 
       (.I0(ERROR_reg_n_0),
        .I1(FSM_onehot_state_reg_n_0_[4]),
        .O(Q_OBUF[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \Q_OBUF[1]_inst_i_1 
       (.I0(FSM_onehot_state_reg_n_0_[4]),
        .I1(ERROR_reg_n_0),
        .O(Q_OBUF[1]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \__0/i_ 
       (.I0(FSM_onehot_state_reg_n_0_[3]),
        .I1(FSM_onehot_state_reg_n_0_[2]),
        .I2(FSM_onehot_state_reg_n_0_[0]),
        .I3(FSM_onehot_state_reg_n_0_[1]),
        .O(\__0/i__n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    neqOp
       (.I0(PASSWORD_IBUF[1]),
        .I1(PASSWORD_IBUF[0]),
        .I2(PASSWORD_IBUF[2]),
        .I3(PASSWORD_IBUF[3]),
        .O(neqOp__0));
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
