//    Xilinx Proprietary Primitive Cell X_RAMB4_S4_S16 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_RAMB4_S4_S16.v,v 1.3.198.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_RAMB4_S4_S16 (DOA, DOB, ADDRA, ADDRB, CLKA, CLKB, DIA, DIB, ENA, ENB, RSTA, RSTB, WEA, WEB);

    parameter INIT_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_08 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_09 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_0F = 256'h0000000000000000000000000000000000000000000000000000000000000000;

    output [3:0] DOA;
    reg [3:0] DOA;

    input [9:0] ADDRA;
    input [3:0] DIA;
    input ENA, CLKA, WEA, RSTA;

    output [15:0] DOB;
    reg [15:0] DOB;

    input [7:0] ADDRB;
    input [15:0] DIB;
    input ENB, CLKB, WEB, RSTB;


// synopsys translate_off
    reg [4095:0] mem;
    reg [8:0] count;

    initial begin
	for (count = 0; count < 256; count = count + 1) begin
	    mem[count]		  <= INIT_00[count];
	    mem[256 * 1 + count]  <= INIT_01[count];
	    mem[256 * 2 + count]  <= INIT_02[count];
	    mem[256 * 3 + count]  <= INIT_03[count];
	    mem[256 * 4 + count]  <= INIT_04[count];
	    mem[256 * 5 + count]  <= INIT_05[count];
	    mem[256 * 6 + count]  <= INIT_06[count];
	    mem[256 * 7 + count]  <= INIT_07[count];
	    mem[256 * 8 + count]  <= INIT_08[count];
	    mem[256 * 9 + count]  <= INIT_09[count];
	    mem[256 * 10 + count] <= INIT_0A[count];
	    mem[256 * 11 + count] <= INIT_0B[count];
	    mem[256 * 12 + count] <= INIT_0C[count];
	    mem[256 * 13 + count] <= INIT_0D[count];
	    mem[256 * 14 + count] <= INIT_0E[count];
	    mem[256 * 15 + count] <= INIT_0F[count];
	end
    end

    always @(posedge CLKA) begin
	if (ENA == 1'b1) begin
	    if (RSTA == 1'b1) begin
		DOA[0] <= 0;
		DOA[1] <= 0;
		DOA[2] <= 0;
		DOA[3] <= 0;
	    end
	    else if (WEA == 0) begin
		DOA[0] <= mem[ADDRA * 4 + 0];
		DOA[1] <= mem[ADDRA * 4 + 1];
		DOA[2] <= mem[ADDRA * 4 + 2];
		DOA[3] <= mem[ADDRA * 4 + 3];
	    end
	    else begin
		DOA[0] <= DIA[0];
		DOA[1] <= DIA[1];
		DOA[2] <= DIA[2];
		DOA[3] <= DIA[3];
	    end
	end
    end

    always @(posedge CLKA) begin
	if (ENA == 1'b1 && WEA == 1'b1) begin
	    mem[ADDRA * 4 + 0] <= DIA[0];
	    mem[ADDRA * 4 + 1] <= DIA[1];
	    mem[ADDRA * 4 + 2] <= DIA[2];
	    mem[ADDRA * 4 + 3] <= DIA[3];
	end
    end

    always @(posedge CLKB) begin
	if (ENB == 1'b1) begin
	    if (RSTB == 1'b1) begin
		DOB[0] <= 0;
		DOB[1] <= 0;
		DOB[2] <= 0;
		DOB[3] <= 0;
		DOB[4] <= 0;
		DOB[5] <= 0;
		DOB[6] <= 0;
		DOB[7] <= 0;
		DOB[8] <= 0;
		DOB[9] <= 0;
		DOB[10] <= 0;
		DOB[11] <= 0;
		DOB[12] <= 0;
		DOB[13] <= 0;
		DOB[14] <= 0;
		DOB[15] <= 0;
	    end
	    else if (WEB == 0) begin
		DOB[0] <= mem[ADDRB * 16 + 0];
		DOB[1] <= mem[ADDRB * 16 + 1];
		DOB[2] <= mem[ADDRB * 16 + 2];
		DOB[3] <= mem[ADDRB * 16 + 3];
		DOB[4] <= mem[ADDRB * 16 + 4];
		DOB[5] <= mem[ADDRB * 16 + 5];
		DOB[6] <= mem[ADDRB * 16 + 6];
		DOB[7] <= mem[ADDRB * 16 + 7];
		DOB[8] <= mem[ADDRB * 16 + 8];
		DOB[9] <= mem[ADDRB * 16 + 9];
		DOB[10] <= mem[ADDRB * 16 + 10];
		DOB[11] <= mem[ADDRB * 16 + 11];
		DOB[12] <= mem[ADDRB * 16 + 12];
		DOB[13] <= mem[ADDRB * 16 + 13];
		DOB[14] <= mem[ADDRB * 16 + 14];
		DOB[15] <= mem[ADDRB * 16 + 15];
	    end
	    else begin
		DOB[0] <= DIB[0];
		DOB[1] <= DIB[1];
		DOB[2] <= DIB[2];
		DOB[3] <= DIB[3];
		DOB[4] <= DIB[4];
		DOB[5] <= DIB[5];
		DOB[6] <= DIB[6];
		DOB[7] <= DIB[7];
		DOB[8] <= DIB[8];
		DOB[9] <= DIB[9];
		DOB[10] <= DIB[10];
		DOB[11] <= DIB[11];
		DOB[12] <= DIB[12];
		DOB[13] <= DIB[13];
		DOB[14] <= DIB[14];
		DOB[15] <= DIB[15];
	    end
	end
    end

    always @(posedge CLKB) begin
	if (ENB == 1'b1 && WEB == 1'b1) begin
	    mem[ADDRB * 16 + 0] <= DIB[0];
	    mem[ADDRB * 16 + 1] <= DIB[1];
	    mem[ADDRB * 16 + 2] <= DIB[2];
	    mem[ADDRB * 16 + 3] <= DIB[3];
	    mem[ADDRB * 16 + 4] <= DIB[4];
	    mem[ADDRB * 16 + 5] <= DIB[5];
	    mem[ADDRB * 16 + 6] <= DIB[6];
	    mem[ADDRB * 16 + 7] <= DIB[7];
	    mem[ADDRB * 16 + 8] <= DIB[8];
	    mem[ADDRB * 16 + 9] <= DIB[9];
	    mem[ADDRB * 16 + 10] <= DIB[10];
	    mem[ADDRB * 16 + 11] <= DIB[11];
	    mem[ADDRB * 16 + 12] <= DIB[12];
	    mem[ADDRB * 16 + 13] <= DIB[13];
	    mem[ADDRB * 16 + 14] <= DIB[14];
	    mem[ADDRB * 16 + 15] <= DIB[15];
	end
    end
// synopsys translate_on

endmodule
