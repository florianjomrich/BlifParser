//    Xilinx Proprietary Primitive Cell X_XOR16 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_XOR16.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_XOR16 (O, I0, I1, I2, I3, I4, I5, I6, I7,
                I8, I9, I10, I11, I12, I13, I14, I15);

  output O;
  input I0, I1, I2, I3, I4, I5, I6, I7,
        I8, I9, I10, I11, I12, I13, I14, I15;

  xor (O, I0, I1, I2, I3, I4, I5, I6, I7,
       I8, I9, I10, I11, I12, I13, I14, I15);

endmodule
