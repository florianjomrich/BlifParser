//    Xilinx Proprietary Primitive Cell X_KEEPER for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_KEEPER.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps
 
module X_KEEPER (O);

  inout O;
  wire  O_int;
  reg   I;

    always @(O_int)
        if (O_int)
            I <= 1;
        else
            I <= 0;

    buf (pull1, pull0) (O, I);
    buf (O_int, O);

endmodule
