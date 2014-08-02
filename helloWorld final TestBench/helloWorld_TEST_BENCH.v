`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \A2.PAD.PAD ;
reg \A1.PAD.PAD ;
reg \B3.PAD.PAD ;
reg \A3.PAD.PAD ;
reg \B2.PAD.PAD ;
reg \CIN.PAD.PAD ;
reg \B0.PAD.PAD ;
reg \B1.PAD.PAD ;
reg \A0.PAD.PAD ;

// Outputs 
wire \S1_FINAL_OUTPUT.OUTBUF.OUT ;
wire \S2_FINAL_OUTPUT.OUTBUF.OUT ;
wire \S3_FINAL_OUTPUT.OUTBUF.OUT ;
wire \S0_FINAL_OUTPUT.OUTBUF.OUT ;
wire \COUT_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\A2.PAD.PAD (\A2.PAD.PAD ),
.\A1.PAD.PAD (\A1.PAD.PAD ),
.\B3.PAD.PAD (\B3.PAD.PAD ),
.\A3.PAD.PAD (\A3.PAD.PAD ),
.\B2.PAD.PAD (\B2.PAD.PAD ),
.\CIN.PAD.PAD (\CIN.PAD.PAD ),
.\B0.PAD.PAD (\B0.PAD.PAD ),
.\B1.PAD.PAD (\B1.PAD.PAD ),
.\A0.PAD.PAD (\A0.PAD.PAD ),
.\S1_FINAL_OUTPUT.OUTBUF.OUT (\S1_FINAL_OUTPUT.OUTBUF.OUT ),
.\S2_FINAL_OUTPUT.OUTBUF.OUT (\S2_FINAL_OUTPUT.OUTBUF.OUT ),
.\S3_FINAL_OUTPUT.OUTBUF.OUT (\S3_FINAL_OUTPUT.OUTBUF.OUT ),
.\S0_FINAL_OUTPUT.OUTBUF.OUT (\S0_FINAL_OUTPUT.OUTBUF.OUT ),
.\COUT_FINAL_OUTPUT.OUTBUF.OUT (\COUT_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\A2.PAD.PAD  = 0;
\A1.PAD.PAD  = 0;
\B3.PAD.PAD  = 0;
\A3.PAD.PAD  = 0;
\B2.PAD.PAD  = 0;
\CIN.PAD.PAD  = 0;
\B0.PAD.PAD  = 0;
\B1.PAD.PAD  = 0;
\A0.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule