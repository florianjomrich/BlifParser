//    Xilinx Proprietary Primitive Cell X_OBUFDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_OBUFDS.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OBUFDS (O, OB, I);

    output O, OB;

    input  I;

	buf B1 (O, I);
	not I1 (OB, I);

endmodule
