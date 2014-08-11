// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_MUX2.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $

/*

FUNCTION	: 2 to 1 Multiplexer

*/

`celldefine
`timescale  1 ps / 1 ps

module X_MUX2 (O, IA, IB, SEL);

    output O;
    reg    o_out;

    input  IA, IB, SEL;

    buf B1 (O, o_out);

	always @(IA or IB or SEL) begin
	    if (SEL)
		o_out <= IB;
	    else
		o_out <= IA;
	end

endmodule
