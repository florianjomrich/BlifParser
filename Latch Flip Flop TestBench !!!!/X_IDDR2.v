// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_IDDR2.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale  1 ps / 1 ps

module X_IDDR2 (Q0, Q1, C0, C1, CE, D, R, S);

    output Q0;
    output Q1;
    input C0;
    input C1;
    input CE;
    input D;
    input R;
    input S;
    parameter DDR_ALIGNMENT = "NONE";
    parameter INIT_Q0 = 1'b0;
    parameter INIT_Q1 = 1'b0;
    parameter SRTYPE = "SYNC";

endmodule // X_IDDR2
