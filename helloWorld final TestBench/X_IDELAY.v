// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_IDELAY.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale  1 ps / 1 ps

module X_IDELAY (O, C, CE, I, INC, RST);

    output O;
    input C;
    input CE;
    input I;
    input INC;
    input RST;
    parameter IOBDELAY_TYPE = "DEFAULT";    
    parameter IOBDELAY_VALUE = 0;

endmodule // X_IDELAY
