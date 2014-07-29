//    Xilinx Proprietary Primitive Cell X_LATCHE for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_LATCHE.v,v 1.4.162.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

`celldefine
primitive latchsre (q, clk, d, set, rst, ge, notifier);

  output q; reg q;
  input clk, d, set, rst, ge, notifier;

  table

    //   clk    d   set   rst   ge  notifier   q     q+;

          1     0    0     0    1      ?   :   ?  :  0;
          1     1    0     0    1      ?   :   ?  :  1;

          0     ?    0     0    ?      ?   :   ?  :  -;
          ?     ?    0     0    0      ?   :   ?  :  -;
          ?     0    0     ?    ?      ?   :   0  :  -;
          ?     1    ?     0    ?      ?   :   1  :  -;

          ?     ?    1     0    ?      ?   :   ?  :  1;
          ?     ?    ?     1    ?      ?   :   ?  :  0;
          0     ?    0     x    ?      ?   :   0  :  0;
          ?     ?    0     x    0      ?   :   0  :  0;
          1     0    0     x    1      ?   :   ?  :  0;
          0     ?    x     0    ?      ?   :   1  :  1;
          ?     ?    x     0    0      ?   :   1  :  1;
          1     1    x     0    1      ?   :   ?  :  1;
          ?     ?    ?     ?    ?      *   :   ?  :  x;

  endtable

endprimitive


module X_LATCHE (O, CLK, GE, I, RST, SET);

  parameter INIT = 1'b0;

  output O;
  input I, CLK, SET, RST, GE;

  wire nrst, nset, in_out;
  wire in_clk_enable, ge_clk_enable, set_clk_enable;
  reg notifier;

  not (nrst, RST);
  not (nset, SET);
  xor (in_out, I, O);

  and (in_clk_enable, nrst, nset, GE);
  and (ge_clk_enable, nrst, nset, in_out);
  and (set_clk_enable, nrst, GE);

  latchsre l1 (O, CLK, I, SET, RST, GE, notifier);

endmodule
