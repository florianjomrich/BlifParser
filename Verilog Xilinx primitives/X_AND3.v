//    Xilinx Proprietary Primitive Cell X_AND3 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_AND3.v,v 1.3.198.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_AND3 (O, I0, I1, I2);

  output O;
  input I0, I1, I2;

  and (O, I0, I1, I2);

endmodule
