////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldUnrouted.v
// /___/   /\     Timestamp: Sat Aug 02 00:36:36 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -ofmt verilog xdlFileCreated/HelloWorld.ncd simulationFileUnrouted/HelloWorldUnrouted.v 
// Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: xdlFileCreated/HelloWorld.ncd
// Output file	: simulationFileUnrouted/HelloWorldUnrouted.v
// # of Modules	: 1
// Design Name	: HelloWorld
// Xilinx        : F:\Xilinix\14.7\ISE_DS\ISE\
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

module HelloWorld (
  \A2.PAD.PAD , \S1_FINAL_OUTPUT.OUTBUF.OUT , \A1.PAD.PAD , \B3.PAD.PAD , \A3.PAD.PAD , \B2.PAD.PAD , \S2_FINAL_OUTPUT.OUTBUF.OUT , 
\S3_FINAL_OUTPUT.OUTBUF.OUT , \S0_FINAL_OUTPUT.OUTBUF.OUT , \COUT_FINAL_OUTPUT.OUTBUF.OUT , \CIN.PAD.PAD , \B0.PAD.PAD , \B1.PAD.PAD , \A0.PAD.PAD 
);
  input \A2.PAD.PAD ;
  inout \S1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \A1.PAD.PAD ;
  input \B3.PAD.PAD ;
  input \A3.PAD.PAD ;
  input \B2.PAD.PAD ;
  inout \S2_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \S3_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \S0_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \COUT_FINAL_OUTPUT.OUTBUF.OUT ;
  input \CIN.PAD.PAD ;
  input \B0.PAD.PAD ;
  input \B1.PAD.PAD ;
  input \A0.PAD.PAD ;
  wire \XX_CARRY2_#fulladder#3#k_S2.DMUX->S2_FINAL_OUTPUT.O ;
  wire \CIN.I->S1_JJ_S0_CARRY1.C2 ;
  wire \CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 ;
  wire \S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 ;
  wire \S1_JJ_S0_CARRY1.CMUX->S0_FINAL_OUTPUT.O ;
  wire \A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 ;
  wire \A0.I->S1_JJ_S0_CARRY1.D1 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.CMUX->COUT_FINAL_OUTPUT.O ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.BMUX->S3_FINAL_OUTPUT.O ;
  wire \A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 ;
  wire \B2.I->CARRY3_#fulladder#4#k.A2 ;
  wire \B0.I->S1_JJ_S0_CARRY1.D2 ;
  wire \A2.I->S1_JJ_S0_CARRY1.B1 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.DMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B1 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.CMUX->XX_CARRY2_#fulladder#3#k_S2.A1 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.AMUX->S1_JJ_S0_CARRY1.C1 ;
  wire \S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 ;
  wire \B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 ;
  wire \B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 ;
  wire \S1_JJ_S0_CARRY1.AMUX->S1_FINAL_OUTPUT.O ;
  wire \CARRY3_#fulladder#4#k.BMUX->XX_CARRY2_#fulladder#3#k_S2.D1 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.AMUX->S1_JJ_S0_CARRY1.A1 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 ;
  wire \A2.INBUF.OUT ;
  wire \S1_FINAL_OUTPUT.INBUF.OUT ;
  wire \A1.INBUF.OUT ;
  wire \B3.INBUF.OUT ;
  wire \A3.INBUF.OUT ;
  wire \B2.INBUF.OUT ;
  wire \XX_CARRY2_#fulladder#3#k_S2.D5LUT.O5 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.C5LUT.O5 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.B5LUT.O5 ;
  wire \XX_CARRY2_#fulladder#3#k_S2.A5LUT.O5 ;
  wire \S1_JJ_S0_CARRY1.D5LUT.O5 ;
  wire \S1_JJ_S0_CARRY1.C5LUT.O5 ;
  wire \S1_JJ_S0_CARRY1.B5LUT.O5 ;
  wire \S1_JJ_S0_CARRY1.A5LUT.O5 ;
  wire \S2_FINAL_OUTPUT.INBUF.OUT ;
  wire \CARRY3_#fulladder#4#k.B5LUT.O5 ;
  wire \CARRY3_#fulladder#4#k.A5LUT.O5 ;
  wire \S3_FINAL_OUTPUT.INBUF.OUT ;
  wire \S0_FINAL_OUTPUT.INBUF.OUT ;
  wire \COUT_FINAL_OUTPUT.INBUF.OUT ;
  wire \CIN.INBUF.OUT ;
  wire \B0.INBUF.OUT ;
  wire \B1.INBUF.OUT ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT.O5 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT.O5 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT.O5 ;
  wire \#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT.O5 ;
  wire \A0.INBUF.OUT ;
  wire \NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldunrouted.sdf");
  X_IPAD   A2 (
    .PAD(\A2.PAD.PAD )
  );
  X_BUF   \A2.INBUF  (
    .O(\A2.INBUF.OUT ),
    .I(\A2.PAD.PAD )
  );
  X_BUF   \A2.IMUX  (
    .I(\A2.INBUF.OUT ),
    .O(\A2.I->S1_JJ_S0_CARRY1.B1 )
  );
  X_BPAD   S1_FINAL_OUTPUT (
    .PAD(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF   S1_FINAL_OUTPUT_OBUF (
    .I(\S1_JJ_S0_CARRY1.AMUX->S1_FINAL_OUTPUT.O ),
    .O(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S1_FINAL_OUTPUT.INBUF  (
    .O(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S1_FINAL_OUTPUT.IMUX  (
    .I(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD   A1 (
    .PAD(\A1.PAD.PAD )
  );
  X_BUF   \A1.INBUF  (
    .O(\A1.INBUF.OUT ),
    .I(\A1.PAD.PAD )
  );
  X_BUF   \A1.IMUX  (
    .I(\A1.INBUF.OUT ),
    .O(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 )
  );
  X_IPAD   B3 (
    .PAD(\B3.PAD.PAD )
  );
  X_BUF   \B3.INBUF  (
    .O(\B3.INBUF.OUT ),
    .I(\B3.PAD.PAD )
  );
  X_BUF   \B3.IMUX  (
    .I(\B3.INBUF.OUT ),
    .O(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 )
  );
  X_IPAD   A3 (
    .PAD(\A3.PAD.PAD )
  );
  X_BUF   \A3.INBUF  (
    .O(\A3.INBUF.OUT ),
    .I(\A3.PAD.PAD )
  );
  X_BUF   \A3.IMUX  (
    .I(\A3.INBUF.OUT ),
    .O(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 )
  );
  X_IPAD   B2 (
    .PAD(\B2.PAD.PAD )
  );
  X_BUF   \B2.INBUF  (
    .O(\B2.INBUF.OUT ),
    .I(\B2.PAD.PAD )
  );
  X_BUF   \B2.IMUX  (
    .I(\B2.INBUF.OUT ),
    .O(\B2.I->CARRY3_#fulladder#4#k.A2 )
  );
  X_BUF   \XX_CARRY2_#fulladder#3#k_S2/XX_CARRY2_#fulladder#3#k_S2_DMUX_Delay  (
    .I(\XX_CARRY2_#fulladder#3#k_S2.D5LUT.O5 ),
    .O(\XX_CARRY2_#fulladder#3#k_S2.DMUX->S2_FINAL_OUTPUT.O )
  );
  X_BUF   \XX_CARRY2_#fulladder#3#k_S2/XX_CARRY2_#fulladder#3#k_S2_CMUX_Delay  (
    .I(\XX_CARRY2_#fulladder#3#k_S2.C5LUT.O5 ),
    .O(\XX_CARRY2_#fulladder#3#k_S2.CMUX->XX_CARRY2_#fulladder#3#k_S2.A1 )
  );
  X_BUF   \XX_CARRY2_#fulladder#3#k_S2/XX_CARRY2_#fulladder#3#k_S2_BMUX_Delay  (
    .I(\XX_CARRY2_#fulladder#3#k_S2.B5LUT.O5 ),
    .O(\XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 )
  );
  X_BUF   \XX_CARRY2_#fulladder#3#k_S2/XX_CARRY2_#fulladder#3#k_S2_AMUX_Delay  (
    .I(\XX_CARRY2_#fulladder#3#k_S2.A5LUT.O5 ),
    .O(\XX_CARRY2_#fulladder#3#k_S2.AMUX->S1_JJ_S0_CARRY1.A1 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \XX_CARRY2_#fulladder#3#k_S2.D5LUT  (
    .ADR0(\CARRY3_#fulladder#4#k.BMUX->XX_CARRY2_#fulladder#3#k_S2.D1 ),
    .ADR1(\XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.D5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \XX_CARRY2_#fulladder#3#k_S2.C5LUT  (
    .ADR0(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 ),
    .ADR1(\B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.C5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'hE8E8E8E8 ))
  \XX_CARRY2_#fulladder#3#k_S2.B5LUT  (
    .ADR0(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 ),
    .ADR1(\B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 ),
    .ADR2(\S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.B5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \XX_CARRY2_#fulladder#3#k_S2.A5LUT  (
    .ADR0(\XX_CARRY2_#fulladder#3#k_S2.CMUX->XX_CARRY2_#fulladder#3#k_S2.A1 ),
    .ADR1(\S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.A5LUT.O5 )
  );
  X_BUF   \S1_JJ_S0_CARRY1/S1_JJ_S0_CARRY1_DMUX_Delay  (
    .I(\S1_JJ_S0_CARRY1.D5LUT.O5 ),
    .O(\S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 )
  );
  X_BUF   \S1_JJ_S0_CARRY1/S1_JJ_S0_CARRY1_CMUX_Delay  (
    .I(\S1_JJ_S0_CARRY1.C5LUT.O5 ),
    .O(\S1_JJ_S0_CARRY1.CMUX->S0_FINAL_OUTPUT.O )
  );
  X_BUF   \S1_JJ_S0_CARRY1/S1_JJ_S0_CARRY1_BMUX_Delay  (
    .I(\S1_JJ_S0_CARRY1.B5LUT.O5 ),
    .O(\S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 )
  );
  X_BUF   \S1_JJ_S0_CARRY1/S1_JJ_S0_CARRY1_AMUX_Delay  (
    .I(\S1_JJ_S0_CARRY1.A5LUT.O5 ),
    .O(\S1_JJ_S0_CARRY1.AMUX->S1_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .INIT ( 32'hE8E8E8E8 ))
  \S1_JJ_S0_CARRY1.D5LUT  (
    .ADR0(\A0.I->S1_JJ_S0_CARRY1.D1 ),
    .ADR1(\B0.I->S1_JJ_S0_CARRY1.D2 ),
    .ADR2(\CIN.I->S1_JJ_S0_CARRY1.C2 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.D5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \S1_JJ_S0_CARRY1.C5LUT  (
    .ADR0(\#fulladder#1#k_S3_COUT_#fulladder#2#k.AMUX->S1_JJ_S0_CARRY1.C1 ),
    .ADR1(\CIN.I->S1_JJ_S0_CARRY1.C2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.C5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAAAAA ))
  \S1_JJ_S0_CARRY1.B5LUT  (
    .ADR0(\A2.I->S1_JJ_S0_CARRY1.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.B5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'hAAAAAAAA ))
  \S1_JJ_S0_CARRY1.A5LUT  (
    .ADR0(\XX_CARRY2_#fulladder#3#k_S2.AMUX->S1_JJ_S0_CARRY1.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.A5LUT.O5 )
  );
  X_BPAD   S2_FINAL_OUTPUT (
    .PAD(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF   S2_FINAL_OUTPUT_OBUF (
    .I(\XX_CARRY2_#fulladder#3#k_S2.DMUX->S2_FINAL_OUTPUT.O ),
    .O(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S2_FINAL_OUTPUT.INBUF  (
    .O(\S2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S2_FINAL_OUTPUT.IMUX  (
    .I(\S2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \CARRY3_#fulladder#4#k/CARRY3_#fulladder#4#k_BMUX_Delay  (
    .I(\CARRY3_#fulladder#4#k.B5LUT.O5 ),
    .O(\CARRY3_#fulladder#4#k.BMUX->XX_CARRY2_#fulladder#3#k_S2.D1 )
  );
  X_BUF   \CARRY3_#fulladder#4#k/CARRY3_#fulladder#4#k_AMUX_Delay  (
    .I(\CARRY3_#fulladder#4#k.A5LUT.O5 ),
    .O(\CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \CARRY3_#fulladder#4#k.B5LUT  (
    .ADR0(\S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 ),
    .ADR1(\B2.I->CARRY3_#fulladder#4#k.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CARRY3_#fulladder#4#k.B5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'hE8E8E8E8 ))
  \CARRY3_#fulladder#4#k.A5LUT  (
    .ADR0(\S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 ),
    .ADR1(\B2.I->CARRY3_#fulladder#4#k.A2 ),
    .ADR2(\XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CARRY3_#fulladder#4#k.A5LUT.O5 )
  );
  X_BPAD   S3_FINAL_OUTPUT (
    .PAD(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF   S3_FINAL_OUTPUT_OBUF (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.BMUX->S3_FINAL_OUTPUT.O ),
    .O(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S3_FINAL_OUTPUT.INBUF  (
    .O(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S3_FINAL_OUTPUT.IMUX  (
    .I(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD   S0_FINAL_OUTPUT (
    .PAD(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF   S0_FINAL_OUTPUT_OBUF (
    .I(\S1_JJ_S0_CARRY1.CMUX->S0_FINAL_OUTPUT.O ),
    .O(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S0_FINAL_OUTPUT.INBUF  (
    .O(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \S0_FINAL_OUTPUT.IMUX  (
    .I(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD   COUT_FINAL_OUTPUT (
    .PAD(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF   COUT_FINAL_OUTPUT_OBUF (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.CMUX->COUT_FINAL_OUTPUT.O ),
    .O(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \COUT_FINAL_OUTPUT.INBUF  (
    .O(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .I(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF   \COUT_FINAL_OUTPUT.IMUX  (
    .I(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD   CIN (
    .PAD(\CIN.PAD.PAD )
  );
  X_BUF   \CIN.INBUF  (
    .O(\CIN.INBUF.OUT ),
    .I(\CIN.PAD.PAD )
  );
  X_BUF   \CIN.IMUX  (
    .I(\CIN.INBUF.OUT ),
    .O(\CIN.I->S1_JJ_S0_CARRY1.C2 )
  );
  X_IPAD   B0 (
    .PAD(\B0.PAD.PAD )
  );
  X_BUF   \B0.INBUF  (
    .O(\B0.INBUF.OUT ),
    .I(\B0.PAD.PAD )
  );
  X_BUF   \B0.IMUX  (
    .I(\B0.INBUF.OUT ),
    .O(\B0.I->S1_JJ_S0_CARRY1.D2 )
  );
  X_IPAD   B1 (
    .PAD(\B1.PAD.PAD )
  );
  X_BUF   \B1.INBUF  (
    .O(\B1.INBUF.OUT ),
    .I(\B1.PAD.PAD )
  );
  X_BUF   \B1.IMUX  (
    .I(\B1.INBUF.OUT ),
    .O(\B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 )
  );
  X_BUF   \#fulladder#1#k_S3_COUT_#fulladder#2#k/#fulladder#1#k_S3_COUT_#fulladder#2#k_DMUX_Delay  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT.O5 ),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.DMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B1 )
  );
  X_BUF   \#fulladder#1#k_S3_COUT_#fulladder#2#k/#fulladder#1#k_S3_COUT_#fulladder#2#k_CMUX_Delay  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT.O5 ),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.CMUX->COUT_FINAL_OUTPUT.O )
  );
  X_BUF   \#fulladder#1#k_S3_COUT_#fulladder#2#k/#fulladder#1#k_S3_COUT_#fulladder#2#k_BMUX_Delay  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT.O5 ),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.BMUX->S3_FINAL_OUTPUT.O )
  );
  X_BUF   \#fulladder#1#k_S3_COUT_#fulladder#2#k/#fulladder#1#k_S3_COUT_#fulladder#2#k_AMUX_Delay  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT.O5 ),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.AMUX->S1_JJ_S0_CARRY1.C1 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT  (
    .ADR0(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 ),
    .ADR1(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'hE8E8E8E8 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT  (
    .ADR0(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 ),
    .ADR1(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 ),
    .ADR2(\CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT  (
    .ADR0(\#fulladder#1#k_S3_COUT_#fulladder#2#k.DMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B1 ),
    .ADR1(\CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT.O5 )
  );
  X_LUT5 #(
    .INIT ( 32'h66666666 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT  (
    .ADR0(\A0.I->S1_JJ_S0_CARRY1.D1 ),
    .ADR1(\B0.I->S1_JJ_S0_CARRY1.D2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT.O5 )
  );
  X_IPAD   A0 (
    .PAD(\A0.PAD.PAD )
  );
  X_BUF   \A0.INBUF  (
    .O(\A0.INBUF.OUT ),
    .I(\A0.PAD.PAD )
  );
  X_BUF   \A0.IMUX  (
    .I(\A0.INBUF.OUT ),
    .O(\A0.I->S1_JJ_S0_CARRY1.D1 )
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

