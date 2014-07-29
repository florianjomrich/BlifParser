// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_IDDR.v,v 1.1.2.1 2004/09/28 20:47:45 wloo Exp $

`timescale  1 ps / 1 ps

module X_IDDR (Q1, Q2, C, CE, D, R, S);

    output Q1;
    output Q2;
    input C;
    input CE;
    input D;
    input R;
    input S;
    parameter DDR_CLK_EDGE = "OPPOSITE_EDGE";    
    parameter INIT_Q1 = 1'b0;
    parameter INIT_Q2 = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // X_IDDR
