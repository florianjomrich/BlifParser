//    Xilinx Proprietary Primitive Cell sffsrce_prim for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/sffsrce_prim.v,v 1.1.2.1 2004/09/28 20:47:47 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps
 
primitive sffsrce_prim (q, clk, d, ce, set, rst, notifier);
 
  output q; reg q;
  input clk, d, ce, set, rst, notifier;

  table

    //   clk    d     ce   set   rst  sset srst notifier   q     q+;

          ?     ?     ?     1     0                ?   :   ?  :  1;
          ?     ?     ?     ?     1                ?   :   ?  :  0;
          ?     ?     ?     0    (?x)              ?   :   0  :  0;
          ?     ?     ?    (?x)   0                ?   :   1  :  1;

         (01)   0     1     0     0                ?   :   ?  :  0;
         (01)   1     1     0     0                ?   :   ?  :  1;
         (01)   x     1     0     0                ?   :   ?  :  x;
         (01)   0     x     0     0                ?   :   0  :  0;
         (01)   1     x     0     0                ?   :   1  :  1;

       //(01)   ?     ?     0     0                ?   :   ?  :  0;
       //(01)   ?     ?     0     0                ?   :   ?  :  1;
         (01)   ?     0     0     0                ?   :   0  :  0;
         (01)   0     ?     0     0                ?   :   0  :  0;
         (01)   0     1     0     0                ?   :   ?  :  0;
         (01)   ?     0     0     0                ?   :   1  :  1;
         (01)   1     ?     0     0                ?   :   1  :  1;
         (01)   1     1     0     0                ?   :   ?  :  1;

         (01)   ?     0     0     x                ?   :   0  :  0;
         (01)   0     ?     0     x                ?   :   0  :  0;
       //(01)   ?     0     0     x                ?   :   0  :  0;
       //(01)   0     ?     0     x                ?   :   0  :  0;
       //(01)   ?     ?     0     x                ?   :   ?  :  0;
         (01)   0     1     0     x                ?   :   ?  :  0;

         (01)   ?     0     x     0                ?   :   1  :  1;
         (01)   1     ?     x     0                ?   :   1  :  1;
       //(01)   ?     0     x     0                ?   :   1  :  1;
       //(01)   1     ?     x     0                ?   :   1  :  1;
       //(01)   ?     ?     x     0                ?   :   ?  :  1;
         (01)   1     1     x     0                ?   :   ?  :  1;

         (??)   ?     0     0     0                ?   :   ?  :  -;
         (?0)   ?     ?     0     0                ?   :   ?  :  -;
          ?    (??)   ?     ?     ?                ?   :   ?  :  -;
          ?     ?    (??)   ?     ?                ?   :   ?  :  -;
          ?     ?     ?    (?0)   ?                ?   :   ?  :  -;
          ?     ?     ?     ?    (?0)              ?   :   ?  :  -;
       // ?     ?     ?     ?     ?                ?   :   ?  :  -;
          ?     ?     ?     ?     ?                ?   :   ?  :  -;

          ?     ?     ?     ?     ?                *   :   ?  :  x;

  endtable

endprimitive

