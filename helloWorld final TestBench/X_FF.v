//    Xilinx Proprietary Primitive Cell X_FF for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_FF.v,v 1.4.162.3 2004/09/28 20:47:45 wloo Exp $
//
`celldefine
primitive ffsrce (q, clk, d, ce, set, rst, notifier);

  output q; reg q;
  input clk, d, ce, set, rst, notifier;

  table

    //   clk    d     ce   set   rst   notifier    q     q+;

         (01)   0      1    0     0       ?    :   ?  :  0;
         (01)   1      1    0     0       ?    :   ?  :  1;
         (01)   x      1    0     0       ?    :   ?  :  x;
         (01)   0      x    0     0       ?    :   0  :  0;
         (01)   1      x    0     0       ?    :   1  :  1;

         (??)   ?      0    0     0       ?    :   ?  :  -;
         (1?)   ?      ?    0     0       ?    :   ?  :  -;
         (?0)   ?      ?    0     0       ?    :   ?  :  -;

          ?     ?      ?    1     0       ?    :   ?  :  1;
          ?     ?      ?    ?     1       ?    :   ?  :  0;
          ?     ?      ?    0     x       ?    :   0  :  0;
         (01)   0      1    0     x       ?    :   ?  :  0;
          ?     ?      ?    x     0       ?    :   1  :  1;
         (01)   1      1    x     0       ?    :   ?  :  1;

          ?    (??)    ?    0     0       ?    :   ?  :  -;
          ?     ?    (??)   0     0       ?    :   ?  :  -;
          ?     ?      ?   (?0)   ?       ?    :   ?  :  -;
          ?     ?      ?    ?    (?0)     ?    :   ?  :  -;

          ?     ?      ?    ?     ?       *    :   ?  :  x;

  endtable

endprimitive



`celldefine
`timescale 1 ps/1 ps

module X_FF (O, CE, CLK, I, RST, SET);

  parameter INIT = 1'b0;

  output O;
  input I, CLK, SET, RST, CE;

  wire nrst, nset, in_out;
  wire in_clk_enable, ce_clk_enable, set_clk_enable;
  reg notifier;

  not (nrst, RST);
  not (nset, SET);
  xor (in_out, I, O);

  and (in_clk_enable, nrst, nset, CE);
  and (ce_clk_enable, nrst, nset, in_out);
  and (set_clk_enable, nrst, CE);

  ffsrce f1 (O, CLK, I, CE, SET, RST, notifier);

endmodule
