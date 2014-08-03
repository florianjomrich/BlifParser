//    Xilinx Proprietary Primitive Cell X_TRI for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_TRI.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_TRI (O, CTL, I);

  output O;
  input I, CTL;

  bufif1 (O, I, CTL);

endmodule
