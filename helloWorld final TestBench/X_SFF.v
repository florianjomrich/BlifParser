//    Xilinx Proprietary Primitive Cell X_SFF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_SFF.v,v 1.4.162.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_SFF (O, CE, CLK, I, RST, SET, SRST, SSET);

  parameter INIT = 1'b0;

  output O;
  input I, CLK, SET, RST, SSET, SRST, CE;

  wire nrst, nset, nsrst, nsset, in_out;
  wire in_clk_enable, ce_clk_enable, set_clk_enable;
  wire srst_clk_enable, sset_clk_enable;
  reg notifier;

  not (nrst, RST);
  not (nset, SET);
  not (nsrst, SRST);
  not (nsset, SSET);
  xor (in_out, I, O);
  
  and (in_clk_enable, nrst, nset, nsrst, nsset, CE);
  and (ce_clk_enable, nrst, nset, nsrst, nsset, in_out);
  and (set_clk_enable, nrst, CE);
  and (srst_clk_enable, nrst, nset, nsrst);
  and (sset_clk_enable, nrst, nset);

  sffsrce s1 (O, CLK, I, CE, SET, RST, SSET, SRST, notifier);

endmodule
