// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_MULT18X18SIO.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale  1 ps / 1 ps

module X_MULT18X18SIO (BCOUT, P, A, B, BCIN, CEA, CEB, CEP, CLK, RSTA, RSTB, RSTP); 

    output [17:0] BCOUT; 
    output [35:0] P; 
    input [17:0] A;
    input [17:0] B;
    input [17:0] BCIN;
    input CEA;
    input CEB;
    input CEP;
    input CLK;
    input RSTA;
    input RSTB;
    input RSTP;
    parameter AREG = 1;
    parameter BREG = 1;
    parameter B_INPUT = "DIRECT";
    parameter PREG = 1;

endmodule // X_MULT18X18SIO
