//    Xilinx Proprietary Primitive Cell X_BUF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_BUF.v,v 1.3.198.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_BUF (O, I);

  output O;
  input I;

  buf (O, I);

endmodule
