`timescale 1ns / 1ps 
 
module TEST; 
 
// Inputs 
reg \x08.PAD.PAD ;
reg \x09.PAD.PAD ;
reg \x10.PAD.PAD ;
reg \x16.PAD.PAD ;
reg \x15.PAD.PAD ;
reg \x18.PAD.PAD ;
reg \x17.PAD.PAD ;
reg \x12.PAD.PAD ;
reg \x11.PAD.PAD ;
reg \x14.PAD.PAD ;
reg \x13.PAD.PAD ;
reg \x19.PAD.PAD ;
reg \x21.PAD.PAD ;
reg \x20.PAD.PAD ;
reg \x29.PAD.PAD ;
reg \x28.PAD.PAD ;
reg \x27.PAD.PAD ;
reg \x26.PAD.PAD ;
reg \x25.PAD.PAD ;
reg \x24.PAD.PAD ;
reg \x23.PAD.PAD ;
reg \x22.PAD.PAD ;
reg \x30.PAD.PAD ;
reg \x32.PAD.PAD ;
reg \x31.PAD.PAD ;
reg \x34.PAD.PAD ;
reg \x33.PAD.PAD ;
reg \x36.PAD.PAD ;
reg \x35.PAD.PAD ;
reg \x38.PAD.PAD ;
reg \x37.PAD.PAD ;
reg \my_clk.PAD.PAD ;
reg \x02.PAD.PAD ;
reg \x03.PAD.PAD ;
reg \x00.PAD.PAD ;
reg \x01.PAD.PAD ;
reg \x06.PAD.PAD ;
reg \x07.PAD.PAD ;
reg \x04.PAD.PAD ;
reg \x05.PAD.PAD ;

// Outputs 
wire \z0_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z2_FINAL_OUTPUT.OUTBUF.OUT ;
wire \z1_FINAL_OUTPUT.OUTBUF.OUT ;
 
// Instantiate the Unit Under Test (UUT) 
 
helloWorld uut (
.\x08.PAD.PAD (\x08.PAD.PAD ),
.\x09.PAD.PAD (\x09.PAD.PAD ),
.\x10.PAD.PAD (\x10.PAD.PAD ),
.\x16.PAD.PAD (\x16.PAD.PAD ),
.\x15.PAD.PAD (\x15.PAD.PAD ),
.\x18.PAD.PAD (\x18.PAD.PAD ),
.\x17.PAD.PAD (\x17.PAD.PAD ),
.\x12.PAD.PAD (\x12.PAD.PAD ),
.\x11.PAD.PAD (\x11.PAD.PAD ),
.\x14.PAD.PAD (\x14.PAD.PAD ),
.\x13.PAD.PAD (\x13.PAD.PAD ),
.\x19.PAD.PAD (\x19.PAD.PAD ),
.\x21.PAD.PAD (\x21.PAD.PAD ),
.\x20.PAD.PAD (\x20.PAD.PAD ),
.\x29.PAD.PAD (\x29.PAD.PAD ),
.\x28.PAD.PAD (\x28.PAD.PAD ),
.\x27.PAD.PAD (\x27.PAD.PAD ),
.\x26.PAD.PAD (\x26.PAD.PAD ),
.\x25.PAD.PAD (\x25.PAD.PAD ),
.\x24.PAD.PAD (\x24.PAD.PAD ),
.\x23.PAD.PAD (\x23.PAD.PAD ),
.\x22.PAD.PAD (\x22.PAD.PAD ),
.\x30.PAD.PAD (\x30.PAD.PAD ),
.\x32.PAD.PAD (\x32.PAD.PAD ),
.\x31.PAD.PAD (\x31.PAD.PAD ),
.\x34.PAD.PAD (\x34.PAD.PAD ),
.\x33.PAD.PAD (\x33.PAD.PAD ),
.\x36.PAD.PAD (\x36.PAD.PAD ),
.\x35.PAD.PAD (\x35.PAD.PAD ),
.\x38.PAD.PAD (\x38.PAD.PAD ),
.\x37.PAD.PAD (\x37.PAD.PAD ),
.\my_clk.PAD.PAD (\my_clk.PAD.PAD ),
.\x02.PAD.PAD (\x02.PAD.PAD ),
.\x03.PAD.PAD (\x03.PAD.PAD ),
.\x00.PAD.PAD (\x00.PAD.PAD ),
.\x01.PAD.PAD (\x01.PAD.PAD ),
.\x06.PAD.PAD (\x06.PAD.PAD ),
.\x07.PAD.PAD (\x07.PAD.PAD ),
.\x04.PAD.PAD (\x04.PAD.PAD ),
.\x05.PAD.PAD (\x05.PAD.PAD ),
.\z0_FINAL_OUTPUT.OUTBUF.OUT (\z0_FINAL_OUTPUT.OUTBUF.OUT ),
.\z2_FINAL_OUTPUT.OUTBUF.OUT (\z2_FINAL_OUTPUT.OUTBUF.OUT ),
.\z1_FINAL_OUTPUT.OUTBUF.OUT (\z1_FINAL_OUTPUT.OUTBUF.OUT )
);

initial begin
// Initialize Inputs
\x08.PAD.PAD  = 0;
\x09.PAD.PAD  = 0;
\x10.PAD.PAD  = 0;
\x16.PAD.PAD  = 0;
\x15.PAD.PAD  = 0;
\x18.PAD.PAD  = 0;
\x17.PAD.PAD  = 0;
\x12.PAD.PAD  = 0;
\x11.PAD.PAD  = 0;
\x14.PAD.PAD  = 0;
\x13.PAD.PAD  = 0;
\x19.PAD.PAD  = 0;
\x21.PAD.PAD  = 0;
\x20.PAD.PAD  = 0;
\x29.PAD.PAD  = 0;
\x28.PAD.PAD  = 0;
\x27.PAD.PAD  = 0;
\x26.PAD.PAD  = 0;
\x25.PAD.PAD  = 0;
\x24.PAD.PAD  = 0;
\x23.PAD.PAD  = 0;
\x22.PAD.PAD  = 0;
\x30.PAD.PAD  = 0;
\x32.PAD.PAD  = 0;
\x31.PAD.PAD  = 0;
\x34.PAD.PAD  = 0;
\x33.PAD.PAD  = 0;
\x36.PAD.PAD  = 0;
\x35.PAD.PAD  = 0;
\x38.PAD.PAD  = 0;
\x37.PAD.PAD  = 0;
\my_clk.PAD.PAD  = 0;
\x02.PAD.PAD  = 0;
\x03.PAD.PAD  = 0;
\x00.PAD.PAD  = 0;
\x01.PAD.PAD  = 0;
\x06.PAD.PAD  = 0;
\x07.PAD.PAD  = 0;
\x04.PAD.PAD  = 0;
\x05.PAD.PAD  = 0;


// Wait 100 ns for global reset to finish
	#100;

	// Add stimulus here

end

endmodule