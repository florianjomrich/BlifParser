//    Xilinx Proprietary Primitive Cell X_PD for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_PD.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_PD (O);

  output O;

  pulldown (weak0) (O);
//  assign O = 1'b0;

endmodule
