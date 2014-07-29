////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Wed Jul 30 00:20:20 2014
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
  \in2.PAD.PAD , \in1.PAD.PAD , \out1_FINAL_OUTPUT.OUTBUF.OUT , \clk.PAD.PAD 
);
  input \in2.PAD.PAD ;
  input \in1.PAD.PAD ;
  inout \out1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \clk.PAD.PAD ;
  wire \out1.AMUX->out1_FINAL_OUTPUT.O ;
  wire \in3.AQ->out1.A3 ;
  wire \my_clk_BUFG.O->in3.CLK ;
  wire \clk.I->my_clk_BUFG.I0 ;
  wire \in1.I->in3.AX ;
  wire \in2.I->out1.A2 ;
  wire \in2.INBUF.OUT ;
  wire \in1.INBUF.OUT ;
  wire \in3/INV_in3.AFFCLK ;
  wire \out1_FINAL_OUTPUT.INBUF.OUT ;
  wire \clk.INBUF.OUT ;
  wire \out1.A5LUT.O5 ;
  wire \NlwBufferSignal_in3.AFF/CLK ;
  wire \NlwBufferSignal_in3.AFF/IN ;
  wire \NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire VCC;
  wire GND;
  wire \NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
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
    .O(\in2.I->out1.A2 )
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
    .O(\in1.I->in3.AX )
  );
  X_INV   \INV_in3.AFFCLK  (
    .I(\my_clk_BUFG.O->in3.CLK ),
    .O(\in3/INV_in3.AFFCLK )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \in3.AFF  (
    .GE(VCC),
    .CLK(\NlwBufferSignal_in3.AFF/CLK ),
    .I(\NlwBufferSignal_in3.AFF/IN ),
    .O(\in3.AQ->out1.A3 ),
    .RST(GND),
    .SET(GND)
  );
  X_BPAD #(
    .LOC ( "PAD96" ))
  out1_FINAL_OUTPUT (
    .PAD(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD96" ))
  out1_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I ),
    .O(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out1_FINAL_OUTPUT.INBUF  (
    .O(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out1_FINAL_OUTPUT.IMUX  (
    .I(\out1_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\my_clk_BUFG.O->in3.CLK )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  clk (
    .PAD(\clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \clk.INBUF  (
    .O(\clk.INBUF.OUT ),
    .I(\clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \clk.IMUX  (
    .I(\clk.INBUF.OUT ),
    .O(\clk.I->my_clk_BUFG.I0 )
  );
  X_BUF   \out1/out1_AMUX_Delay  (
    .I(\out1.A5LUT.O5 ),
    .O(\out1.AMUX->out1_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'h000000CC ))
  \out1.A5LUT  (
    .ADR4(\in1.I->in3.AX ),
    .ADR1(\in2.I->out1.A2 ),
    .ADR3(\in3.AQ->out1.A3 ),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .O(\out1.A5LUT.O5 )
  );
  X_BUF   \NlwBufferBlock_in3.AFF/CLK  (
    .I(\in3/INV_in3.AFFCLK ),
    .O(\NlwBufferSignal_in3.AFF/CLK )
  );
  X_BUF   \NlwBufferBlock_in3.AFF/IN  (
    .I(\in1.I->in3.AX ),
    .O(\NlwBufferSignal_in3.AFF/IN )
  );
  X_BUF   \NlwBufferBlock_out1_FINAL_OUTPUT_OBUF/I  (
    .I(\out1.AMUX->out1_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_out1_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\clk.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
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

