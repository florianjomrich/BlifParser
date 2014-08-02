////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sat Aug 02 21:01:25 2014
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
  \z0_FINAL_OUTPUT.OUTBUF.OUT , \my_clk.PAD.PAD , \global_reset.PAD.PAD , \x23.PAD.PAD 
);
  inout \z0_FINAL_OUTPUT.OUTBUF.OUT ;
  input \my_clk.PAD.PAD ;
  input \global_reset.PAD.PAD ;
  input \x23.PAD.PAD ;
  wire \n44.AQ->z0_FINAL_OUTPUT.O ;
  wire \my_clk.I->my_clk_BUFG.I0 ;
  wire \x23.I->n44.A1 ;
  wire \z0_FINAL_OUTPUT.INBUF.OUT ;
  wire \n44/n44.A5LUT.O5 ;
  wire \my_clk.INBUF.OUT ;
  wire \global_reset.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire \NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I ;
  wire \NlwBufferSignal_my_clk_BUFG.BUFG/IN ;
  wire \NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_n44.AFF_CLK_UNCONNECTED ;
  wire GND;
  wire \NLW_my_clk_BUFG.BUFG_O_UNCONNECTED ;
  wire \NLW_global_reset.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_BPAD #(
    .LOC ( "PAD209" ))
  z0_FINAL_OUTPUT (
    .PAD(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD209" ))
  z0_FINAL_OUTPUT_OBUF (
    .I(\NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I ),
    .O(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \z0_FINAL_OUTPUT.INBUF  (
    .O(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .I(\z0_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD209" ))
  \z0_FINAL_OUTPUT.IMUX  (
    .I(\z0_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_z0_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 1'b0 ))
  \n44.AFF  (
    .CE(VCC),
    .CLK(\NLW_n44.AFF_CLK_UNCONNECTED ),
    .I(\n44/n44.A5LUT.O5 ),
    .O(\n44.AQ->z0_FINAL_OUTPUT.O ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y0" ),
    .INIT ( 32'h33333333 ))
  \n44.A5LUT  (
    .ADR1(\x23.I->n44.A1 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n44/n44.A5LUT.O5 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \my_clk_BUFG.BUFG  (
    .I(\NlwBufferSignal_my_clk_BUFG.BUFG/IN ),
    .O(\NLW_my_clk_BUFG.BUFG_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD314" ))
  my_clk (
    .PAD(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \my_clk.INBUF  (
    .O(\my_clk.INBUF.OUT ),
    .I(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD314" ))
  \my_clk.IMUX  (
    .I(\my_clk.INBUF.OUT ),
    .O(\my_clk.I->my_clk_BUFG.I0 )
  );
  X_IPAD #(
    .LOC ( "PAD211" ))
  global_reset (
    .PAD(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \global_reset.INBUF  (
    .O(\global_reset.INBUF.OUT ),
    .I(\global_reset.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD211" ))
  \global_reset.IMUX  (
    .I(\global_reset.INBUF.OUT ),
    .O(\NLW_global_reset.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD210" ))
  x23 (
    .PAD(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \x23.INBUF  (
    .O(\x23.INBUF.OUT ),
    .I(\x23.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD210" ))
  \x23.IMUX  (
    .I(\x23.INBUF.OUT ),
    .O(\x23.I->n44.A1 )
  );
  X_BUF   \NlwBufferBlock_z0_FINAL_OUTPUT_OBUF/I  (
    .I(\n44.AQ->z0_FINAL_OUTPUT.O ),
    .O(\NlwBufferSignal_z0_FINAL_OUTPUT_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_my_clk_BUFG.BUFG/IN  (
    .I(\my_clk.I->my_clk_BUFG.I0 ),
    .O(\NlwBufferSignal_my_clk_BUFG.BUFG/IN )
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

