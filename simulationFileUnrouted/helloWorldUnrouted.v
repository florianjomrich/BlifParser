////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HelloWorldUnrouted.v
// /___/   /\     Timestamp: Sun Aug 03 13:47:35 2014
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
  \b.PAD.PAD , \a.PAD.PAD , \out_FINAL_OUTPUT.OUTBUF.OUT 
);
  input \b.PAD.PAD ;
  input \a.PAD.PAD ;
  inout \out_FINAL_OUTPUT.OUTBUF.OUT ;
  wire \b.I->out.A2 ;
  wire \out.AMUX->out_FINAL_OUTPUT.O ;
  wire \a.I->out.A1 ;
  wire \b.INBUF.OUT ;
  wire \a.INBUF.OUT ;
  wire \out_FINAL_OUTPUT.INBUF.OUT ;
  wire \out.A5LUT.O5 ;
  wire \NLW_out_FINAL_OUTPUT.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldunrouted.sdf");
  X_IPAD #(
    .LOC ( "PAD84" ))
  b (
    .PAD(\b.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \b.INBUF  (
    .O(\b.INBUF.OUT ),
    .I(\b.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \b.IMUX  (
    .I(\b.INBUF.OUT ),
    .O(\b.I->out.A2 )
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  a (
    .PAD(\a.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \a.INBUF  (
    .O(\a.INBUF.OUT ),
    .I(\a.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \a.IMUX  (
    .I(\a.INBUF.OUT ),
    .O(\a.I->out.A1 )
  );
  X_BPAD #(
    .LOC ( "PAD96" ))
  out_FINAL_OUTPUT (
    .PAD(\out_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD96" ))
  out_FINAL_OUTPUT_OBUF (
    .I(\out.AMUX->out_FINAL_OUTPUT.O ),
    .O(\out_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out_FINAL_OUTPUT.INBUF  (
    .O(\out_FINAL_OUTPUT.INBUF.OUT ),
    .I(\out_FINAL_OUTPUT.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD96" ))
  \out_FINAL_OUTPUT.IMUX  (
    .I(\out_FINAL_OUTPUT.INBUF.OUT ),
    .O(\NLW_out_FINAL_OUTPUT.IMUX_O_UNCONNECTED )
  );
  X_BUF   \out/out_AMUX_Delay  (
    .I(\out.A5LUT.O5 ),
    .O(\out.AMUX->out_FINAL_OUTPUT.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'h66666666 ))
  \out.A5LUT  (
    .ADR0(\a.I->out.A1 ),
    .ADR1(\b.I->out.A2 ),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\out.A5LUT.O5 )
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

