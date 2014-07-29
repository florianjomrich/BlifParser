//    Xilinx Proprietary Primitive Cell X_OBUFTDS for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_OBUFTDS.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OBUFTDS (O, OB, I, T);

    output O, OB;

    input  I, T;

    bufif0 B1 (O, I, T);
    notif0 N1 (OB, I, T);

endmodule
