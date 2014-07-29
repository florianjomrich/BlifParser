// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_GT11CLK.v,v 1.1.2.1 2004/09/28 20:47:45 wloo Exp $

`timescale 1 ps / 1 ps 

module X_GT11CLK (
	SYNCLK1OUT,
	SYNCLK2OUT,
	MGTCLKN,
	MGTCLKP,
	REFCLK,
	RXBCLK,
	SYNCLK1IN,
	SYNCLK2IN
);

parameter REFCLKSEL = "MGTCLK";
parameter SYNCLK1OUTEN = "ENABLE";
parameter SYNCLK2OUTEN = "DISABLE";


output SYNCLK1OUT;
output SYNCLK2OUT;

input MGTCLKN;
input MGTCLKP;
input REFCLK;
input RXBCLK;
input SYNCLK1IN;
input SYNCLK2IN;

endmodule

