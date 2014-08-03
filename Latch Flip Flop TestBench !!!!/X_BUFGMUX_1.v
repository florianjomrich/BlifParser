//	Xilinx Proprietary Primitive Cell X_BUFGMUX_1 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_BUFGMUX_1.v,v 1.2.198.3 2004/09/28 20:47:45 wloo Exp $

`timescale 1 ps/1 ps

module X_BUFGMUX_1 (O, I0, I1, S);

    output O;

    input  I0, I1, S;

    reg    O;
    
        always @(I0 or I1 or S) begin

            if (S)
                O <= I1;

            else
                O <= I0;

        end

endmodule
