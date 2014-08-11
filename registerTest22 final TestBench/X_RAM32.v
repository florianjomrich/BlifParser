//    Xilinx Proprietary Primitive Cell X_RAM32 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_RAM32.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_RAM32 (O, ADR0, ADR1, ADR2, ADR3, ADR4, I, WE);

  parameter INIT = 32'h00000000;

  output O;
  input I, WE, ADR0, ADR1, ADR2, ADR3, ADR4;

  reg [31:0] mem;
  wire vectored [4:0] addr;
  wire in, we, adr0, adr1, adr2, adr3, adr4;
  reg o_out;

  buf (in, I);
  buf (we, WE);
  buf (adr0, ADR0);
  buf (adr1, ADR1);
  buf (adr2, ADR2);
  buf (adr3, ADR3);
  buf (adr4, ADR4);

  buf (O, o_out);

  assign addr = {adr4, adr3, adr2, adr1, adr0};

// synopsys translate_off
  initial begin
    mem <= INIT;
  end
// synopsys translate_on

  always @(we or in or addr) begin
    if (we)
      mem[addr] <= in;
  end

  always @(mem or addr) begin
    o_out <= mem[addr];
  end

endmodule
