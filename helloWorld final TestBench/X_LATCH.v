//    Xilinx Proprietary Primitive Cell X_LATCH for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LATCH.v,v 1.4.162.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_LATCH (O, CLK, I, RST, SET);

  parameter INIT = 1'b0;

  output O;
  input I, CLK, SET, RST;

  wire nrst, nset, in_clk_enable;
  reg notifier;

  not (nrst, RST);
  not (nset, SET);

  and (in_clk_enable, nrst, nset);

  latchsr l1 (O, CLK, I, SET, RST, notifier);

endmodule
