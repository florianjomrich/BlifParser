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
