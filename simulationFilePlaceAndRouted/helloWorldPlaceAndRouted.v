////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Mon Jul 28 23:52:38 2014
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
  \in2.PAD.PAD , \in1.PAD.PAD , \in4.PAD.PAD , \in3.PAD.PAD , \my_clk.PAD.PAD , \out1_FINAL_OUTPUT.OUTBUF.OUT , \in5.PAD.PAD , 
\out2_FINAL_OUTPUT.OUTBUF.OUT , \in6.PAD.PAD , \out3_FINAL_OUTPUT.OUTBUF.OUT 
);
  input \in2.PAD.PAD ;
  input \in1.PAD.PAD ;
  input \in4.PAD.PAD ;
  input \in3.PAD.PAD ;
  input \my_clk.PAD.PAD ;
  inout \out1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \in5.PAD.PAD ;
  inout \out2_FINAL_OUTPUT.OUTBUF.OUT ;
  input \in6.PAD.PAD ;
  inout \out3_FINAL_OUTPUT.OUTBUF.OUT ;
  wire \in1.I->out1_SLICEL.A1 ;
  wire \my_clk_BUFG.O->out2.CLK ;
  wire \in4.I->out3_SLICEL.A4 ;
  wire \my_clk.I->my_clk_BUFG.I0 ;
  wire \in5.I->out3_SLICEL.A5 ;
  wire \in6.I->out3_SLICEL.A6 ;
  wire \out1_SLICEL.AMUX->out2.AX ;
  wire \out3_SLICEL.AMUX->out3_FINAL_OUTPUT.O ;
  wire \in2.I->out1_SLICEL.A2 ;
  wire \out2.AQ->out2_FINAL_OUTPUT.O ;
  wire \in3.I->out1_SLICEL.A3 ;
  wire \in2.INBUF.OUT ;
  wire \in1.INBUF.OUT ;
  wire \in4.INBUF.OUT ;
  wire \in3.INBUF.OUT ;
  wire \out1_SLICEL.A5LUT.O5 ;
  wire \my_clk.INBUF.OUT ;
  wire \out2/INV_out2.AFFCLK ;
  wire \out3_SLICEL.A6LUT.O6 ;
  wire \out1_FINAL_OUTPUT.INBUF.OUT ;
  wire \in5.INBUF.OUT ;
  wire \out2_FINAL_OUTPUT.INBUF.OUT ;
  wire \in6.INBUF.OUT ;
  wire \out3_FINAL_OUTPUT.INBUF.OUT ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NlwBufferSignal_out2.AFF/CLK ;
  wire \NlwBufferSignal_out2.AFF/IN ;
  wire \NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I ;
  wire VCC;
  wire GND;
  wire \NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire \NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_IPAD #(
    .LOC ( "PAD84" ))
  in2 (
    .PAD(\in2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \in2.INBUF  (
    .O(\in2.INBUF.OUT ),
    .I(\in2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \in2.IMUX  (
    .I(\in2.INBUF.OUT ),
    .O(\in2.I->out1_SLICEL.A2 )
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
    .O(\in1.I->out1_SLICEL.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  in4 (
    .PAD(\in4.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \in4.INBUF  (
    .O(\in4.INBUF.OUT ),
    .I(\in4.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \in4.IMUX  (
    .I(\in4.INBUF.OUT ),
    .O(\in4.I->out3_SLICEL.A4 )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  in3 (
    .PAD(\in3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \in3.INBUF  (
    .O(\in3.INBUF.OUT ),
    .I(\in3.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \in3.IMUX  (
    .I(\in3.INBUF.OUT ),
    .O(\in3.I->out1_SLICEL.A3 )
  );
  X_BUF   \out1_SLICEL/out1_SLICEL_AMUX_Delay  (
    .I(\out1_SLICEL.A5LUT.O5 ),
    .O(\out1_SLICEL.AMUX->out2.AX )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h0C000C00 ))
  \out1_SLICEL.A5LUT  (
    .ADR2(\in1.I->out1_SLICEL.A1 ),
    .ADR3(\in2.I->out1_SLICEL.A2 ),
    .ADR1(\in3.I->out1_SLICEL.A3 ),
    .ADR0(1'b1),
    .ADR4(1'b1),
    .O(\out1_SLICEL.A5LUT.O5 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->out2.CLK )
  );
  X_IPAD #(
    .LOC ( "PAD92" ))
  my_clk (
    .PAD(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \my_clk.INBUF  (
    .O(\my_clk.INBUF.OUT ),
    .I(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \my_clk.IMUX  (
    .I(\my_clk.INBUF.OUT ),
    .O(\my_clk.I->my_clk_BUFG.I0 )
  );
  X_INV   \INV_out2.AFFCLK  (
    .I(\my_clk_BUFG.O->out2.CLK ),
    .O(\out2/INV_out2.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b1 ))
  \out2.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_out2.AFF/CLK ),
    .I(\NlwBufferSignal_out2.AFF/IN ),
    .O(\out2.AQ->out2_FINAL_OUTPUT.O ),
    .SET(GND),
    .RST(GND)
  );
  X_BUF   \out3_SLICEL/out3_SLICEL_AMUX_Delay  (
    .I(\out3_SLICEL.A6LUT.O6 ),
    .O(\out3_SLICEL.AMUX->out3_FINAL_OUTPUT.O )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h0000000000000000 ))
  \out3_SLICEL.A6LUT  (
    .ADR3(\in1.I->out1_SLICEL.A1 ),
    .ADR2(\in2.I->out1_SLICEL.A2 ),
    .ADR0(\in3.I->out1_SLICEL.A3 ),
    .ADR4(\in4.I->out3_SLICEL.A4 ),
    .ADR1(\in5.I->out3_SLICEL.A5 ),
    .ADR5(\in6.I->out3_SLICEL.A6 ),
    .O(\out3_SLICEL.A6LUT.O6 )
  );
  X_BPAD #(
    .LOC ( "PAD93" ))
  out1_FINAL_OUTPUT (
    .PAD(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  out1_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ),
    .O(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \out1_FINAL_OUTPUT.INBUF  (
    .O(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \out1_FINAL_OUTPUT.IMUX  (
    .I(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD105" ))
  in5 (
    .PAD(\in5.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \in5.INBUF  (
    .O(\in5.INBUF.OUT ),
    .I(\in5.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \in5.IMUX  (
    .I(\in5.INBUF.OUT ),
    .O(\in5.I->out3_SLICEL.A5 )
  );
  X_BPAD #(
    .LOC ( "PAD94" ))
  out2_FINAL_OUTPUT (
    .PAD(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD94" ))
  out2_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I ),
    .O(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \out2_FINAL_OUTPUT.INBUF  (
    .O(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out2_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \out2_FINAL_OUTPUT.IMUX  (
    .I(\out2_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out2_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD106" ))
  in6 (
    .PAD(\in6.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \in6.INBUF  (
    .O(\in6.INBUF.OUT ),
    .I(\in6.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \in6.IMUX  (
    .I(\in6.INBUF.OUT ),
    .O(\in6.I->out3_SLICEL.A6 )
  );
  X_BPAD #(
    .LOC ( "PAD91" ))
  out3_FINAL_OUTPUT (
    .PAD(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD91" ))
  out3_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I ),
    .O(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \out3_FINAL_OUTPUT.INBUF  (
    .O(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out3_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \out3_FINAL_OUTPUT.IMUX  (
    .I(\out3_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out3_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\my_clk.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_out2.AFF/CLK  (
    .I(\out2/INV_out2.AFFCLK ),
    .O(\NlwBufferSignal_out2.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_out2.AFF/IN  (
    .I(\out1_SLICEL.AMUX->out2.AX ),
    .O(\NlwBufferSignal_out2.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_out1_FINAL_OUTPUT_OBUF/I  (
    .I(\out1_SLICEL.AMUX->out2.AX ),
    .O(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out2_FINAL_OUTPUT_OBUF/I  (
    .I(\out2.AQ->out2_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out2_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_out3_FINAL_OUTPUT_OBUF/I  (
    .I(\out3_SLICEL.AMUX->out3_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out3_FINAL_OUTPUT_OBUF/I )
  );
  X_ONE   NlwBlock_helloWorld_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_helloWorld_GND (
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

