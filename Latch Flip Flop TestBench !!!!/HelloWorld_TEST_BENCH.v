`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \bertaClock.PAD.PAD ;
reg \global_reset.PAD.PAD ;
reg \x25.PAD.PAD ;
reg \x24.PAD.PAD ;
reg \x23.PAD.PAD ;

// Outputs 
wire \u38ah_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z4re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z2re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z0re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \u39ah_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z5re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \u34fe_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z50al_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z51al_FINAL_OUTPUT.OUTBUF.OUT ;
wire \n44_FINAL_OUTPUT.OUTBUF.OUT ;
wire \u37ah_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z3re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z1re_FINAL_OUTPUT.OUTBUF.OUT ;
wire \u35fe_FINAL_OUTPUT.OUTBUF.OUT ;
wire \u36fe_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\bertaClock.PAD.PAD (\bertaClock.PAD.PAD ),
.\global_reset.PAD.PAD (\global_reset.PAD.PAD ),
.\x25.PAD.PAD (\x25.PAD.PAD ),
.\x24.PAD.PAD (\x24.PAD.PAD ),
.\x23.PAD.PAD (\x23.PAD.PAD ),
.\u38ah_FINAL_OUTPUT.OUTBUF.OUT (\u38ah_FINAL_OUTPUT.OUTBUF.OUT ),
.\z4re_FINAL_OUTPUT.OUTBUF.OUT (\z4re_FINAL_OUTPUT.OUTBUF.OUT ),
.\z2re_FINAL_OUTPUT.OUTBUF.OUT (\z2re_FINAL_OUTPUT.OUTBUF.OUT ),
.\z0re_FINAL_OUTPUT.OUTBUF.OUT (\z0re_FINAL_OUTPUT.OUTBUF.OUT ),
.\u39ah_FINAL_OUTPUT.OUTBUF.OUT (\u39ah_FINAL_OUTPUT.OUTBUF.OUT ),
.\z5re_FINAL_OUTPUT.OUTBUF.OUT (\z5re_FINAL_OUTPUT.OUTBUF.OUT ),
.\u34fe_FINAL_OUTPUT.OUTBUF.OUT (\u34fe_FINAL_OUTPUT.OUTBUF.OUT ),
.\z50al_FINAL_OUTPUT.OUTBUF.OUT (\z50al_FINAL_OUTPUT.OUTBUF.OUT ),
.\z51al_FINAL_OUTPUT.OUTBUF.OUT (\z51al_FINAL_OUTPUT.OUTBUF.OUT ),
.\n44_FINAL_OUTPUT.OUTBUF.OUT (\n44_FINAL_OUTPUT.OUTBUF.OUT ),
.\u37ah_FINAL_OUTPUT.OUTBUF.OUT (\u37ah_FINAL_OUTPUT.OUTBUF.OUT ),
.\z3re_FINAL_OUTPUT.OUTBUF.OUT (\z3re_FINAL_OUTPUT.OUTBUF.OUT ),
.\z1re_FINAL_OUTPUT.OUTBUF.OUT (\z1re_FINAL_OUTPUT.OUTBUF.OUT ),
.\u35fe_FINAL_OUTPUT.OUTBUF.OUT (\u35fe_FINAL_OUTPUT.OUTBUF.OUT ),
.\u36fe_FINAL_OUTPUT.OUTBUF.OUT (\u36fe_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\bertaClock.PAD.PAD  = 0;
\global_reset.PAD.PAD  = 0;
\x25.PAD.PAD  = 0;
\x24.PAD.PAD  = 0;
\x23.PAD.PAD  = 0;

#25;
\global_reset.PAD.PAD  = 1;


#10;
\global_reset.PAD.PAD  = 0;
// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here
	\x23.PAD.PAD  = 1;

end

always begin
#50  \bertaClock.PAD.PAD  = ~\bertaClock.PAD.PAD ;
end

endmodule