`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \my_clk.PAD.PAD ;
reg \global_reset.PAD.PAD ;
reg \x23.PAD.PAD ;

// Outputs 
wire \z0_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\my_clk.PAD.PAD (\my_clk.PAD.PAD ),
.\global_reset.PAD.PAD (\global_reset.PAD.PAD ),
.\x23.PAD.PAD (\x23.PAD.PAD ),
.\z0_FINAL_OUTPUT.OUTBUF.OUT (\z0_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\my_clk.PAD.PAD  = 0;
\global_reset.PAD.PAD  = 0;
\x23.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule