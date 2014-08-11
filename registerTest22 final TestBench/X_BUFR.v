// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_BUFR.v,v 1.1.2.1 2004/09/28 20:47:45 wloo Exp $

`timescale  1 ps / 1 ps

module X_BUFR (O, CE, CLR, I);

    output O;
    input CE;
    input CLR;
    input I;
    parameter BUFR_DIVIDE = "BYPASS";

endmodule // X_BUFR
