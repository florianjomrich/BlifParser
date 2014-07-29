// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_FDDRRSE.v,v 1.1.130.3 2004/09/28 20:47:45 wloo Exp $


`timescale  1 ps / 1 ps

module X_FDDRRSE (Q, C0, C1, CE, D0, D1, R, S);

    parameter INIT = 1'h0;

    output Q;
    input  C0, C1, CE, D0, D1, R, S;

    reg Q0, Q1;

    always @(posedge C0)
	if (R)
	    Q0 <= 0;
	else if (S)
	    Q0 <= 1;
	else if (CE)
	    Q0 <= D0;

    always @(posedge C1)
	if (R)
	    Q1 <= 0;
	else if (S)
	    Q1 <= 1;
	else if (CE)
	    Q1 <= D1;

    X_MUXDDR M1 (.O(Q), .CE(CE), .CLK0(C0), .CLK1(C1), .I0(Q0), .I1(Q1));

endmodule
