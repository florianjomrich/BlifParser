////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldUnrouted.v
// /___/   /\     Timestamp: Sun Aug 03 18:51:22 2014
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
  wire \my_clk_BUFG.O->u34fe.CLK ;
  wire \n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ;
  wire \u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ;
  wire \global_reset.I->u34fe.SR ;
  wire \u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ;
  wire \x23.I->n44_z0re_z50al.BX ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ;
  wire \n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ;
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
  initial $sdf_annotate("helloworldunrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD94" ))
  z2re_FINAL_OUTPUT (
    .PAD(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  z2re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \z2re_FINAL_OUTPUT.INBUF  (
    .O(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \z2re_FINAL_OUTPUT.IMUX  (
    .I(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  test (
    .PAD(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \test.INBUF  (
    .O(\test.INBUF.OUT ),
    .I(\test.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \test.IMUX  (
    .I(\test.INBUF.OUT ),
    .O(\NLW_test.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  z5re_FINAL_OUTPUT (
    .PAD(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  z5re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \z5re_FINAL_OUTPUT.INBUF  (
    .O(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \z5re_FINAL_OUTPUT.IMUX  (
    .I(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD326" ))
  u39ah_FINAL_OUTPUT (
    .PAD(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD326" ))
  u39ah_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \u39ah_FINAL_OUTPUT.INBUF  (
    .O(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \u39ah_FINAL_OUTPUT.IMUX  (
    .I(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  u34fe_FINAL_OUTPUT (
    .PAD(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  u34fe_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \u34fe_FINAL_OUTPUT.INBUF  (
    .O(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \u34fe_FINAL_OUTPUT.IMUX  (
    .I(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD340" ))
  z50al_FINAL_OUTPUT (
    .PAD(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD340" ))
  z50al_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .O(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
  \z50al_FINAL_OUTPUT.INBUF  (
    .O(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
  \z50al_FINAL_OUTPUT.IMUX  (
    .I(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD331" ))
  z51al_FINAL_OUTPUT (
    .PAD(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD331" ))
  z51al_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .O(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD331" ))
  \z51al_FINAL_OUTPUT.INBUF  (
    .O(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD331" ))
  \z51al_FINAL_OUTPUT.IMUX  (
    .I(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD325" ))
  bertaClock (
    .PAD(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD325" ))
  \bertaClock.INBUF  (
    .O(\bertaClock.INBUF.OUT ),
    .I(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD325" ))
  \bertaClock.IMUX  (
    .I(\bertaClock.INBUF.OUT ),
    .O(\bertaClock.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD30" ))
  u37ah_FINAL_OUTPUT (
    .PAD(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD30" ))
  u37ah_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \u37ah_FINAL_OUTPUT.INBUF  (
    .O(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \u37ah_FINAL_OUTPUT.IMUX  (
    .I(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD91" ))
  z3re_FINAL_OUTPUT (
    .PAD(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  z3re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \z3re_FINAL_OUTPUT.INBUF  (
    .O(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \z3re_FINAL_OUTPUT.IMUX  (
    .I(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD29" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->u34fe.SR )
  );
  X_BPAD #(
    .LOC ( "PAD332" ))
  test_FINAL_OUTPUT (
    .PAD(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD332" ))
  test_FINAL_OUTPUT_OBUF (
    .I(NLW_test_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD332" ))
  \test_FINAL_OUTPUT.INBUF  (
    .O(\test_FINAL_OUTPUT.INBUF.OUT ),
    .I(\test_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD332" ))
  \test_FINAL_OUTPUT.IMUX  (
    .I(\test_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_test_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD329" ))
  u36fe_FINAL_OUTPUT (
    .PAD(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD329" ))
  u36fe_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \u36fe_FINAL_OUTPUT.INBUF  (
    .O(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \u36fe_FINAL_OUTPUT.IMUX  (
    .I(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_u34fe_u37ah.AFFCLK  (
    .I(\my_clk_BUFG.O->u34fe.CLK ),
    .O(\u34fe_u37ah/INV_u34fe_u37ah.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \u34fe_u37ah.BFF  (
    .GE(VCC),
    .CLK(\my_clk_BUFG.O->u34fe.CLK ),
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \u34fe_u37ah.AFF  (
    .CE(VCC),
    .CLK(\u34fe_u37ah/INV_u34fe_u37ah.AFFCLK ),
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD92" ))
  z4re_FINAL_OUTPUT (
    .PAD(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  z4re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \z4re_FINAL_OUTPUT.INBUF  (
    .O(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \z4re_FINAL_OUTPUT.IMUX  (
    .I(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD339" ))
  u38ah_FINAL_OUTPUT (
    .PAD(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD339" ))
  u38ah_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.BQ->u37ah_FINAL_OUTPUT.O ),
    .O(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \u38ah_FINAL_OUTPUT.INBUF  (
    .O(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \u38ah_FINAL_OUTPUT.IMUX  (
    .I(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\my_clk_BUFG.O->u34fe.CLK )
  );
  X_INV   \INV_n44_z0re_z50al.BFFCLK  (
    .I(\my_clk_BUFG.O->u34fe.CLK ),
    .O(\n44_z0re_z50al/INV_n44_z0re_z50al.BFFCLK )
  );
  X_BUF   \n44_z0re_z50al/n44_z0re_z50al_AMUX_Delay  (
    .I(\n44_z0re_z50al.A5LUT.O5 ),
    .O(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \n44_z0re_z50al.BFF  (
    .GE(VCC),
    .CLK(\n44_z0re_z50al/INV_n44_z0re_z50al.BFFCLK ),
    .I(\x23.I->n44_z0re_z50al.BX ),
    .O(\n44_z0re_z50al.BQ->z50al_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \n44_z0re_z50al.AFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->u34fe.CLK ),
    .I(\n44_z0re_z50al.A5LUT.O5 ),
    .O(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u34fe.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'hAAAAAAAA ))
  \n44_z0re_z50al.A5LUT  (
    .ADR0(\x23.I->n44_z0re_z50al.BX ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_z0re_z50al.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD106" ))
  z0re_FINAL_OUTPUT (
    .PAD(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD106" ))
  z0re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \z0re_FINAL_OUTPUT.INBUF  (
    .O(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \z0re_FINAL_OUTPUT.IMUX  (
    .I(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD105" ))
  n44_FINAL_OUTPUT (
    .PAD(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD105" ))
  n44_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AMUX->n44_z0re_z50al.AX ),
    .O(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \n44_FINAL_OUTPUT.INBUF  (
    .O(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .I(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \n44_FINAL_OUTPUT.IMUX  (
    .I(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD93" ))
  z1re_FINAL_OUTPUT (
    .PAD(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  z1re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_z50al.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \z1re_FINAL_OUTPUT.INBUF  (
    .O(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \z1re_FINAL_OUTPUT.IMUX  (
    .I(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  x25 (
    .PAD(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \x25.INBUF  (
    .O(\x25.INBUF.OUT ),
    .I(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \x25.IMUX  (
    .I(\x25.INBUF.OUT ),
    .O(\NLW_x25.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD84" ))
  x24 (
    .PAD(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \x24.INBUF  (
    .O(\x24.INBUF.OUT ),
    .I(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \x24.IMUX  (
    .I(\x24.INBUF.OUT ),
    .O(\NLW_x24.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD337" ))
  u35fe_FINAL_OUTPUT (
    .PAD(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  u35fe_FINAL_OUTPUT_OBUF (
    .I(\u34fe_u37ah.AQ->u34fe_FINAL_OUTPUT.O ),
    .O(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \u35fe_FINAL_OUTPUT.INBUF  (
    .O(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \u35fe_FINAL_OUTPUT.IMUX  (
    .I(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  x23 (
    .PAD(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \x23.INBUF  (
    .O(\x23.INBUF.OUT ),
    .I(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \x23.IMUX  (
    .I(\x23.INBUF.OUT ),
    .O(\x23.I->n44_z0re_z50al.BX )
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

