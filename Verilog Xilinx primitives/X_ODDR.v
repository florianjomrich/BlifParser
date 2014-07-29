// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_ODDR.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale 1 ps / 1 ps

module X_ODDR (Q, C, CE, D1, D2, R, S);

    output Q;
    input C;
    input CE;
    input D1;
    input D2;    
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // X_ODDR
