`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \in1.PAD.PAD ;
reg \newCLK.PAD.PAD ;
reg \global_reset.PAD.PAD ;

// Outputs 
wire \out1_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
helloWorld uut (
.\in1.PAD.PAD (\in1.PAD.PAD ),
.\newCLK.PAD.PAD (\newCLK.PAD.PAD ),
.\global_reset.PAD.PAD (\global_reset.PAD.PAD ),
.\out1_FINAL_OUTPUT.OUTBUF.OUT (\out1_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\in1.PAD.PAD  = 0;
\newCLK.PAD.PAD  = 0;
\global_reset.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#125; \in1.PAD.PAD  = 1;
	// Add stimulus here
	
end

always begin
#50;
\newCLK.PAD.PAD   = ~ \newCLK.PAD.PAD  ;
end

endmodule