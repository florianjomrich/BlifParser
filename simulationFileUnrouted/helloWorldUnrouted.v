////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldUnrouted.v
// /___/   /\     Timestamp: Sat Aug 09 14:53:56 2014
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
  \z2re_FINAL_OUTPUT.OUTBUF.OUT , \z5re_FINAL_OUTPUT.OUTBUF.OUT , \u39ah_FINAL_OUTPUT.OUTBUF.OUT , \u34fe_FINAL_OUTPUT.OUTBUF.OUT , 
\z50al_FINAL_OUTPUT.OUTBUF.OUT , \z51al_FINAL_OUTPUT.OUTBUF.OUT , \test1.PAD.PAD , \bertaClock.PAD.PAD , \u37ah_FINAL_OUTPUT.OUTBUF.OUT , 
\global_reset.PAD.PAD , \z3re_FINAL_OUTPUT.OUTBUF.OUT , \test3_FINAL_OUTPUT.OUTBUF.OUT , \u36fe_FINAL_OUTPUT.OUTBUF.OUT , 
\z4re_FINAL_OUTPUT.OUTBUF.OUT , \u38ah_FINAL_OUTPUT.OUTBUF.OUT , \d.PAD.PAD , \b.PAD.PAD , \c.PAD.PAD , \z0re_FINAL_OUTPUT.OUTBUF.OUT , \a.PAD.PAD , 
\n44_FINAL_OUTPUT.OUTBUF.OUT , \r.PAD.PAD , \xorOutput_FINAL_OUTPUT.OUTBUF.OUT , \z1re_FINAL_OUTPUT.OUTBUF.OUT , \x25.PAD.PAD , \x24.PAD.PAD , 
\u35fe_FINAL_OUTPUT.OUTBUF.OUT , \x23.PAD.PAD 
);
  inout \z2re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z5re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u39ah_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u34fe_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z50al_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z51al_FINAL_OUTPUT.OUTBUF.OUT ;
  input \test1.PAD.PAD ;
  input \bertaClock.PAD.PAD ;
  inout \u37ah_FINAL_OUTPUT.OUTBUF.OUT ;
  input \global_reset.PAD.PAD ;
  inout \z3re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \test3_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u36fe_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z4re_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u38ah_FINAL_OUTPUT.OUTBUF.OUT ;
  input \d.PAD.PAD ;
  input \b.PAD.PAD ;
  input \c.PAD.PAD ;
  inout \z0re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \a.PAD.PAD ;
  inout \n44_FINAL_OUTPUT.OUTBUF.OUT ;
  input \r.PAD.PAD ;
  inout \xorOutput_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z1re_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x25.PAD.PAD ;
  input \x24.PAD.PAD ;
  inout \u35fe_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x23.PAD.PAD ;
  wire \test1.I->test2_n30_xorInBetween_xorOutput.A1 ;
  wire \x23.I->n44_z0re_test3_z1re.A6 ;
  wire \c.I->n44_z0re_test3_z1re.A3 ;
  wire \n44_z0re_test3_z1re.AQ->z0re_FINAL_OUTPUT.O ;
  wire \n44_z0re_test3_z1re.AMUX->n44_FINAL_OUTPUT.O ;
  wire \n44_z0re_test3_z1re.CQ->z1re_FINAL_OUTPUT.O ;
  wire \a.I->n44_z0re_test3_z1re.A1 ;
  wire \n44_z0re_test3_z1re.BMUX->test3_FINAL_OUTPUT.O ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \x24.I->test2_n30_xorInBetween_xorOutput.C2 ;
  wire \b.I->n44_z0re_test3_z1re.A2 ;
  wire \test2_n30_xorInBetween_xorOutput.AMUX->n44_z0re_test3_z1re.B1 ;
  wire \r.I->n44_z0re_test3_z1re.A5 ;
  wire \my_clk_BUFG.O->n44_z0re_test3_z1re.CLK ;
  wire \global_reset.I->n44_z0re_test3_z1re.SR ;
  wire \test2_n30_xorInBetween_xorOutput.CQ->xorOutput_FINAL_OUTPUT.O ;
  wire \d.I->n44_z0re_test3_z1re.A4 ;
  wire \x25.I->test2_n30_xorInBetween_xorOutput.B1 ;
  wire \z2re_FINAL_OUTPUT.INBUF.OUT ;
  wire \z5re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u39ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \u34fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \z50al_FINAL_OUTPUT.INBUF.OUT ;
  wire \z51al_FINAL_OUTPUT.INBUF.OUT ;
  wire \test1.INBUF.OUT ;
  wire \bertaClock.INBUF.OUT ;
  wire \u37ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \z3re_FINAL_OUTPUT.INBUF.OUT ;
  wire \test3_FINAL_OUTPUT.INBUF.OUT ;
  wire \u36fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \z4re_FINAL_OUTPUT.INBUF.OUT ;
  wire \u38ah_FINAL_OUTPUT.INBUF.OUT ;
  wire \d.INBUF.OUT ;
  wire \b.INBUF.OUT ;
  wire \c.INBUF.OUT ;
  wire \test2_n30_xorInBetween_xorOutput/INV_test2_n30_xorInBetween_xorOutput.CFFCLK ;
  wire \test2_n30_xorInBetween_xorOutput/test2_n30_xorInBetween_xorOutput.C5LUT.O5 ;
  wire \test2_n30_xorInBetween_xorOutput.A5LUT.O5 ;
  wire \z0re_FINAL_OUTPUT.INBUF.OUT ;
  wire \a.INBUF.OUT ;
  wire \n44_z0re_test3_z1re.B5LUT.O5 ;
  wire \n44_z0re_test3_z1re.A6LUT.O6 ;
  wire \n44_FINAL_OUTPUT.INBUF.OUT ;
  wire \r.INBUF.OUT ;
  wire \xorOutput_FINAL_OUTPUT.INBUF.OUT ;
  wire \z1re_FINAL_OUTPUT.INBUF.OUT ;
  wire \x25.INBUF.OUT ;
  wire \x24.INBUF.OUT ;
  wire \u35fe_FINAL_OUTPUT.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire NLW_z2re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z5re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u39ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u34fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z50al_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z51al_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u37ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z3re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_test3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u36fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_z4re_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u38ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_INV_test2_n30_xorInBetween_xorOutput.CFFCLK_I_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_test2_n30_xorInBetween_xorOutput.B5LUT_O_UNCONNECTED ;
  wire \NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_xorOutput_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z1re_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire NLW_u35fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED;
  wire \NLW_u35fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldunrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD337" ))
  z2re_FINAL_OUTPUT (
    .PAD(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  z2re_FINAL_OUTPUT_OBUF (
    .I(NLW_z2re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \z2re_FINAL_OUTPUT.INBUF  (
    .O(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \z2re_FINAL_OUTPUT.IMUX  (
    .I(\z2re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD339" ))
  z5re_FINAL_OUTPUT (
    .PAD(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD339" ))
  z5re_FINAL_OUTPUT_OBUF (
    .I(NLW_z5re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \z5re_FINAL_OUTPUT.INBUF  (
    .O(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z5re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \z5re_FINAL_OUTPUT.IMUX  (
    .I(\z5re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z5re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD29" ))
  u39ah_FINAL_OUTPUT (
    .PAD(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD29" ))
  u39ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u39ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \u39ah_FINAL_OUTPUT.INBUF  (
    .O(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u39ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD29" ))
  \u39ah_FINAL_OUTPUT.IMUX  (
    .I(\u39ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u39ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD326" ))
  u34fe_FINAL_OUTPUT (
    .PAD(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD326" ))
  u34fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u34fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \u34fe_FINAL_OUTPUT.INBUF  (
    .O(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u34fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \u34fe_FINAL_OUTPUT.IMUX  (
    .I(\u34fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u34fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD321" ))
  z50al_FINAL_OUTPUT (
    .PAD(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD321" ))
  z50al_FINAL_OUTPUT_OBUF (
    .I(NLW_z50al_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD321" ))
  \z50al_FINAL_OUTPUT.INBUF  (
    .O(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z50al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD321" ))
  \z50al_FINAL_OUTPUT.IMUX  (
    .I(\z50al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z50al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD336" ))
  z51al_FINAL_OUTPUT (
    .PAD(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD336" ))
  z51al_FINAL_OUTPUT_OBUF (
    .I(NLW_z51al_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD336" ))
  \z51al_FINAL_OUTPUT.INBUF  (
    .O(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z51al_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD336" ))
  \z51al_FINAL_OUTPUT.IMUX  (
    .I(\z51al_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z51al_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  test1 (
    .PAD(\test1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \test1.INBUF  (
    .O(\test1.INBUF.OUT ),
    .I(\test1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \test1.IMUX  (
    .I(\test1.INBUF.OUT ),
    .O(\test1.I->test2_n30_xorInBetween_xorOutput.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD335" ))
  bertaClock (
    .PAD(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD335" ))
  \bertaClock.INBUF  (
    .O(\bertaClock.INBUF.OUT ),
    .I(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD335" ))
  \bertaClock.IMUX  (
    .I(\bertaClock.INBUF.OUT ),
    .O(\bertaClock.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD332" ))
  u37ah_FINAL_OUTPUT (
    .PAD(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD332" ))
  u37ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u37ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD332" ))
  \u37ah_FINAL_OUTPUT.INBUF  (
    .O(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u37ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD332" ))
  \u37ah_FINAL_OUTPUT.IMUX  (
    .I(\u37ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u37ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD327" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD327" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD327" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->n44_z0re_test3_z1re.SR )
  );
  X_BPAD #(
    .LOC ( "PAD329" ))
  z3re_FINAL_OUTPUT (
    .PAD(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD329" ))
  z3re_FINAL_OUTPUT_OBUF (
    .I(NLW_z3re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \z3re_FINAL_OUTPUT.INBUF  (
    .O(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \z3re_FINAL_OUTPUT.IMUX  (
    .I(\z3re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD108" ))
  test3_FINAL_OUTPUT (
    .PAD(\test3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD108" ))
  test3_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_test3_z1re.BMUX->test3_FINAL_OUTPUT.O ),
    .O(\test3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD108" ))
  \test3_FINAL_OUTPUT.INBUF  (
    .O(\test3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\test3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD108" ))
  \test3_FINAL_OUTPUT.IMUX  (
    .I(\test3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_test3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD331" ))
  u36fe_FINAL_OUTPUT (
    .PAD(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD331" ))
  u36fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u36fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD331" ))
  \u36fe_FINAL_OUTPUT.INBUF  (
    .O(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD331" ))
  \u36fe_FINAL_OUTPUT.IMUX  (
    .I(\u36fe_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u36fe_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD30" ))
  z4re_FINAL_OUTPUT (
    .PAD(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD30" ))
  z4re_FINAL_OUTPUT_OBUF (
    .I(NLW_z4re_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \z4re_FINAL_OUTPUT.INBUF  (
    .O(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z4re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \z4re_FINAL_OUTPUT.IMUX  (
    .I(\z4re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z4re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD325" ))
  u38ah_FINAL_OUTPUT (
    .PAD(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD325" ))
  u38ah_FINAL_OUTPUT_OBUF (
    .I(NLW_u38ah_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD325" ))
  \u38ah_FINAL_OUTPUT.INBUF  (
    .O(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u38ah_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD325" ))
  \u38ah_FINAL_OUTPUT.IMUX  (
    .I(\u38ah_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u38ah_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD91" ))
  d (
    .PAD(\d.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \d.INBUF  (
    .O(\d.INBUF.OUT ),
    .I(\d.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \d.IMUX  (
    .I(\d.INBUF.OUT ),
    .O(\d.I->n44_z0re_test3_z1re.A4 )
  );
  X_IPAD #(
    .LOC ( "PAD93" ))
  b (
    .PAD(\b.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \b.INBUF  (
    .O(\b.INBUF.OUT ),
    .I(\b.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \b.IMUX  (
    .I(\b.INBUF.OUT ),
    .O(\b.I->n44_z0re_test3_z1re.A2 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\my_clk_BUFG.O->n44_z0re_test3_z1re.CLK )
  );
  X_IPAD #(
    .LOC ( "PAD94" ))
  c (
    .PAD(\c.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \c.INBUF  (
    .O(\c.INBUF.OUT ),
    .I(\c.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \c.IMUX  (
    .I(\c.INBUF.OUT ),
    .O(\c.I->n44_z0re_test3_z1re.A3 )
  );
  X_INV   \INV_test2_n30_xorInBetween_xorOutput.CFFCLK  (
    .I(\NLW_INV_test2_n30_xorInBetween_xorOutput.CFFCLK_I_UNCONNECTED ),
    .O(\test2_n30_xorInBetween_xorOutput/INV_test2_n30_xorInBetween_xorOutput.CFFCLK )
  );
  X_BUF   \test2_n30_xorInBetween_xorOutput/test2_n30_xorInBetween_xorOutput_AMUX_Delay  (
    .I(\test2_n30_xorInBetween_xorOutput.A5LUT.O5 ),
    .O(\test2_n30_xorInBetween_xorOutput.AMUX->n44_z0re_test3_z1re.B1 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \test2_n30_xorInBetween_xorOutput.CFF  (
    .CE(VCC),
    .CLK(\test2_n30_xorInBetween_xorOutput/INV_test2_n30_xorInBetween_xorOutput.CFFCLK ),
    .I(\test2_n30_xorInBetween_xorOutput/test2_n30_xorInBetween_xorOutput.C5LUT.O5 ),
    .O(\test2_n30_xorInBetween_xorOutput.CQ->xorOutput_FINAL_OUTPUT.O ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h66666666 ))
  \test2_n30_xorInBetween_xorOutput.C5LUT  (
    .ADR0(\x23.I->n44_z0re_test3_z1re.A6 ),
    .ADR1(\x24.I->test2_n30_xorInBetween_xorOutput.C2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\test2_n30_xorInBetween_xorOutput/test2_n30_xorInBetween_xorOutput.C5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'hAAAAAAAA ))
  \test2_n30_xorInBetween_xorOutput.B5LUT  (
    .ADR0(\x25.I->test2_n30_xorInBetween_xorOutput.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_test2_n30_xorInBetween_xorOutput.B5LUT_O_UNCONNECTED )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'hAAAAAAAA ))
  \test2_n30_xorInBetween_xorOutput.A5LUT  (
    .ADR0(\test1.I->test2_n30_xorInBetween_xorOutput.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\test2_n30_xorInBetween_xorOutput.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  z0re_FINAL_OUTPUT (
    .PAD(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  z0re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_test3_z1re.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \z0re_FINAL_OUTPUT.INBUF  (
    .O(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \z0re_FINAL_OUTPUT.IMUX  (
    .I(\z0re_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0re_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD106" ))
  a (
    .PAD(\a.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \a.INBUF  (
    .O(\a.INBUF.OUT ),
    .I(\a.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \a.IMUX  (
    .I(\a.INBUF.OUT ),
    .O(\a.I->n44_z0re_test3_z1re.A1 )
  );
  X_BUF   \n44_z0re_test3_z1re/n44_z0re_test3_z1re_BMUX_Delay  (
    .I(\n44_z0re_test3_z1re.B5LUT.O5 ),
    .O(\n44_z0re_test3_z1re.BMUX->test3_FINAL_OUTPUT.O )
  );
  X_BUF   \n44_z0re_test3_z1re/n44_z0re_test3_z1re_AMUX_Delay  (
    .I(\n44_z0re_test3_z1re.A6LUT.O6 ),
    .O(\n44_z0re_test3_z1re.AMUX->n44_FINAL_OUTPUT.O )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \n44_z0re_test3_z1re.CFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->n44_z0re_test3_z1re.CLK ),
    .I(\n44_z0re_test3_z1re.AQ->z0re_FINAL_OUTPUT.O ),
    .O(\n44_z0re_test3_z1re.CQ->z1re_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_z0re_test3_z1re.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h88888888 ))
  \n44_z0re_test3_z1re.B5LUT  (
    .ADR0(\test2_n30_xorInBetween_xorOutput.AMUX->n44_z0re_test3_z1re.B1 ),
    .ADR1(\test2_n30_xorInBetween_xorOutput.AMUX->n44_z0re_test3_z1re.B1 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_z0re_test3_z1re.B5LUT.O5 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \n44_z0re_test3_z1re.AFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->n44_z0re_test3_z1re.CLK ),
    .I(\n44_z0re_test3_z1re.A6LUT.O6 ),
    .O(\n44_z0re_test3_z1re.AQ->z0re_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_z0re_test3_z1re.SR ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 64'h0001000000000000 ))
  \n44_z0re_test3_z1re.A6LUT  (
    .ADR0(\a.I->n44_z0re_test3_z1re.A1 ),
    .ADR1(\b.I->n44_z0re_test3_z1re.A2 ),
    .ADR2(\c.I->n44_z0re_test3_z1re.A3 ),
    .ADR3(\d.I->n44_z0re_test3_z1re.A4 ),
    .ADR4(\r.I->n44_z0re_test3_z1re.A5 ),
    .ADR5(\x23.I->n44_z0re_test3_z1re.A6 ),
    .O(\n44_z0re_test3_z1re.A6LUT.O6 )
  );
  X_BPAD #(
    .LOC ( "PAD92" ))
  n44_FINAL_OUTPUT (
    .PAD(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  n44_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_test3_z1re.AMUX->n44_FINAL_OUTPUT.O ),
    .O(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \n44_FINAL_OUTPUT.INBUF  (
    .O(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .I(\n44_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \n44_FINAL_OUTPUT.IMUX  (
    .I(\n44_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_n44_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD105" ))
  r (
    .PAD(\r.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \r.INBUF  (
    .O(\r.INBUF.OUT ),
    .I(\r.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \r.IMUX  (
    .I(\r.INBUF.OUT ),
    .O(\r.I->n44_z0re_test3_z1re.A5 )
  );
  X_BPAD #(
    .LOC ( "PAD322" ))
  xorOutput_FINAL_OUTPUT (
    .PAD(\xorOutput_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD322" ))
  xorOutput_FINAL_OUTPUT_OBUF (
    .I(\test2_n30_xorInBetween_xorOutput.CQ->xorOutput_FINAL_OUTPUT.O ),
    .O(\xorOutput_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD322" ))
  \xorOutput_FINAL_OUTPUT.INBUF  (
    .O(\xorOutput_FINAL_OUTPUT.INBUF.OUT ),
    .I(\xorOutput_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD322" ))
  \xorOutput_FINAL_OUTPUT.IMUX  (
    .I(\xorOutput_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_xorOutput_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  z1re_FINAL_OUTPUT (
    .PAD(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  z1re_FINAL_OUTPUT_OBUF (
    .I(\n44_z0re_test3_z1re.CQ->z1re_FINAL_OUTPUT.O ),
    .O(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \z1re_FINAL_OUTPUT.INBUF  (
    .O(\z1re_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1re_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
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
    .O(\x25.I->test2_n30_xorInBetween_xorOutput.B1 )
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
    .O(\x24.I->test2_n30_xorInBetween_xorOutput.C2 )
  );
  X_BPAD #(
    .LOC ( "PAD340" ))
  u35fe_FINAL_OUTPUT (
    .PAD(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD340" ))
  u35fe_FINAL_OUTPUT_OBUF (
    .I(NLW_u35fe_FINAL_OUTPUT_OBUF_I_UNCONNECTED),
    .O(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
  \u35fe_FINAL_OUTPUT.INBUF  (
    .O(\u35fe_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u35fe_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
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
    .O(\x23.I->n44_z0re_test3_z1re.A6 )
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

