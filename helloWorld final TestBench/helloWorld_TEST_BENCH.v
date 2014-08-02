`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \bertaClock.PAD.PAD ;
reg \global_reset.PAD.PAD ;
reg \x25.PAD.PAD ;
reg \x24.PAD.PAD ;
reg \x23.PAD.PAD ;

// Outputs 
wire \z5_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z0_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z2_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z4_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z1_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z3_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\bertaClock.PAD.PAD (\bertaClock.PAD.PAD ),
.\global_reset.PAD.PAD (\global_reset.PAD.PAD ),
.\x25.PAD.PAD (\x25.PAD.PAD ),
.\x24.PAD.PAD (\x24.PAD.PAD ),
.\x23.PAD.PAD (\x23.PAD.PAD ),
.\z5_FINAL_OUTPUT.OUTBUF.OUT (\z5_FINAL_OUTPUT.OUTBUF.OUT ),
.\z0_FINAL_OUTPUT.OUTBUF.OUT (\z0_FINAL_OUTPUT.OUTBUF.OUT ),
.\z2_FINAL_OUTPUT.OUTBUF.OUT (\z2_FINAL_OUTPUT.OUTBUF.OUT ),
.\z4_FINAL_OUTPUT.OUTBUF.OUT (\z4_FINAL_OUTPUT.OUTBUF.OUT ),
.\z1_FINAL_OUTPUT.OUTBUF.OUT (\z1_FINAL_OUTPUT.OUTBUF.OUT ),
.\z3_FINAL_OUTPUT.OUTBUF.OUT (\z3_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\bertaClock.PAD.PAD  = 0;
\global_reset.PAD.PAD  = 0;
\x25.PAD.PAD  = 0;
\x24.PAD.PAD  = 0;
\x23.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule