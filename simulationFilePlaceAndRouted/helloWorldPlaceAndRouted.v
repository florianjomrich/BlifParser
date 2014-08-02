////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sat Aug 02 22:47:32 2014
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
  \z5_FINAL_OUTPUT.OUTBUF.OUT , \z0_FINAL_OUTPUT.OUTBUF.OUT , \z2_FINAL_OUTPUT.OUTBUF.OUT , \bertaClock.PAD.PAD , \global_reset.PAD.PAD , 
\z4_FINAL_OUTPUT.OUTBUF.OUT , \x25.PAD.PAD , \z1_FINAL_OUTPUT.OUTBUF.OUT , \z3_FINAL_OUTPUT.OUTBUF.OUT , \x24.PAD.PAD , \x23.PAD.PAD 
);
  inout \z5_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z0_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z2_FINAL_OUTPUT.OUTBUF.OUT ;
  input \bertaClock.PAD.PAD ;
  input \global_reset.PAD.PAD ;
  inout \z4_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x25.PAD.PAD ;
  inout \z1_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \z3_FINAL_OUTPUT.OUTBUF.OUT ;
  input \x24.PAD.PAD ;
  input \x23.PAD.PAD ;
  wire \z2_ichKommeIndieNegativeSLICE_z4_z3.DQ->z3_FINAL_OUTPUT.O ;
  wire \x25.I->n44_u33_z5.B1 ;
  wire \global_reset.I->n44_u33_z5.SR ;
  wire \bertaClock.I->my_clk_BUFG.I0 ;
  wire \n44_u33_z5.AMUX->z2_ichKommeIndieNegativeSLICE_z4_z3.DX ;
  wire \x23.I->n44_u33_z5.A1 ;
  wire \n44_u33_z5.CQ->z5_FINAL_OUTPUT.O ;
  wire \x24.I->z2_ichKommeIndieNegativeSLICE_z4_z3.A1 ;
  wire \z1.AQ->z1_FINAL_OUTPUT.O ;
  wire \n44_u33.BQ->z0_FINAL_OUTPUT.O ;
  wire \z2_ichKommeIndieNegativeSLICE_z4_z3.CQ->z4_FINAL_OUTPUT.O ;
  wire \n44_u33_z5.AQ->n44_u33_z5.CX ;
  wire \my_clk_BUFG.O->n44.CLK ;
  wire \z2_ichKommeIndieNegativeSLICE_z4_z3.AMUX->z2_FINAL_OUTPUT.O ;
  wire \z5_FINAL_OUTPUT.INBUF.OUT ;
  wire \z0_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44_u33_z5/n44_u33_z5.B5LUT.O5 ;
  wire \n44_u33_z5.A5LUT.O5 ;
  wire \z2_ichKommeIndieNegativeSLICE_z4_z3.A5LUT.O5 ;
  wire \z2_FINAL_OUTPUT.INBUF.OUT ;
  wire \bertaClock.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \z4_FINAL_OUTPUT.INBUF.OUT ;
  wire \x25.INBUF.OUT ;
  wire \z1_FINAL_OUTPUT.INBUF.OUT ;
  wire \z3_FINAL_OUTPUT.INBUF.OUT ;
  wire \x24.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire \NlwBufferSignal_z5_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z1.AFF/CLK ;
  wire \NlwBufferSignal_z1.AFF/IN ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NlwBufferSignal_n44_u33_z5.CFF/CLK ;
  wire \NlwBufferSignal_n44_u33_z5.CFF/IN ;
  wire \NlwBufferSignal_n44_u33_z5.BFF/CLK ;
  wire \NlwBufferSignal_n44_u33_z5.AFF/CLK ;
  wire \NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/CLK ;
  wire \NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/IN ;
  wire \NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/CLK ;
  wire \NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/IN ;
  wire \NlwBufferSignal_z2_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z4_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z1_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_z3_FINAL_OUTPUT_OBUF/I ;
  wire \NLW_z5_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_z2_ichKommeIndieNegativeSLICE_z4_z3.B5LUT_O_UNCONNECTED ;
  wire \NLW_z2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z4_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_z3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD210" ))
  z5_FINAL_OUTPUT (
    .PAD(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD210" ))
  z5_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z5_FINAL_OUTPUT_OBUF/I ),
    .O(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \z5_FINAL_OUTPUT.INBUF  (
    .O(\z5_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \z5_FINAL_OUTPUT.IMUX  (
    .I(\z5_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z5_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD212" ))
  z0_FINAL_OUTPUT (
    .PAD(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD212" ))
  z0_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I ),
    .O(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \z0_FINAL_OUTPUT.INBUF  (
    .O(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \z0_FINAL_OUTPUT.IMUX  (
    .I(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y3" ),
    .INIT ( 1'b0 ))
  \z1.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_z1.AFF/CLK ),
    .I(\NlwBufferSignal_z1.AFF/IN ),
    .O(\z1.AQ->z1_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->n44.CLK )
  );
  X_BUF   \n44_u33_z5/n44_u33_z5_AMUX_Delay  (
    .I(\n44_u33_z5.A5LUT.O5 ),
    .O(\n44_u33_z5.AMUX->z2_ichKommeIndieNegativeSLICE_z4_z3.DX )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 1'b0 ))
  \n44_u33_z5.CFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_n44_u33_z5.CFF/CLK ),
    .I(\NlwBufferSignal_n44_u33_z5.CFF/IN ),
    .O(\n44_u33_z5.CQ->z5_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 1'b0 ))
  \n44_u33_z5.BFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_n44_u33_z5.BFF/CLK ),
    .I(\n44_u33_z5/n44_u33_z5.B5LUT.O5 ),
    .O(\n44_u33.BQ->z0_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 32'h33333333 ))
  \n44_u33_z5.B5LUT  (
    .ADR1(\x25.I->n44_u33_z5.B1 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_z5/n44_u33_z5.B5LUT.O5 )
  );
  X_FF #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 1'b0 ))
  \n44_u33_z5.AFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_n44_u33_z5.AFF/CLK ),
    .I(\n44_u33_z5.A5LUT.O5 ),
    .O(\n44_u33_z5.AQ->n44_u33_z5.CX ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X28Y2" ),
    .INIT ( 32'h00FF00FF ))
  \n44_u33_z5.A5LUT  (
    .ADR3(\x23.I->n44_u33_z5.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\n44_u33_z5.A5LUT.O5 )
  );
  X_BUF   \z2_ichKommeIndieNegativeSLICE_z4_z3/z2_ichKommeIndieNegativeSLICE_z4_z3_AMUX_Delay  (
    .I(\z2_ichKommeIndieNegativeSLICE_z4_z3.A5LUT.O5 ),
    .O(\z2_ichKommeIndieNegativeSLICE_z4_z3.AMUX->z2_FINAL_OUTPUT.O )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \z2_ichKommeIndieNegativeSLICE_z4_z3.DFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/CLK ),
    .I(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/IN ),
    .O(\z2_ichKommeIndieNegativeSLICE_z4_z3.DQ->z3_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \z2_ichKommeIndieNegativeSLICE_z4_z3.CFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/CLK ),
    .I(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/IN ),
    .O(\z2_ichKommeIndieNegativeSLICE_z4_z3.CQ->z4_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->n44_u33_z5.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'h0F0F0F0F ))
  \z2_ichKommeIndieNegativeSLICE_z4_z3.B5LUT  (
    .ADR2(\x24.I->z2_ichKommeIndieNegativeSLICE_z4_z3.A1 ),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_z2_ichKommeIndieNegativeSLICE_z4_z3.B5LUT_O_UNCONNECTED )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 32'h00FF00FF ))
  \z2_ichKommeIndieNegativeSLICE_z4_z3.A5LUT  (
    .ADR3(\x24.I->z2_ichKommeIndieNegativeSLICE_z4_z3.A1 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\z2_ichKommeIndieNegativeSLICE_z4_z3.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD213" ))
  z2_FINAL_OUTPUT (
    .PAD(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD213" ))
  z2_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z2_FINAL_OUTPUT_OBUF/I ),
    .O(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \z2_FINAL_OUTPUT.INBUF  (
    .O(\z2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \z2_FINAL_OUTPUT.IMUX  (
    .I(\z2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
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
  X_IPAD #(
    .LOC ( "PAD216" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD216" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->n44_u33_z5.SR )
  );
  X_BPAD #(
    .LOC ( "PAD215" ))
  z4_FINAL_OUTPUT (
    .PAD(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  z4_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z4_FINAL_OUTPUT_OBUF/I ),
    .O(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \z4_FINAL_OUTPUT.INBUF  (
    .O(\z4_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \z4_FINAL_OUTPUT.IMUX  (
    .I(\z4_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z4_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD211" ))
  x25 (
    .PAD(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \x25.INBUF  (
    .O(\x25.INBUF.OUT ),
    .I(\x25.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \x25.IMUX  (
    .I(\x25.INBUF.OUT ),
    .O(\x25.I->n44_u33_z5.B1 )
  );
  X_BPAD #(
    .LOC ( "PAD219" ))
  z1_FINAL_OUTPUT (
    .PAD(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD219" ))
  z1_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z1_FINAL_OUTPUT_OBUF/I ),
    .O(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \z1_FINAL_OUTPUT.INBUF  (
    .O(\z1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \z1_FINAL_OUTPUT.IMUX  (
    .I(\z1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD214" ))
  z3_FINAL_OUTPUT (
    .PAD(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD214" ))
  z3_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z3_FINAL_OUTPUT_OBUF/I ),
    .O(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \z3_FINAL_OUTPUT.INBUF  (
    .O(\z3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \z3_FINAL_OUTPUT.IMUX  (
    .I(\z3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD220" ))
  x24 (
    .PAD(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \x24.INBUF  (
    .O(\x24.INBUF.OUT ),
    .I(\x24.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \x24.IMUX  (
    .I(\x24.INBUF.OUT ),
    .O(\x24.I->z2_ichKommeIndieNegativeSLICE_z4_z3.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD209" ))
  x23 (
    .PAD(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \x23.INBUF  (
    .O(\x23.INBUF.OUT ),
    .I(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \x23.IMUX  (
    .I(\x23.INBUF.OUT ),
    .O(\x23.I->n44_u33_z5.A1 )
  );
  X_BUF   \NlwBufferBlock_z5_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_u33_z5.CQ->z5_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z5_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z0_FINAL_OUTPUT_OBUF/I  (
    .I(\n44_u33.BQ->z0_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z1.AFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_z1.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_z1.AFF/IN  (
    .I(\n44_u33_z5.AMUX->z2_ichKommeIndieNegativeSLICE_z4_z3.DX ),
    .O(\NlwBufferSignal_z1.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\bertaClock.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_n44_u33_z5.CFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_n44_u33_z5.CFF/CLK )
  );
  X_BUF   \NlwBufferBlock_n44_u33_z5.CFF/IN  (
    .I(\n44_u33_z5.AQ->n44_u33_z5.CX ),
    .O(\NlwBufferSignal_n44_u33_z5.CFF/IN )
  );
  X_BUF   \NlwBufferBlock_n44_u33_z5.BFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_n44_u33_z5.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_n44_u33_z5.AFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_n44_u33_z5.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/CLK )
  );
  X_BUF   \NlwBufferBlock_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/IN  (
    .I(\n44_u33_z5.AMUX->z2_ichKommeIndieNegativeSLICE_z4_z3.DX ),
    .O(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.DFF/IN )
  );
  X_BUF   \NlwBufferBlock_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/CLK  (
    .I(\my_clk_BUFG.O->n44.CLK ),
    .O(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/CLK )
  );
  X_BUF   \NlwBufferBlock_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/IN  (
    .I(\n44_u33_z5.AQ->n44_u33_z5.CX ),
    .O(\NlwBufferSignal_z2_ichKommeIndieNegativeSLICE_z4_z3.CFF/IN )
  );
  X_BUF   \NlwBufferBlock_z2_FINAL_OUTPUT_OBUF/I  (
    .I(\z2_ichKommeIndieNegativeSLICE_z4_z3.AMUX->z2_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z2_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z4_FINAL_OUTPUT_OBUF/I  (
    .I(\z2_ichKommeIndieNegativeSLICE_z4_z3.CQ->z4_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z4_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z1_FINAL_OUTPUT_OBUF/I  (
    .I(\z1.AQ->z1_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z1_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_z3_FINAL_OUTPUT_OBUF/I  (
    .I(\z2_ichKommeIndieNegativeSLICE_z4_z3.DQ->z3_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z3_FINAL_OUTPUT_OBUF/I )
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

