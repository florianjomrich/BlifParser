//    Xilinx Proprietary Primitive Cell X_CLKDLLE for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_CLKDLLE.v,v 1.8.128.3 2004/09/28 20:47:45 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_CLKDLLE (CLK0, CLK180, CLK270, CLK2X, CLK2X180, CLK90, CLKDV,
                LOCKED,
                CLKFB, CLKIN, RST);

parameter CLKDV_DIVIDE = 2.0;
parameter DUTY_CYCLE_CORRECTION = "TRUE";
parameter FACTORY_JF = 16'hC080;		// non-simulatable
parameter STARTUP_WAIT = "FALSE";		// non-simulatable

input  CLKIN, CLKFB, RST;
output CLK0, CLK90, CLK180, CLK270, CLK2X, CLK2X180, CLKDV;
output LOCKED;

endmodule
