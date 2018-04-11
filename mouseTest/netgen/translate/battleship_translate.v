////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: battleship_translate.v
// /___/   /\     Timestamp: Tue Apr 10 21:14:07 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim battleship.ngd battleship_translate.v 
// Device	: 3s700anfgg484-4
// Input file	: battleship.ngd
// Output file	: /home/mat/Documents/repos/Project_LabAdvEl/mouseTest/netgen/translate/battleship_translate.v
// # of Modules	: 1
// Design Name	: battleship
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module battleship (
  PS2_DATA1, PS2_CLK1, BTN_SOUTH, CLK_50M, LED
);
  output PS2_DATA1;
  output PS2_CLK1;
  input BTN_SOUTH;
  input CLK_50M;
  output [7 : 0] LED;
  wire NlwRenamedSig_IO_BTN_SOUTH;
  wire CLK_50M_IBUF_2;
  wire CLK_50M_IBUF1;
  wire LED_2_OBUF_12;
  wire LED_7_OBUF_13;
  wire N1;
  wire N111;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N23;
  wire N32;
  wire N33;
  wire N34;
  wire N36;
  wire N38;
  wire N4;
  wire N40;
  wire N42;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N60;
  wire N61;
  wire N62;
  wire N63;
  wire N64;
  wire N65;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire \PS2_send/N11 ;
  wire \PS2_send/N12 ;
  wire \PS2_send/N131 ;
  wire \PS2_send/N16 ;
  wire \PS2_send/N18 ;
  wire \PS2_send/N19 ;
  wire \PS2_send/N3 ;
  wire \PS2_send/N7 ;
  wire \PS2_send/PS2C_59 ;
  wire \PS2_send/PS2D_60 ;
  wire \PS2_send/PS2D_mux0000 ;
  wire \PS2_send/_old_PS2C_7 ;
  wire \PS2_send/acquireChannel/carry_63 ;
  wire \PS2_send/acquireChannel/carry_mux0000_64 ;
  wire \PS2_send/acquireChannel/carry_not0001 ;
  wire \PS2_send/acquireChannel/carry_not000112_66 ;
  wire \PS2_send/acquireChannel/carry_not000127_67 ;
  wire \PS2_send/acquireChannel/carry_not00013_68 ;
  wire \PS2_send/acquireChannel/carry_not000146_69 ;
  wire \PS2_send/acquireChannel/carry_not00016 ;
  wire \PS2_send/acquireChannel/out_and0000 ;
  wire \PS2_send/acquireChannel/out_mux0000<0>21_81 ;
  wire \PS2_send/acquireChannel/out_mux0000<0>9_82 ;
  wire \PS2_send/acquireChannel/out_mux0000<5>1 ;
  wire \PS2_send/acquireChannel/out_mux0000<5>2_89 ;
  wire \PS2_send/acquireChannel/out_mux0000<6>20_91 ;
  wire \PS2_send/acquireChannel/out_mux0000<6>33_92 ;
  wire \PS2_send/acquireChannel/run_old_94 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ;
  wire \PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_0 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_1 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_2 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_3 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_4 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_5 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_6 ;
  wire \PS2_send/conta05uS/Mcount_out_eqn_7 ;
  wire \PS2_send/conta05uS/Mcount_out_xor<7>_rt_117 ;
  wire \PS2_send/conta05uS/carry_126 ;
  wire \PS2_send/conta05uS/carry_not0001 ;
  wire \PS2_send/conta05uS/out_and0000 ;
  wire \PS2_send/conta05uS/out_and0001 ;
  wire \PS2_send/conta05uS/out_cmp_eq000012_138 ;
  wire \PS2_send/conta05uS/out_cmp_eq000025_139 ;
  wire \PS2_send/conta05uS/out_cmp_ge0000 ;
  wire \PS2_send/endComm/clk_in_old_141 ;
  wire \PS2_send/runAcq_142 ;
  wire \PS2_send/runAcq_mux0000 ;
  wire \PS2_send/runData_144 ;
  wire \PS2_send/runData_mux0000 ;
  wire \PS2_send/runData_not0001 ;
  wire \PS2_send/send_old_147 ;
  wire \PS2_send/transmissionTiming/carry_152 ;
  wire \PS2_send/transmissionTiming/carry_mux0000 ;
  wire \PS2_send/transmissionTiming/carry_not0001_154 ;
  wire \PS2_send/transmissionTiming/run_old_161 ;
  wire run_162;
  wire send_163;
  wire w_delay_inv;
  wire \waitSeconds/carry_165 ;
  wire \waitSeconds/carry_mux0000_166 ;
  wire \waitSeconds/carry_not0001 ;
  wire \waitSeconds/carry_not000116_168 ;
  wire \waitSeconds/carry_not000125_169 ;
  wire \waitSeconds/carry_not000153_170 ;
  wire \waitSeconds/clk_in_old_171 ;
  wire \waitSeconds/out_mux0000<0>6_180 ;
  wire \waitSeconds/out_mux0000<1>24 ;
  wire \waitSeconds/out_mux0000<1>7_183 ;
  wire \waitSeconds/run_old_189 ;
  wire \waitSeconds/out_mux0000<0>6/O ;
  wire \PS2_send/acquireChannel/out_mux0000<7>_SW0/O ;
  wire \waitSeconds/carry_not000125/O ;
  wire \PS2_send/conta05uS/out_cmp_ge00001_SW0/O ;
  wire \waitSeconds/out_mux0000<5>1_SW0/O ;
  wire \waitSeconds/out_mux0000<4>1_SW0/O ;
  wire \PS2_send/acquireChannel/carry_not000127/O ;
  wire \PS2_send/acquireChannel/out_mux0000<2>_SW0/O ;
  wire \PS2_send/acquireChannel/carry_not000112/O ;
  wire \waitSeconds/out_mux0000<3>42_SW0/O ;
  wire \waitSeconds/out_mux0000<2>32_SW0/O ;
  wire \PS2_send/acquireChannel/out_mux0000<0>9/O ;
  wire \PS2_send/transmissionTiming/carry_not0001_SW1/O ;
  wire \PS2_send/acquireChannel/out_mux0000<3>32_SW0/O ;
  wire GND;
  wire VCC;
  wire [7 : 0] \PS2_send/acquireChannel/out ;
  wire [7 : 0] \PS2_send/acquireChannel/out_mux0000 ;
  wire [6 : 0] \PS2_send/conta05uS/Mcount_out_cy ;
  wire [0 : 0] \PS2_send/conta05uS/Mcount_out_lut ;
  wire [7 : 0] \PS2_send/conta05uS/Result ;
  wire [7 : 0] \PS2_send/conta05uS/out ;
  wire [1 : 0] \PS2_send/status ;
  wire [1 : 0] \PS2_send/status_mux0000 ;
  wire [2 : 0] \PS2_send/transmissionTiming/out ;
  wire [2 : 0] \PS2_send/transmissionTiming/out_mux0000 ;
  wire [6 : 0] \waitSeconds/out ;
  wire [6 : 0] \waitSeconds/out_mux0000 ;
  assign
    NlwRenamedSig_IO_BTN_SOUTH = BTN_SOUTH;
  X_ZERO   XST_GND (
    .O(LED_2_OBUF_12)
  );
  X_ONE   XST_VCC (
    .O(N1)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  run (
    .CLK(CLK_50M_IBUF_2),
    .CE(LED_7_OBUF_13),
    .I(N1),
    .SRST(\waitSeconds/carry_165 ),
    .O(run_162),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  send (
    .CLK(CLK_50M_IBUF_2),
    .I(N1),
    .SRST(w_delay_inv),
    .O(send_163),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/clk_in_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(CLK_50M_IBUF1),
    .O(\waitSeconds/clk_in_old_171 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/run_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(run_162),
    .O(\waitSeconds/run_old_189 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/carry  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\waitSeconds/carry_not0001 ),
    .I(\waitSeconds/carry_mux0000_166 ),
    .O(\waitSeconds/carry_165 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_6  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [6]),
    .O(\waitSeconds/out [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_5  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [5]),
    .O(\waitSeconds/out [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_4  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [4]),
    .O(\waitSeconds/out [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_3  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [3]),
    .O(\waitSeconds/out [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_2  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [2]),
    .O(\waitSeconds/out [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_1  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [1]),
    .O(\waitSeconds/out [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \waitSeconds/out_0  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\waitSeconds/out_mux0000 [0]),
    .O(\waitSeconds/out [0]),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/carry  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/carry_not0001 ),
    .I(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .SRST(LED_2_OBUF_12),
    .O(\PS2_send/conta05uS/carry_126 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_0  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_0 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_1  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_1 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_2  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_2 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_3  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_3 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_4  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_4 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_5  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_5 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_6  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_6 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \PS2_send/conta05uS/out_7  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .I(\PS2_send/conta05uS/Mcount_out_eqn_7 ),
    .SRST(\PS2_send/conta05uS/out_and0001 ),
    .O(\PS2_send/conta05uS/out [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<0>  (
    .IB(LED_2_OBUF_12),
    .IA(N1),
    .SEL(\PS2_send/conta05uS/Mcount_out_lut [0]),
    .O(\PS2_send/conta05uS/Mcount_out_cy [0])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<0>  (
    .I0(LED_2_OBUF_12),
    .I1(\PS2_send/conta05uS/Mcount_out_lut [0]),
    .O(\PS2_send/conta05uS/Result [0])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<1>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [0]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [1])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<1>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [0]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ),
    .O(\PS2_send/conta05uS/Result [1])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<2>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [1]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [2])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<2>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [1]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ),
    .O(\PS2_send/conta05uS/Result [2])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<3>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [2]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [3])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<3>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [2]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ),
    .O(\PS2_send/conta05uS/Result [3])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<4>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [3]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [4])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<4>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [3]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ),
    .O(\PS2_send/conta05uS/Result [4])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<5>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [4]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [5])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<5>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [4]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ),
    .O(\PS2_send/conta05uS/Result [5])
  );
  X_MUX2   \PS2_send/conta05uS/Mcount_out_cy<6>  (
    .IB(\PS2_send/conta05uS/Mcount_out_cy [5]),
    .IA(LED_2_OBUF_12),
    .SEL(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [6])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<6>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [5]),
    .I1(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ),
    .O(\PS2_send/conta05uS/Result [6])
  );
  X_XOR2   \PS2_send/conta05uS/Mcount_out_xor<7>  (
    .I0(\PS2_send/conta05uS/Mcount_out_cy [6]),
    .I1(\PS2_send/conta05uS/Mcount_out_xor<7>_rt_117 ),
    .O(\PS2_send/conta05uS/Result [7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_0  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [0]),
    .O(\PS2_send/acquireChannel/out [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_1  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [1]),
    .O(\PS2_send/acquireChannel/out [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_2  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [2]),
    .O(\PS2_send/acquireChannel/out [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_3  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [3]),
    .O(\PS2_send/acquireChannel/out [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_4  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [4]),
    .O(\PS2_send/acquireChannel/out [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_5  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [5]),
    .O(\PS2_send/acquireChannel/out [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_6  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [6]),
    .O(\PS2_send/acquireChannel/out [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/out_7  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/acquireChannel/out_mux0000 [7]),
    .O(\PS2_send/acquireChannel/out [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/carry  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/carry_not0001 ),
    .I(\PS2_send/acquireChannel/carry_mux0000_64 ),
    .O(\PS2_send/acquireChannel/carry_63 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/acquireChannel/run_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/runAcq_142 ),
    .O(\PS2_send/acquireChannel/run_old_94 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/transmissionTiming/out_0  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/transmissionTiming/out_mux0000 [0]),
    .O(\PS2_send/transmissionTiming/out [0]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/transmissionTiming/out_1  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/transmissionTiming/out_mux0000 [1]),
    .O(\PS2_send/transmissionTiming/out [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/transmissionTiming/out_2  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .I(\PS2_send/transmissionTiming/out_mux0000 [2]),
    .O(\PS2_send/transmissionTiming/out [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/transmissionTiming/carry  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/transmissionTiming/carry_not0001_154 ),
    .I(\PS2_send/transmissionTiming/carry_mux0000 ),
    .O(\PS2_send/transmissionTiming/carry_152 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/transmissionTiming/run_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/runData_144 ),
    .O(\PS2_send/transmissionTiming/run_old_161 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/endComm/clk_in_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/conta05uS/carry_126 ),
    .O(\PS2_send/endComm/clk_in_old_141 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/PS2D  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/PS2D_mux0000 ),
    .O(\PS2_send/PS2D_60 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/status_1  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/status_mux0000 [0]),
    .O(\PS2_send/status [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/status_0  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/status_mux0000 [1]),
    .O(\PS2_send/status [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/send_old  (
    .CLK(CLK_50M_IBUF_2),
    .I(send_163),
    .O(\PS2_send/send_old_147 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/runData  (
    .CLK(CLK_50M_IBUF_2),
    .CE(\PS2_send/runData_not0001 ),
    .I(\PS2_send/runData_mux0000 ),
    .O(\PS2_send/runData_144 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/runAcq  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/runAcq_mux0000 ),
    .O(\PS2_send/runAcq_142 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \PS2_send/PS2C  (
    .CLK(CLK_50M_IBUF_2),
    .I(\PS2_send/_old_PS2C_7 ),
    .O(\PS2_send/PS2C_59 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h82AA ))
  \PS2_send/transmissionTiming/out_mux0000<0>1  (
    .ADR0(\PS2_send/runData_144 ),
    .ADR1(\PS2_send/transmissionTiming/out [0]),
    .ADR2(\PS2_send/transmissionTiming/out [2]),
    .ADR3(\PS2_send/transmissionTiming/run_old_161 ),
    .O(\PS2_send/transmissionTiming/out_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \waitSeconds/out_and00001  (
    .ADR0(\waitSeconds/clk_in_old_171 ),
    .ADR1(CLK_50M_IBUF1),
    .O(\PS2_send/conta05uS/out_and0000 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/runData_not00011  (
    .ADR0(\PS2_send/status [1]),
    .ADR1(\PS2_send/status [0]),
    .ADR2(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/runData_not0001 )
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \PS2_send/acquireChannel/carry_not000131  (
    .ADR0(\PS2_send/endComm/clk_in_old_141 ),
    .ADR1(\PS2_send/conta05uS/carry_126 ),
    .O(\PS2_send/acquireChannel/out_and0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/runAcq_mux00001  (
    .ADR0(N60),
    .ADR1(\PS2_send/N7 ),
    .ADR2(\PS2_send/runAcq_142 ),
    .O(\PS2_send/runAcq_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/_old_PS2C_72  (
    .ADR0(N59),
    .ADR1(\PS2_send/PS2C_59 ),
    .ADR2(\PS2_send/N12 ),
    .O(\PS2_send/_old_PS2C_7 )
  );
  X_LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/Mmux_PS2D_mux000021  (
    .ADR0(\PS2_send/N12 ),
    .ADR1(\PS2_send/N7 ),
    .ADR2(\PS2_send/PS2D_60 ),
    .O(\PS2_send/PS2D_mux0000 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \PS2_send/transmissionTiming/out_mux0000<2>1  (
    .ADR0(N58),
    .ADR1(\PS2_send/transmissionTiming/out [0]),
    .ADR2(\PS2_send/transmissionTiming/out [1]),
    .ADR3(\PS2_send/transmissionTiming/out [2]),
    .O(\PS2_send/transmissionTiming/out_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'h90C0 ))
  \PS2_send/transmissionTiming/out_mux0000<1>1  (
    .ADR0(\PS2_send/transmissionTiming/out [2]),
    .ADR1(\PS2_send/transmissionTiming/out [1]),
    .ADR2(\PS2_send/N131 ),
    .ADR3(\PS2_send/transmissionTiming/out [0]),
    .O(\PS2_send/transmissionTiming/out_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h3020 ))
  \PS2_send/acquireChannel/carry_mux0000  (
    .ADR0(\PS2_send/N18 ),
    .ADR1(\PS2_send/N3 ),
    .ADR2(\PS2_send/N19 ),
    .ADR3(\PS2_send/acquireChannel/carry_not00016 ),
    .O(\PS2_send/acquireChannel/carry_mux0000_64 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_mux0000_SW0  (
    .ADR0(\waitSeconds/out [1]),
    .ADR1(\waitSeconds/out [0]),
    .ADR2(\waitSeconds/run_old_189 ),
    .ADR3(run_162),
    .O(N4)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_mux0000  (
    .ADR0(N111),
    .ADR1(\waitSeconds/out [3]),
    .ADR2(\waitSeconds/out [2]),
    .ADR3(N4),
    .O(\waitSeconds/carry_mux0000_166 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<5>31  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [1]),
    .ADR2(\PS2_send/acquireChannel/out [0]),
    .ADR3(N64),
    .O(\PS2_send/N16 )
  );
  X_LUT4 #(
    .INIT ( 16'hF888 ))
  \PS2_send/acquireChannel/out_mux0000<7>  (
    .ADR0(\PS2_send/acquireChannel/out [7]),
    .ADR1(\PS2_send/N19 ),
    .ADR2(N13),
    .ADR3(\PS2_send/N16 ),
    .O(\PS2_send/acquireChannel/out_mux0000 [7])
  );
  X_LUT3 #(
    .INIT ( 8'hDF ))
  \PS2_send/acquireChannel/out_mux0000<6>20  (
    .ADR0(\PS2_send/acquireChannel/out [5]),
    .ADR1(\PS2_send/acquireChannel/out [7]),
    .ADR2(\PS2_send/acquireChannel/out [1]),
    .O(\PS2_send/acquireChannel/out_mux0000<6>20_91 )
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  \PS2_send/acquireChannel/out_mux0000<6>33  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [3]),
    .ADR2(\PS2_send/acquireChannel/out [4]),
    .ADR3(\PS2_send/acquireChannel/out [0]),
    .O(\PS2_send/acquireChannel/out_mux0000<6>33_92 )
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \waitSeconds/carry_not000116  (
    .ADR0(\waitSeconds/out [6]),
    .ADR1(\waitSeconds/out [1]),
    .ADR2(\waitSeconds/out [3]),
    .ADR3(\waitSeconds/out [2]),
    .O(\waitSeconds/carry_not000116_168 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \PS2_send/conta05uS/out_cmp_ge00001  (
    .ADR0(\PS2_send/conta05uS/out [4]),
    .ADR1(\PS2_send/conta05uS/out [3]),
    .ADR2(\PS2_send/conta05uS/out [5]),
    .ADR3(N15),
    .O(\PS2_send/conta05uS/out_cmp_ge0000 )
  );
  X_LUT4 #(
    .INIT ( 16'h20E0 ))
  \PS2_send/acquireChannel/out_mux0000<2>  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [1]),
    .ADR2(\PS2_send/N19 ),
    .ADR3(N17),
    .O(\PS2_send/acquireChannel/out_mux0000 [2])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<6>1_SW0  (
    .ADR0(\waitSeconds/out [5]),
    .ADR1(\waitSeconds/out [4]),
    .ADR2(N66),
    .O(N19)
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \waitSeconds/out_mux0000<6>1  (
    .ADR0(run_162),
    .ADR1(\waitSeconds/run_old_189 ),
    .ADR2(\waitSeconds/out [6]),
    .ADR3(N19),
    .O(\waitSeconds/out_mux0000 [6])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<5>1  (
    .ADR0(\waitSeconds/run_old_189 ),
    .ADR1(run_162),
    .ADR2(N21),
    .O(\waitSeconds/out_mux0000 [5])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<4>1  (
    .ADR0(\waitSeconds/run_old_189 ),
    .ADR1(run_162),
    .ADR2(N23),
    .O(\waitSeconds/out_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'hD555 ))
  \waitSeconds/out_mux0000<1>7  (
    .ADR0(\waitSeconds/out [0]),
    .ADR1(\waitSeconds/out [2]),
    .ADR2(\waitSeconds/out [3]),
    .ADR3(N67),
    .O(\waitSeconds/out_mux0000<1>7_183 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<5>3  (
    .ADR0(\PS2_send/acquireChannel/out [4]),
    .ADR1(\PS2_send/acquireChannel/out [3]),
    .ADR2(\PS2_send/N3 ),
    .ADR3(\PS2_send/N16 ),
    .O(\PS2_send/acquireChannel/out_mux0000<5>2_89 )
  );
  X_MUX2   \PS2_send/acquireChannel/out_mux0000<5>_f5  (
    .IA(\PS2_send/acquireChannel/out_mux0000<5>2_89 ),
    .IB(\PS2_send/acquireChannel/out_mux0000<5>1 ),
    .SEL(\PS2_send/acquireChannel/out [5]),
    .O(\PS2_send/acquireChannel/out_mux0000 [5])
  );
  X_LUT4 #(
    .INIT ( 16'hCCC4 ))
  \PS2_send/acquireChannel/out_mux0000<0>35  (
    .ADR0(\PS2_send/acquireChannel/run_old_94 ),
    .ADR1(\PS2_send/runAcq_142 ),
    .ADR2(\PS2_send/acquireChannel/out_mux0000<0>21_81 ),
    .ADR3(\PS2_send/acquireChannel/out_mux0000<0>9_82 ),
    .O(\PS2_send/acquireChannel/out_mux0000 [0])
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \PS2_send/acquireChannel/carry_not00013  (
    .ADR0(\PS2_send/acquireChannel/run_old_94 ),
    .ADR1(\PS2_send/runAcq_142 ),
    .O(\PS2_send/acquireChannel/carry_not00013_68 )
  );
  X_LUT4 #(
    .INIT ( 16'hCCC8 ))
  \PS2_send/acquireChannel/carry_not000167  (
    .ADR0(\PS2_send/acquireChannel/carry_not00013_68 ),
    .ADR1(\PS2_send/acquireChannel/out_and0000 ),
    .ADR2(\PS2_send/acquireChannel/carry_not000146_69 ),
    .ADR3(\PS2_send/acquireChannel/carry_not000112_66 ),
    .O(\PS2_send/acquireChannel/carry_not0001 )
  );
  X_BUF   CLK_50M_IBUF (
    .I(CLK_50M),
    .O(CLK_50M_IBUF1)
  );
  X_BUF   BTN_SOUTH_IBUF (
    .I(NlwRenamedSig_IO_BTN_SOUTH),
    .O(LED_7_OBUF_13)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<1>_rt  (
    .ADR0(\PS2_send/conta05uS/out [1]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<2>_rt  (
    .ADR0(\PS2_send/conta05uS/out [2]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<3>_rt  (
    .ADR0(\PS2_send/conta05uS/out [3]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<4>_rt  (
    .ADR0(\PS2_send/conta05uS/out [4]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<5>_rt  (
    .ADR0(\PS2_send/conta05uS/out [5]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_cy<6>_rt  (
    .ADR0(\PS2_send/conta05uS/out [6]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \PS2_send/conta05uS/Mcount_out_xor<7>_rt  (
    .ADR0(\PS2_send/conta05uS/out [7]),
    .O(\PS2_send/conta05uS/Mcount_out_xor<7>_rt_117 ),
    .ADR1(GND)
  );
  X_LUT4 #(
    .INIT ( 16'hD5FF ))
  \PS2_send/acquireChannel/out_mux0000<4>1  (
    .ADR0(\PS2_send/acquireChannel/out [3]),
    .ADR1(\PS2_send/acquireChannel/out [6]),
    .ADR2(\PS2_send/acquireChannel/out [7]),
    .ADR3(N61),
    .O(\PS2_send/N11 )
  );
  X_LUT4 #(
    .INIT ( 16'hC040 ))
  \PS2_send/acquireChannel/out_mux0000<5>2  (
    .ADR0(\PS2_send/acquireChannel/out [4]),
    .ADR1(\PS2_send/acquireChannel/run_old_94 ),
    .ADR2(\PS2_send/runAcq_142 ),
    .ADR3(\PS2_send/N11 ),
    .O(\PS2_send/acquireChannel/out_mux0000<5>1 )
  );
  X_MUX2   \PS2_send/acquireChannel/out_mux0000<4>  (
    .IA(N32),
    .IB(N33),
    .SEL(\PS2_send/acquireChannel/out [4]),
    .O(\PS2_send/acquireChannel/out_mux0000 [4])
  );
  X_LUT4 #(
    .INIT ( 16'h7000 ))
  \PS2_send/acquireChannel/out_mux0000<4>_F  (
    .ADR0(\PS2_send/acquireChannel/out [6]),
    .ADR1(\PS2_send/acquireChannel/out [7]),
    .ADR2(\PS2_send/acquireChannel/out [3]),
    .ADR3(\PS2_send/N16 ),
    .O(N32)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/acquireChannel/out_mux0000<4>_G  (
    .ADR0(\PS2_send/acquireChannel/run_old_94 ),
    .ADR1(\PS2_send/runAcq_142 ),
    .ADR2(\PS2_send/N11 ),
    .O(N33)
  );
  X_LUT4 #(
    .INIT ( 16'hF777 ))
  \waitSeconds/carry_not000179_SW0  (
    .ADR0(\waitSeconds/run_old_189 ),
    .ADR1(run_162),
    .ADR2(\waitSeconds/carry_not000125_169 ),
    .ADR3(\waitSeconds/carry_not000116_168 ),
    .O(N34)
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \waitSeconds/carry_not000179  (
    .ADR0(\PS2_send/conta05uS/out_and0000 ),
    .ADR1(N111),
    .ADR2(\waitSeconds/carry_not000153_170 ),
    .ADR3(N34),
    .O(\waitSeconds/carry_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<1>27  (
    .ADR0(N65),
    .ADR1(\waitSeconds/out [1]),
    .ADR2(\waitSeconds/out [0]),
    .ADR3(\waitSeconds/out_mux0000<1>7_183 ),
    .O(\waitSeconds/out_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<3>42  (
    .ADR0(\waitSeconds/out_mux0000<1>24 ),
    .ADR1(\waitSeconds/out [0]),
    .ADR2(\waitSeconds/out [3]),
    .ADR3(N36),
    .O(\waitSeconds/out_mux0000 [3])
  );
  X_LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<2>32  (
    .ADR0(\waitSeconds/out_mux0000<1>24 ),
    .ADR1(\waitSeconds/out [0]),
    .ADR2(\waitSeconds/out [2]),
    .ADR3(N38),
    .O(\waitSeconds/out_mux0000 [2])
  );
  X_LUT4 #(
    .INIT ( 16'hCC34 ))
  \PS2_send/acquireChannel/out_mux0000<1>_SW2  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [1]),
    .ADR2(\PS2_send/N18 ),
    .ADR3(N68),
    .O(N40)
  );
  X_LUT4 #(
    .INIT ( 16'h20E0 ))
  \PS2_send/acquireChannel/out_mux0000<1>  (
    .ADR0(\PS2_send/acquireChannel/out [1]),
    .ADR1(\PS2_send/acquireChannel/out [0]),
    .ADR2(\PS2_send/N19 ),
    .ADR3(N40),
    .O(\PS2_send/acquireChannel/out_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h62EA ))
  \PS2_send/Mmux_status_mux000021  (
    .ADR0(\PS2_send/status [1]),
    .ADR1(\PS2_send/status [0]),
    .ADR2(\PS2_send/acquireChannel/carry_63 ),
    .ADR3(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/status_mux0000 [0])
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/transmissionTiming/carry_mux00001  (
    .ADR0(\PS2_send/transmissionTiming/out [2]),
    .ADR1(\PS2_send/runData_144 ),
    .ADR2(\PS2_send/transmissionTiming/run_old_161 ),
    .O(\PS2_send/transmissionTiming/carry_mux0000 )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \PS2_send/conta05uS/Mcount_out_eqn_01  (
    .ADR0(N62),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [0]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_0 )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \PS2_send/conta05uS/carry_not00011  (
    .ADR0(\PS2_send/conta05uS/out_and0000 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR2(N63),
    .ADR3(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .O(\PS2_send/conta05uS/carry_not0001 )
  );
  X_LUT4 #(
    .INIT ( 16'h1555 ))
  \PS2_send/acquireChannel/out_mux0000<0>21  (
    .ADR0(\PS2_send/acquireChannel/out [0]),
    .ADR1(\PS2_send/acquireChannel/out [6]),
    .ADR2(\PS2_send/acquireChannel/out [7]),
    .ADR3(N69),
    .O(\PS2_send/acquireChannel/out_mux0000<0>21_81 )
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \PS2_send/conta05uS/out_and00011  (
    .ADR0(CLK_50M_IBUF1),
    .ADR1(\waitSeconds/clk_in_old_171 ),
    .ADR2(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .O(\PS2_send/conta05uS/out_and0001 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \PS2_send/acquireChannel/carry_not000146_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [5]),
    .ADR1(\PS2_send/acquireChannel/out [6]),
    .ADR2(\PS2_send/acquireChannel/out [4]),
    .ADR3(\PS2_send/acquireChannel/out [3]),
    .O(N42)
  );
  X_LUT4 #(
    .INIT ( 16'h0100 ))
  \PS2_send/acquireChannel/carry_not000146  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [0]),
    .ADR2(N42),
    .ADR3(\PS2_send/acquireChannel/carry_not000127_67 ),
    .O(\PS2_send/acquireChannel/carry_not000146_69 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFF8 ))
  \PS2_send/acquireChannel/out_mux0000<0>9_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [1]),
    .ADR1(\PS2_send/acquireChannel/out [2]),
    .ADR2(\PS2_send/acquireChannel/out [4]),
    .ADR3(\PS2_send/acquireChannel/out [5]),
    .O(N46)
  );
  X_LUT4 #(
    .INIT ( 16'h2022 ))
  \PS2_send/transmissionTiming/carry_not0001  (
    .ADR0(\PS2_send/conta05uS/carry_126 ),
    .ADR1(\PS2_send/endComm/clk_in_old_141 ),
    .ADR2(N48),
    .ADR3(\PS2_send/runData_144 ),
    .O(\PS2_send/transmissionTiming/carry_not0001_154 )
  );
  X_LUT4 #(
    .INIT ( 16'hEF45 ))
  \PS2_send/Mmux_status_mux00004_SW1  (
    .ADR0(\PS2_send/status [0]),
    .ADR1(\PS2_send/send_old_147 ),
    .ADR2(send_163),
    .ADR3(\PS2_send/acquireChannel/carry_63 ),
    .O(N50)
  );
  X_LUT4 #(
    .INIT ( 16'h2075 ))
  \PS2_send/Mmux_status_mux00004  (
    .ADR0(\PS2_send/status [1]),
    .ADR1(\PS2_send/transmissionTiming/carry_152 ),
    .ADR2(\PS2_send/status [0]),
    .ADR3(N50),
    .O(\PS2_send/status_mux0000 [1])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/out_mux0000<0>18_SW0  (
    .ADR0(\waitSeconds/out [4]),
    .ADR1(\waitSeconds/out [5]),
    .ADR2(\waitSeconds/out [6]),
    .ADR3(\waitSeconds/out_mux0000<0>6_180 ),
    .O(N52)
  );
  X_LUT4 #(
    .INIT ( 16'hA2AA ))
  \waitSeconds/out_mux0000<0>18  (
    .ADR0(run_162),
    .ADR1(\waitSeconds/out [0]),
    .ADR2(N52),
    .ADR3(\waitSeconds/run_old_189 ),
    .O(\waitSeconds/out_mux0000 [0])
  );
  X_LUT4 #(
    .INIT ( 16'h2888 ))
  \PS2_send/acquireChannel/out_mux0000<3>32  (
    .ADR0(\PS2_send/N19 ),
    .ADR1(\PS2_send/acquireChannel/out [3]),
    .ADR2(\PS2_send/acquireChannel/out [0]),
    .ADR3(N54),
    .O(\PS2_send/acquireChannel/out_mux0000 [3])
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_11  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [1]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_1 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_21  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [2]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_2 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_31  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [3]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_3 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_41  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [4]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_4 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_51  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [5]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_5 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_71  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [7]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_7 )
  );
  X_LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_61  (
    .ADR0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .ADR1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .ADR2(\PS2_send/conta05uS/Result [6]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_6 )
  );
  X_CKBUF   CLK_50M_IBUF_BUFG (
    .I(CLK_50M_IBUF1),
    .O(CLK_50M_IBUF_2)
  );
  X_INV   \PS2_send/conta05uS/Mcount_out_lut<0>_INV_0  (
    .I(\PS2_send/conta05uS/out [0]),
    .O(\PS2_send/conta05uS/Mcount_out_lut [0])
  );
  X_INV   \PS2_send/runData_mux00001_INV_0  (
    .I(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/runData_mux0000 )
  );
  X_INV   w_delay_inv1_INV_0 (
    .I(\waitSeconds/carry_165 ),
    .O(w_delay_inv)
  );
  X_MUX2   \PS2_send/acquireChannel/out_mux0000<6>58  (
    .IA(N56),
    .IB(N57),
    .SEL(\PS2_send/acquireChannel/out [6]),
    .O(\PS2_send/acquireChannel/out_mux0000 [6])
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<6>58_F  (
    .ADR0(\PS2_send/N16 ),
    .ADR1(\PS2_send/acquireChannel/out [3]),
    .ADR2(\PS2_send/acquireChannel/out [4]),
    .ADR3(\PS2_send/acquireChannel/out [5]),
    .O(N56)
  );
  X_LUT3 #(
    .INIT ( 8'hA8 ))
  \PS2_send/acquireChannel/out_mux0000<6>58_G  (
    .ADR0(\PS2_send/N19 ),
    .ADR1(\PS2_send/acquireChannel/out_mux0000<6>20_91 ),
    .ADR2(\PS2_send/acquireChannel/out_mux0000<6>33_92 ),
    .O(N57)
  );
  X_BUF   \PS2_send/transmissionTiming/out_mux0000<1>21/LUT2_D_BUF  (
    .I(\PS2_send/N131 ),
    .O(N58)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \PS2_send/transmissionTiming/out_mux0000<1>21  (
    .ADR0(\PS2_send/runData_144 ),
    .ADR1(\PS2_send/transmissionTiming/run_old_161 ),
    .O(\PS2_send/N131 )
  );
  X_BUF   \PS2_send/Mmux_PS2D_mux0000211/LUT3_D_BUF  (
    .I(\PS2_send/N7 ),
    .O(N59)
  );
  X_LUT3 #(
    .INIT ( 8'hDF ))
  \PS2_send/Mmux_PS2D_mux0000211  (
    .ADR0(\PS2_send/status [0]),
    .ADR1(\PS2_send/status [1]),
    .ADR2(\PS2_send/acquireChannel/carry_63 ),
    .O(\PS2_send/N7 )
  );
  X_BUF   \PS2_send/_old_PS2C_711/LUT4_D_BUF  (
    .I(\PS2_send/N12 ),
    .O(N60)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \PS2_send/_old_PS2C_711  (
    .ADR0(send_163),
    .ADR1(\PS2_send/status [1]),
    .ADR2(\PS2_send/status [0]),
    .ADR3(\PS2_send/send_old_147 ),
    .O(\PS2_send/N12 )
  );
  X_BUF   \PS2_send/acquireChannel/carry_mux0000_SW0/LUT3_D_BUF  (
    .I(\PS2_send/acquireChannel/carry_not00016 ),
    .O(N61)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/acquireChannel/carry_mux0000_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [1]),
    .ADR2(\PS2_send/acquireChannel/out [0]),
    .O(\PS2_send/acquireChannel/carry_not00016 )
  );
  X_BUF   \waitSeconds/out_mux0000<0>6/LUT3_L_BUF  (
    .I(\waitSeconds/out_mux0000<0>6/O ),
    .O(\waitSeconds/out_mux0000<0>6_180 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<0>6  (
    .ADR0(\waitSeconds/out [3]),
    .ADR1(\waitSeconds/out [2]),
    .ADR2(\waitSeconds/out [1]),
    .O(\waitSeconds/out_mux0000<0>6/O )
  );
  X_BUF   \PS2_send/conta05uS/out_cmp_eq000012/LUT4_D_BUF  (
    .I(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .O(N62)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \PS2_send/conta05uS/out_cmp_eq000012  (
    .ADR0(\PS2_send/conta05uS/out [0]),
    .ADR1(\PS2_send/conta05uS/out [1]),
    .ADR2(\PS2_send/conta05uS/out [2]),
    .ADR3(\PS2_send/conta05uS/out [3]),
    .O(\PS2_send/conta05uS/out_cmp_eq000012_138 )
  );
  X_BUF   \PS2_send/conta05uS/out_cmp_eq000025/LUT4_D_BUF  (
    .I(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .O(N63)
  );
  X_LUT4 #(
    .INIT ( 16'h0001 ))
  \PS2_send/conta05uS/out_cmp_eq000025  (
    .ADR0(\PS2_send/conta05uS/out [7]),
    .ADR1(\PS2_send/conta05uS/out [6]),
    .ADR2(\PS2_send/conta05uS/out [5]),
    .ADR3(\PS2_send/conta05uS/out [4]),
    .O(\PS2_send/conta05uS/out_cmp_eq000025_139 )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<1>31/LUT2_D_BUF  (
    .I(\PS2_send/N19 ),
    .O(N64)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \PS2_send/acquireChannel/out_mux0000<1>31  (
    .ADR0(\PS2_send/acquireChannel/run_old_94 ),
    .ADR1(\PS2_send/runAcq_142 ),
    .O(\PS2_send/N19 )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<7>_SW0/LUT4_L_BUF  (
    .I(\PS2_send/acquireChannel/out_mux0000<7>_SW0/O ),
    .O(N13)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<7>_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [5]),
    .ADR1(\PS2_send/acquireChannel/out [4]),
    .ADR2(\PS2_send/acquireChannel/out [3]),
    .ADR3(\PS2_send/acquireChannel/out [6]),
    .O(\PS2_send/acquireChannel/out_mux0000<7>_SW0/O )
  );
  X_BUF   \waitSeconds/out_mux0000<3>39/LUT2_D_BUF  (
    .I(\waitSeconds/out_mux0000<1>24 ),
    .O(N65)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \waitSeconds/out_mux0000<3>39  (
    .ADR0(run_162),
    .ADR1(\waitSeconds/run_old_189 ),
    .O(\waitSeconds/out_mux0000<1>24 )
  );
  X_BUF   \waitSeconds/carry_not000125/LUT3_L_BUF  (
    .I(\waitSeconds/carry_not000125/O ),
    .O(\waitSeconds/carry_not000125_169 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \waitSeconds/carry_not000125  (
    .ADR0(\waitSeconds/out [4]),
    .ADR1(\waitSeconds/out [5]),
    .ADR2(\waitSeconds/out [0]),
    .O(\waitSeconds/carry_not000125/O )
  );
  X_BUF   \waitSeconds/carry_not000153/LUT4_D_BUF  (
    .I(\waitSeconds/carry_not000153_170 ),
    .O(N66)
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_not000153  (
    .ADR0(\waitSeconds/out [1]),
    .ADR1(\waitSeconds/out [3]),
    .ADR2(\waitSeconds/out [2]),
    .ADR3(\waitSeconds/out [0]),
    .O(\waitSeconds/carry_not000153_170 )
  );
  X_BUF   \PS2_send/conta05uS/out_cmp_ge00001_SW0/LUT2_L_BUF  (
    .I(\PS2_send/conta05uS/out_cmp_ge00001_SW0/O ),
    .O(N15)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \PS2_send/conta05uS/out_cmp_ge00001_SW0  (
    .ADR0(\PS2_send/conta05uS/out [7]),
    .ADR1(\PS2_send/conta05uS/out [6]),
    .O(\PS2_send/conta05uS/out_cmp_ge00001_SW0/O )
  );
  X_BUF   \waitSeconds/out_mux0000<0>21/LUT3_D_BUF  (
    .I(N111),
    .O(N67)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<0>21  (
    .ADR0(\waitSeconds/out [4]),
    .ADR1(\waitSeconds/out [5]),
    .ADR2(\waitSeconds/out [6]),
    .O(N111)
  );
  X_BUF   \waitSeconds/out_mux0000<5>1_SW0/LUT4_L_BUF  (
    .I(\waitSeconds/out_mux0000<5>1_SW0/O ),
    .O(N21)
  );
  X_LUT4 #(
    .INIT ( 16'hBCF0 ))
  \waitSeconds/out_mux0000<5>1_SW0  (
    .ADR0(\waitSeconds/out [6]),
    .ADR1(\waitSeconds/out [4]),
    .ADR2(\waitSeconds/out [5]),
    .ADR3(\waitSeconds/carry_not000153_170 ),
    .O(\waitSeconds/out_mux0000<5>1_SW0/O )
  );
  X_BUF   \waitSeconds/out_mux0000<4>1_SW0/LUT4_L_BUF  (
    .I(\waitSeconds/out_mux0000<4>1_SW0/O ),
    .O(N23)
  );
  X_LUT4 #(
    .INIT ( 16'h8FF0 ))
  \waitSeconds/out_mux0000<4>1_SW0  (
    .ADR0(\waitSeconds/out [6]),
    .ADR1(\waitSeconds/out [5]),
    .ADR2(\waitSeconds/out [4]),
    .ADR3(\waitSeconds/carry_not000153_170 ),
    .O(\waitSeconds/out_mux0000<4>1_SW0/O )
  );
  X_BUF   \PS2_send/acquireChannel/carry_not000127/LUT2_L_BUF  (
    .I(\PS2_send/acquireChannel/carry_not000127/O ),
    .O(\PS2_send/acquireChannel/carry_not000127_67 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \PS2_send/acquireChannel/carry_not000127  (
    .ADR0(\PS2_send/acquireChannel/out [1]),
    .ADR1(\PS2_send/acquireChannel/out [7]),
    .O(\PS2_send/acquireChannel/carry_not000127/O )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<5>11/LUT2_D_BUF  (
    .I(\PS2_send/N3 ),
    .O(N68)
  );
  X_LUT2 #(
    .INIT ( 4'h7 ))
  \PS2_send/acquireChannel/out_mux0000<5>11  (
    .ADR0(\PS2_send/acquireChannel/out [6]),
    .ADR1(\PS2_send/acquireChannel/out [7]),
    .O(\PS2_send/N3 )
  );
  X_BUF   \PS2_send/acquireChannel/carry_not0001211/LUT3_D_BUF  (
    .I(\PS2_send/N18 ),
    .O(N69)
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \PS2_send/acquireChannel/carry_not0001211  (
    .ADR0(\PS2_send/acquireChannel/out [5]),
    .ADR1(\PS2_send/acquireChannel/out [4]),
    .ADR2(\PS2_send/acquireChannel/out [3]),
    .O(\PS2_send/N18 )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<2>_SW0/LUT4_L_BUF  (
    .I(\PS2_send/acquireChannel/out_mux0000<2>_SW0/O ),
    .O(N17)
  );
  X_LUT4 #(
    .INIT ( 16'h9931 ))
  \PS2_send/acquireChannel/out_mux0000<2>_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [0]),
    .ADR1(\PS2_send/acquireChannel/out [2]),
    .ADR2(\PS2_send/N18 ),
    .ADR3(\PS2_send/N3 ),
    .O(\PS2_send/acquireChannel/out_mux0000<2>_SW0/O )
  );
  X_BUF   \PS2_send/acquireChannel/carry_not000112/LUT4_L_BUF  (
    .I(\PS2_send/acquireChannel/carry_not000112/O ),
    .O(\PS2_send/acquireChannel/carry_not000112_66 )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \PS2_send/acquireChannel/carry_not000112  (
    .ADR0(\PS2_send/acquireChannel/out [7]),
    .ADR1(\PS2_send/acquireChannel/out [6]),
    .ADR2(\PS2_send/acquireChannel/carry_not00016 ),
    .ADR3(\PS2_send/N18 ),
    .O(\PS2_send/acquireChannel/carry_not000112/O )
  );
  X_BUF   \waitSeconds/out_mux0000<3>42_SW0/LUT4_L_BUF  (
    .I(\waitSeconds/out_mux0000<3>42_SW0/O ),
    .O(N36)
  );
  X_LUT4 #(
    .INIT ( 16'hEA6A ))
  \waitSeconds/out_mux0000<3>42_SW0  (
    .ADR0(\waitSeconds/out [3]),
    .ADR1(\waitSeconds/out [1]),
    .ADR2(\waitSeconds/out [2]),
    .ADR3(N111),
    .O(\waitSeconds/out_mux0000<3>42_SW0/O )
  );
  X_BUF   \waitSeconds/out_mux0000<2>32_SW0/LUT4_L_BUF  (
    .I(\waitSeconds/out_mux0000<2>32_SW0/O ),
    .O(N38)
  );
  X_LUT4 #(
    .INIT ( 16'hDA5A ))
  \waitSeconds/out_mux0000<2>32_SW0  (
    .ADR0(\waitSeconds/out [1]),
    .ADR1(\waitSeconds/out [3]),
    .ADR2(\waitSeconds/out [2]),
    .ADR3(N111),
    .O(\waitSeconds/out_mux0000<2>32_SW0/O )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<0>9/LUT4_L_BUF  (
    .I(\PS2_send/acquireChannel/out_mux0000<0>9/O ),
    .O(\PS2_send/acquireChannel/out_mux0000<0>9_82 )
  );
  X_LUT4 #(
    .INIT ( 16'h00A8 ))
  \PS2_send/acquireChannel/out_mux0000<0>9  (
    .ADR0(\PS2_send/acquireChannel/out [0]),
    .ADR1(\PS2_send/acquireChannel/out [3]),
    .ADR2(N46),
    .ADR3(\PS2_send/N3 ),
    .O(\PS2_send/acquireChannel/out_mux0000<0>9/O )
  );
  X_BUF   \PS2_send/transmissionTiming/carry_not0001_SW1/LUT4_L_BUF  (
    .I(\PS2_send/transmissionTiming/carry_not0001_SW1/O ),
    .O(N48)
  );
  X_LUT4 #(
    .INIT ( 16'hFF57 ))
  \PS2_send/transmissionTiming/carry_not0001_SW1  (
    .ADR0(\PS2_send/transmissionTiming/run_old_161 ),
    .ADR1(\PS2_send/transmissionTiming/out [0]),
    .ADR2(\PS2_send/transmissionTiming/out [1]),
    .ADR3(\PS2_send/transmissionTiming/out [2]),
    .O(\PS2_send/transmissionTiming/carry_not0001_SW1/O )
  );
  X_BUF   \PS2_send/acquireChannel/out_mux0000<3>32_SW0/LUT4_L_BUF  (
    .I(\PS2_send/acquireChannel/out_mux0000<3>32_SW0/O ),
    .O(N54)
  );
  X_LUT4 #(
    .INIT ( 16'h20A0 ))
  \PS2_send/acquireChannel/out_mux0000<3>32_SW0  (
    .ADR0(\PS2_send/acquireChannel/out [2]),
    .ADR1(\PS2_send/acquireChannel/out [6]),
    .ADR2(\PS2_send/acquireChannel/out [1]),
    .ADR3(\PS2_send/acquireChannel/out [7]),
    .O(\PS2_send/acquireChannel/out_mux0000<3>32_SW0/O )
  );
  X_IPAD #(
    .LOC ( "T15" ))
  BTN_SOUTH_203 (
    .PAD(NlwRenamedSig_IO_BTN_SOUTH)
  );
  X_IPAD #(
    .LOC ( "E12" ))
  CLK_50M_204 (
    .PAD(CLK_50M)
  );
  X_OPAD #(
    .LOC ( "R20" ))
  \LED<0>  (
    .PAD(LED[0])
  );
  X_OPAD #(
    .LOC ( "T19" ))
  \LED<1>  (
    .PAD(LED[1])
  );
  X_OPAD #(
    .LOC ( "U20" ))
  \LED<2>  (
    .PAD(LED[2])
  );
  X_OPAD #(
    .LOC ( "U19" ))
  \LED<3>  (
    .PAD(LED[3])
  );
  X_OPAD #(
    .LOC ( "V19" ))
  \LED<4>  (
    .PAD(LED[4])
  );
  X_OPAD #(
    .LOC ( "V20" ))
  \LED<5>  (
    .PAD(LED[5])
  );
  X_OPAD #(
    .LOC ( "Y22" ))
  \LED<6>  (
    .PAD(LED[6])
  );
  X_OPAD #(
    .LOC ( "W21" ))
  \LED<7>  (
    .PAD(LED[7])
  );
  X_OPAD #(
    .LOC ( "W12" ))
  PS2_CLK1_213 (
    .PAD(PS2_CLK1)
  );
  X_OPAD #(
    .LOC ( "V11" ))
  PS2_DATA1_214 (
    .PAD(PS2_DATA1)
  );
  X_PD   BTN_SOUTH_PULLDOWN (
    .O(NlwRenamedSig_IO_BTN_SOUTH)
  );
  X_PU   PS2_CLK1_PULLUP (
    .O(PS2_CLK1)
  );
  X_PU   PS2_DATA1_PULLUP (
    .O(PS2_DATA1)
  );
  X_OBUF   LED_0_OBUF (
    .I(\PS2_send/status [0]),
    .O(LED[0])
  );
  X_OBUF   LED_1_OBUF (
    .I(\PS2_send/status [1]),
    .O(LED[1])
  );
  X_OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[2])
  );
  X_OBUF   LED_3_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[3])
  );
  X_OBUF   LED_4_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[4])
  );
  X_OBUF   LED_5_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[5])
  );
  X_OBUF   LED_6_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[6])
  );
  X_OBUF   LED_7_OBUF (
    .I(LED_7_OBUF_13),
    .O(LED[7])
  );
  X_OBUF   PS2_CLK1_OBUF (
    .I(\PS2_send/PS2C_59 ),
    .O(PS2_CLK1)
  );
  X_OBUF   PS2_DATA1_OBUF (
    .I(\PS2_send/PS2D_60 ),
    .O(PS2_DATA1)
  );
  X_ZERO   NlwBlock_battleship_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_battleship_VCC (
    .O(VCC)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

