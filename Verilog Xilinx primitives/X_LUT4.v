//    Xilinx Proprietary Primitive Cell X_LUT4 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LUT4.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT4 (O, ADR0, ADR1, ADR2, ADR3);

  parameter INIT = 16'h0000;

  output O;
  input ADR0, ADR1, ADR2, ADR3;

	assign O = INIT[{ADR3,ADR2,ADR1,ADR0}];

endmodule
