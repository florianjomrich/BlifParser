//    Xilinx Proprietary Primitive Cell X_LUT8 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LUT8.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT8 (O, ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, ADR6, ADR7);

  parameter INIT = 256'h0000000000000000000000000000000000000000000000000000000000000000;

  output O;
  input ADR0, ADR1, ADR2, ADR3, ADR4, ADR5, ADR6, ADR7;

	assign O = INIT[{ADR7,ADR6,ADR5,ADR4,ADR3,ADR2,ADR1,ADR0}];

endmodule
