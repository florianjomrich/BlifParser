//    Xilinx Proprietary Primitive Cell X_RAMD16 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_RAMD16.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

//`celldefine
`timescale 1 ps/1 ps

module X_RAMD16 (O, CLK, I, RADR0, RADR1, RADR2, RADR3, WADR0, WADR1, WADR2, WADR3, WE);

  parameter INIT = 16'h0000;

  output O;
  input I, CLK, WE, WADR0, WADR1, WADR2, WADR3, RADR0, RADR1, RADR2, RADR3;

  reg [15:0] mem;
  wire [3:0] wadr;
  wire [3:0] radr;
  wire in, we, clk;
  reg o_out;

  buf b1 (in, I);
  buf b2 (clk, CLK);
  buf b3 (we ,WE);
  buf b4 (wadr[3],WADR3);
  buf b5 (wadr[2],WADR2);
  buf b6 (wadr[1],WADR1);
  buf b7 (wadr[0],WADR0);
  buf b8 (radr[3],RADR3);
  buf b9 (radr[2],RADR2);
  buf bA (radr[1],RADR1);
  buf bB (radr[0],RADR0);
  buf bC (O, o_out);

// synopsys translate_off
  initial begin
    mem <= INIT;
  end
// synopsys translate_on

  always @(posedge clk) begin
    if (we == 1'b1)
      mem[wadr] <= in;
  end

  always @(mem or radr) begin
    o_out <= mem[radr];
  end

endmodule
