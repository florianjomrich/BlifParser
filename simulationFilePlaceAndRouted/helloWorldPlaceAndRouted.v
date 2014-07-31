////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Thu Jul 31 16:59:53 2014
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
  \in1.PAD.PAD , \out1_FINAL_OUTPUT.OUTBUF.OUT , \newCLK.PAD.PAD , \global_reset.PAD.PAD 
);
  input \in1.PAD.PAD ;
  inout \out1_FINAL_OUTPUT.OUTBUF.OUT ;
  input \newCLK.PAD.PAD ;
  input \global_reset.PAD.PAD ;
  wire \out1.AQ->out1_FINAL_OUTPUT.O ;
  wire \in1.I->out1.AX ;
  wire \my_clk_BUFG.O->out1.CLK ;
  wire \global_reset.I->out1.SR ;
  wire \newCLK.I->my_clk_BUFG.I0 ;
  wire \in1.INBUF.OUT ;
  wire \out1_FINAL_OUTPUT.INBUF.OUT ;
  wire \newCLK.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \NLW_out1_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire GND;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
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
    .O(\in1.I->out1.AX )
  );
  X_BPAD #(
    .LOC ( "PAD84" ))
  out1_FINAL_OUTPUT (
    .PAD(\out1_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD84" ))
  out1_FINAL_OUTPUT_OBUF (
    .I(\out1.AQ->out1_FINAL_OUTPUT.O ),
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
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y10" ))
  \my_clk_BUFG.BUFG  (
    .I(\newCLK.I->my_clk_BUFG.I0 ),
    .O(\my_clk_BUFG.O->out1.CLK )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  newCLK (
    .PAD(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \newCLK.INBUF  (
    .O(\newCLK.INBUF.OUT ),
    .I(\newCLK.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \newCLK.IMUX  (
    .I(\newCLK.INBUF.OUT ),
    .O(\newCLK.I->my_clk_BUFG.I0 )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\global_reset.I->out1.SR )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 1'b0 ))
  \out1.AFF  (
    .CE(VCC),
    .CLK(\my_clk_BUFG.O->out1.CLK ),
    .I(\in1.I->out1.AX ),
    .O(\out1.AQ->out1_FINAL_OUTPUT.O ),
    .RST(GND),
    .SET(GND)
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

