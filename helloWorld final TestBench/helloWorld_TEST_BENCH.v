`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \in2.PAD.PAD ;
reg \in1.PAD.PAD ;
reg \in4.PAD.PAD ;
reg \in3.PAD.PAD ;
reg \my_clk.PAD.PAD ;
reg \global_reset.PAD.PAD ;
reg \in5.PAD.PAD ;
reg \in6.PAD.PAD ;

// Outputs 
wire \out6_FINAL_OUTPUT.OUTBUF.OUT ;
wire \out1_FINAL_OUTPUT.OUTBUF.OUT ;
wire \out5_FINAL_OUTPUT.OUTBUF.OUT ;
wire \out2_FINAL_OUTPUT.OUTBUF.OUT ;
wire \out3_FINAL_OUTPUT.OUTBUF.OUT ;
wire \out4_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
HelloWorld uut (
.\in2.PAD.PAD (\in2.PAD.PAD ),
.\in1.PAD.PAD (\in1.PAD.PAD ),
.\in4.PAD.PAD (\in4.PAD.PAD ),
.\in3.PAD.PAD (\in3.PAD.PAD ),
.\my_clk.PAD.PAD (\my_clk.PAD.PAD ),
.\global_reset.PAD.PAD (\global_reset.PAD.PAD ),
.\in5.PAD.PAD (\in5.PAD.PAD ),
.\in6.PAD.PAD (\in6.PAD.PAD ),
.\out6_FINAL_OUTPUT.OUTBUF.OUT (\out6_FINAL_OUTPUT.OUTBUF.OUT ),
.\out1_FINAL_OUTPUT.OUTBUF.OUT (\out1_FINAL_OUTPUT.OUTBUF.OUT ),
.\out5_FINAL_OUTPUT.OUTBUF.OUT (\out5_FINAL_OUTPUT.OUTBUF.OUT ),
.\out2_FINAL_OUTPUT.OUTBUF.OUT (\out2_FINAL_OUTPUT.OUTBUF.OUT ),
.\out3_FINAL_OUTPUT.OUTBUF.OUT (\out3_FINAL_OUTPUT.OUTBUF.OUT ),
.\out4_FINAL_OUTPUT.OUTBUF.OUT (\out4_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\in2.PAD.PAD  = 0;
\in1.PAD.PAD  = 0;
\in4.PAD.PAD  = 0;
\in3.PAD.PAD  = 0;
\my_clk.PAD.PAD  = 0;
\global_reset.PAD.PAD  = 0;
\in5.PAD.PAD  = 0;
\in6.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule