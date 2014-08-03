//    Xilinx Proprietary Primitive Cell X_XOR2 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_XOR2.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_XOR2 (O, I0, I1);

  output O;
  input I0, I1;

  xor (O, I0, I1);

endmodule
