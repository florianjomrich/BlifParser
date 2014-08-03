`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \b.PAD.PAD ;
reg \a.PAD.PAD ;

// Outputs 
wire \out_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\b.PAD.PAD (\b.PAD.PAD ),
.\a.PAD.PAD (\a.PAD.PAD ),
.\out_FINAL_OUTPUT.OUTBUF.OUT (\out_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\b.PAD.PAD  = 0;
\a.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule