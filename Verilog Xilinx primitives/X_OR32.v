//    Xilinx Proprietary Primitive Cell X_OR32 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_OR32.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_OR32 (O, I0, I1, I2, I3, I4, I5, I6, I7,
               I8, I9, I10, I11, I12, I13, I14, I15,
               I16, I17, I18, I19, I20, I21, I22, I23,
               I24, I25, I26, I27, I28, I29, I30, I31);

  output O;
  input I0, I1, I2, I3, I4, I5, I6, I7,
        I8, I9, I10, I11, I12, I13, I14, I15,
        I16, I17, I18, I19, I20, I21, I22, I23,
        I24, I25, I26, I27, I28, I29, I30, I31;

  or (O, I0, I1, I2, I3, I4, I5, I6, I7,
      I8, I9, I10, I11, I12, I13, I14, I15,
      I16, I17, I18, I19, I20, I21, I22, I23,
      I24, I25, I26, I27, I28, I29, I30, I31);

endmodule
