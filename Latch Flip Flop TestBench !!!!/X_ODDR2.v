// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_ODDR2.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale 1 ps / 1 ps

module X_ODDR2 (Q, C0, C1, CE, D0, D1, R, S);

    output Q;
    input C0;
    input C1;
    input CE;
    input D0;
    input D1;
    input R;
    input S;
    parameter DDR_ALIGNMENT = "NONE";    
    parameter INIT = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // X_ODDR2
