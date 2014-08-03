////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sun Aug 03 18:00:10 2014
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
  \z2re_FINAL_OUTPUT.OUTBUF.OUT , \test.PAD.PAD , \z5re_FINAL_OUTPUT.OUTBUF.OUT , \u39ah_FINAL_OUTPUT.OUTBUF.OUT , \u34fe_FINAL_OUTPUT.OUTBUF.OUT , 
\z50al_FINAL_OUTPUT.OUTBUF.OUT , \z51al_FINAL_OUTPUT.OUTBUF.OUT , \bertaClock.PAD.PAD , \u37ah_FINAL_OUTPUT.OUTBUF.OUT , 
\z3re_FINAL_OUTPUT.OUTBUF.OUT , \global_reset.PAD.PAD , \test_FINAL_OUTPUT.OUTBUF.OUT , \u36fe_FINAL_OUTPUT.OUTBUF.OUT , 
\z4re_FINAL_OUTPUT.OUTBUF.OUT , \u38ah_FINAL_OUTPUT.OUTBUF.OUT , \z0re_FINAL_OUTPUT.OUTBUF.OUT , \n44_FINAL_OUTPUT.OUTBUF.OUT , 
\z1re_FINAL_OUTPUT.OUTBUF.OUT , \x25.PAD.PAD , \x24.PAD.PAD , \u35fe_FINAL_OUTPUT.OUTBUF.OUT , \x23.PAD.PAD 
);
  inout \z2re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \test.PAD.PAD ;
  inout \z5re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u39ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u34fe_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z50al_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z51al_FINAL_OUTPUT.OUTBUF.OUT ;
  input \bertaClock.PAD.PAD ;
  inout \u37ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z3re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \global_reset.PAD.PAD ;
  inout \test_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u36fe_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z4re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u38ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z0re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \n44_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z1re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x25.PAD.PAD ;
  input \x24.PAD.PAD ;
  inout \u35fe_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x23.PAD.PAD ;
  wire \n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ;
  wire \my_clk_BUFG.O->n44_z0re.CLK ;
  wire \n44_z0re.AQ->z0re_FINAL_OUTPUT.O ;
  wire \u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ;
  wire \n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ;
  wire \global_reset.I->u34fe.SR ;
  wire \u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ;
  wire \x23.I->n44_z0re_z50al.BX ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ;
  wire \z2re_FINAL_OUTPUT.INBUF.OUT ;
  wire \test.INBUF.OUT ;
  wire \z5re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u39ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \u34fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \z50al_FINAL_OUTPUT.INBUF.OUT ;
  wire \z51al_FINAL_OUTPUT.INBUF.OUT ;
  wire \bertaClock.INBUF.OUT ;
  wire \u37ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \z3re_FINAL_OUTPUT.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \test_FINAL_OUTPUT.INBUF.OUT ;
  wire \u36fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \u34fe_u37ah/INV_u34fe_u37ah.AFFCLK ;
  wire \z4re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u38ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_z0re_z50al/INV_n44_z0re_z50al.BFFCLK ;
  wire \n44_z0re_z50al.A5LUT.O5 ;
  wire \z0re_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_FINAL_OUTPUT.INBUF.OUT ;
  wire \z1re_FINAL_OUTPUT.INBUF.OUT ;
  wire \x25.INBUF.OUT ;
  wire \x24.INBUF.OUT ;
  wire \u35fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire \NlwBufferSignal_z2re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z5re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u39ah_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u34fe_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z50al_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z51al_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u37ah_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z3re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u36fe_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u34fe_u37ah.BFF/CLK ;
  wire \NlwBufferSignal_u34fe_u37ah.BFF/IN ;
  wire \NlwBufferSignal_u34fe_u37ah.AFF/CLK ;
  wire \NlwBufferSignal_u34fe_u37ah.AFF/IN ;
  wire \NlwBufferSignal_z4re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u38ah_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NlwBufferSignal_n44_z0re_z50al.BFF/CLK ;
  wire \NlwBufferSignal_n44_z0re_z50al.BFF/IN ;
  wire \NlwBufferSignal_n44_z0re_z50al.AFF/CLK ;
  wire \NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z1re_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_u35fe_FINAL_OUTPUT_OBUF/I ;
  wire \NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_test.IMUX_O_UNCONNECTED ;
  wire \NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_test_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_test_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_x25.IMUX_O_UNCONNECTED ;
  wire \NLW_x24.IMUX_O_UNCONNECTED ;
  wire \NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD216" ))
  z2re_FINAL_OUTPUT (
    .PAD(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD216" ))
  z2re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z2re_FINAL_OUTPUT_OBUF/I ),
    .O(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \z2re_FINAL_OUTPUT.INBUF  (
    .O(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \z2re_FINAL_OUTPUT.IMUX  (
    .I(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD210" ))
  test (
    .PAD(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \test.INBUF  (
    .O(\test.INBUF.OUT ),
    .I(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \test.IMUX  (
    .I(\test.INBUF.OUT ),
    .O(\NLW_test.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD230" ))
  z5re_FINAL_OUTPUT (
    .PAD(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD230" ))
  z5re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z5re_FINAL_OUTPUT_OBUF/I ),
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
    .LOC ( "PAD211" ))
  u39ah_FINAL_OUTPUT (
    .PAD(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD211" ))
  u39ah_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u39ah_FINAL_OUTPUT_OBUF/I ),
    .O(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \u39ah_FINAL_OUTPUT.INBUF  (
    .O(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \u39ah_FINAL_OUTPUT.IMUX  (
    .I(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD209" ))
  u34fe_FINAL_OUTPUT (
    .PAD(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD209" ))
  u34fe_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u34fe_FINAL_OUTPUT_OBUF/I ),
    .O(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \u34fe_FINAL_OUTPUT.INBUF  (
    .O(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \u34fe_FINAL_OUTPUT.IMUX  (
    .I(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD226" ))
  z50al_FINAL_OUTPUT (
    .PAD(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  z50al_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z50al_FINAL_OUTPUT_OBUF/I ),
    .O(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \z50al_FINAL_OUTPUT.INBUF  (
    .O(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \z50al_FINAL_OUTPUT.IMUX  (
    .I(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD212" ))
  z51al_FINAL_OUTPUT (
    .PAD(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD212" ))
  z51al_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z51al_FINAL_OUTPUT_OBUF/I ),
    .O(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \z51al_FINAL_OUTPUT.INBUF  (
    .O(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \z51al_FINAL_OUTPUT.IMUX  (
    .I(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
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
    .LOC ( "PAD225" ))
  u37ah_FINAL_OUTPUT (
    .PAD(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  u37ah_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u37ah_FINAL_OUTPUT_OBUF/I ),
    .O(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \u37ah_FINAL_OUTPUT.INBUF  (
    .O(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \u37ah_FINAL_OUTPUT.IMUX  (
    .I(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD224" ))
  z3re_FINAL_OUTPUT (
    .PAD(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD224" ))
  z3re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z3re_FINAL_OUTPUT_OBUF/I ),
    .O(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \z3re_FINAL_OUTPUT.INBUF  (
    .O(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \z3re_FINAL_OUTPUT.IMUX  (
    .I(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD220" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->u34fe.SR )
  );
  X_BPAD #(
    .LOC ( "PAD227" ))
  test_FINAL_OUTPUT (
    .PAD(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD227" ))
  test_FINAL_OUTPUT_OBUF (
    .I(NLW_test_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \test_FINAL_OUTPUT.INBUF  (
    .O(\test_FINAL_OUTPUT.INBUF.OUT ),
    .I(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD227" ))
  \test_FINAL_OUTPUT.IMUX  (
    .I(\test_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_test_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD214" ))
  u36fe_FINAL_OUTPUT (
    .PAD(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD214" ))
  u36fe_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u36fe_FINAL_OUTPUT_OBUF/I ),
    .O(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \u36fe_FINAL_OUTPUT.INBUF  (
    .O(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \u36fe_FINAL_OUTPUT.IMUX  (
    .I(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_u34fe_u37ah.AFFCLK  (
    .I(\my_clk_BUFG.O->n44_z0re.CLK ),
    .O(\u34fe_u37ah/INV_u34fe_u37ah.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y3" ),
    .INIT ( 1'b0 ))
  \u34fe_u37ah.BFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_u34fe_u37ah.BFF/CLK ),
    .I(\NlwBufferSignal_u34fe_u37ah.BFF/IN ),
    .O(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y3" ),
    .INIT ( 1'b0 ))
  \u34fe_u37ah.AFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_u34fe_u37ah.AFF/CLK ),
    .I(\NlwBufferSignal_u34fe_u37ah.AFF/IN ),
    .O(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD221" ))
  z4re_FINAL_OUTPUT (
    .PAD(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  z4re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z4re_FINAL_OUTPUT_OBUF/I ),
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
  X_BPAD #(
    .LOC ( "PAD215" ))
  u38ah_FINAL_OUTPUT (
    .PAD(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  u38ah_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u38ah_FINAL_OUTPUT_OBUF/I ),
    .O(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \u38ah_FINAL_OUTPUT.INBUF  (
    .O(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \u38ah_FINAL_OUTPUT.IMUX  (
    .I(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->n44_z0re.CLK )
  );
  X_INV   \INV_n44_z0re_z50al.BFFCLK  (
    .I(\my_clk_BUFG.O->n44_z0re.CLK ),
    .O(\n44_z0re_z50al/INV_n44_z0re_z50al.BFFCLK )
  );
  X_BUF   \n44_z0re_z50al/n44_z0re_z50al_AMUX_Delay  (
    .I(\n44_z0re_z50al.A5LUT.O5 ),
    .O(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \n44_z0re_z50al.BFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_n44_z0re_z50al.BFF/CLK ),
    .I(\NlwBufferSignal_n44_z0re_z50al.BFF/IN ),
    .O(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \n44_z0re_z50al.AFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_n44_z0re_z50al.AFF/CLK ),
    .I(\n44_z0re_z50al.A5LUT.O5 ),
    .O(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'hCCCCCCCC ))
  \n44_z0re_z50al.A5LUT  (
    .ADR1(\x23.I->n44_z0re_z50al.BX ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_z0re_z50al.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD231" ))
  z0re_FINAL_OUTPUT (
    .PAD(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD231" ))
  z0re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \z0re_FINAL_OUTPUT.INBUF  (
    .O(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD231" ))
  \z0re_FINAL_OUTPUT.IMUX  (
    .I(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD223" ))
  n44_FINAL_OUTPUT (
    .PAD(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD223" ))
  n44_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I ),
    .O(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \n44_FINAL_OUTPUT.INBUF  (
    .O(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .I(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \n44_FINAL_OUTPUT.IMUX  (
    .I(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD229" ))
  z1re_FINAL_OUTPUT (
    .PAD(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD229" ))
  z1re_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z1re_FINAL_OUTPUT_OBUF/I ),
    .O(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \z1re_FINAL_OUTPUT.INBUF  (
    .O(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD229" ))
  \z1re_FINAL_OUTPUT.IMUX  (
    .I(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
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
  X_IPAD #(
    .LOC ( "PAD228" ))
  x24 (
    .PAD(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD228" ))
  \x24.INBUF  (
    .O(\x24.INBUF.OUT ),
    .I(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD228" ))
  \x24.IMUX  (
    .I(\x24.INBUF.OUT ),
    .O(\NLW_x24.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD222" ))
  u35fe_FINAL_OUTPUT (
    .PAD(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  u35fe_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_u35fe_FINAL_OUTPUT_OBUF/I ),
    .O(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \u35fe_FINAL_OUTPUT.INBUF  (
    .O(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \u35fe_FINAL_OUTPUT.IMUX  (
    .I(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD219" ))
  x23 (
    .PAD(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \x23.INBUF  (
    .O(\x23.INBUF.OUT ),
    .I(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \x23.IMUX  (
    .I(\x23.INBUF.OUT ),
    .O(\x23.I->n44_z0re_z50al.BX )
  );
  X_BUF   \NlwBufferBlock_z2re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z2re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z5re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z5re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u39ah_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u39ah_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u34fe_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u34fe_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z50al_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z50al_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z51al_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z51al_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u37ah_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u37ah_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z3re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z3re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u36fe_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u36fe_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u34fe_u37ah.BFF/CLK  (
    .I(\my_clk_BUFG.O->n44_z0re.CLK ),
    .O(\NlwBufferSignal_u34fe_u37ah.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_u34fe_u37ah.BFF/IN  (
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\NlwBufferSignal_u34fe_u37ah.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_u34fe_u37ah.AFF/CLK  (
    .I(\u34fe_u37ah/INV_u34fe_u37ah.AFFCLK ),
    .O(\NlwBufferSignal_u34fe_u37ah.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_u34fe_u37ah.AFF/IN  (
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\NlwBufferSignal_u34fe_u37ah.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_z4re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z4re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u38ah_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u38ah_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_n44_z0re_z50al.BFF/CLK  (
    .I(\n44_z0re_z50al/INV_n44_z0re_z50al.BFFCLK ),
    .O(\NlwBufferSignal_n44_z0re_z50al.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_n44_z0re_z50al.BFF/IN  (
    .I(\x23.I->n44_z0re_z50al.BX ),
    .O(\NlwBufferSignal_n44_z0re_z50al.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_n44_z0re_z50al.AFF/CLK  (
    .I(\my_clk_BUFG.O->n44_z0re.CLK ),
    .O(\NlwBufferSignal_n44_z0re_z50al.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_n44_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\NlwBufferSignal_n44_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z1re_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_z0re_z50al.AQ->z1re_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z1re_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_u35fe_FINAL_OUTPUT_OBUF/I  (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_u35fe_FINAL_OUTPUT_OBUF/I )
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

