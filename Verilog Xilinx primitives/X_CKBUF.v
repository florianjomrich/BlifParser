//    Xilinx Proprietary Primitive Cell X_CKBUF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_CKBUF.v,v 1.3.198.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_CKBUF (O, I);

  output O;
  input I;

  buf (O, I);

endmodule
