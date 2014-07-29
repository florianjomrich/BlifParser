//    Xilinx Proprietary Primitive Cell X_LUT3 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LUT3.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT3 (O, ADR0, ADR1, ADR2);

  parameter INIT = 8'h00;

  output O;
  input ADR0, ADR1, ADR2;

        assign O = INIT[{ADR2,ADR1,ADR0}];

endmodule
