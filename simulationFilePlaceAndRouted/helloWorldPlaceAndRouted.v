////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: helloWorldPlaceAndRouted.v
// /___/   /\     Timestamp: Sun Jul 27 23:21:43 2014
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
  \n1.PAD.PAD , \z33.OUTBUF.OUT , \n44.PAD.PAD , \n4.PAD.PAD , \my_clk.PAD.PAD , \n2.PAD.PAD , \hurz.OUTBUF.OUT , \n100.PAD.PAD , \n96.PAD.PAD , 
\x28.PAD.PAD , \n95.PAD.PAD , \x23.PAD.PAD , \n1337.OUTBUF.OUT , \n919.PAD.PAD 
);
  input \n1.PAD.PAD ;
  inout \z33.OUTBUF.OUT ;
  input \n44.PAD.PAD ;
  input \n4.PAD.PAD ;
  input \my_clk.PAD.PAD ;
  input \n2.PAD.PAD ;
  inout \hurz.OUTBUF.OUT ;
  input \n100.PAD.PAD ;
  input \n96.PAD.PAD ;
  input \x28.PAD.PAD ;
  input \n95.PAD.PAD ;
  input \x23.PAD.PAD ;
  inout \n1337.OUTBUF.OUT ;
  input \n919.PAD.PAD ;
  wire \n95.I->z0_SLICEL.A4 ;
  wire \n91_SLICEL.AQ->z0_SLICEL.A6 ;
  wire \n919.I->n91_SLICEL.A1 ;
  wire \n2.I->z33_SLICEL.A3 ;
  wire \z0_SLICEL.AQ->n1337.O ;
  wire \x23.I->z0_SLICEL.A1 ;
  wire \z0_SLICEL.AMUX->z33_SLICEL.A4 ;
  wire \n44.I->z0_SLICEL.A3 ;
  wire \x28.I->z0_SLICEL.A2 ;
  wire \n96.I->z0_SLICEL.A5 ;
  wire \z33_SLICEL.AMUX->z33.O ;
  wire \n4.I->z33_SLICEL.A1 ;
  wire \n1.I->z33_SLICEL.A2 ;
  wire \z1_SLICEL.AMUX->z33_SLICEL.A5 ;
  wire \n1337.I->z1_SLICEL.A1 ;
  wire \n1.INBUF.OUT ;
  wire \z33.INBUF.OUT ;
  wire \n44.INBUF.OUT ;
  wire \n4.INBUF.OUT ;
  wire \my_clk.INBUF.OUT ;
  wire \n2.INBUF.OUT ;
  wire \hurz.INBUF.OUT ;
  wire \n91_SLICEL/n91_SLICEL.A5LUT.O5 ;
  wire \z0_SLICEL.A6LUT.O6 ;
  wire \n100.INBUF.OUT ;
  wire \n96.INBUF.OUT ;
  wire \x28.INBUF.OUT ;
  wire \n95.INBUF.OUT ;
  wire \z33_SLICEL.A5LUT.O5 ;
  wire \z1_SLICEL.A5LUT.O5 ;
  wire \x23.INBUF.OUT ;
  wire \n1337.INBUF.OUT ;
  wire \n919.INBUF.OUT ;
  wire \NlwBufferSignal_z33_OBUF/I ;
  wire \NlwBufferSignal_n1337_OBUF/I ;
  wire \NLW_z33.IMUX_O_UNCONNECTED ;
  wire \NLW_my_clk.IMUX_O_UNCONNECTED ;
  wire NLW_hurz_OBUF_I_UNCONNECTED;
  wire \NLW_hurz.IMUX_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_n91_SLICEL.AFF_CLK_UNCONNECTED ;
  wire GND;
  wire \NLW_z0_SLICEL.AFF_CLK_UNCONNECTED ;
  wire \NLW_n100.IMUX_O_UNCONNECTED ;
  initial $sdf_annotate("helloworldplaceandrouted.sdf");
  X_IPAD #(
    .LOC ( "PAD94" ))
  n1 (
    .PAD(\n1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \n1.INBUF  (
    .O(\n1.INBUF.OUT ),
    .I(\n1.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD94" ))
  \n1.IMUX  (
    .I(\n1.INBUF.OUT ),
    .O(\n1.I->z33_SLICEL.A2 )
  );
  X_BPAD #(
    .LOC ( "PAD330" ))
  z33 (
    .PAD(\z33.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD330" ))
  z33_OBUF (
    .I(\NlwBufferSignal_z33_OBUF/I ),
    .O(\z33.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \z33.INBUF  (
    .O(\z33.INBUF.OUT ),
    .I(\z33.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD330" ))
  \z33.IMUX  (
    .I(\z33.INBUF.OUT ),
    .O(\NLW_z33.IMUX_O_UNCONNECTED )
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
    .O(\n44.I->z0_SLICEL.A3 )
  );
  X_IPAD #(
    .LOC ( "PAD93" ))
  n4 (
    .PAD(\n4.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \n4.INBUF  (
    .O(\n4.INBUF.OUT ),
    .I(\n4.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD93" ))
  \n4.IMUX  (
    .I(\n4.INBUF.OUT ),
    .O(\n4.I->z33_SLICEL.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD329" ))
  my_clk (
    .PAD(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \my_clk.INBUF  (
    .O(\my_clk.INBUF.OUT ),
    .I(\my_clk.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD329" ))
  \my_clk.IMUX  (
    .I(\my_clk.INBUF.OUT ),
    .O(\NLW_my_clk.IMUX_O_UNCONNECTED )
  );
  X_IPAD #(
    .LOC ( "PAD91" ))
  n2 (
    .PAD(\n2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \n2.INBUF  (
    .O(\n2.INBUF.OUT ),
    .I(\n2.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD91" ))
  \n2.IMUX  (
    .I(\n2.INBUF.OUT ),
    .O(\n2.I->z33_SLICEL.A3 )
  );
  X_BPAD #(
    .LOC ( "PAD337" ))
  hurz (
    .PAD(\hurz.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD337" ))
  hurz_OBUF (
    .I(NLW_hurz_OBUF_I_UNCONNECTED),
    .O(\hurz.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \hurz.INBUF  (
    .O(\hurz.INBUF.OUT ),
    .I(\hurz.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD337" ))
  \hurz.IMUX  (
    .I(\hurz.INBUF.OUT ),
    .O(\NLW_hurz.IMUX_O_UNCONNECTED )
  );
  X_LATCHE #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 1'b1 ))
  \n91_SLICEL.AFF  (
    .GE(VCC),
    .CLK(\NLW_n91_SLICEL.AFF_CLK_UNCONNECTED ),
    .I(\n91_SLICEL/n91_SLICEL.A5LUT.O5 ),
    .O(\n91_SLICEL.AQ->z0_SLICEL.A6 ),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y8" ),
    .INIT ( 32'hCCCCCCCC ))
  \n91_SLICEL.A5LUT  (
    .ADR1(\n919.I->n91_SLICEL.A1 ),
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\n91_SLICEL/n91_SLICEL.A5LUT.O5 )
  );
  X_BUF   \z0_SLICEL/z0_SLICEL_AMUX_Delay  (
    .I(\z0_SLICEL.A6LUT.O6 ),
    .O(\z0_SLICEL.AMUX->z33_SLICEL.A4 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 1'b0 ))
  \z0_SLICEL.AFF  (
    .CE(VCC),
    .CLK(\NLW_z0_SLICEL.AFF_CLK_UNCONNECTED ),
    .I(\z0_SLICEL.A6LUT.O6 ),
    .O(\z0_SLICEL.AQ->n1337.O ),
    .SRST(GND),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y7" ),
    .INIT ( 64'h00880000AAEEAAEE ))
  \z0_SLICEL.A6LUT  (
    .ADR3(\x23.I->z0_SLICEL.A1 ),
    .ADR5(\x28.I->z0_SLICEL.A2 ),
    .ADR2(\n44.I->z0_SLICEL.A3 ),
    .ADR4(\n95.I->z0_SLICEL.A4 ),
    .ADR1(\n96.I->z0_SLICEL.A5 ),
    .ADR0(\n91_SLICEL.AQ->z0_SLICEL.A6 ),
    .O(\z0_SLICEL.A6LUT.O6 )
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
    .O(\n96.I->z0_SLICEL.A5 )
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
    .O(\x28.I->z0_SLICEL.A2 )
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
    .O(\n95.I->z0_SLICEL.A4 )
  );
  X_BUF   \z33_SLICEL/z33_SLICEL_AMUX_Delay  (
    .I(\z33_SLICEL.A5LUT.O5 ),
    .O(\z33_SLICEL.AMUX->z33.O )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y2" ),
    .INIT ( 32'h00008000 ))
  \z33_SLICEL.A5LUT  (
    .ADR4(\n4.I->z33_SLICEL.A1 ),
    .ADR2(\n1.I->z33_SLICEL.A2 ),
    .ADR1(\n2.I->z33_SLICEL.A3 ),
    .ADR0(\z0_SLICEL.AMUX->z33_SLICEL.A4 ),
    .ADR3(\z1_SLICEL.AMUX->z33_SLICEL.A5 ),
    .O(\z33_SLICEL.A5LUT.O5 )
  );
  X_BUF   \z1_SLICEL/z1_SLICEL_AMUX_Delay  (
    .I(\z1_SLICEL.A5LUT.O5 ),
    .O(\z1_SLICEL.AMUX->z33_SLICEL.A5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y9" ),
    .INIT ( 32'hF0F0F0F0 ))
  \z1_SLICEL.A5LUT  (
    .ADR2(\n1337.I->z1_SLICEL.A1 ),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\z1_SLICEL.A5LUT.O5 )
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
    .O(\x23.I->z0_SLICEL.A1 )
  );
  X_BPAD #(
    .LOC ( "PAD83" ))
  n1337 (
    .PAD(\n1337.OUTBUF.OUT )
  );
  X_OBUF #(
    .LOC ( "PAD83" ))
  n1337_OBUF (
    .I(\NlwBufferSignal_n1337_OBUF/I ),
    .O(\n1337.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \n1337.INBUF  (
    .O(\n1337.INBUF.OUT ),
    .I(\n1337.OUTBUF.OUT )
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \n1337.IMUX  (
    .I(\n1337.INBUF.OUT ),
    .O(\n1337.I->z1_SLICEL.A1 )
  );
  X_IPAD #(
    .LOC ( "PAD92" ))
  n919 (
    .PAD(\n919.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \n919.INBUF  (
    .O(\n919.INBUF.OUT ),
    .I(\n919.PAD.PAD )
  );
  X_BUF #(
    .LOC ( "PAD92" ))
  \n919.IMUX  (
    .I(\n919.INBUF.OUT ),
    .O(\n919.I->n91_SLICEL.A1 )
  );
  X_BUF   \NlwBufferBlock_z33_OBUF/I  (
    .I(\z33_SLICEL.AMUX->z33.O ),
    .O(\NlwBufferSignal_z33_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_n1337_OBUF/I  (
    .I(\z0_SLICEL.AQ->n1337.O ),
    .O(\NlwBufferSignal_n1337_OBUF/I )
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

