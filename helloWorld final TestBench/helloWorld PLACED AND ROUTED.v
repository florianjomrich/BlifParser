////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Wed Jul 30 16:19:22 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -ofmt verilog ncdFileAfterPlaceAndRoute/helloWorldRouted.ncd simulationFilePlaceAndRouted/helloWorldPlaceAndRouted.v 
// Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: ncdFileAfterPlaceAndRoute/helloWorldRouted.ncd
// Output file	: simulationFilePlaceAndRouted/helloWorldPlaceAndRouted.v
// # of Modules	: 1
// Design Name	: helloWorld
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

module helloWorld (
  \A2.PAD.PAD , \A1.PAD.PAD , \A3.PAD.PAD , \S2_FINAL_OUTPUT.OUTBUF.OUT , \S0_FINAL_OUTPUT.OUTBUF.OUT , \A0.PAD.PAD , \S1_FINAL_OUTPUT.OUTBUF.OUT , 
\B3.PAD.PAD , \B2.PAD.PAD , \my_clk.PAD.PAD , \S3_FINAL_OUTPUT.OUTBUF.OUT , \COUT_FINAL_OUTPUT.OUTBUF.OUT , \CIN.PAD.PAD , \B0.PAD.PAD , \B1.PAD.PAD 
);
  input \A2.PAD.PAD ;
  input \A1.PAD.PAD ;
  input \A3.PAD.PAD ;
  inout \S2_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \S0_FINAL_OUTPUT.OUTBUF.OUT ;
  input \A0.PAD.PAD ;
  inout \S1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \B3.PAD.PAD ;
  input \B2.PAD.PAD ;
  input \my_clk.PAD.PAD ;
  inout \S3_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \COUT_FINAL_OUTPUT.OUTBUF.OUT ;
  input \CIN.PAD.PAD ;
  input \B0.PAD.PAD ;
  input \B1.PAD.PAD ;
  wire \COUT.AMUX->COUT_FINAL_OUTPUT.O ;
  wire \B2.I->CARRY3.A2 ;
  wire \S1_JJ.BMUX->CARRY3.A1 ;
  wire \A1.I->CARRY2.A1 ;
  wire \B0.I->CARRY1.A2 ;
  wire \A0.I->CARRY1.A1 ;
  wire \A2.I->S1_JJ.B1 ;
  wire \#fulladder#2#k.AMUX->S3.A1 ;
  wire \CARRY2.AMUX->CARRY3.A3 ;
  wire \#fulladder#4#k.AMUX->S2.A1 ;
  wire \S1_JJ.AMUX->S1_FINAL_OUTPUT.O ;
  wire \A3.I->COUT.A1 ;
  wire \#fulladder#1#k.AMUX->S0.A1 ;
  wire \CARRY1.AMUX->CARRY2.A3 ;
  wire \my_clk.I->my_clk_BUFG.I0 ;
  wire \S2.AMUX->S2_FINAL_OUTPUT.O ;
  wire \#fulladder#3#k.AMUX->XX.A1 ;
  wire \B3.I->COUT.A2 ;
  wire \S3.AMUX->S3_FINAL_OUTPUT.O ;
  wire \B1.I->CARRY2.A2 ;
  wire \CIN.I->CARRY1.A3 ;
  wire \XX.AMUX->S1_JJ.A1 ;
  wire \CARRY3.AMUX->COUT.A3 ;
  wire \S0.AMUX->S0_FINAL_OUTPUT.O ;
  wire \A2.INBUF.OUT ;
  wire \#fulladder#3#k.A5LUT.O5 ;
  wire \A1.INBUF.OUT ;
  wire \A3.INBUF.OUT ;
  wire \CARRY1.A5LUT.O5 ;
  wire \CARRY2.A5LUT.O5 ;
  wire \S2.A5LUT.O5 ;
  wire \CARRY3.A5LUT.O5 ;
  wire \S2_FINAL_OUTPUT.INBUF.OUT ;
  wire \S0.A5LUT.O5 ;
  wire \#fulladder#2#k.A5LUT.O5 ;
  wire \S1_JJ.A5LUT.O5 ;
  wire \S1_JJ.B5LUT.O5 ;
  wire \S0_FINAL_OUTPUT.INBUF.OUT ;
  wire \A0.INBUF.OUT ;
  wire \S1_FINAL_OUTPUT.INBUF.OUT ;
  wire \B3.INBUF.OUT ;
  wire \#fulladder#4#k.A5LUT.O5 ;
  wire \B2.INBUF.OUT ;
  wire \XX.A5LUT.O5 ;
  wire \my_clk.INBUF.OUT ;
  wire \S3.A5LUT.O5 ;
  wire \S3_FINAL_OUTPUT.INBUF.OUT ;
  wire \COUT_FINAL_OUTPUT.INBUF.OUT ;
  wire \CIN.INBUF.OUT ;
  wire \B0.INBUF.OUT ;
  wire \COUT.A5LUT.O5 ;
  wire \B1.INBUF.OUT ;
  wire \#fulladder#1#k.A5LUT.O5 ;
  wire \NLW_S2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_my_clk_BUFG.BUFG_O_UNCONNECTED ;
  wire \NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_IPAD #(
    .LOC ( "PAD84" ))
  A2 (
    .PAD(\A2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \A2.INBUF  (
    .O(\A2.INBUF.OUT ),
    .I(\A2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \A2.IMUX  (
    .I(\A2.INBUF.OUT ),
    .O(\A2.I->S1_JJ.B1 )
  );
  X_BUF   \#fulladder#3#k/#fulladder#3#k_AMUX_Delay  (
    .I(\#fulladder#3#k.A5LUT.O5 ),
    .O(\#fulladder#3#k.AMUX->XX.A1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y9" ),
    .INIT ( 32'h66666666 ))
  \#fulladder#3#k.A5LUT  (
    .ADR0(\A1.I->CARRY2.A1 ),
    .ADR1(\B1.I->CARRY2.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#3#k.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  A1 (
    .PAD(\A1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \A1.INBUF  (
    .O(\A1.INBUF.OUT ),
    .I(\A1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \A1.IMUX  (
    .I(\A1.INBUF.OUT ),
    .O(\A1.I->CARRY2.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  A3 (
    .PAD(\A3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \A3.INBUF  (
    .O(\A3.INBUF.OUT ),
    .I(\A3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \A3.IMUX  (
    .I(\A3.INBUF.OUT ),
    .O(\A3.I->COUT.A1 )
  );
  X_BUF   \CARRY1/CARRY1_AMUX_Delay  (
    .I(\CARRY1.A5LUT.O5 ),
    .O(\CARRY1.AMUX->CARRY2.A3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'hE8E8E8E8 ))
  \CARRY1.A5LUT  (
    .ADR0(\A0.I->CARRY1.A1 ),
    .ADR1(\B0.I->CARRY1.A2 ),
    .ADR2(\CIN.I->CARRY1.A3 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CARRY1.A5LUT.O5 )
  );
  X_BUF   \CARRY2/CARRY2_AMUX_Delay  (
    .I(\CARRY2.A5LUT.O5 ),
    .O(\CARRY2.AMUX->CARRY3.A3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y3" ),
    .INIT ( 32'hE8E8E8E8 ))
  \CARRY2.A5LUT  (
    .ADR0(\A1.I->CARRY2.A1 ),
    .ADR1(\B1.I->CARRY2.A2 ),
    .ADR2(\CARRY1.AMUX->CARRY2.A3 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CARRY2.A5LUT.O5 )
  );
  X_BUF   \S2/S2_AMUX_Delay  (
    .I(\S2.A5LUT.O5 ),
    .O(\S2.AMUX->S2_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y5" ),
    .INIT ( 32'h66666666 ))
  \S2.A5LUT  (
    .ADR0(\#fulladder#4#k.AMUX->S2.A1 ),
    .ADR1(\CARRY2.AMUX->CARRY3.A3 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S2.A5LUT.O5 )
  );
  X_BUF   \CARRY3/CARRY3_AMUX_Delay  (
    .I(\CARRY3.A5LUT.O5 ),
    .O(\CARRY3.AMUX->COUT.A3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y7" ),
    .INIT ( 32'hE8E8E8E8 ))
  \CARRY3.A5LUT  (
    .ADR0(\S1_JJ.BMUX->CARRY3.A1 ),
    .ADR1(\B2.I->CARRY3.A2 ),
    .ADR2(\CARRY2.AMUX->CARRY3.A3 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\CARRY3.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  S2_FINAL_OUTPUT (
    .PAD(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  S2_FINAL_OUTPUT_OBUF (
    .I(\S2.AMUX->S2_FINAL_OUTPUT.O ),
    .O(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \S2_FINAL_OUTPUT.INBUF  (
    .O(\S2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \S2_FINAL_OUTPUT.IMUX  (
    .I(\S2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \S0/S0_AMUX_Delay  (
    .I(\S0.A5LUT.O5 ),
    .O(\S0.AMUX->S0_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h66666666 ))
  \S0.A5LUT  (
    .ADR0(\#fulladder#1#k.AMUX->S0.A1 ),
    .ADR1(\CIN.I->CARRY1.A3 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S0.A5LUT.O5 )
  );
  X_BUF   \#fulladder#2#k/#fulladder#2#k_AMUX_Delay  (
    .I(\#fulladder#2#k.A5LUT.O5 ),
    .O(\#fulladder#2#k.AMUX->S3.A1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'h66666666 ))
  \#fulladder#2#k.A5LUT  (
    .ADR0(\A3.I->COUT.A1 ),
    .ADR1(\B3.I->COUT.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#2#k.A5LUT.O5 )
  );
  X_BUF   \S1_JJ/S1_JJ_BMUX_Delay  (
    .I(\S1_JJ.B5LUT.O5 ),
    .O(\S1_JJ.BMUX->CARRY3.A1 )
  );
  X_BUF   \S1_JJ/S1_JJ_AMUX_Delay  (
    .I(\S1_JJ.A5LUT.O5 ),
    .O(\S1_JJ.AMUX->S1_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'hAAAAAAAA ))
  \S1_JJ.B5LUT  (
    .ADR0(\A2.I->S1_JJ.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'hAAAAAAAA ))
  \S1_JJ.A5LUT  (
    .ADR0(\XX.AMUX->S1_JJ.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S1_JJ.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD329" ))
  S0_FINAL_OUTPUT (
    .PAD(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD329" ))
  S0_FINAL_OUTPUT_OBUF (
    .I(\S0.AMUX->S0_FINAL_OUTPUT.O ),
    .O(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \S0_FINAL_OUTPUT.INBUF  (
    .O(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \S0_FINAL_OUTPUT.IMUX  (
    .I(\S0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  A0 (
    .PAD(\A0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \A0.INBUF  (
    .O(\A0.INBUF.OUT ),
    .I(\A0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \A0.IMUX  (
    .I(\A0.INBUF.OUT ),
    .O(\A0.I->CARRY1.A1 )
  );
  X_BPAD #(
    .LOC ( "PAD337" ))
  S1_FINAL_OUTPUT (
    .PAD(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  S1_FINAL_OUTPUT_OBUF (
    .I(\S1_JJ.AMUX->S1_FINAL_OUTPUT.O ),
    .O(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \S1_FINAL_OUTPUT.INBUF  (
    .O(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \S1_FINAL_OUTPUT.IMUX  (
    .I(\S1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD105" ))
  B3 (
    .PAD(\B3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \B3.INBUF  (
    .O(\B3.INBUF.OUT ),
    .I(\B3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \B3.IMUX  (
    .I(\B3.INBUF.OUT ),
    .O(\B3.I->COUT.A2 )
  );
  X_BUF   \#fulladder#4#k/#fulladder#4#k_AMUX_Delay  (
    .I(\#fulladder#4#k.A5LUT.O5 ),
    .O(\#fulladder#4#k.AMUX->S2.A1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y6" ),
    .INIT ( 32'h66666666 ))
  \#fulladder#4#k.A5LUT  (
    .ADR0(\S1_JJ.BMUX->CARRY3.A1 ),
    .ADR1(\B2.I->CARRY3.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#4#k.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD106" ))
  B2 (
    .PAD(\B2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \B2.INBUF  (
    .O(\B2.INBUF.OUT ),
    .I(\B2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \B2.IMUX  (
    .I(\B2.INBUF.OUT ),
    .O(\B2.I->CARRY3.A2 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\my_clk.I->my_clk_BUFG.I0 ),
    .O(\NLW_my_clk_BUFG.BUFG_O_UNCONNECTED )
  );
  X_BUF   \XX/XX_AMUX_Delay  (
    .I(\XX.A5LUT.O5 ),
    .O(\XX.AMUX->S1_JJ.A1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y8" ),
    .INIT ( 32'h66666666 ))
  \XX.A5LUT  (
    .ADR0(\#fulladder#3#k.AMUX->XX.A1 ),
    .ADR1(\CARRY1.AMUX->CARRY2.A3 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\XX.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  my_clk (
    .PAD(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \my_clk.INBUF  (
    .O(\my_clk.INBUF.OUT ),
    .I(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \my_clk.IMUX  (
    .I(\my_clk.INBUF.OUT ),
    .O(\my_clk.I->my_clk_BUFG.I0 )
  );
  X_BUF   \S3/S3_AMUX_Delay  (
    .I(\S3.A5LUT.O5 ),
    .O(\S3.AMUX->S3_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y4" ),
    .INIT ( 32'h66666666 ))
  \S3.A5LUT  (
    .ADR0(\#fulladder#2#k.AMUX->S3.A1 ),
    .ADR1(\CARRY3.AMUX->COUT.A3 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\S3.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  S3_FINAL_OUTPUT (
    .PAD(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  S3_FINAL_OUTPUT_OBUF (
    .I(\S3.AMUX->S3_FINAL_OUTPUT.O ),
    .O(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \S3_FINAL_OUTPUT.INBUF  (
    .O(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\S3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \S3_FINAL_OUTPUT.IMUX  (
    .I(\S3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_S3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD92" ))
  COUT_FINAL_OUTPUT (
    .PAD(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  COUT_FINAL_OUTPUT_OBUF (
    .I(\COUT.AMUX->COUT_FINAL_OUTPUT.O ),
    .O(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \COUT_FINAL_OUTPUT.INBUF  (
    .O(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .I(\COUT_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \COUT_FINAL_OUTPUT.IMUX  (
    .I(\COUT_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_COUT_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD91" ))
  CIN (
    .PAD(\CIN.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \CIN.INBUF  (
    .O(\CIN.INBUF.OUT ),
    .I(\CIN.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \CIN.IMUX  (
    .I(\CIN.INBUF.OUT ),
    .O(\CIN.I->CARRY1.A3 )
  );
  X_IPAD #(
    .LOC ( "PAD94" ))
  B0 (
    .PAD(\B0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \B0.INBUF  (
    .O(\B0.INBUF.OUT ),
    .I(\B0.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \B0.IMUX  (
    .I(\B0.INBUF.OUT ),
    .O(\B0.I->CARRY1.A2 )
  );
  X_BUF   \COUT/COUT_AMUX_Delay  (
    .I(\COUT.A5LUT.O5 ),
    .O(\COUT.AMUX->COUT_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y6" ),
    .INIT ( 32'hE8E8E8E8 ))
  \COUT.A5LUT  (
    .ADR0(\A3.I->COUT.A1 ),
    .ADR1(\B3.I->COUT.A2 ),
    .ADR2(\CARRY3.AMUX->COUT.A3 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\COUT.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD93" ))
  B1 (
    .PAD(\B1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \B1.INBUF  (
    .O(\B1.INBUF.OUT ),
    .I(\B1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \B1.IMUX  (
    .I(\B1.INBUF.OUT ),
    .O(\B1.I->CARRY2.A2 )
  );
  X_BUF   \#fulladder#1#k/#fulladder#1#k_AMUX_Delay  (
    .I(\#fulladder#1#k.A5LUT.O5 ),
    .O(\#fulladder#1#k.AMUX->S0.A1 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 32'h66666666 ))
  \#fulladder#1#k.A5LUT  (
    .ADR0(\A0.I->CARRY1.A1 ),
    .ADR1(\B0.I->CARRY1.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\#fulladder#1#k.A5LUT.O5 )
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

