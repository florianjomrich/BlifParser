////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: registerTest22Unrouted.v
// /___/   /\     Timestamp: Mon Aug 11 21:10:05 2014
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -ofmt verilog xdlFileCreated/registerTest22.ncd simulationFileUnrouted/registerTest22Unrouted.v 
// Device	: 6slx45csg324-3 (PRODUCTION 1.23 2013-10-13)
// Input file	: xdlFileCreated/registerTest22.ncd
// Output file	: simulationFileUnrouted/registerTest22Unrouted.v
// # of Modules	: 1
// Design Name	: registerTest22
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

module registerTest22 (
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
  wire \out3_out9.AQ->out3_FINAL_OUTPUT.O ;
  wire \out1_out2_out7.AMUX->out1_FINAL_OUTPUT.O ;
  wire \out3_out9.BQ->out9_FINAL_OUTPUT.O ;
  wire \my_clk_BUFG.O->out1_out2.CLK ;
  wire \out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ;
  wire \global_reset.I->out1_out2.SR ;
  wire \in1.I->out1_out2_out7.BX ;
  wire \out1_out2_out7.BQ->out2_FINAL_OUTPUT.O ;
  wire \newCLK.I->my_clk_BUFG.I0 ;
  wire \out6_FINAL_OUTPUT.INBUF.OUT ;
  wire \out9_FINAL_OUTPUT.INBUF.OUT ;
  wire \in1.INBUF.OUT ;
  wire \out11_FINAL_OUTPUT.INBUF.OUT ;
  wire \out14_FINAL_OUTPUT.INBUF.OUT ;
  wire \out8_FINAL_OUTPUT.INBUF.OUT ;
  wire \out15_FINAL_OUTPUT.INBUF.OUT ;
  wire \out7_FINAL_OUTPUT.INBUF.OUT ;
  wire \out1_FINAL_OUTPUT.INBUF.OUT ;
  wire \out3_out9/INV_out3_out9.BFFCLK ;
  wire \newCLK.INBUF.OUT ;
  wire \out13_FINAL_OUTPUT.INBUF.OUT ;
  wire \out12_FINAL_OUTPUT.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \out5_FINAL_OUTPUT.INBUF.OUT ;
  wire \out10_FINAL_OUTPUT.INBUF.OUT ;
  wire \out2_FINAL_OUTPUT.INBUF.OUT ;
  wire \out3_FINAL_OUTPUT.INBUF.OUT ;
  wire \out4_FINAL_OUTPUT.INBUF.OUT ;
  wire \out1_out2_out7/INV_out1_out2_out7.CFFCLK ;
  wire \out1_out2_out7.A5LUT.O5 ;
  wire \NLW_out6_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out9_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out11_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out14_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out8_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out15_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out7_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  wire \NLW_out13_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out12_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out5_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out10_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out4_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("registertest22unrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD93" ))
  out6_FINAL_OUTPUT (
    .PAD(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  out6_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.BQ->out2_FINAL_OUTPUT.O ),
    .O(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \out6_FINAL_OUTPUT.INBUF  (
    .O(\out6_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out6_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \out6_FINAL_OUTPUT.IMUX  (
    .I(\out6_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out6_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD92" ))
  out9_FINAL_OUTPUT (
    .PAD(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD92" ))
  out9_FINAL_OUTPUT_OBUF (
    .I(\out3_out9.BQ->out9_FINAL_OUTPUT.O ),
    .O(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \out9_FINAL_OUTPUT.INBUF  (
    .O(\out9_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out9_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \out9_FINAL_OUTPUT.IMUX  (
    .I(\out9_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out9_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  in1 (
    .PAD(\in1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \in1.INBUF  (
    .O(\in1.INBUF.OUT ),
    .I(\in1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \in1.IMUX  (
    .I(\in1.INBUF.OUT ),
    .O(\in1.I->out1_out2_out7.BX )
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  out11_FINAL_OUTPUT (
    .PAD(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  out11_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \out11_FINAL_OUTPUT.INBUF  (
    .O(\out11_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out11_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \out11_FINAL_OUTPUT.IMUX  (
    .I(\out11_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out11_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\newCLK.I->my_clk_BUFG.I0 ),
    .O(\my_clk_BUFG.O->out1_out2.CLK )
  );
  X_BPAD #(
    .LOC ( "PAD30" ))
  out14_FINAL_OUTPUT (
    .PAD(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD30" ))
  out14_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \out14_FINAL_OUTPUT.INBUF  (
    .O(\out14_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out14_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD30" ))
  \out14_FINAL_OUTPUT.IMUX  (
    .I(\out14_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out14_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD91" ))
  out8_FINAL_OUTPUT (
    .PAD(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  out8_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \out8_FINAL_OUTPUT.INBUF  (
    .O(\out8_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out8_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \out8_FINAL_OUTPUT.IMUX  (
    .I(\out8_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out8_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD339" ))
  out15_FINAL_OUTPUT (
    .PAD(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD339" ))
  out15_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \out15_FINAL_OUTPUT.INBUF  (
    .O(\out15_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out15_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD339" ))
  \out15_FINAL_OUTPUT.IMUX  (
    .I(\out15_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out15_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD94" ))
  out7_FINAL_OUTPUT (
    .PAD(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  out7_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \out7_FINAL_OUTPUT.INBUF  (
    .O(\out7_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out7_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \out7_FINAL_OUTPUT.IMUX  (
    .I(\out7_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out7_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD84" ))
  out1_FINAL_OUTPUT (
    .PAD(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD84" ))
  out1_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.AMUX->out1_FINAL_OUTPUT.O ),
    .O(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \out1_FINAL_OUTPUT.INBUF  (
    .O(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \out1_FINAL_OUTPUT.IMUX  (
    .I(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out3_out9.BFFCLK  (
    .I(\my_clk_BUFG.O->out1_out2.CLK ),
    .O(\out3_out9/INV_out3_out9.BFFCLK )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \out3_out9.BFF  (
    .CE(VCC),
    .CLK(\out3_out9/INV_out3_out9.BFFCLK ),
    .I(\in1.I->out1_out2_out7.BX ),
    .O(\out3_out9.BQ->out9_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out1_out2.SR ),
    .SET(GND)
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \out3_out9.AFF  (
    .GE(VCC),
    .CLK(\my_clk_BUFG.O->out1_out2.CLK ),
    .I(\in1.I->out1_out2_out7.BX ),
    .O(\out3_out9.AQ->out3_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out1_out2.SR ),
    .SET(GND)
  );
  X_IPAD #(
    .LOC ( "PAD326" ))
  newCLK (
    .PAD(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \newCLK.INBUF  (
    .O(\newCLK.INBUF.OUT ),
    .I(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD326" ))
  \newCLK.IMUX  (
    .I(\newCLK.INBUF.OUT ),
    .O(\newCLK.I->my_clk_BUFG.I0 )
  );
  X_BPAD #(
    .LOC ( "PAD329" ))
  out13_FINAL_OUTPUT (
    .PAD(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD329" ))
  out13_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \out13_FINAL_OUTPUT.INBUF  (
    .O(\out13_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out13_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \out13_FINAL_OUTPUT.IMUX  (
    .I(\out13_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out13_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD337" ))
  out12_FINAL_OUTPUT (
    .PAD(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  out12_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .O(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \out12_FINAL_OUTPUT.INBUF  (
    .O(\out12_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out12_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \out12_FINAL_OUTPUT.IMUX  (
    .I(\out12_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out12_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD340" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD340" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->out1_out2.SR )
  );
  X_BPAD #(
    .LOC ( "PAD106" ))
  out5_FINAL_OUTPUT (
    .PAD(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD106" ))
  out5_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.BQ->out2_FINAL_OUTPUT.O ),
    .O(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \out5_FINAL_OUTPUT.INBUF  (
    .O(\out5_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out5_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \out5_FINAL_OUTPUT.IMUX  (
    .I(\out5_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out5_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  out10_FINAL_OUTPUT (
    .PAD(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  out10_FINAL_OUTPUT_OBUF (
    .I(\out3_out9.BQ->out9_FINAL_OUTPUT.O ),
    .O(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \out10_FINAL_OUTPUT.INBUF  (
    .O(\out10_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out10_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \out10_FINAL_OUTPUT.IMUX  (
    .I(\out10_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out10_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD96" ))
  out2_FINAL_OUTPUT (
    .PAD(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD96" ))
  out2_FINAL_OUTPUT_OBUF (
    .I(\out1_out2_out7.BQ->out2_FINAL_OUTPUT.O ),
    .O(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out2_FINAL_OUTPUT.INBUF  (
    .O(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out2_FINAL_OUTPUT.IMUX  (
    .I(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD95" ))
  out3_FINAL_OUTPUT (
    .PAD(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD95" ))
  out3_FINAL_OUTPUT_OBUF (
    .I(\out3_out9.AQ->out3_FINAL_OUTPUT.O ),
    .O(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \out3_FINAL_OUTPUT.INBUF  (
    .O(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \out3_FINAL_OUTPUT.IMUX  (
    .I(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD105" ))
  out4_FINAL_OUTPUT (
    .PAD(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD105" ))
  out4_FINAL_OUTPUT_OBUF (
    .I(\out3_out9.AQ->out3_FINAL_OUTPUT.O ),
    .O(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \out4_FINAL_OUTPUT.INBUF  (
    .O(\out4_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out4_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \out4_FINAL_OUTPUT.IMUX  (
    .I(\out4_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out4_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_INV   \INV_out1_out2_out7.CFFCLK  (
    .I(\my_clk_BUFG.O->out1_out2.CLK ),
    .O(\out1_out2_out7/INV_out1_out2_out7.CFFCLK )
  );
  X_BUF   \out1_out2_out7/out1_out2_out7_AMUX_Delay  (
    .I(\out1_out2_out7.A5LUT.O5 ),
    .O(\out1_out2_out7.AMUX->out1_FINAL_OUTPUT.O )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \out1_out2_out7.CFF  (
    .GE(VCC),
    .CLK(\out1_out2_out7/INV_out1_out2_out7.CFFCLK ),
    .I(\in1.I->out1_out2_out7.BX ),
    .O(\out1_out2_out7.CQ->out7_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out1_out2.SR ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b0 ))
  \out1_out2_out7.BFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->out1_out2.CLK ),
    .I(\in1.I->out1_out2_out7.BX ),
    .O(\out1_out2_out7.BQ->out2_FINAL_OUTPUT.O ),
    .RST(\global_reset.I->out1_out2.SR ),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'hAAAAAAAA ))
  \out1_out2_out7.A5LUT  (
    .ADR0(\in1.I->out1_out2_out7.BX ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\out1_out2_out7.A5LUT.O5 )
  );
  X_ONE   NlwBlock_registerTest22_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_registerTest22_GND (
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
