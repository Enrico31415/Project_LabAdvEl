////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: battleship_synthesis.v
// /___/   /\     Timestamp: Tue Apr 10 21:13:27 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim battleship.ngc battleship_synthesis.v 
// Device	: xc3s700an-4-fgg484
// Input file	: battleship.ngc
// Output file	: /home/mat/Documents/repos/Project_LabAdvEl/mouseTest/netgen/synthesis/battleship_synthesis.v
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
  GND   XST_GND (
    .G(LED_2_OBUF_12)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDRE   run (
    .C(CLK_50M_IBUF_2),
    .CE(LED_7_OBUF_13),
    .D(N1),
    .R(\waitSeconds/carry_165 ),
    .Q(run_162)
  );
  FDR   send (
    .C(CLK_50M_IBUF_2),
    .D(N1),
    .R(w_delay_inv),
    .Q(send_163)
  );
  FD   \waitSeconds/clk_in_old  (
    .C(CLK_50M_IBUF_2),
    .D(CLK_50M_IBUF1),
    .Q(\waitSeconds/clk_in_old_171 )
  );
  FD   \waitSeconds/run_old  (
    .C(CLK_50M_IBUF_2),
    .D(run_162),
    .Q(\waitSeconds/run_old_189 )
  );
  FDE   \waitSeconds/carry  (
    .C(CLK_50M_IBUF_2),
    .CE(\waitSeconds/carry_not0001 ),
    .D(\waitSeconds/carry_mux0000_166 ),
    .Q(\waitSeconds/carry_165 )
  );
  FDE   \waitSeconds/out_6  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [6]),
    .Q(\waitSeconds/out [6])
  );
  FDE   \waitSeconds/out_5  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [5]),
    .Q(\waitSeconds/out [5])
  );
  FDE   \waitSeconds/out_4  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [4]),
    .Q(\waitSeconds/out [4])
  );
  FDE   \waitSeconds/out_3  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [3]),
    .Q(\waitSeconds/out [3])
  );
  FDE   \waitSeconds/out_2  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [2]),
    .Q(\waitSeconds/out [2])
  );
  FDE   \waitSeconds/out_1  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [1]),
    .Q(\waitSeconds/out [1])
  );
  FDE   \waitSeconds/out_0  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\waitSeconds/out_mux0000 [0]),
    .Q(\waitSeconds/out [0])
  );
  FDRE   \PS2_send/conta05uS/carry  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/carry_not0001 ),
    .D(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .R(LED_2_OBUF_12),
    .Q(\PS2_send/conta05uS/carry_126 )
  );
  FDRE   \PS2_send/conta05uS/out_0  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_0 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [0])
  );
  FDRE   \PS2_send/conta05uS/out_1  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_1 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [1])
  );
  FDRE   \PS2_send/conta05uS/out_2  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_2 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [2])
  );
  FDRE   \PS2_send/conta05uS/out_3  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_3 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [3])
  );
  FDRE   \PS2_send/conta05uS/out_4  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_4 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [4])
  );
  FDRE   \PS2_send/conta05uS/out_5  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_5 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [5])
  );
  FDRE   \PS2_send/conta05uS/out_6  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_6 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [6])
  );
  FDRE   \PS2_send/conta05uS/out_7  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/conta05uS/out_and0000 ),
    .D(\PS2_send/conta05uS/Mcount_out_eqn_7 ),
    .R(\PS2_send/conta05uS/out_and0001 ),
    .Q(\PS2_send/conta05uS/out [7])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<0>  (
    .CI(LED_2_OBUF_12),
    .DI(N1),
    .S(\PS2_send/conta05uS/Mcount_out_lut [0]),
    .O(\PS2_send/conta05uS/Mcount_out_cy [0])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<0>  (
    .CI(LED_2_OBUF_12),
    .LI(\PS2_send/conta05uS/Mcount_out_lut [0]),
    .O(\PS2_send/conta05uS/Result [0])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<1>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [0]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [1])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<1>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [0]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 ),
    .O(\PS2_send/conta05uS/Result [1])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<2>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [1]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [2])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<2>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [1]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 ),
    .O(\PS2_send/conta05uS/Result [2])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<3>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [2]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [3])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<3>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [2]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 ),
    .O(\PS2_send/conta05uS/Result [3])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<4>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [3]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [4])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<4>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [3]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 ),
    .O(\PS2_send/conta05uS/Result [4])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<5>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [4]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [5])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<5>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [4]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 ),
    .O(\PS2_send/conta05uS/Result [5])
  );
  MUXCY   \PS2_send/conta05uS/Mcount_out_cy<6>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [5]),
    .DI(LED_2_OBUF_12),
    .S(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ),
    .O(\PS2_send/conta05uS/Mcount_out_cy [6])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<6>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [5]),
    .LI(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 ),
    .O(\PS2_send/conta05uS/Result [6])
  );
  XORCY   \PS2_send/conta05uS/Mcount_out_xor<7>  (
    .CI(\PS2_send/conta05uS/Mcount_out_cy [6]),
    .LI(\PS2_send/conta05uS/Mcount_out_xor<7>_rt_117 ),
    .O(\PS2_send/conta05uS/Result [7])
  );
  FDE   \PS2_send/acquireChannel/out_0  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [0]),
    .Q(\PS2_send/acquireChannel/out [0])
  );
  FDE   \PS2_send/acquireChannel/out_1  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [1]),
    .Q(\PS2_send/acquireChannel/out [1])
  );
  FDE   \PS2_send/acquireChannel/out_2  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [2]),
    .Q(\PS2_send/acquireChannel/out [2])
  );
  FDE   \PS2_send/acquireChannel/out_3  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [3]),
    .Q(\PS2_send/acquireChannel/out [3])
  );
  FDE   \PS2_send/acquireChannel/out_4  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [4]),
    .Q(\PS2_send/acquireChannel/out [4])
  );
  FDE   \PS2_send/acquireChannel/out_5  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [5]),
    .Q(\PS2_send/acquireChannel/out [5])
  );
  FDE   \PS2_send/acquireChannel/out_6  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [6]),
    .Q(\PS2_send/acquireChannel/out [6])
  );
  FDE   \PS2_send/acquireChannel/out_7  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/acquireChannel/out_mux0000 [7]),
    .Q(\PS2_send/acquireChannel/out [7])
  );
  FDE   \PS2_send/acquireChannel/carry  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/carry_not0001 ),
    .D(\PS2_send/acquireChannel/carry_mux0000_64 ),
    .Q(\PS2_send/acquireChannel/carry_63 )
  );
  FD   \PS2_send/acquireChannel/run_old  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/runAcq_142 ),
    .Q(\PS2_send/acquireChannel/run_old_94 )
  );
  FDE   \PS2_send/transmissionTiming/out_0  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/transmissionTiming/out_mux0000 [0]),
    .Q(\PS2_send/transmissionTiming/out [0])
  );
  FDE   \PS2_send/transmissionTiming/out_1  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/transmissionTiming/out_mux0000 [1]),
    .Q(\PS2_send/transmissionTiming/out [1])
  );
  FDE   \PS2_send/transmissionTiming/out_2  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/acquireChannel/out_and0000 ),
    .D(\PS2_send/transmissionTiming/out_mux0000 [2]),
    .Q(\PS2_send/transmissionTiming/out [2])
  );
  FDE   \PS2_send/transmissionTiming/carry  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/transmissionTiming/carry_not0001_154 ),
    .D(\PS2_send/transmissionTiming/carry_mux0000 ),
    .Q(\PS2_send/transmissionTiming/carry_152 )
  );
  FD   \PS2_send/transmissionTiming/run_old  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/runData_144 ),
    .Q(\PS2_send/transmissionTiming/run_old_161 )
  );
  FD   \PS2_send/endComm/clk_in_old  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/conta05uS/carry_126 ),
    .Q(\PS2_send/endComm/clk_in_old_141 )
  );
  FD   \PS2_send/PS2D  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/PS2D_mux0000 ),
    .Q(\PS2_send/PS2D_60 )
  );
  FD   \PS2_send/status_1  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/status_mux0000 [0]),
    .Q(\PS2_send/status [1])
  );
  FD   \PS2_send/status_0  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/status_mux0000 [1]),
    .Q(\PS2_send/status [0])
  );
  FD   \PS2_send/send_old  (
    .C(CLK_50M_IBUF_2),
    .D(send_163),
    .Q(\PS2_send/send_old_147 )
  );
  FDE   \PS2_send/runData  (
    .C(CLK_50M_IBUF_2),
    .CE(\PS2_send/runData_not0001 ),
    .D(\PS2_send/runData_mux0000 ),
    .Q(\PS2_send/runData_144 )
  );
  FD   \PS2_send/runAcq  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/runAcq_mux0000 ),
    .Q(\PS2_send/runAcq_142 )
  );
  FD   \PS2_send/PS2C  (
    .C(CLK_50M_IBUF_2),
    .D(\PS2_send/_old_PS2C_7 ),
    .Q(\PS2_send/PS2C_59 )
  );
  LUT4 #(
    .INIT ( 16'h82AA ))
  \PS2_send/transmissionTiming/out_mux0000<0>1  (
    .I0(\PS2_send/runData_144 ),
    .I1(\PS2_send/transmissionTiming/out [0]),
    .I2(\PS2_send/transmissionTiming/out [2]),
    .I3(\PS2_send/transmissionTiming/run_old_161 ),
    .O(\PS2_send/transmissionTiming/out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \waitSeconds/out_and00001  (
    .I0(\waitSeconds/clk_in_old_171 ),
    .I1(CLK_50M_IBUF1),
    .O(\PS2_send/conta05uS/out_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/runData_not00011  (
    .I0(\PS2_send/status [1]),
    .I1(\PS2_send/status [0]),
    .I2(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/runData_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \PS2_send/acquireChannel/carry_not000131  (
    .I0(\PS2_send/endComm/clk_in_old_141 ),
    .I1(\PS2_send/conta05uS/carry_126 ),
    .O(\PS2_send/acquireChannel/out_and0000 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/runAcq_mux00001  (
    .I0(N60),
    .I1(\PS2_send/N7 ),
    .I2(\PS2_send/runAcq_142 ),
    .O(\PS2_send/runAcq_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/_old_PS2C_72  (
    .I0(N59),
    .I1(\PS2_send/PS2C_59 ),
    .I2(\PS2_send/N12 ),
    .O(\PS2_send/_old_PS2C_7 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \PS2_send/Mmux_PS2D_mux000021  (
    .I0(\PS2_send/N12 ),
    .I1(\PS2_send/N7 ),
    .I2(\PS2_send/PS2D_60 ),
    .O(\PS2_send/PS2D_mux0000 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \PS2_send/transmissionTiming/out_mux0000<2>1  (
    .I0(N58),
    .I1(\PS2_send/transmissionTiming/out [0]),
    .I2(\PS2_send/transmissionTiming/out [1]),
    .I3(\PS2_send/transmissionTiming/out [2]),
    .O(\PS2_send/transmissionTiming/out_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h90C0 ))
  \PS2_send/transmissionTiming/out_mux0000<1>1  (
    .I0(\PS2_send/transmissionTiming/out [2]),
    .I1(\PS2_send/transmissionTiming/out [1]),
    .I2(\PS2_send/N131 ),
    .I3(\PS2_send/transmissionTiming/out [0]),
    .O(\PS2_send/transmissionTiming/out_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h3020 ))
  \PS2_send/acquireChannel/carry_mux0000  (
    .I0(\PS2_send/N18 ),
    .I1(\PS2_send/N3 ),
    .I2(\PS2_send/N19 ),
    .I3(\PS2_send/acquireChannel/carry_not00016 ),
    .O(\PS2_send/acquireChannel/carry_mux0000_64 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_mux0000_SW0  (
    .I0(\waitSeconds/out [1]),
    .I1(\waitSeconds/out [0]),
    .I2(\waitSeconds/run_old_189 ),
    .I3(run_162),
    .O(N4)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_mux0000  (
    .I0(N111),
    .I1(\waitSeconds/out [3]),
    .I2(\waitSeconds/out [2]),
    .I3(N4),
    .O(\waitSeconds/carry_mux0000_166 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<5>31  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [1]),
    .I2(\PS2_send/acquireChannel/out [0]),
    .I3(N64),
    .O(\PS2_send/N16 )
  );
  LUT4 #(
    .INIT ( 16'hF888 ))
  \PS2_send/acquireChannel/out_mux0000<7>  (
    .I0(\PS2_send/acquireChannel/out [7]),
    .I1(\PS2_send/N19 ),
    .I2(N13),
    .I3(\PS2_send/N16 ),
    .O(\PS2_send/acquireChannel/out_mux0000 [7])
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \PS2_send/acquireChannel/out_mux0000<6>20  (
    .I0(\PS2_send/acquireChannel/out [5]),
    .I1(\PS2_send/acquireChannel/out [7]),
    .I2(\PS2_send/acquireChannel/out [1]),
    .O(\PS2_send/acquireChannel/out_mux0000<6>20_91 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \PS2_send/acquireChannel/out_mux0000<6>33  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [3]),
    .I2(\PS2_send/acquireChannel/out [4]),
    .I3(\PS2_send/acquireChannel/out [0]),
    .O(\PS2_send/acquireChannel/out_mux0000<6>33_92 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \waitSeconds/carry_not000116  (
    .I0(\waitSeconds/out [6]),
    .I1(\waitSeconds/out [1]),
    .I2(\waitSeconds/out [3]),
    .I3(\waitSeconds/out [2]),
    .O(\waitSeconds/carry_not000116_168 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \PS2_send/conta05uS/out_cmp_ge00001  (
    .I0(\PS2_send/conta05uS/out [4]),
    .I1(\PS2_send/conta05uS/out [3]),
    .I2(\PS2_send/conta05uS/out [5]),
    .I3(N15),
    .O(\PS2_send/conta05uS/out_cmp_ge0000 )
  );
  LUT4 #(
    .INIT ( 16'h20E0 ))
  \PS2_send/acquireChannel/out_mux0000<2>  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [1]),
    .I2(\PS2_send/N19 ),
    .I3(N17),
    .O(\PS2_send/acquireChannel/out_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<6>1_SW0  (
    .I0(\waitSeconds/out [5]),
    .I1(\waitSeconds/out [4]),
    .I2(N66),
    .O(N19)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \waitSeconds/out_mux0000<6>1  (
    .I0(run_162),
    .I1(\waitSeconds/run_old_189 ),
    .I2(\waitSeconds/out [6]),
    .I3(N19),
    .O(\waitSeconds/out_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<5>1  (
    .I0(\waitSeconds/run_old_189 ),
    .I1(run_162),
    .I2(N21),
    .O(\waitSeconds/out_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<4>1  (
    .I0(\waitSeconds/run_old_189 ),
    .I1(run_162),
    .I2(N23),
    .O(\waitSeconds/out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hD555 ))
  \waitSeconds/out_mux0000<1>7  (
    .I0(\waitSeconds/out [0]),
    .I1(\waitSeconds/out [2]),
    .I2(\waitSeconds/out [3]),
    .I3(N67),
    .O(\waitSeconds/out_mux0000<1>7_183 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<5>3  (
    .I0(\PS2_send/acquireChannel/out [4]),
    .I1(\PS2_send/acquireChannel/out [3]),
    .I2(\PS2_send/N3 ),
    .I3(\PS2_send/N16 ),
    .O(\PS2_send/acquireChannel/out_mux0000<5>2_89 )
  );
  MUXF5   \PS2_send/acquireChannel/out_mux0000<5>_f5  (
    .I0(\PS2_send/acquireChannel/out_mux0000<5>2_89 ),
    .I1(\PS2_send/acquireChannel/out_mux0000<5>1 ),
    .S(\PS2_send/acquireChannel/out [5]),
    .O(\PS2_send/acquireChannel/out_mux0000 [5])
  );
  LUT4 #(
    .INIT ( 16'hCCC4 ))
  \PS2_send/acquireChannel/out_mux0000<0>35  (
    .I0(\PS2_send/acquireChannel/run_old_94 ),
    .I1(\PS2_send/runAcq_142 ),
    .I2(\PS2_send/acquireChannel/out_mux0000<0>21_81 ),
    .I3(\PS2_send/acquireChannel/out_mux0000<0>9_82 ),
    .O(\PS2_send/acquireChannel/out_mux0000 [0])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \PS2_send/acquireChannel/carry_not00013  (
    .I0(\PS2_send/acquireChannel/run_old_94 ),
    .I1(\PS2_send/runAcq_142 ),
    .O(\PS2_send/acquireChannel/carry_not00013_68 )
  );
  LUT4 #(
    .INIT ( 16'hCCC8 ))
  \PS2_send/acquireChannel/carry_not000167  (
    .I0(\PS2_send/acquireChannel/carry_not00013_68 ),
    .I1(\PS2_send/acquireChannel/out_and0000 ),
    .I2(\PS2_send/acquireChannel/carry_not000146_69 ),
    .I3(\PS2_send/acquireChannel/carry_not000112_66 ),
    .O(\PS2_send/acquireChannel/carry_not0001 )
  );
  IBUF   CLK_50M_IBUF (
    .I(CLK_50M),
    .O(CLK_50M_IBUF1)
  );
  IBUF   BTN_SOUTH_IBUF (
    .I(BTN_SOUTH),
    .O(LED_7_OBUF_13)
  );
  OBUF   PS2_DATA1_OBUF (
    .I(\PS2_send/PS2D_60 ),
    .O(PS2_DATA1)
  );
  OBUF   PS2_CLK1_OBUF (
    .I(\PS2_send/PS2C_59 ),
    .O(PS2_CLK1)
  );
  OBUF   LED_7_OBUF (
    .I(LED_7_OBUF_13),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_12),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\PS2_send/status [1]),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\PS2_send/status [0]),
    .O(LED[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<1>_rt  (
    .I0(\PS2_send/conta05uS/out [1]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<1>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<2>_rt  (
    .I0(\PS2_send/conta05uS/out [2]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<2>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<3>_rt  (
    .I0(\PS2_send/conta05uS/out [3]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<3>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<4>_rt  (
    .I0(\PS2_send/conta05uS/out [4]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<4>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<5>_rt  (
    .I0(\PS2_send/conta05uS/out [5]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<5>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_cy<6>_rt  (
    .I0(\PS2_send/conta05uS/out [6]),
    .O(\PS2_send/conta05uS/Mcount_out_cy<6>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \PS2_send/conta05uS/Mcount_out_xor<7>_rt  (
    .I0(\PS2_send/conta05uS/out [7]),
    .O(\PS2_send/conta05uS/Mcount_out_xor<7>_rt_117 )
  );
  LUT4 #(
    .INIT ( 16'hD5FF ))
  \PS2_send/acquireChannel/out_mux0000<4>1  (
    .I0(\PS2_send/acquireChannel/out [3]),
    .I1(\PS2_send/acquireChannel/out [6]),
    .I2(\PS2_send/acquireChannel/out [7]),
    .I3(N61),
    .O(\PS2_send/N11 )
  );
  LUT4 #(
    .INIT ( 16'hC040 ))
  \PS2_send/acquireChannel/out_mux0000<5>2  (
    .I0(\PS2_send/acquireChannel/out [4]),
    .I1(\PS2_send/acquireChannel/run_old_94 ),
    .I2(\PS2_send/runAcq_142 ),
    .I3(\PS2_send/N11 ),
    .O(\PS2_send/acquireChannel/out_mux0000<5>1 )
  );
  MUXF5   \PS2_send/acquireChannel/out_mux0000<4>  (
    .I0(N32),
    .I1(N33),
    .S(\PS2_send/acquireChannel/out [4]),
    .O(\PS2_send/acquireChannel/out_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'h7000 ))
  \PS2_send/acquireChannel/out_mux0000<4>_F  (
    .I0(\PS2_send/acquireChannel/out [6]),
    .I1(\PS2_send/acquireChannel/out [7]),
    .I2(\PS2_send/acquireChannel/out [3]),
    .I3(\PS2_send/N16 ),
    .O(N32)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/acquireChannel/out_mux0000<4>_G  (
    .I0(\PS2_send/acquireChannel/run_old_94 ),
    .I1(\PS2_send/runAcq_142 ),
    .I2(\PS2_send/N11 ),
    .O(N33)
  );
  LUT4 #(
    .INIT ( 16'hF777 ))
  \waitSeconds/carry_not000179_SW0  (
    .I0(\waitSeconds/run_old_189 ),
    .I1(run_162),
    .I2(\waitSeconds/carry_not000125_169 ),
    .I3(\waitSeconds/carry_not000116_168 ),
    .O(N34)
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \waitSeconds/carry_not000179  (
    .I0(\PS2_send/conta05uS/out_and0000 ),
    .I1(N111),
    .I2(\waitSeconds/carry_not000153_170 ),
    .I3(N34),
    .O(\waitSeconds/carry_not0001 )
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<1>27  (
    .I0(N65),
    .I1(\waitSeconds/out [1]),
    .I2(\waitSeconds/out [0]),
    .I3(\waitSeconds/out_mux0000<1>7_183 ),
    .O(\waitSeconds/out_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<3>42  (
    .I0(\waitSeconds/out_mux0000<1>24 ),
    .I1(\waitSeconds/out [0]),
    .I2(\waitSeconds/out [3]),
    .I3(N36),
    .O(\waitSeconds/out_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'hA820 ))
  \waitSeconds/out_mux0000<2>32  (
    .I0(\waitSeconds/out_mux0000<1>24 ),
    .I1(\waitSeconds/out [0]),
    .I2(\waitSeconds/out [2]),
    .I3(N38),
    .O(\waitSeconds/out_mux0000 [2])
  );
  LUT4 #(
    .INIT ( 16'hCC34 ))
  \PS2_send/acquireChannel/out_mux0000<1>_SW2  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [1]),
    .I2(\PS2_send/N18 ),
    .I3(N68),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'h20E0 ))
  \PS2_send/acquireChannel/out_mux0000<1>  (
    .I0(\PS2_send/acquireChannel/out [1]),
    .I1(\PS2_send/acquireChannel/out [0]),
    .I2(\PS2_send/N19 ),
    .I3(N40),
    .O(\PS2_send/acquireChannel/out_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h62EA ))
  \PS2_send/Mmux_status_mux000021  (
    .I0(\PS2_send/status [1]),
    .I1(\PS2_send/status [0]),
    .I2(\PS2_send/acquireChannel/carry_63 ),
    .I3(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/status_mux0000 [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \PS2_send/transmissionTiming/carry_mux00001  (
    .I0(\PS2_send/transmissionTiming/out [2]),
    .I1(\PS2_send/runData_144 ),
    .I2(\PS2_send/transmissionTiming/run_old_161 ),
    .O(\PS2_send/transmissionTiming/carry_mux0000 )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \PS2_send/conta05uS/Mcount_out_eqn_01  (
    .I0(N62),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [0]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_0 )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \PS2_send/conta05uS/carry_not00011  (
    .I0(\PS2_send/conta05uS/out_and0000 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I2(N63),
    .I3(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .O(\PS2_send/conta05uS/carry_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h1555 ))
  \PS2_send/acquireChannel/out_mux0000<0>21  (
    .I0(\PS2_send/acquireChannel/out [0]),
    .I1(\PS2_send/acquireChannel/out [6]),
    .I2(\PS2_send/acquireChannel/out [7]),
    .I3(N69),
    .O(\PS2_send/acquireChannel/out_mux0000<0>21_81 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \PS2_send/conta05uS/out_and00011  (
    .I0(CLK_50M_IBUF1),
    .I1(\waitSeconds/clk_in_old_171 ),
    .I2(\PS2_send/conta05uS/out_cmp_ge0000 ),
    .O(\PS2_send/conta05uS/out_and0001 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \PS2_send/acquireChannel/carry_not000146_SW0  (
    .I0(\PS2_send/acquireChannel/out [5]),
    .I1(\PS2_send/acquireChannel/out [6]),
    .I2(\PS2_send/acquireChannel/out [4]),
    .I3(\PS2_send/acquireChannel/out [3]),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \PS2_send/acquireChannel/carry_not000146  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [0]),
    .I2(N42),
    .I3(\PS2_send/acquireChannel/carry_not000127_67 ),
    .O(\PS2_send/acquireChannel/carry_not000146_69 )
  );
  LUT4 #(
    .INIT ( 16'hFFF8 ))
  \PS2_send/acquireChannel/out_mux0000<0>9_SW0  (
    .I0(\PS2_send/acquireChannel/out [1]),
    .I1(\PS2_send/acquireChannel/out [2]),
    .I2(\PS2_send/acquireChannel/out [4]),
    .I3(\PS2_send/acquireChannel/out [5]),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'h2022 ))
  \PS2_send/transmissionTiming/carry_not0001  (
    .I0(\PS2_send/conta05uS/carry_126 ),
    .I1(\PS2_send/endComm/clk_in_old_141 ),
    .I2(N48),
    .I3(\PS2_send/runData_144 ),
    .O(\PS2_send/transmissionTiming/carry_not0001_154 )
  );
  LUT4 #(
    .INIT ( 16'hEF45 ))
  \PS2_send/Mmux_status_mux00004_SW1  (
    .I0(\PS2_send/status [0]),
    .I1(\PS2_send/send_old_147 ),
    .I2(send_163),
    .I3(\PS2_send/acquireChannel/carry_63 ),
    .O(N50)
  );
  LUT4 #(
    .INIT ( 16'h2075 ))
  \PS2_send/Mmux_status_mux00004  (
    .I0(\PS2_send/status [1]),
    .I1(\PS2_send/transmissionTiming/carry_152 ),
    .I2(\PS2_send/status [0]),
    .I3(N50),
    .O(\PS2_send/status_mux0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \waitSeconds/out_mux0000<0>18_SW0  (
    .I0(\waitSeconds/out [4]),
    .I1(\waitSeconds/out [5]),
    .I2(\waitSeconds/out [6]),
    .I3(\waitSeconds/out_mux0000<0>6_180 ),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'hA2AA ))
  \waitSeconds/out_mux0000<0>18  (
    .I0(run_162),
    .I1(\waitSeconds/out [0]),
    .I2(N52),
    .I3(\waitSeconds/run_old_189 ),
    .O(\waitSeconds/out_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h2888 ))
  \PS2_send/acquireChannel/out_mux0000<3>32  (
    .I0(\PS2_send/N19 ),
    .I1(\PS2_send/acquireChannel/out [3]),
    .I2(\PS2_send/acquireChannel/out [0]),
    .I3(N54),
    .O(\PS2_send/acquireChannel/out_mux0000 [3])
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_11  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [1]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_1 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_21  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [2]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_2 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_31  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [3]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_3 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_41  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [4]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_4 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_51  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [5]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_5 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_71  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [7]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_7 )
  );
  LUT3 #(
    .INIT ( 8'h70 ))
  \PS2_send/conta05uS/Mcount_out_eqn_61  (
    .I0(\PS2_send/conta05uS/out_cmp_eq000012_138 ),
    .I1(\PS2_send/conta05uS/out_cmp_eq000025_139 ),
    .I2(\PS2_send/conta05uS/Result [6]),
    .O(\PS2_send/conta05uS/Mcount_out_eqn_6 )
  );
  BUFG   CLK_50M_IBUF_BUFG (
    .I(CLK_50M_IBUF1),
    .O(CLK_50M_IBUF_2)
  );
  INV   \PS2_send/conta05uS/Mcount_out_lut<0>_INV_0  (
    .I(\PS2_send/conta05uS/out [0]),
    .O(\PS2_send/conta05uS/Mcount_out_lut [0])
  );
  INV   \PS2_send/runData_mux00001_INV_0  (
    .I(\PS2_send/transmissionTiming/carry_152 ),
    .O(\PS2_send/runData_mux0000 )
  );
  INV   w_delay_inv1_INV_0 (
    .I(\waitSeconds/carry_165 ),
    .O(w_delay_inv)
  );
  MUXF5   \PS2_send/acquireChannel/out_mux0000<6>58  (
    .I0(N56),
    .I1(N57),
    .S(\PS2_send/acquireChannel/out [6]),
    .O(\PS2_send/acquireChannel/out_mux0000 [6])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<6>58_F  (
    .I0(\PS2_send/N16 ),
    .I1(\PS2_send/acquireChannel/out [3]),
    .I2(\PS2_send/acquireChannel/out [4]),
    .I3(\PS2_send/acquireChannel/out [5]),
    .O(N56)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \PS2_send/acquireChannel/out_mux0000<6>58_G  (
    .I0(\PS2_send/N19 ),
    .I1(\PS2_send/acquireChannel/out_mux0000<6>20_91 ),
    .I2(\PS2_send/acquireChannel/out_mux0000<6>33_92 ),
    .O(N57)
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \PS2_send/transmissionTiming/out_mux0000<1>21  (
    .I0(\PS2_send/runData_144 ),
    .I1(\PS2_send/transmissionTiming/run_old_161 ),
    .LO(N58),
    .O(\PS2_send/N131 )
  );
  LUT3_D #(
    .INIT ( 8'hDF ))
  \PS2_send/Mmux_PS2D_mux0000211  (
    .I0(\PS2_send/status [0]),
    .I1(\PS2_send/status [1]),
    .I2(\PS2_send/acquireChannel/carry_63 ),
    .LO(N59),
    .O(\PS2_send/N7 )
  );
  LUT4_D #(
    .INIT ( 16'hFFFD ))
  \PS2_send/_old_PS2C_711  (
    .I0(send_163),
    .I1(\PS2_send/status [1]),
    .I2(\PS2_send/status [0]),
    .I3(\PS2_send/send_old_147 ),
    .LO(N60),
    .O(\PS2_send/N12 )
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \PS2_send/acquireChannel/carry_mux0000_SW0  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [1]),
    .I2(\PS2_send/acquireChannel/out [0]),
    .LO(N61),
    .O(\PS2_send/acquireChannel/carry_not00016 )
  );
  LUT3_L #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<0>6  (
    .I0(\waitSeconds/out [3]),
    .I1(\waitSeconds/out [2]),
    .I2(\waitSeconds/out [1]),
    .LO(\waitSeconds/out_mux0000<0>6_180 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \PS2_send/conta05uS/out_cmp_eq000012  (
    .I0(\PS2_send/conta05uS/out [0]),
    .I1(\PS2_send/conta05uS/out [1]),
    .I2(\PS2_send/conta05uS/out [2]),
    .I3(\PS2_send/conta05uS/out [3]),
    .LO(N62),
    .O(\PS2_send/conta05uS/out_cmp_eq000012_138 )
  );
  LUT4_D #(
    .INIT ( 16'h0001 ))
  \PS2_send/conta05uS/out_cmp_eq000025  (
    .I0(\PS2_send/conta05uS/out [7]),
    .I1(\PS2_send/conta05uS/out [6]),
    .I2(\PS2_send/conta05uS/out [5]),
    .I3(\PS2_send/conta05uS/out [4]),
    .LO(N63),
    .O(\PS2_send/conta05uS/out_cmp_eq000025_139 )
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \PS2_send/acquireChannel/out_mux0000<1>31  (
    .I0(\PS2_send/acquireChannel/run_old_94 ),
    .I1(\PS2_send/runAcq_142 ),
    .LO(N64),
    .O(\PS2_send/N19 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \PS2_send/acquireChannel/out_mux0000<7>_SW0  (
    .I0(\PS2_send/acquireChannel/out [5]),
    .I1(\PS2_send/acquireChannel/out [4]),
    .I2(\PS2_send/acquireChannel/out [3]),
    .I3(\PS2_send/acquireChannel/out [6]),
    .LO(N13)
  );
  LUT2_D #(
    .INIT ( 4'h8 ))
  \waitSeconds/out_mux0000<3>39  (
    .I0(run_162),
    .I1(\waitSeconds/run_old_189 ),
    .LO(N65),
    .O(\waitSeconds/out_mux0000<1>24 )
  );
  LUT3_L #(
    .INIT ( 8'h01 ))
  \waitSeconds/carry_not000125  (
    .I0(\waitSeconds/out [4]),
    .I1(\waitSeconds/out [5]),
    .I2(\waitSeconds/out [0]),
    .LO(\waitSeconds/carry_not000125_169 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \waitSeconds/carry_not000153  (
    .I0(\waitSeconds/out [1]),
    .I1(\waitSeconds/out [3]),
    .I2(\waitSeconds/out [2]),
    .I3(\waitSeconds/out [0]),
    .LO(N66),
    .O(\waitSeconds/carry_not000153_170 )
  );
  LUT2_L #(
    .INIT ( 4'hE ))
  \PS2_send/conta05uS/out_cmp_ge00001_SW0  (
    .I0(\PS2_send/conta05uS/out [7]),
    .I1(\PS2_send/conta05uS/out [6]),
    .LO(N15)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \waitSeconds/out_mux0000<0>21  (
    .I0(\waitSeconds/out [4]),
    .I1(\waitSeconds/out [5]),
    .I2(\waitSeconds/out [6]),
    .LO(N67),
    .O(N111)
  );
  LUT4_L #(
    .INIT ( 16'hBCF0 ))
  \waitSeconds/out_mux0000<5>1_SW0  (
    .I0(\waitSeconds/out [6]),
    .I1(\waitSeconds/out [4]),
    .I2(\waitSeconds/out [5]),
    .I3(\waitSeconds/carry_not000153_170 ),
    .LO(N21)
  );
  LUT4_L #(
    .INIT ( 16'h8FF0 ))
  \waitSeconds/out_mux0000<4>1_SW0  (
    .I0(\waitSeconds/out [6]),
    .I1(\waitSeconds/out [5]),
    .I2(\waitSeconds/out [4]),
    .I3(\waitSeconds/carry_not000153_170 ),
    .LO(N23)
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  \PS2_send/acquireChannel/carry_not000127  (
    .I0(\PS2_send/acquireChannel/out [1]),
    .I1(\PS2_send/acquireChannel/out [7]),
    .LO(\PS2_send/acquireChannel/carry_not000127_67 )
  );
  LUT2_D #(
    .INIT ( 4'h7 ))
  \PS2_send/acquireChannel/out_mux0000<5>11  (
    .I0(\PS2_send/acquireChannel/out [6]),
    .I1(\PS2_send/acquireChannel/out [7]),
    .LO(N68),
    .O(\PS2_send/N3 )
  );
  LUT3_D #(
    .INIT ( 8'hFE ))
  \PS2_send/acquireChannel/carry_not0001211  (
    .I0(\PS2_send/acquireChannel/out [5]),
    .I1(\PS2_send/acquireChannel/out [4]),
    .I2(\PS2_send/acquireChannel/out [3]),
    .LO(N69),
    .O(\PS2_send/N18 )
  );
  LUT4_L #(
    .INIT ( 16'h9931 ))
  \PS2_send/acquireChannel/out_mux0000<2>_SW0  (
    .I0(\PS2_send/acquireChannel/out [0]),
    .I1(\PS2_send/acquireChannel/out [2]),
    .I2(\PS2_send/N18 ),
    .I3(\PS2_send/N3 ),
    .LO(N17)
  );
  LUT4_L #(
    .INIT ( 16'h8880 ))
  \PS2_send/acquireChannel/carry_not000112  (
    .I0(\PS2_send/acquireChannel/out [7]),
    .I1(\PS2_send/acquireChannel/out [6]),
    .I2(\PS2_send/acquireChannel/carry_not00016 ),
    .I3(\PS2_send/N18 ),
    .LO(\PS2_send/acquireChannel/carry_not000112_66 )
  );
  LUT4_L #(
    .INIT ( 16'hEA6A ))
  \waitSeconds/out_mux0000<3>42_SW0  (
    .I0(\waitSeconds/out [3]),
    .I1(\waitSeconds/out [1]),
    .I2(\waitSeconds/out [2]),
    .I3(N111),
    .LO(N36)
  );
  LUT4_L #(
    .INIT ( 16'hDA5A ))
  \waitSeconds/out_mux0000<2>32_SW0  (
    .I0(\waitSeconds/out [1]),
    .I1(\waitSeconds/out [3]),
    .I2(\waitSeconds/out [2]),
    .I3(N111),
    .LO(N38)
  );
  LUT4_L #(
    .INIT ( 16'h00A8 ))
  \PS2_send/acquireChannel/out_mux0000<0>9  (
    .I0(\PS2_send/acquireChannel/out [0]),
    .I1(\PS2_send/acquireChannel/out [3]),
    .I2(N46),
    .I3(\PS2_send/N3 ),
    .LO(\PS2_send/acquireChannel/out_mux0000<0>9_82 )
  );
  LUT4_L #(
    .INIT ( 16'hFF57 ))
  \PS2_send/transmissionTiming/carry_not0001_SW1  (
    .I0(\PS2_send/transmissionTiming/run_old_161 ),
    .I1(\PS2_send/transmissionTiming/out [0]),
    .I2(\PS2_send/transmissionTiming/out [1]),
    .I3(\PS2_send/transmissionTiming/out [2]),
    .LO(N48)
  );
  LUT4_L #(
    .INIT ( 16'h20A0 ))
  \PS2_send/acquireChannel/out_mux0000<3>32_SW0  (
    .I0(\PS2_send/acquireChannel/out [2]),
    .I1(\PS2_send/acquireChannel/out [6]),
    .I2(\PS2_send/acquireChannel/out [1]),
    .I3(\PS2_send/acquireChannel/out [7]),
    .LO(N54)
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

