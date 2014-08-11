//    Xilinx Proprietary Primitive Cell X_IBUFDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_IBUFDS.v,v 1.4.198.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps


module X_IBUFDS (O, I, IB);

    output O;

    input  I, IB;

    reg o_out;

    buf b_O (O, o_out);

    always @(I or IB) begin
	if (I == 1'b1 && IB == 1'b0)
	    o_out <= I;
	else if (I == 1'b0 && IB == 1'b1)
	    o_out <= I;
    end

endmodule
