//    Xilinx Proprietary Primitive Cell X_AND5 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_AND5.v,v 1.3.198.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_AND5 (O, I0, I1, I2, I3, I4);

  output O;
  input I0, I1, I2, I3, I4;

  and (O, I0, I1, I2, I3, I4);

endmodule
