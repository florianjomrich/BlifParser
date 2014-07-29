//    Xilinx Proprietary Primitive Cell X_XOR7 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_XOR7.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_XOR7 (O, I0, I1, I2, I3, I4, I5, I6);

  output O;
  input I0, I1, I2, I3, I4, I5, I6;

  xor (O, I0, I1, I2, I3, I4, I5, I6);

endmodule
