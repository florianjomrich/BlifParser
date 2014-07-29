//    Xilinx Proprietary Primitive Cell X_LUT2 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LUT2.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LUT2 (O, ADR0, ADR1);

  parameter INIT = 4'h0;

  output O;
  input ADR0, ADR1;

	assign O = INIT[{ADR1,ADR0}];

endmodule
