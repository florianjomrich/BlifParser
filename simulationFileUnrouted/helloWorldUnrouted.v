////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldUnrouted.v
// /___/   /\     Timestamp: Sat Aug 02 23:32:28 2014
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
  \u37_FINAL_OUTPUT.OUTBUF.OUT , \z5_FINAL_OUTPUT.OUTBUF.OUT , \z0_FINAL_OUTPUT.OUTBUF.OUT , \u36_FINAL_OUTPUT.OUTBUF.OUT , 
\u34_FINAL_OUTPUT.OUTBUF.OUT , \u35_FINAL_OUTPUT.OUTBUF.OUT , \bertaClock.PAD.PAD , \z2_FINAL_OUTPUT.OUTBUF.OUT , \global_reset.PAD.PAD , 
\u38_FINAL_OUTPUT.OUTBUF.OUT , \z4_FINAL_OUTPUT.OUTBUF.OUT , \x25.PAD.PAD , \z1_FINAL_OUTPUT.OUTBUF.OUT , \z3_FINAL_OUTPUT.OUTBUF.OUT , \x24.PAD.PAD 
, \x23.PAD.PAD 
);
  inout \u37_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z5_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z0_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u36_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u34_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \u35_FINAL_OUTPUT.OUTBUF.OUT ;
  input \bertaClock.PAD.PAD ;
  inout \z2_FINAL_OUTPUT.OUTBUF.OUT ;
  input \global_reset.PAD.PAD ;
  inout \u38_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z4_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x25.PAD.PAD ;
  inout \z1_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z3_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x24.PAD.PAD ;
  input \x23.PAD.PAD ;
  wire \x24.I->z2_u34_u36_z4.A1 ;
  wire \z3_z1.AQ->z3_FINAL_OUTPUT.O ;
  wire \z2_u34_u36_z4.BMUX->u34_FINAL_OUTPUT.O ;
  wire \z3_z1.BQ->z1_FINAL_OUTPUT.O ;
  wire \n44_u33_u35_u37.DMUX->u37_FINAL_OUTPUT.O ;
  wire \u38_ichKommeIndieNegativeSLICE_z5.CQ->z5_FINAL_OUTPUT.O ;
  wire \n44_u33_u35_u37.CMUX->u35_FINAL_OUTPUT.O ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \u38_ichKommeIndieNegativeSLICE_z5.AMUX->u38_FINAL_OUTPUT.O ;
  wire \x23.I->n44_u33_u35_u37.A1 ;
  wire \n44_u33.BQ->z0_FINAL_OUTPUT.O ;
  wire \z2_u34_u36_z4.CMUX->u36_FINAL_OUTPUT.O ;
  wire \z2_u34_u36_z4.AMUX->z2_FINAL_OUTPUT.O ;
  wire \global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR ;
  wire \x25.I->n44_u33_u35_u37.B1 ;
  wire \my_clk_BUFG.O->n44.CLK ;
  wire \n44_u33_u35_u37.AMUX->z3_z1.AX ;
  wire \z2_u34_u36_z4.DQ->z4_FINAL_OUTPUT.O ;
  wire \n44_u33_u35_u37.AQ->u38_ichKommeIndieNegativeSLICE_z5.CX ;
  wire \u37_FINAL_OUTPUT.INBUF.OUT ;
  wire \z5_FINAL_OUTPUT.INBUF.OUT ;
  wire \z0_FINAL_OUTPUT.INBUF.OUT ;
  wire \u36_FINAL_OUTPUT.INBUF.OUT ;
  wire \u34_FINAL_OUTPUT.INBUF.OUT ;
  wire \u35_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_u33_u35_u37.C5LUT.O5 ;
  wire \n44_u33_u35_u37/n44_u33_u35_u37.B5LUT.O5 ;
  wire \n44_u33_u35_u37.A5LUT.O5 ;
  wire \n44_u33_u35_u37.D5LUT.O5 ;
  wire \bertaClock.INBUF.OUT ;
  wire \z2_FINAL_OUTPUT.INBUF.OUT ;
  wire \u38_ichKommeIndieNegativeSLICE_z5.A5LUT.O5 ;
  wire \global_reset.INBUF.OUT ;
  wire \u38_FINAL_OUTPUT.INBUF.OUT ;
  wire \z4_FINAL_OUTPUT.INBUF.OUT ;
  wire \x25.INBUF.OUT ;
  wire \z1_FINAL_OUTPUT.INBUF.OUT ;
  wire \z3_FINAL_OUTPUT.INBUF.OUT ;
  wire \z2_u34_u36_z4.C5LUT.O5 ;
  wire \z2_u34_u36_z4.B5LUT.O5 ;
  wire \z2_u34_u36_z4.A5LUT.O5 ;
  wire \x24.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire \NLW_u37_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z5_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_u36_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u34_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u35_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_u38_ichKommeIndieNegativeSLICE_z5.B5LUT_O_UNCONNECTED ;
  wire \NLW_u38_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z4_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldunrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD337" ))
  u37_FINAL_OUTPUT (
    .PAD(\u37_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  u37_FINAL_OUTPUT_OBUF (
    .I(\n44_u33_u35_u37.DMUX->u37_FINAL_OUTPUT.O ),
    .O(\u37_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \u37_FINAL_OUTPUT.INBUF  (
    .O(\u37_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u37_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \u37_FINAL_OUTPUT.IMUX  (
    .I(\u37_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u37_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD91" ))
  z5_FINAL_OUTPUT (
    .PAD(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  z5_FINAL_OUTPUT_OBUF (
    .I(\u38_ichKommeIndieNegativeSLICE_z5.CQ->z5_FINAL_OUTPUT.O ),
    .O(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \z5_FINAL_OUTPUT.INBUF  (
    .O(\z5_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \z5_FINAL_OUTPUT.IMUX  (
    .I(\z5_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z5_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD95" ))
  z0_FINAL_OUTPUT (
    .PAD(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD95" ))
  z0_FINAL_OUTPUT_OBUF (
    .I(\n44_u33.BQ->z0_FINAL_OUTPUT.O ),
    .O(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \z0_FINAL_OUTPUT.INBUF  (
    .O(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \z0_FINAL_OUTPUT.IMUX  (
    .I(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\my_clk_BUFG.O->n44.CLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \z3_z1.BFF  (
    .GE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37.AMUX->z3_z1.AX ),
    .O(\z3_z1.BQ->z1_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \z3_z1.AFF  (
    .GE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37.AMUX->z3_z1.AX ),
    .O(\z3_z1.AQ->z3_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR ),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  u36_FINAL_OUTPUT (
    .PAD(\u36_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  u36_FINAL_OUTPUT_OBUF (
    .I(\z2_u34_u36_z4.CMUX->u36_FINAL_OUTPUT.O ),
    .O(\u36_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \u36_FINAL_OUTPUT.INBUF  (
    .O(\u36_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u36_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \u36_FINAL_OUTPUT.IMUX  (
    .I(\u36_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u36_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD92" ))
  u34_FINAL_OUTPUT (
    .PAD(\u34_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  u34_FINAL_OUTPUT_OBUF (
    .I(\z2_u34_u36_z4.BMUX->u34_FINAL_OUTPUT.O ),
    .O(\u34_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \u34_FINAL_OUTPUT.INBUF  (
    .O(\u34_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u34_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \u34_FINAL_OUTPUT.IMUX  (
    .I(\u34_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u34_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  u35_FINAL_OUTPUT (
    .PAD(\u35_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  u35_FINAL_OUTPUT_OBUF (
    .I(\n44_u33_u35_u37.CMUX->u35_FINAL_OUTPUT.O ),
    .O(\u35_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \u35_FINAL_OUTPUT.INBUF  (
    .O(\u35_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u35_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \u35_FINAL_OUTPUT.IMUX  (
    .I(\u35_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u35_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \n44_u33_u35_u37/n44_u33_u35_u37_DMUX_Delay  (
    .I(\n44_u33_u35_u37.D5LUT.O5 ),
    .O(\n44_u33_u35_u37.DMUX->u37_FINAL_OUTPUT.O )
  );
  X_BUF   \n44_u33_u35_u37/n44_u33_u35_u37_CMUX_Delay  (
    .I(\n44_u33_u35_u37.C5LUT.O5 ),
    .O(\n44_u33_u35_u37.CMUX->u35_FINAL_OUTPUT.O )
  );
  X_BUF   \n44_u33_u35_u37/n44_u33_u35_u37_AMUX_Delay  (
    .I(\n44_u33_u35_u37.A5LUT.O5 ),
    .O(\n44_u33_u35_u37.AMUX->z3_z1.AX )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h55555555 ))
  \n44_u33_u35_u37.D5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_u35_u37.D5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h55555555 ))
  \n44_u33_u35_u37.C5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_u35_u37.C5LUT.O5 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \n44_u33_u35_u37.BFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37/n44_u33_u35_u37.B5LUT.O5 ),
    .O(\n44_u33.BQ->z0_FINAL_OUTPUT.O ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h55555555 ))
  \n44_u33_u35_u37.B5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_u35_u37/n44_u33_u35_u37.B5LUT.O5 )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \n44_u33_u35_u37.AFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37.A5LUT.O5 ),
    .O(\n44_u33_u35_u37.AQ->u38_ichKommeIndieNegativeSLICE_z5.CX ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h55555555 ))
  \n44_u33_u35_u37.A5LUT  (
    .ADR0(\x23.I->n44_u33_u35_u37.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_u35_u37.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD30" ))
  bertaClock (
    .PAD(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \bertaClock.INBUF  (
    .O(\bertaClock.INBUF.OUT ),
    .I(\bertaClock.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \bertaClock.IMUX  (
    .I(\bertaClock.INBUF.OUT ),
    .O(\bertaClock.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD106" ))
  z2_FINAL_OUTPUT (
    .PAD(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD106" ))
  z2_FINAL_OUTPUT_OBUF (
    .I(\z2_u34_u36_z4.AMUX->z2_FINAL_OUTPUT.O ),
    .O(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \z2_FINAL_OUTPUT.INBUF  (
    .O(\z2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \z2_FINAL_OUTPUT.IMUX  (
    .I(\z2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \u38_ichKommeIndieNegativeSLICE_z5/u38_ichKommeIndieNegativeSLICE_z5_AMUX_Delay  (
    .I(\u38_ichKommeIndieNegativeSLICE_z5.A5LUT.O5 ),
    .O(\u38_ichKommeIndieNegativeSLICE_z5.AMUX->u38_FINAL_OUTPUT.O )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 1'b0 ))
  \u38_ichKommeIndieNegativeSLICE_z5.CFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37.AQ->u38_ichKommeIndieNegativeSLICE_z5.CX ),
    .O(\u38_ichKommeIndieNegativeSLICE_z5.CQ->z5_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h55555555 ))
  \u38_ichKommeIndieNegativeSLICE_z5.B5LUT  (
    .ADR0(\x24.I->z2_u34_u36_z4.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_u38_ichKommeIndieNegativeSLICE_z5.B5LUT_O_UNCONNECTED )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h55555555 ))
  \u38_ichKommeIndieNegativeSLICE_z5.A5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\u38_ichKommeIndieNegativeSLICE_z5.A5LUT.O5 )
  );
  X_IPAD #(
    .LOC ( "PAD339" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR )
  );
  X_BPAD #(
    .LOC ( "PAD329" ))
  u38_FINAL_OUTPUT (
    .PAD(\u38_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD329" ))
  u38_FINAL_OUTPUT_OBUF (
    .I(\u38_ichKommeIndieNegativeSLICE_z5.AMUX->u38_FINAL_OUTPUT.O ),
    .O(\u38_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \u38_FINAL_OUTPUT.INBUF  (
    .O(\u38_FINAL_OUTPUT.INBUF.OUT ),
    .I(\u38_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \u38_FINAL_OUTPUT.IMUX  (
    .I(\u38_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_u38_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD94" ))
  z4_FINAL_OUTPUT (
    .PAD(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  z4_FINAL_OUTPUT_OBUF (
    .I(\z2_u34_u36_z4.DQ->z4_FINAL_OUTPUT.O ),
    .O(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \z4_FINAL_OUTPUT.INBUF  (
    .O(\z4_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \z4_FINAL_OUTPUT.IMUX  (
    .I(\z4_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z4_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
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
    .O(\x25.I->n44_u33_u35_u37.B1 )
  );
  X_BPAD #(
    .LOC ( "PAD105" ))
  z1_FINAL_OUTPUT (
    .PAD(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD105" ))
  z1_FINAL_OUTPUT_OBUF (
    .I(\z3_z1.BQ->z1_FINAL_OUTPUT.O ),
    .O(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \z1_FINAL_OUTPUT.INBUF  (
    .O(\z1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \z1_FINAL_OUTPUT.IMUX  (
    .I(\z1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD93" ))
  z3_FINAL_OUTPUT (
    .PAD(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  z3_FINAL_OUTPUT_OBUF (
    .I(\z3_z1.AQ->z3_FINAL_OUTPUT.O ),
    .O(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \z3_FINAL_OUTPUT.INBUF  (
    .O(\z3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \z3_FINAL_OUTPUT.IMUX  (
    .I(\z3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \z2_u34_u36_z4/z2_u34_u36_z4_CMUX_Delay  (
    .I(\z2_u34_u36_z4.C5LUT.O5 ),
    .O(\z2_u34_u36_z4.CMUX->u36_FINAL_OUTPUT.O )
  );
  X_BUF   \z2_u34_u36_z4/z2_u34_u36_z4_BMUX_Delay  (
    .I(\z2_u34_u36_z4.B5LUT.O5 ),
    .O(\z2_u34_u36_z4.BMUX->u34_FINAL_OUTPUT.O )
  );
  X_BUF   \z2_u34_u36_z4/z2_u34_u36_z4_AMUX_Delay  (
    .I(\z2_u34_u36_z4.A5LUT.O5 ),
    .O(\z2_u34_u36_z4.AMUX->z2_FINAL_OUTPUT.O )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \z2_u34_u36_z4.DFF  (
    .GE(VCC),
    .CLK(\my_clk_BUFG.O->n44.CLK ),
    .I(\n44_u33_u35_u37.AQ->u38_ichKommeIndieNegativeSLICE_z5.CX ),
    .O(\z2_u34_u36_z4.DQ->z4_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->u38_ichKommeIndieNegativeSLICE_z5.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h55555555 ))
  \z2_u34_u36_z4.C5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\z2_u34_u36_z4.C5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h55555555 ))
  \z2_u34_u36_z4.B5LUT  (
    .ADR0(\x25.I->n44_u33_u35_u37.B1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\z2_u34_u36_z4.B5LUT.O5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h55555555 ))
  \z2_u34_u36_z4.A5LUT  (
    .ADR0(\x24.I->z2_u34_u36_z4.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\z2_u34_u36_z4.A5LUT.O5 )
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
    .O(\x24.I->z2_u34_u36_z4.A1 )
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
    .O(\x23.I->n44_u33_u35_u37.A1 )
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

