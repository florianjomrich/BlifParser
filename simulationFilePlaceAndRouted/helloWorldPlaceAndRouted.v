////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Thu Jul 24 12:39:52 2014
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
  \z0.OUTBUF.OUT , \n44.PAD.PAD , \n96.PAD.PAD , \n95.PAD.PAD , \x28.PAD.PAD , \n100.PAD.PAD , \x23.PAD.PAD 
);
  output \z0.OUTBUF.OUT ;
  input \n44.PAD.PAD ;
  input \n96.PAD.PAD ;
  input \n95.PAD.PAD ;
  input \x28.PAD.PAD ;
  input \n100.PAD.PAD ;
  input \x23.PAD.PAD ;
  wire \n44.INBUF.OUT ;
  wire \n96.INBUF.OUT ;
  wire \n95.INBUF.OUT ;
  wire \x28.INBUF.OUT ;
  wire \n100.INBUF.OUT ;
  wire \x23.INBUF.OUT ;
  wire NLW_z0_OBUF_I_UNCONNECTED;
  wire \NLW_n44.IMUX_O_UNCONNECTED ;
  wire \NLW_n96.IMUX_O_UNCONNECTED ;
  wire \NLW_n95.IMUX_O_UNCONNECTED ;
  wire \NLW_x28.IMUX_O_UNCONNECTED ;
  wire \NLW_n100.IMUX_O_UNCONNECTED ;
  wire \NLW_x23.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_OPAD #(
    .LOC ( "PAD93" ))
  z0 (
    .PAD(\z0.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD93" ))
  z0_OBUF (
    .I(NLW_z0_OBUF_I_UNCONNECTED),
    .O(\z0.OUTBUF.OUT )
  );
  X_IPAD #(
    .LOC ( "PAD96" ))
  n44 (
    .PAD(\n44.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \n44.INBUF  (
    .O(\n44.INBUF.OUT ),
    .I(\n44.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \n44.IMUX  (
    .I(\n44.INBUF.OUT ),
    .O(\NLW_n44.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD105" ))
  n96 (
    .PAD(\n96.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \n96.INBUF  (
    .O(\n96.INBUF.OUT ),
    .I(\n96.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD105" ))
  \n96.IMUX  (
    .I(\n96.INBUF.OUT ),
    .O(\NLW_n96.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD95" ))
  n95 (
    .PAD(\n95.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \n95.INBUF  (
    .O(\n95.INBUF.OUT ),
    .I(\n95.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD95" ))
  \n95.IMUX  (
    .I(\n95.INBUF.OUT ),
    .O(\NLW_n95.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD84" ))
  x28 (
    .PAD(\x28.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \x28.INBUF  (
    .O(\x28.INBUF.OUT ),
    .I(\x28.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \x28.IMUX  (
    .I(\x28.INBUF.OUT ),
    .O(\NLW_x28.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD106" ))
  n100 (
    .PAD(\n100.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \n100.INBUF  (
    .O(\n100.INBUF.OUT ),
    .I(\n100.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD106" ))
  \n100.IMUX  (
    .I(\n100.INBUF.OUT ),
    .O(\NLW_n100.IMUX_O_UNCONNECTED )
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
    .O(\NLW_x23.IMUX_O_UNCONNECTED )
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

