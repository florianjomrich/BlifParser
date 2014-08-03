////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sun Aug 03 17:23:33 2014
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
  \u38ah_FINAL_OUTPUT.OUTBUF.OUT , \z4re_FINAL_OUTPUT.OUTBUF.OUT , \test.PAD.PAD , \z2re_FINAL_OUTPUT.OUTBUF.OUT , \z0re_FINAL_OUTPUT.OUTBUF.OUT , 
\u39ah_FINAL_OUTPUT.OUTBUF.OUT , \z5re_FINAL_OUTPUT.OUTBUF.OUT , \u34fe_FINAL_OUTPUT.OUTBUF.OUT , \z50al_FINAL_OUTPUT.OUTBUF.OUT , 
\z51al_FINAL_OUTPUT.OUTBUF.OUT , \n44_FINAL_OUTPUT.OUTBUF.OUT , \bertaClock.PAD.PAD , \u37ah_FINAL_OUTPUT.OUTBUF.OUT , \global_reset.PAD.PAD , 
\z3re_FINAL_OUTPUT.OUTBUF.OUT , \test_FINAL_OUTPUT.OUTBUF.OUT , \x25.PAD.PAD , \z1re_FINAL_OUTPUT.OUTBUF.OUT , \u35fe_FINAL_OUTPUT.OUTBUF.OUT , 
\x24.PAD.PAD , \x23.PAD.PAD , \u36fe_FINAL_OUTPUT.OUTBUF.OUT 
);
  inout \u38ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z4re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \test.PAD.PAD ;
  inout \z2re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z0re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u39ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z5re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u34fe_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z50al_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z51al_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \n44_FINAL_OUTPUT.OUTBUF.OUT ;
  input \bertaClock.PAD.PAD ;
  inout \u37ah_FINAL_OUTPUT.OUTBUF.OUT ;
  input \global_reset.PAD.PAD ;
  inout \z3re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \test_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x25.PAD.PAD ;
  inout \z1re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u35fe_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x24.PAD.PAD ;
  input \x23.PAD.PAD ;
  inout \u36fe_FINAL_OUTPUT.OUTBUF.OUT ;
  wire \my_clk_BUFG.O->n44_z0re.CLK ;
  wire \n44_z0re.AQ->z0re_FINAL_OUTPUT.O ;
  wire \n44_z0re.AMUX->n44_FINAL_OUTPUT.O ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \x23.I->n44_z0re.A1 ;
  wire \u38ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \z4re_FINAL_OUTPUT.INBUF.OUT ;
  wire \test.INBUF.OUT ;
  wire \z2re_FINAL_OUTPUT.INBUF.OUT ;
  wire \z0re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u39ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \z5re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u34fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \z50al_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_z0re.A5LUT.O5 ;
  wire \z51al_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_FINAL_OUTPUT.INBUF.OUT ;
  wire \bertaClock.INBUF.OUT ;
  wire \u37ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \z3re_FINAL_OUTPUT.INBUF.OUT ;
  wire \test_FINAL_OUTPUT.INBUF.OUT ;
  wire \x25.INBUF.OUT ;
  wire \z1re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u35fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \x24.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire \u36fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NlwBufferSignal_z0re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_n44_z0re.AFF/CLK ;
  wire \NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I ;
  wire NLW_u38ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z4re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_test.IMUX_O_UNCONNECTED ;
  wire NLW_z2re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u39ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z5re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u34fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z50al_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire NLW_z51al_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u37ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_global_reset.IMUX_O_UNCONNECTED ;
  wire NLW_z3re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_test_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_test_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_x25.IMUX_O_UNCONNECTED ;
  wire NLW_z1re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u35fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_x24.IMUX_O_UNCONNECTED ;
  wire NLW_u36fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD228" ))
  u38ah_FINAL_OUTPUT (
    .PAD(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD228" ))
  u38ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u38ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD228" ))
  \u38ah_FINAL_OUTPUT.INBUF  (
    .O(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD228" ))
  \u38ah_FINAL_OUTPUT.IMUX  (
    .I(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD221" ))
  z4re_FINAL_OUTPUT (
    .PAD(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  z4re_FINAL_OUTPUT_OBUF (
    .I(NLW_z4re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \z4re_FINAL_OUTPUT.INBUF  (
    .O(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \z4re_FINAL_OUTPUT.IMUX  (
    .I(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->n44_z0re.CLK )
  );
  X_IPAD #(
    .LOC ( "PAD229" ))
  test (
    .PAD(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \test.INBUF  (
    .O(\test.INBUF.OUT ),
    .I(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \test.IMUX  (
    .I(\test.INBUF.OUT ),
    .O(\NLW_test.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD210" ))
  z2re_FINAL_OUTPUT (
    .PAD(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD210" ))
  z2re_FINAL_OUTPUT_OBUF (
    .I(NLW_z2re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \z2re_FINAL_OUTPUT.INBUF  (
    .O(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \z2re_FINAL_OUTPUT.IMUX  (
    .I(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD211" ))
  z0re_FINAL_OUTPUT (
    .PAD(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD211" ))
  z0re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z0re_FINAL_OUTPUT_OBUF/I ),
    .O(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \z0re_FINAL_OUTPUT.INBUF  (
    .O(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \z0re_FINAL_OUTPUT.IMUX  (
    .I(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD231" ))
  u39ah_FINAL_OUTPUT (
    .PAD(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD231" ))
  u39ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u39ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \u39ah_FINAL_OUTPUT.INBUF  (
    .O(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \u39ah_FINAL_OUTPUT.IMUX  (
    .I(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD230" ))
  z5re_FINAL_OUTPUT (
    .PAD(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD230" ))
  z5re_FINAL_OUTPUT_OBUF (
    .I(NLW_z5re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  \z5re_FINAL_OUTPUT.INBUF  (
    .O(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  \z5re_FINAL_OUTPUT.IMUX  (
    .I(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD225" ))
  u34fe_FINAL_OUTPUT (
    .PAD(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  u34fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u34fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \u34fe_FINAL_OUTPUT.INBUF  (
    .O(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \u34fe_FINAL_OUTPUT.IMUX  (
    .I(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD227" ))
  z50al_FINAL_OUTPUT (
    .PAD(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD227" ))
  z50al_FINAL_OUTPUT_OBUF (
    .I(NLW_z50al_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \z50al_FINAL_OUTPUT.INBUF  (
    .O(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \z50al_FINAL_OUTPUT.IMUX  (
    .I(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \n44_z0re/n44_z0re_AMUX_Delay  (
    .I(\n44_z0re.A5LUT.O5 ),
    .O(\n44_z0re.AMUX->n44_FINAL_OUTPUT.O )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 1'b0 ))
  \n44_z0re.AFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_n44_z0re.AFF/CLK ),
    .I(\n44_z0re.A5LUT.O5 ),
    .O(\n44_z0re.AQ->z0re_FINAL_OUTPUT.O ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y5" ),
    .INIT ( 32'hFF00FF00 ))
  \n44_z0re.A5LUT  (
    .ADR3(\x23.I->n44_z0re.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\n44_z0re.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD224" ))
  z51al_FINAL_OUTPUT (
    .PAD(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD224" ))
  z51al_FINAL_OUTPUT_OBUF (
    .I(NLW_z51al_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \z51al_FINAL_OUTPUT.INBUF  (
    .O(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \z51al_FINAL_OUTPUT.IMUX  (
    .I(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD209" ))
  n44_FINAL_OUTPUT (
    .PAD(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD209" ))
  n44_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I ),
    .O(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \n44_FINAL_OUTPUT.INBUF  (
    .O(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .I(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \n44_FINAL_OUTPUT.IMUX  (
    .I(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD314" ))
  bertaClock (
    .PAD(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \bertaClock.INBUF  (
    .O(\bertaClock.INBUF.OUT ),
    .I(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \bertaClock.IMUX  (
    .I(\bertaClock.INBUF.OUT ),
    .O(\bertaClock.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD215" ))
  u37ah_FINAL_OUTPUT (
    .PAD(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  u37ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u37ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \u37ah_FINAL_OUTPUT.INBUF  (
    .O(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \u37ah_FINAL_OUTPUT.IMUX  (
    .I(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD223" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\NLW_global_reset.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD220" ))
  z3re_FINAL_OUTPUT (
    .PAD(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD220" ))
  z3re_FINAL_OUTPUT_OBUF (
    .I(NLW_z3re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \z3re_FINAL_OUTPUT.INBUF  (
    .O(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \z3re_FINAL_OUTPUT.IMUX  (
    .I(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD222" ))
  test_FINAL_OUTPUT (
    .PAD(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  test_FINAL_OUTPUT_OBUF (
    .I(NLW_test_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \test_FINAL_OUTPUT.INBUF  (
    .O(\test_FINAL_OUTPUT.INBUF.OUT ),
    .I(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \test_FINAL_OUTPUT.IMUX  (
    .I(\test_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_test_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD213" ))
  x25 (
    .PAD(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \x25.INBUF  (
    .O(\x25.INBUF.OUT ),
    .I(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \x25.IMUX  (
    .I(\x25.INBUF.OUT ),
    .O(\NLW_x25.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD219" ))
  z1re_FINAL_OUTPUT (
    .PAD(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD219" ))
  z1re_FINAL_OUTPUT_OBUF (
    .I(NLW_z1re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \z1re_FINAL_OUTPUT.INBUF  (
    .O(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \z1re_FINAL_OUTPUT.IMUX  (
    .I(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD226" ))
  u35fe_FINAL_OUTPUT (
    .PAD(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  u35fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u35fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \u35fe_FINAL_OUTPUT.INBUF  (
    .O(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \u35fe_FINAL_OUTPUT.IMUX  (
    .I(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD214" ))
  x24 (
    .PAD(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \x24.INBUF  (
    .O(\x24.INBUF.OUT ),
    .I(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \x24.IMUX  (
    .I(\x24.INBUF.OUT ),
    .O(\NLW_x24.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD212" ))
  x23 (
    .PAD(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \x23.INBUF  (
    .O(\x23.INBUF.OUT ),
    .I(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \x23.IMUX  (
    .I(\x23.INBUF.OUT ),
    .O(\x23.I->n44_z0re.A1 )
  );
  X_BPAD #(
    .LOC ( "PAD216" ))
  u36fe_FINAL_OUTPUT (
    .PAD(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD216" ))
  u36fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u36fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \u36fe_FINAL_OUTPUT.INBUF  (
    .O(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \u36fe_FINAL_OUTPUT.IMUX  (
    .I(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_z0re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z0re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_n44_z0re.AFF/CLK  (
    .I(\my_clk_BUFG.O->n44_z0re.CLK ),
    .O(\NlwBufferSignal_n44_z0re.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_n44_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re.AMUX->n44_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I )
  );
  X_ONE   NlwBlock_HelloWorld_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_HelloWorld_GND (
    .O(GND)
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

