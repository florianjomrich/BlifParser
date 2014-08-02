////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sat Aug 02 14:01:51 2014
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
  \out6_FINAL_OUTPUT.OUTBUF.OUT , \out9_FINAL_OUTPUT.OUTBUF.OUT , \in1.PAD.PAD , \out11_FINAL_OUTPUT.OUTBUF.OUT , \out14_FINAL_OUTPUT.OUTBUF.OUT , 
\out8_FINAL_OUTPUT.OUTBUF.OUT , \out15_FINAL_OUTPUT.OUTBUF.OUT , \out7_FINAL_OUTPUT.OUTBUF.OUT , \out1_FINAL_OUTPUT.OUTBUF.OUT , \newCLK.PAD.PAD , 
\out13_FINAL_OUTPUT.OUTBUF.OUT , \out12_FINAL_OUTPUT.OUTBUF.OUT , \global_reset.PAD.PAD , \out5_FINAL_OUTPUT.OUTBUF.OUT , 
\out10_FINAL_OUTPUT.OUTBUF.OUT , \out2_FINAL_OUTPUT.OUTBUF.OUT , \out3_FINAL_OUTPUT.OUTBUF.OUT , \out4_FINAL_OUTPUT.OUTBUF.OUT 
);
  inout \out6_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out9_FINAL_OUTPUT.OUTBUF.OUT ;
  input \in1.PAD.PAD ;
  inout \out11_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out14_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out8_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out15_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out7_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \newCLK.PAD.PAD ;
  inout \out13_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out12_FINAL_OUTPUT.OUTBUF.OUT ;
  input \global_reset.PAD.PAD ;
  inout \out5_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out10_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out2_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out3_FINAL_OUTPUT.OUTBUF.OUT ;
  inout \out4_FINAL_OUTPUT.OUTBUF.OUT ;
  wire \out14_out15.BQ->out15_FINAL_OUTPUT.O ;
  wire \out8_out11_out12_out13.DQ->out13_FINAL_OUTPUT.O ;
  wire \out2_out5_out6_out7.AQ->out2_FINAL_OUTPUT.O ;
  wire \out8_out11_out12_out13.CQ->out12_FINAL_OUTPUT.O ;
  wire \global_reset.I->out2.SR ;
  wire \out2_out5_out6_out7.BQ->out5_FINAL_OUTPUT.O ;
  wire \out3_out4_out9_out10.DQ->out10_FINAL_OUTPUT.O ;
  wire \out2_out5_out6_out7.CQ->out6_FINAL_OUTPUT.O ;
  wire \out14_out15.AQ->out14_FINAL_OUTPUT.O ;
  wire \in1.I->out2_out5_out6_out7.AX ;
  wire \out3_out4_out9_out10.BQ->out4_FINAL_OUTPUT.O ;
  wire \out8_out11_out12_out13.AQ->out8_FINAL_OUTPUT.O ;
  wire \out1.AMUX->out1_FINAL_OUTPUT.O ;
  wire \my_clk_BUFG.O->out2.CLK ;
  wire \out3_out4_out9_out10.AQ->out3_FINAL_OUTPUT.O ;
  wire \out8_out11_out12_out13.BQ->out11_FINAL_OUTPUT.O ;
  wire \out3_out4_out9_out10.CQ->out9_FINAL_OUTPUT.O ;
  wire \out2_out5_out6_out7.DQ->out7_FINAL_OUTPUT.O ;
  wire \newCLK.I->my_clk_BUFG.I0 ;
  wire \out6_FINAL_OUTPUT.INBUF.OUT ;
  wire \out9_FINAL_OUTPUT.INBUF.OUT ;
  wire \in1.INBUF.OUT ;
  wire \out11_FINAL_OUTPUT.INBUF.OUT ;
  wire \out14_out15/INV_out14_out15.BFFCLK ;
  wire \out14_out15/INV_out14_out15.AFFCLK ;
  wire \out14_FINAL_OUTPUT.INBUF.OUT ;
  wire \out8_out11_out12_out13/INV_out8_out11_out12_out13.DFFCLK ;
  wire \out8_out11_out12_out13/INV_out8_out11_out12_out13.CFFCLK ;
  wire \out8_out11_out12_out13/INV_out8_out11_out12_out13.BFFCLK ;
  wire \out8_out11_out12_out13/INV_out8_out11_out12_out13.AFFCLK ;
  wire \out8_FINAL_OUTPUT.INBUF.OUT ;
  wire \out15_FINAL_OUTPUT.INBUF.OUT ;
  wire \out7_FINAL_OUTPUT.INBUF.OUT ;
  wire \out3_out4_out9_out10/INV_out3_out4_out9_out10.DFFCLK ;
  wire \out3_out4_out9_out10/INV_out3_out4_out9_out10.CFFCLK ;
  wire \out1.A5LUT.O5 ;
  wire \out1_FINAL_OUTPUT.INBUF.OUT ;
  wire \newCLK.INBUF.OUT ;
  wire \out13_FINAL_OUTPUT.INBUF.OUT ;
  wire \out12_FINAL_OUTPUT.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \out5_FINAL_OUTPUT.INBUF.OUT ;
  wire \out10_FINAL_OUTPUT.INBUF.OUT ;
  wire \out2_FINAL_OUTPUT.INBUF.OUT ;
  wire \out2_out5_out6_out7/INV_out2_out5_out6_out7.DFFCLK ;
  wire \out3_FINAL_OUTPUT.INBUF.OUT ;
  wire \out4_FINAL_OUTPUT.INBUF.OUT ;
  wire \NlwBufferSignal_out6_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out9_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out11_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out14_out15.BFF/CLK ;
  wire \NlwBufferSignal_out14_out15.BFF/IN ;
  wire \NlwBufferSignal_out14_out15.AFF/CLK ;
  wire \NlwBufferSignal_out14_out15.AFF/IN ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NlwBufferSignal_out14_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out8_out11_out12_out13.DFF/CLK ;
  wire \NlwBufferSignal_out8_out11_out12_out13.DFF/IN ;
  wire \NlwBufferSignal_out8_out11_out12_out13.CFF/CLK ;
  wire \NlwBufferSignal_out8_out11_out12_out13.CFF/IN ;
  wire \NlwBufferSignal_out8_out11_out12_out13.BFF/CLK ;
  wire \NlwBufferSignal_out8_out11_out12_out13.BFF/IN ;
  wire \NlwBufferSignal_out8_out11_out12_out13.AFF/CLK ;
  wire \NlwBufferSignal_out8_out11_out12_out13.AFF/IN ;
  wire \NlwBufferSignal_out8_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out15_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out7_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out3_out4_out9_out10.DFF/CLK ;
  wire \NlwBufferSignal_out3_out4_out9_out10.DFF/IN ;
  wire \NlwBufferSignal_out3_out4_out9_out10.CFF/CLK ;
  wire \NlwBufferSignal_out3_out4_out9_out10.CFF/IN ;
  wire \NlwBufferSignal_out3_out4_out9_out10.BFF/CLK ;
  wire \NlwBufferSignal_out3_out4_out9_out10.BFF/IN ;
  wire \NlwBufferSignal_out3_out4_out9_out10.AFF/CLK ;
  wire \NlwBufferSignal_out3_out4_out9_out10.AFF/IN ;
  wire \NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out13_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out12_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out5_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out10_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out2_out5_out6_out7.DFF/CLK ;
  wire \NlwBufferSignal_out2_out5_out6_out7.DFF/IN ;
  wire \NlwBufferSignal_out2_out5_out6_out7.CFF/CLK ;
  wire \NlwBufferSignal_out2_out5_out6_out7.CFF/IN ;
  wire \NlwBufferSignal_out2_out5_out6_out7.BFF/CLK ;
  wire \NlwBufferSignal_out2_out5_out6_out7.BFF/IN ;
  wire \NlwBufferSignal_out2_out5_out6_out7.AFF/CLK ;
  wire \NlwBufferSignal_out2_out5_out6_out7.AFF/IN ;
  wire \NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out4_FINAL_OUTPUT_OBUF/I ;
  wire \NLW_out6_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out9_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out11_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_out14_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out8_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out15_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out7_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out13_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out12_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out5_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out10_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out4_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD209" ))
  out6_FINAL_OUTPUT (
    .PAD(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD209" ))
  out6_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out6_FINAL_OUTPUT_OBUF/I ),
    .O(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \out6_FINAL_OUTPUT.INBUF  (
    .O(\out6_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \out6_FINAL_OUTPUT.IMUX  (
    .I(\out6_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out6_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD224" ))
  out9_FINAL_OUTPUT (
    .PAD(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD224" ))
  out9_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out9_FINAL_OUTPUT_OBUF/I ),
    .O(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \out9_FINAL_OUTPUT.INBUF  (
    .O(\out9_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD224" ))
  \out9_FINAL_OUTPUT.IMUX  (
    .I(\out9_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out9_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD223" ))
  in1 (
    .PAD(\in1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \in1.INBUF  (
    .O(\in1.INBUF.OUT ),
    .I(\in1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD223" ))
  \in1.IMUX  (
    .I(\in1.INBUF.OUT ),
    .O(\in1.I->out2_out5_out6_out7.AX )
  );
  X_BPAD #(
    .LOC ( "PAD221" ))
  out11_FINAL_OUTPUT (
    .PAD(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD221" ))
  out11_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out11_FINAL_OUTPUT_OBUF/I ),
    .O(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \out11_FINAL_OUTPUT.INBUF  (
    .O(\out11_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD221" ))
  \out11_FINAL_OUTPUT.IMUX  (
    .I(\out11_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out11_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out14_out15.BFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out14_out15/INV_out14_out15.BFFCLK )
  );
  X_INV   \INV_out14_out15.AFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out14_out15/INV_out14_out15.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y3" ),
    .INIT ( 1'b0 ))
  \out14_out15.BFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out14_out15.BFF/CLK ),
    .I(\NlwBufferSignal_out14_out15.BFF/IN ),
    .O(\out14_out15.BQ->out15_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y3" ),
    .INIT ( 1'b0 ))
  \out14_out15.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out14_out15.AFF/CLK ),
    .I(\NlwBufferSignal_out14_out15.AFF/IN ),
    .O(\out14_out15.AQ->out14_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->out2.CLK )
  );
  X_BPAD #(
    .LOC ( "PAD222" ))
  out14_FINAL_OUTPUT (
    .PAD(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD222" ))
  out14_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out14_FINAL_OUTPUT_OBUF/I ),
    .O(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \out14_FINAL_OUTPUT.INBUF  (
    .O(\out14_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD222" ))
  \out14_FINAL_OUTPUT.IMUX  (
    .I(\out14_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out14_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out8_out11_out12_out13.DFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out8_out11_out12_out13/INV_out8_out11_out12_out13.DFFCLK )
  );
  X_INV   \INV_out8_out11_out12_out13.CFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out8_out11_out12_out13/INV_out8_out11_out12_out13.CFFCLK )
  );
  X_INV   \INV_out8_out11_out12_out13.BFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out8_out11_out12_out13/INV_out8_out11_out12_out13.BFFCLK )
  );
  X_INV   \INV_out8_out11_out12_out13.AFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out8_out11_out12_out13/INV_out8_out11_out12_out13.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y2" ),
    .INIT ( 1'b1 ))
  \out8_out11_out12_out13.DFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out8_out11_out12_out13.DFF/CLK ),
    .I(\NlwBufferSignal_out8_out11_out12_out13.DFF/IN ),
    .O(\out8_out11_out12_out13.DQ->out13_FINAL_OUTPUT.O ),
    .SET(\global_reset.I->out2.SR ),
    .RST(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y2" ),
    .INIT ( 1'b0 ))
  \out8_out11_out12_out13.CFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out8_out11_out12_out13.CFF/CLK ),
    .I(\NlwBufferSignal_out8_out11_out12_out13.CFF/IN ),
    .O(\out8_out11_out12_out13.CQ->out12_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y2" ),
    .INIT ( 1'b0 ))
  \out8_out11_out12_out13.BFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out8_out11_out12_out13.BFF/CLK ),
    .I(\NlwBufferSignal_out8_out11_out12_out13.BFF/IN ),
    .O(\out8_out11_out12_out13.BQ->out11_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X22Y2" ),
    .INIT ( 1'b0 ))
  \out8_out11_out12_out13.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out8_out11_out12_out13.AFF/CLK ),
    .I(\NlwBufferSignal_out8_out11_out12_out13.AFF/IN ),
    .O(\out8_out11_out12_out13.AQ->out8_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD226" ))
  out8_FINAL_OUTPUT (
    .PAD(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD226" ))
  out8_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out8_FINAL_OUTPUT_OBUF/I ),
    .O(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \out8_FINAL_OUTPUT.INBUF  (
    .O(\out8_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \out8_FINAL_OUTPUT.IMUX  (
    .I(\out8_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out8_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD220" ))
  out15_FINAL_OUTPUT (
    .PAD(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD220" ))
  out15_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out15_FINAL_OUTPUT_OBUF/I ),
    .O(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \out15_FINAL_OUTPUT.INBUF  (
    .O(\out15_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD220" ))
  \out15_FINAL_OUTPUT.IMUX  (
    .I(\out15_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out15_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD211" ))
  out7_FINAL_OUTPUT (
    .PAD(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD211" ))
  out7_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out7_FINAL_OUTPUT_OBUF/I ),
    .O(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \out7_FINAL_OUTPUT.INBUF  (
    .O(\out7_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \out7_FINAL_OUTPUT.IMUX  (
    .I(\out7_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out7_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out3_out4_out9_out10.DFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out3_out4_out9_out10/INV_out3_out4_out9_out10.DFFCLK )
  );
  X_INV   \INV_out3_out4_out9_out10.CFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out3_out4_out9_out10/INV_out3_out4_out9_out10.CFFCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \out3_out4_out9_out10.DFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_out3_out4_out9_out10.DFF/CLK ),
    .I(\NlwBufferSignal_out3_out4_out9_out10.DFF/IN ),
    .O(\out3_out4_out9_out10.DQ->out10_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \out3_out4_out9_out10.CFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_out3_out4_out9_out10.CFF/CLK ),
    .I(\NlwBufferSignal_out3_out4_out9_out10.CFF/IN ),
    .O(\out3_out4_out9_out10.CQ->out9_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \out3_out4_out9_out10.BFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out3_out4_out9_out10.BFF/CLK ),
    .I(\NlwBufferSignal_out3_out4_out9_out10.BFF/IN ),
    .O(\out3_out4_out9_out10.BQ->out4_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X26Y2" ),
    .INIT ( 1'b0 ))
  \out3_out4_out9_out10.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out3_out4_out9_out10.AFF/CLK ),
    .I(\NlwBufferSignal_out3_out4_out9_out10.AFF/IN ),
    .O(\out3_out4_out9_out10.AQ->out3_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_BUF   \out1/out1_AMUX_Delay  (
    .I(\out1.A5LUT.O5 ),
    .O(\out1.AMUX->out1_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y1" ),
    .INIT ( 32'hCCCCCCCC ))
  \out1.A5LUT  (
    .ADR1(\in1.I->out2_out5_out6_out7.AX ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\out1.A5LUT.O5 )
  );
  X_BPAD #(
    .LOC ( "PAD230" ))
  out1_FINAL_OUTPUT (
    .PAD(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD230" ))
  out1_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ),
    .O(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  \out1_FINAL_OUTPUT.INBUF  (
    .O(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD230" ))
  \out1_FINAL_OUTPUT.IMUX  (
    .I(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD314" ))
  newCLK (
    .PAD(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \newCLK.INBUF  (
    .O(\newCLK.INBUF.OUT ),
    .I(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \newCLK.IMUX  (
    .I(\newCLK.INBUF.OUT ),
    .O(\newCLK.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD215" ))
  out13_FINAL_OUTPUT (
    .PAD(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD215" ))
  out13_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out13_FINAL_OUTPUT_OBUF/I ),
    .O(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \out13_FINAL_OUTPUT.INBUF  (
    .O(\out13_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD215" ))
  \out13_FINAL_OUTPUT.IMUX  (
    .I(\out13_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out13_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD219" ))
  out12_FINAL_OUTPUT (
    .PAD(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD219" ))
  out12_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out12_FINAL_OUTPUT_OBUF/I ),
    .O(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \out12_FINAL_OUTPUT.INBUF  (
    .O(\out12_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD219" ))
  \out12_FINAL_OUTPUT.IMUX  (
    .I(\out12_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out12_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
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
    .O(\global_reset.I->out2.SR )
  );
  X_BPAD #(
    .LOC ( "PAD214" ))
  out5_FINAL_OUTPUT (
    .PAD(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD214" ))
  out5_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out5_FINAL_OUTPUT_OBUF/I ),
    .O(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \out5_FINAL_OUTPUT.INBUF  (
    .O(\out5_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD214" ))
  \out5_FINAL_OUTPUT.IMUX  (
    .I(\out5_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out5_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD210" ))
  out10_FINAL_OUTPUT (
    .PAD(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD210" ))
  out10_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out10_FINAL_OUTPUT_OBUF/I ),
    .O(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \out10_FINAL_OUTPUT.INBUF  (
    .O(\out10_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \out10_FINAL_OUTPUT.IMUX  (
    .I(\out10_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out10_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD225" ))
  out2_FINAL_OUTPUT (
    .PAD(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD225" ))
  out2_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I ),
    .O(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \out2_FINAL_OUTPUT.INBUF  (
    .O(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD225" ))
  \out2_FINAL_OUTPUT.IMUX  (
    .I(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out2_out5_out6_out7.DFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out2_out5_out6_out7/INV_out2_out5_out6_out7.DFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  \out2_out5_out6_out7.DFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out2_out5_out6_out7.DFF/CLK ),
    .I(\NlwBufferSignal_out2_out5_out6_out7.DFF/IN ),
    .O(\out2_out5_out6_out7.DQ->out7_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  \out2_out5_out6_out7.CFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_out2_out5_out6_out7.CFF/CLK ),
    .I(\NlwBufferSignal_out2_out5_out6_out7.CFF/IN ),
    .O(\out2_out5_out6_out7.CQ->out6_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  \out2_out5_out6_out7.BFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_out2_out5_out6_out7.BFF/CLK ),
    .I(\NlwBufferSignal_out2_out5_out6_out7.BFF/IN ),
    .O(\out2_out5_out6_out7.BQ->out5_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y1" ),
    .INIT ( 1'b0 ))
  \out2_out5_out6_out7.AFF  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_out2_out5_out6_out7.AFF/CLK ),
    .I(\NlwBufferSignal_out2_out5_out6_out7.AFF/IN ),
    .O(\out2_out5_out6_out7.AQ->out2_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out2.SR ),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD212" ))
  out3_FINAL_OUTPUT (
    .PAD(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD212" ))
  out3_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I ),
    .O(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \out3_FINAL_OUTPUT.INBUF  (
    .O(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD212" ))
  \out3_FINAL_OUTPUT.IMUX  (
    .I(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD213" ))
  out4_FINAL_OUTPUT (
    .PAD(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD213" ))
  out4_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out4_FINAL_OUTPUT_OBUF/I ),
    .O(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \out4_FINAL_OUTPUT.INBUF  (
    .O(\out4_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD213" ))
  \out4_FINAL_OUTPUT.IMUX  (
    .I(\out4_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out4_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \NlwBufferBlock_out6_FINAL_OUTPUT_OBUF/I  (
    .I(\out2_out5_out6_out7.CQ->out6_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out6_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out9_FINAL_OUTPUT_OBUF/I  (
    .I(\out3_out4_out9_out10.CQ->out9_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out9_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out11_FINAL_OUTPUT_OBUF/I  (
    .I(\out8_out11_out12_out13.BQ->out11_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out11_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out14_out15.BFF/CLK  (
    .I(\out14_out15/INV_out14_out15.BFFCLK ),
    .O(\NlwBufferSignal_out14_out15.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out14_out15.BFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out14_out15.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_out14_out15.AFF/CLK  (
    .I(\out14_out15/INV_out14_out15.AFFCLK ),
    .O(\NlwBufferSignal_out14_out15.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out14_out15.AFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out14_out15.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\newCLK.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_out14_FINAL_OUTPUT_OBUF/I  (
    .I(\out14_out15.AQ->out14_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out14_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.DFF/CLK  (
    .I(\out8_out11_out12_out13/INV_out8_out11_out12_out13.DFFCLK ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.DFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.DFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.DFF/IN )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.CFF/CLK  (
    .I(\out8_out11_out12_out13/INV_out8_out11_out12_out13.CFFCLK ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.CFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.CFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.CFF/IN )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.BFF/CLK  (
    .I(\out8_out11_out12_out13/INV_out8_out11_out12_out13.BFFCLK ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.BFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.AFF/CLK  (
    .I(\out8_out11_out12_out13/INV_out8_out11_out12_out13.AFFCLK ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out8_out11_out12_out13.AFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out8_out11_out12_out13.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_out8_FINAL_OUTPUT_OBUF/I  (
    .I(\out8_out11_out12_out13.AQ->out8_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out8_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out15_FINAL_OUTPUT_OBUF/I  (
    .I(\out14_out15.BQ->out15_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out15_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out7_FINAL_OUTPUT_OBUF/I  (
    .I(\out2_out5_out6_out7.DQ->out7_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out7_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.DFF/CLK  (
    .I(\out3_out4_out9_out10/INV_out3_out4_out9_out10.DFFCLK ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.DFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.DFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.DFF/IN )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.CFF/CLK  (
    .I(\out3_out4_out9_out10/INV_out3_out4_out9_out10.CFFCLK ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.CFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.CFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.CFF/IN )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.BFF/CLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.BFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.AFF/CLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out3_out4_out9_out10.AFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out3_out4_out9_out10.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_out1_FINAL_OUTPUT_OBUF/I  (
    .I(\out1.AMUX->out1_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out13_FINAL_OUTPUT_OBUF/I  (
    .I(\out8_out11_out12_out13.DQ->out13_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out13_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out12_FINAL_OUTPUT_OBUF/I  (
    .I(\out8_out11_out12_out13.CQ->out12_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out12_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out5_FINAL_OUTPUT_OBUF/I  (
    .I(\out2_out5_out6_out7.BQ->out5_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out5_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out10_FINAL_OUTPUT_OBUF/I  (
    .I(\out3_out4_out9_out10.DQ->out10_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out10_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out2_FINAL_OUTPUT_OBUF/I  (
    .I(\out2_out5_out6_out7.AQ->out2_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.DFF/CLK  (
    .I(\out2_out5_out6_out7/INV_out2_out5_out6_out7.DFFCLK ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.DFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.DFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.DFF/IN )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.CFF/CLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.CFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.CFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.CFF/IN )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.BFF/CLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.BFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.BFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.BFF/IN )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.AFF/CLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out2_out5_out6_out7.AFF/IN  (
    .I(\in1.I->out2_out5_out6_out7.AX ),
    .O(\NlwBufferSignal_out2_out5_out6_out7.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_out3_FINAL_OUTPUT_OBUF/I  (
    .I(\out3_out4_out9_out10.AQ->out3_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out4_FINAL_OUTPUT_OBUF/I  (
    .I(\out3_out4_out9_out10.BQ->out4_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out4_FINAL_OUTPUT_OBUF/I )
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

