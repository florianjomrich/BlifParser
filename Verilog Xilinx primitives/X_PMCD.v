// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_PMCD.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale  1 ps / 1 ps

module X_PMCD (CLKA1, CLKA1D2, CLKA1D4, CLKA1D8, CLKB1, CLKC1, CLKD1, CLKA, CLKB, CLKC, CLKD, REL, RST); 

    output CLKA1;
    output CLKA1D2;
    output CLKA1D4;
    output CLKA1D8;
    output CLKB1;
    output CLKC1;
    output CLKD1;
    input CLKA;
    input CLKB;
    input CLKC;
    input CLKD;
    input REL;
    input RST;
    parameter EN_REL = "FALSE";
    parameter RST_DEASSERT_CLK = "CLKA";

endmodule
