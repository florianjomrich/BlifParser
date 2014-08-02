////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sat Aug 02 13:52:09 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -ofmt verilog ncdFileAfterPlaceAndRoute/HelloWorldRouted.ncd simulationFilePlaceAndRouted/HelloWorldPlaceAndRouted.v 
// Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: ncdFileAfterPlaceAndRoute/HelloWorldRouted.ncd
// Output file	: simulationFilePlaceAndRouted/HelloWorldPlaceAndRouted.v
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
  wire \NlwBufferSignal_S1_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_S2_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_S3_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_S0_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_COUT_FINAL_OUTPUT_OBUF/I ;
  wire \NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_IPAD #(
    .LOC ( "PAD214" ))
  A2 (
    .PAD(\A2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \A2.INBUF  (
    .O(\A2.INBUF.OUT ),
    .I(\A2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \A2.IMUX  (
    .I(\A2.INBUF.OUT ),
    .O(\A2.I->S1_JJ_S0_CARRY1.B1 )
  );
  X_BPAD #(
    .LOC ( "PAD210" ))
  S1_FINAL_OUTPUT (
    .PAD(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD210" ))
  S1_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_S1_FINAL_OUTPUT_OBUF/I ),
    .O(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \S1_FINAL_OUTPUT.INBUF  (
    .O(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \S1_FINAL_OUTPUT.IMUX  (
    .I(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD212" ))
  A1 (
    .PAD(\A1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \A1.INBUF  (
    .O(\A1.INBUF.OUT ),
    .I(\A1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \A1.IMUX  (
    .I(\A1.INBUF.OUT ),
    .O(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 )
  );
  X_IPAD #(
    .LOC ( "PAD224" ))
  B3 (
    .PAD(\B3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \B3.INBUF  (
    .O(\B3.INBUF.OUT ),
    .I(\B3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \B3.IMUX  (
    .I(\B3.INBUF.OUT ),
    .O(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 )
  );
  X_IPAD #(
    .LOC ( "PAD220" ))
  A3 (
    .PAD(\A3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \A3.INBUF  (
    .O(\A3.INBUF.OUT ),
    .I(\A3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \A3.IMUX  (
    .I(\A3.INBUF.OUT ),
    .O(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 )
  );
  X_IPAD #(
    .LOC ( "PAD215" ))
  B2 (
    .PAD(\B2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \B2.INBUF  (
    .O(\B2.INBUF.OUT ),
    .I(\B2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \B2.IMUX  (
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
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'h33CC33CC ))
  \XX_CARRY2_#fulladder#3#k_S2.D5LUT  (
    .ADR3(\CARRY3_#fulladder#4#k.BMUX->XX_CARRY2_#fulladder#3#k_S2.D1 ),
    .ADR1(\XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 ),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.D5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'h5A5A5A5A ))
  \XX_CARRY2_#fulladder#3#k_S2.C5LUT  (
    .ADR2(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 ),
    .ADR0(\B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.C5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'hFFCCCC00 ))
  \XX_CARRY2_#fulladder#3#k_S2.B5LUT  (
    .ADR1(\A1.I->XX_CARRY2_#fulladder#3#k_S2.B1 ),
    .ADR4(\B1.I->XX_CARRY2_#fulladder#3#k_S2.B2 ),
    .ADR3(\S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 ),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .O(\XX_CARRY2_#fulladder#3#k_S2.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'h66666666 ))
  \XX_CARRY2_#fulladder#3#k_S2.A5LUT  (
    .ADR1(\XX_CARRY2_#fulladder#3#k_S2.CMUX->XX_CARRY2_#fulladder#3#k_S2.A1 ),
    .ADR0(\S1_JJ_S0_CARRY1.DMUX->XX_CARRY2_#fulladder#3#k_S2.A2 ),
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
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 32'hFCC0FCC0 ))
  \S1_JJ_S0_CARRY1.D5LUT  (
    .ADR2(\A0.I->S1_JJ_S0_CARRY1.D1 ),
    .ADR3(\B0.I->S1_JJ_S0_CARRY1.D2 ),
    .ADR1(\CIN.I->S1_JJ_S0_CARRY1.C2 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.D5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 32'h3333CCCC ))
  \S1_JJ_S0_CARRY1.C5LUT  (
    .ADR4(\#fulladder#1#k_S3_COUT_#fulladder#2#k.AMUX->S1_JJ_S0_CARRY1.C1 ),
    .ADR1(\CIN.I->S1_JJ_S0_CARRY1.C2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\S1_JJ_S0_CARRY1.C5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 32'hFFFF0000 ))
  \S1_JJ_S0_CARRY1.B5LUT  (
    .ADR4(\A2.I->S1_JJ_S0_CARRY1.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\S1_JJ_S0_CARRY1.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 32'hF0F0F0F0 ))
  \S1_JJ_S0_CARRY1.A5LUT  (
    .ADR2(\XX_CARRY2_#fulladder#3#k_S2.AMUX->S1_JJ_S0_CARRY1.A1 ),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ_S0_CARRY1.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD209" ))
  S2_FINAL_OUTPUT (
    .PAD(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD209" ))
  S2_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_S2_FINAL_OUTPUT_OBUF/I ),
    .O(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \S2_FINAL_OUTPUT.INBUF  (
    .O(\S2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \S2_FINAL_OUTPUT.IMUX  (
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
    .LOC ( "SLICE_X24Y2" ),
    .INIT ( 32'h0F0FF0F0 ))
  \CARRY3_#fulladder#4#k.B5LUT  (
    .ADR2(\S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 ),
    .ADR4(\B2.I->CARRY3_#fulladder#4#k.A2 ),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\CARRY3_#fulladder#4#k.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y2" ),
    .INIT ( 32'hEE88EE88 ))
  \CARRY3_#fulladder#4#k.A5LUT  (
    .ADR0(\S1_JJ_S0_CARRY1.BMUX->CARRY3_#fulladder#4#k.A1 ),
    .ADR1(\B2.I->CARRY3_#fulladder#4#k.A2 ),
    .ADR3(\XX_CARRY2_#fulladder#3#k_S2.BMUX->XX_CARRY2_#fulladder#3#k_S2.D2 ),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .O(\CARRY3_#fulladder#4#k.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD223" ))
  S3_FINAL_OUTPUT (
    .PAD(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD223" ))
  S3_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_S3_FINAL_OUTPUT_OBUF/I ),
    .O(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \S3_FINAL_OUTPUT.INBUF  (
    .O(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \S3_FINAL_OUTPUT.IMUX  (
    .I(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD219" ))
  S0_FINAL_OUTPUT (
    .PAD(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD219" ))
  S0_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_S0_FINAL_OUTPUT_OBUF/I ),
    .O(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \S0_FINAL_OUTPUT.INBUF  (
    .O(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \S0_FINAL_OUTPUT.IMUX  (
    .I(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD222" ))
  COUT_FINAL_OUTPUT (
    .PAD(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  COUT_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_COUT_FINAL_OUTPUT_OBUF/I ),
    .O(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \COUT_FINAL_OUTPUT.INBUF  (
    .O(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .I(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \COUT_FINAL_OUTPUT.IMUX  (
    .I(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD213" ))
  CIN (
    .PAD(\CIN.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \CIN.INBUF  (
    .O(\CIN.INBUF.OUT ),
    .I(\CIN.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \CIN.IMUX  (
    .I(\CIN.INBUF.OUT ),
    .O(\CIN.I->S1_JJ_S0_CARRY1.C2 )
  );
  X_IPAD #(
    .LOC ( "PAD216" ))
  B0 (
    .PAD(\B0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \B0.INBUF  (
    .O(\B0.INBUF.OUT ),
    .I(\B0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \B0.IMUX  (
    .I(\B0.INBUF.OUT ),
    .O(\B0.I->S1_JJ_S0_CARRY1.D2 )
  );
  X_IPAD #(
    .LOC ( "PAD211" ))
  B1 (
    .PAD(\B1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \B1.INBUF  (
    .O(\B1.INBUF.OUT ),
    .I(\B1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \B1.IMUX  (
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
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'h0F0FF0F0 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT  (
    .ADR4(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 ),
    .ADR2(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.D5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'hFFF0F000 ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT  (
    .ADR3(\A3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C1 ),
    .ADR2(\B3.I->#fulladder#1#k_S3_COUT_#fulladder#2#k.C2 ),
    .ADR4(\CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 ),
    .ADR0(1'b1),
    .ADR1(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.C5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'h55AA55AA ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT  (
    .ADR0(\#fulladder#1#k_S3_COUT_#fulladder#2#k.DMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B1 ),
    .ADR3(\CARRY3_#fulladder#4#k.AMUX->#fulladder#1#k_S3_COUT_#fulladder#2#k.B2 ),
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 32'h33CC33CC ))
  \#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT  (
    .ADR3(\A0.I->S1_JJ_S0_CARRY1.D1 ),
    .ADR1(\B0.I->S1_JJ_S0_CARRY1.D2 ),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k_S3_COUT_#fulladder#2#k.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD221" ))
  A0 (
    .PAD(\A0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \A0.INBUF  (
    .O(\A0.INBUF.OUT ),
    .I(\A0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \A0.IMUX  (
    .I(\A0.INBUF.OUT ),
    .O(\A0.I->S1_JJ_S0_CARRY1.D1 )
  );
  X_BUF   \NlwBufferBlock_S1_FINAL_OUTPUT_OBUF/I  (
    .I(\S1_JJ_S0_CARRY1.AMUX->S1_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_S1_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_S2_FINAL_OUTPUT_OBUF/I  (
    .I(\XX_CARRY2_#fulladder#3#k_S2.DMUX->S2_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_S2_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_S3_FINAL_OUTPUT_OBUF/I  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.BMUX->S3_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_S3_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_S0_FINAL_OUTPUT_OBUF/I  (
    .I(\S1_JJ_S0_CARRY1.CMUX->S0_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_S0_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_COUT_FINAL_OUTPUT_OBUF/I  (
    .I(\#fulladder#1#k_S3_COUT_#fulladder#2#k.CMUX->COUT_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_COUT_FINAL_OUTPUT_OBUF/I )
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

