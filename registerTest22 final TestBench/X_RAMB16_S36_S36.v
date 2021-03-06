//    Xilinx Proprietary Primitive Cell X_RAMB16_S36_S36 for Verilog
//
// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_RAMB16_S36_S36.v,v 1.5.138.3 2004/09/28 20:47:46 wloo Exp $
//

`celldefine
`timescale 1 ps/1 ps

module X_RAMB16_S36_S36 (DOA, DOB, DOPA, DOPB, ADDRA, ADDRB, CLKA, CLKB, DIA, DIB, DIPA, DIPB, ENA, ENB, SSRA, SSRB, WEA, WEB);

    parameter INIT_A = 36'h0;
    parameter INIT_B = 36'h0;
    parameter SRVAL_A = 36'h0;
    parameter SRVAL_B = 36'h0;
    parameter WRITE_MODE_A = "WRITE_FIRST";
    parameter WRITE_MODE_B = "WRITE_FIRST";
//    parameter SETUP_ALL = 10;
//    parameter SETUP_READ_FIRST = 30;

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
    parameter INIT_10 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_11 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_12 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_13 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_14 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_15 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_16 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_17 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_18 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_19 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_1F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_20 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_21 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_22 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_23 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_24 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_25 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_26 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_27 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_28 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_29 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_2F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_30 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_31 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_32 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_33 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_34 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_35 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_36 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_37 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_38 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_39 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3A = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3B = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3C = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3D = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3E = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INIT_3F = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_00 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_01 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_02 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_03 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_04 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_05 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_06 = 256'h0000000000000000000000000000000000000000000000000000000000000000;
    parameter INITP_07 = 256'h0000000000000000000000000000000000000000000000000000000000000000;

    output [31:0] DOA;
    output [3:0] DOPA;
    reg [31:0] DOA;
    reg [3:0] DOPA;

    input [8:0] ADDRA;
    input [31:0] DIA;
    input [3:0] DIPA;
    input ENA, CLKA, WEA, SSRA;

    output [31:0] DOB;
    output [3:0] DOPB;
    reg [31:0] DOB;
    reg [3:0] DOPB;

    input [8:0] ADDRB;
    input [31:0] DIB;
    input [3:0] DIPB;
    input ENB, CLKB, WEB, SSRB;


// synopsys translate_off
    reg [18431:0] mem;
    reg [8:0] count;
    reg [1:0] wr_mode_a, wr_mode_b;

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
	    mem[256 * 16 + count] <= INIT_10[count];
	    mem[256 * 17 + count] <= INIT_11[count];
	    mem[256 * 18 + count] <= INIT_12[count];
	    mem[256 * 19 + count] <= INIT_13[count];
	    mem[256 * 20 + count] <= INIT_14[count];
	    mem[256 * 21 + count] <= INIT_15[count];
	    mem[256 * 22 + count] <= INIT_16[count];
	    mem[256 * 23 + count] <= INIT_17[count];
	    mem[256 * 24 + count] <= INIT_18[count];
	    mem[256 * 25 + count] <= INIT_19[count];
	    mem[256 * 26 + count] <= INIT_1A[count];
	    mem[256 * 27 + count] <= INIT_1B[count];
	    mem[256 * 28 + count] <= INIT_1C[count];
	    mem[256 * 29 + count] <= INIT_1D[count];
	    mem[256 * 30 + count] <= INIT_1E[count];
	    mem[256 * 31 + count] <= INIT_1F[count];
	    mem[256 * 32 + count] <= INIT_20[count];
	    mem[256 * 33 + count] <= INIT_21[count];
	    mem[256 * 34 + count] <= INIT_22[count];
	    mem[256 * 35 + count] <= INIT_23[count];
	    mem[256 * 36 + count] <= INIT_24[count];
	    mem[256 * 37 + count] <= INIT_25[count];
	    mem[256 * 38 + count] <= INIT_26[count];
	    mem[256 * 39 + count] <= INIT_27[count];
	    mem[256 * 40 + count] <= INIT_28[count];
	    mem[256 * 41 + count] <= INIT_29[count];
	    mem[256 * 42 + count] <= INIT_2A[count];
	    mem[256 * 43 + count] <= INIT_2B[count];
	    mem[256 * 44 + count] <= INIT_2C[count];
	    mem[256 * 45 + count] <= INIT_2D[count];
	    mem[256 * 46 + count] <= INIT_2E[count];
	    mem[256 * 47 + count] <= INIT_2F[count];
	    mem[256 * 48 + count] <= INIT_30[count];
	    mem[256 * 49 + count] <= INIT_31[count];
	    mem[256 * 50 + count] <= INIT_32[count];
	    mem[256 * 51 + count] <= INIT_33[count];
	    mem[256 * 52 + count] <= INIT_34[count];
	    mem[256 * 53 + count] <= INIT_35[count];
	    mem[256 * 54 + count] <= INIT_36[count];
	    mem[256 * 55 + count] <= INIT_37[count];
	    mem[256 * 56 + count] <= INIT_38[count];
	    mem[256 * 57 + count] <= INIT_39[count];
	    mem[256 * 58 + count] <= INIT_3A[count];
	    mem[256 * 59 + count] <= INIT_3B[count];
	    mem[256 * 60 + count] <= INIT_3C[count];
	    mem[256 * 61 + count] <= INIT_3D[count];
	    mem[256 * 62 + count] <= INIT_3E[count];
	    mem[256 * 63 + count] <= INIT_3F[count];
	    mem[256 * 64 + count] <= INITP_00[count];
	    mem[256 * 65 + count] <= INITP_01[count];
	    mem[256 * 66 + count] <= INITP_02[count];
	    mem[256 * 67 + count] <= INITP_03[count];
	    mem[256 * 68 + count] <= INITP_04[count];
	    mem[256 * 69 + count] <= INITP_05[count];
	    mem[256 * 70 + count] <= INITP_06[count];
	    mem[256 * 71 + count] <= INITP_07[count];
	end
    end

    initial begin
	case (WRITE_MODE_A)
	    "WRITE_FIRST" : wr_mode_a <= 2'b00;
	    "READ_FIRST"  : wr_mode_a <= 2'b01;
	    "NO_CHANGE"   : wr_mode_a <= 2'b10;
	    default       : begin
				$display("Error : WRITE_MODE_A = %s is not WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_A);
				$finish;
			    end
	endcase
    end

    initial begin
	case (WRITE_MODE_B)
	    "WRITE_FIRST" : wr_mode_b <= 2'b00;
	    "READ_FIRST"  : wr_mode_b <= 2'b01;
	    "NO_CHANGE"   : wr_mode_b <= 2'b10;
	    default       : begin
				$display("Error : WRITE_MODE_B = %s is not WRITE_FIRST, READ_FIRST or NO_CHANGE.", WRITE_MODE_B);
				$finish;
			    end
	endcase
    end

    // Port A
    always @(posedge CLKA) begin
	if (ENA == 1'b1) begin
	    if (SSRA == 1'b1) begin
		DOA[0] <= SRVAL_A[0];
		DOA[1] <= SRVAL_A[1];
		DOA[2] <= SRVAL_A[2];
		DOA[3] <= SRVAL_A[3];
		DOA[4] <= SRVAL_A[4];
		DOA[5] <= SRVAL_A[5];
		DOA[6] <= SRVAL_A[6];
		DOA[7] <= SRVAL_A[7];
		DOA[8] <= SRVAL_A[8];
		DOA[9] <= SRVAL_A[9];
		DOA[10] <= SRVAL_A[10];
		DOA[11] <= SRVAL_A[11];
		DOA[12] <= SRVAL_A[12];
		DOA[13] <= SRVAL_A[13];
		DOA[14] <= SRVAL_A[14];
		DOA[15] <= SRVAL_A[15];
		DOA[16] <= SRVAL_A[16];
		DOA[17] <= SRVAL_A[17];
		DOA[18] <= SRVAL_A[18];
		DOA[19] <= SRVAL_A[19];
		DOA[20] <= SRVAL_A[20];
		DOA[21] <= SRVAL_A[21];
		DOA[22] <= SRVAL_A[22];
		DOA[23] <= SRVAL_A[23];
		DOA[24] <= SRVAL_A[24];
		DOA[25] <= SRVAL_A[25];
		DOA[26] <= SRVAL_A[26];
		DOA[27] <= SRVAL_A[27];
		DOA[28] <= SRVAL_A[28];
		DOA[29] <= SRVAL_A[29];
		DOA[30] <= SRVAL_A[30];
		DOA[31] <= SRVAL_A[31];
		DOPA[0] <= SRVAL_A[32];
		DOPA[1] <= SRVAL_A[33];
		DOPA[2] <= SRVAL_A[34];
		DOPA[3] <= SRVAL_A[35];
	    end
	    else begin
		if (WEA == 1'b1) begin
		    if (wr_mode_a == 2'b00) begin
			DOA[0] <= DIA[0];
			DOA[1] <= DIA[1];
			DOA[2] <= DIA[2];
			DOA[3] <= DIA[3];
			DOA[4] <= DIA[4];
			DOA[5] <= DIA[5];
			DOA[6] <= DIA[6];
			DOA[7] <= DIA[7];
			DOA[8] <= DIA[8];
			DOA[9] <= DIA[9];
			DOA[10] <= DIA[10];
			DOA[11] <= DIA[11];
			DOA[12] <= DIA[12];
			DOA[13] <= DIA[13];
			DOA[14] <= DIA[14];
			DOA[15] <= DIA[15];
			DOA[16] <= DIA[16];
			DOA[17] <= DIA[17];
			DOA[18] <= DIA[18];
			DOA[19] <= DIA[19];
			DOA[20] <= DIA[20];
			DOA[21] <= DIA[21];
			DOA[22] <= DIA[22];
			DOA[23] <= DIA[23];
			DOA[24] <= DIA[24];
			DOA[25] <= DIA[25];
			DOA[26] <= DIA[26];
			DOA[27] <= DIA[27];
			DOA[28] <= DIA[28];
			DOA[29] <= DIA[29];
			DOA[30] <= DIA[30];
			DOA[31] <= DIA[31];
			DOPA[0] <= DIPA[0];
			DOPA[1] <= DIPA[1];
			DOPA[2] <= DIPA[2];
			DOPA[3] <= DIPA[3];
		    end
		    else if (wr_mode_a == 2'b01) begin
			DOA[0] <= mem[ADDRA * 32 + 0];
			DOA[1] <= mem[ADDRA * 32 + 1];
			DOA[2] <= mem[ADDRA * 32 + 2];
			DOA[3] <= mem[ADDRA * 32 + 3];
			DOA[4] <= mem[ADDRA * 32 + 4];
			DOA[5] <= mem[ADDRA * 32 + 5];
			DOA[6] <= mem[ADDRA * 32 + 6];
			DOA[7] <= mem[ADDRA * 32 + 7];
			DOA[8] <= mem[ADDRA * 32 + 8];
			DOA[9] <= mem[ADDRA * 32 + 9];
			DOA[10] <= mem[ADDRA * 32 + 10];
			DOA[11] <= mem[ADDRA * 32 + 11];
			DOA[12] <= mem[ADDRA * 32 + 12];
			DOA[13] <= mem[ADDRA * 32 + 13];
			DOA[14] <= mem[ADDRA * 32 + 14];
			DOA[15] <= mem[ADDRA * 32 + 15];
			DOA[16] <= mem[ADDRA * 32 + 16];
			DOA[17] <= mem[ADDRA * 32 + 17];
			DOA[18] <= mem[ADDRA * 32 + 18];
			DOA[19] <= mem[ADDRA * 32 + 19];
			DOA[20] <= mem[ADDRA * 32 + 20];
			DOA[21] <= mem[ADDRA * 32 + 21];
			DOA[22] <= mem[ADDRA * 32 + 22];
			DOA[23] <= mem[ADDRA * 32 + 23];
			DOA[24] <= mem[ADDRA * 32 + 24];
			DOA[25] <= mem[ADDRA * 32 + 25];
			DOA[26] <= mem[ADDRA * 32 + 26];
			DOA[27] <= mem[ADDRA * 32 + 27];
			DOA[28] <= mem[ADDRA * 32 + 28];
			DOA[29] <= mem[ADDRA * 32 + 29];
			DOA[30] <= mem[ADDRA * 32 + 30];
			DOA[31] <= mem[ADDRA * 32 + 31];
			DOPA[0] <= mem[16384 + ADDRA * 4 + 0];
			DOPA[1] <= mem[16384 + ADDRA * 4 + 1];
			DOPA[2] <= mem[16384 + ADDRA * 4 + 2];
			DOPA[3] <= mem[16384 + ADDRA * 4 + 3];
		    end
		end
		else begin
		    DOA[0] <= mem[ADDRA * 32 + 0];
		    DOA[1] <= mem[ADDRA * 32 + 1];
		    DOA[2] <= mem[ADDRA * 32 + 2];
		    DOA[3] <= mem[ADDRA * 32 + 3];
		    DOA[4] <= mem[ADDRA * 32 + 4];
		    DOA[5] <= mem[ADDRA * 32 + 5];
		    DOA[6] <= mem[ADDRA * 32 + 6];
		    DOA[7] <= mem[ADDRA * 32 + 7];
		    DOA[8] <= mem[ADDRA * 32 + 8];
		    DOA[9] <= mem[ADDRA * 32 + 9];
		    DOA[10] <= mem[ADDRA * 32 + 10];
		    DOA[11] <= mem[ADDRA * 32 + 11];
		    DOA[12] <= mem[ADDRA * 32 + 12];
		    DOA[13] <= mem[ADDRA * 32 + 13];
		    DOA[14] <= mem[ADDRA * 32 + 14];
		    DOA[15] <= mem[ADDRA * 32 + 15];
		    DOA[16] <= mem[ADDRA * 32 + 16];
		    DOA[17] <= mem[ADDRA * 32 + 17];
		    DOA[18] <= mem[ADDRA * 32 + 18];
		    DOA[19] <= mem[ADDRA * 32 + 19];
		    DOA[20] <= mem[ADDRA * 32 + 20];
		    DOA[21] <= mem[ADDRA * 32 + 21];
		    DOA[22] <= mem[ADDRA * 32 + 22];
		    DOA[23] <= mem[ADDRA * 32 + 23];
		    DOA[24] <= mem[ADDRA * 32 + 24];
		    DOA[25] <= mem[ADDRA * 32 + 25];
		    DOA[26] <= mem[ADDRA * 32 + 26];
		    DOA[27] <= mem[ADDRA * 32 + 27];
		    DOA[28] <= mem[ADDRA * 32 + 28];
		    DOA[29] <= mem[ADDRA * 32 + 29];
		    DOA[30] <= mem[ADDRA * 32 + 30];
		    DOA[31] <= mem[ADDRA * 32 + 31];
		    DOPA[0] <= mem[16384 + ADDRA * 4 + 0];
		    DOPA[1] <= mem[16384 + ADDRA * 4 + 1];
		    DOPA[2] <= mem[16384 + ADDRA * 4 + 2];
		    DOPA[3] <= mem[16384 + ADDRA * 4 + 3];
		end
	    end
	end
    end

    always @(posedge CLKA) begin
	if (ENA == 1'b1 && WEA == 1'b1) begin
	    mem[ADDRA * 32 + 0] <= DIA[0];
	    mem[ADDRA * 32 + 1] <= DIA[1];
	    mem[ADDRA * 32 + 2] <= DIA[2];
	    mem[ADDRA * 32 + 3] <= DIA[3];
	    mem[ADDRA * 32 + 4] <= DIA[4];
	    mem[ADDRA * 32 + 5] <= DIA[5];
	    mem[ADDRA * 32 + 6] <= DIA[6];
	    mem[ADDRA * 32 + 7] <= DIA[7];
	    mem[ADDRA * 32 + 8] <= DIA[8];
	    mem[ADDRA * 32 + 9] <= DIA[9];
	    mem[ADDRA * 32 + 10] <= DIA[10];
	    mem[ADDRA * 32 + 11] <= DIA[11];
	    mem[ADDRA * 32 + 12] <= DIA[12];
	    mem[ADDRA * 32 + 13] <= DIA[13];
	    mem[ADDRA * 32 + 14] <= DIA[14];
	    mem[ADDRA * 32 + 15] <= DIA[15];
	    mem[ADDRA * 32 + 16] <= DIA[16];
	    mem[ADDRA * 32 + 17] <= DIA[17];
	    mem[ADDRA * 32 + 18] <= DIA[18];
	    mem[ADDRA * 32 + 19] <= DIA[19];
	    mem[ADDRA * 32 + 20] <= DIA[20];
	    mem[ADDRA * 32 + 21] <= DIA[21];
	    mem[ADDRA * 32 + 22] <= DIA[22];
	    mem[ADDRA * 32 + 23] <= DIA[23];
	    mem[ADDRA * 32 + 24] <= DIA[24];
	    mem[ADDRA * 32 + 25] <= DIA[25];
	    mem[ADDRA * 32 + 26] <= DIA[26];
	    mem[ADDRA * 32 + 27] <= DIA[27];
	    mem[ADDRA * 32 + 28] <= DIA[28];
	    mem[ADDRA * 32 + 29] <= DIA[29];
	    mem[ADDRA * 32 + 30] <= DIA[30];
	    mem[ADDRA * 32 + 31] <= DIA[31];
	    mem[16384 + ADDRA * 4 + 0] <= DIPA[0];
	    mem[16384 + ADDRA * 4 + 1] <= DIPA[1];
	    mem[16384 + ADDRA * 4 + 2] <= DIPA[2];
	    mem[16384 + ADDRA * 4 + 3] <= DIPA[3];
	end
    end

    // Port B
    always @(posedge CLKB) begin
	if (ENB == 1'b1) begin
	    if (SSRB == 1'b1) begin
		DOB[0] <= SRVAL_B[0];
		DOB[1] <= SRVAL_B[1];
		DOB[2] <= SRVAL_B[2];
		DOB[3] <= SRVAL_B[3];
		DOB[4] <= SRVAL_B[4];
		DOB[5] <= SRVAL_B[5];
		DOB[6] <= SRVAL_B[6];
		DOB[7] <= SRVAL_B[7];
		DOB[8] <= SRVAL_B[8];
		DOB[9] <= SRVAL_B[9];
		DOB[10] <= SRVAL_B[10];
		DOB[11] <= SRVAL_B[11];
		DOB[12] <= SRVAL_B[12];
		DOB[13] <= SRVAL_B[13];
		DOB[14] <= SRVAL_B[14];
		DOB[15] <= SRVAL_B[15];
		DOB[16] <= SRVAL_B[16];
		DOB[17] <= SRVAL_B[17];
		DOB[18] <= SRVAL_B[18];
		DOB[19] <= SRVAL_B[19];
		DOB[20] <= SRVAL_B[20];
		DOB[21] <= SRVAL_B[21];
		DOB[22] <= SRVAL_B[22];
		DOB[23] <= SRVAL_B[23];
		DOB[24] <= SRVAL_B[24];
		DOB[25] <= SRVAL_B[25];
		DOB[26] <= SRVAL_B[26];
		DOB[27] <= SRVAL_B[27];
		DOB[28] <= SRVAL_B[28];
		DOB[29] <= SRVAL_B[29];
		DOB[30] <= SRVAL_B[30];
		DOB[31] <= SRVAL_B[31];
		DOPB[0] <= SRVAL_B[32];
		DOPB[1] <= SRVAL_B[33];
		DOPB[2] <= SRVAL_B[34];
		DOPB[3] <= SRVAL_B[35];
	    end
	    else begin
		if (WEB == 1'b1) begin
		    if (wr_mode_b == 2'b00) begin
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
			DOB[16] <= DIB[16];
			DOB[17] <= DIB[17];
			DOB[18] <= DIB[18];
			DOB[19] <= DIB[19];
			DOB[20] <= DIB[20];
			DOB[21] <= DIB[21];
			DOB[22] <= DIB[22];
			DOB[23] <= DIB[23];
			DOB[24] <= DIB[24];
			DOB[25] <= DIB[25];
			DOB[26] <= DIB[26];
			DOB[27] <= DIB[27];
			DOB[28] <= DIB[28];
			DOB[29] <= DIB[29];
			DOB[30] <= DIB[30];
			DOB[31] <= DIB[31];
			DOPB[0] <= DIPB[0];
			DOPB[1] <= DIPB[1];
			DOPB[2] <= DIPB[2];
			DOPB[3] <= DIPB[3];
		    end
		    else if (wr_mode_b == 2'b01) begin
			DOB[0] <= mem[ADDRB * 32 + 0];
			DOB[1] <= mem[ADDRB * 32 + 1];
			DOB[2] <= mem[ADDRB * 32 + 2];
			DOB[3] <= mem[ADDRB * 32 + 3];
			DOB[4] <= mem[ADDRB * 32 + 4];
			DOB[5] <= mem[ADDRB * 32 + 5];
			DOB[6] <= mem[ADDRB * 32 + 6];
			DOB[7] <= mem[ADDRB * 32 + 7];
			DOB[8] <= mem[ADDRB * 32 + 8];
			DOB[9] <= mem[ADDRB * 32 + 9];
			DOB[10] <= mem[ADDRB * 32 + 10];
			DOB[11] <= mem[ADDRB * 32 + 11];
			DOB[12] <= mem[ADDRB * 32 + 12];
			DOB[13] <= mem[ADDRB * 32 + 13];
			DOB[14] <= mem[ADDRB * 32 + 14];
			DOB[15] <= mem[ADDRB * 32 + 15];
			DOB[16] <= mem[ADDRB * 32 + 16];
			DOB[17] <= mem[ADDRB * 32 + 17];
			DOB[18] <= mem[ADDRB * 32 + 18];
			DOB[19] <= mem[ADDRB * 32 + 19];
			DOB[20] <= mem[ADDRB * 32 + 20];
			DOB[21] <= mem[ADDRB * 32 + 21];
			DOB[22] <= mem[ADDRB * 32 + 22];
			DOB[23] <= mem[ADDRB * 32 + 23];
			DOB[24] <= mem[ADDRB * 32 + 24];
			DOB[25] <= mem[ADDRB * 32 + 25];
			DOB[26] <= mem[ADDRB * 32 + 26];
			DOB[27] <= mem[ADDRB * 32 + 27];
			DOB[28] <= mem[ADDRB * 32 + 28];
			DOB[29] <= mem[ADDRB * 32 + 29];
			DOB[30] <= mem[ADDRB * 32 + 30];
			DOB[31] <= mem[ADDRB * 32 + 31];
			DOPB[0] <= mem[16384 + ADDRB * 4 + 0];
			DOPB[1] <= mem[16384 + ADDRB * 4 + 1];
			DOPB[2] <= mem[16384 + ADDRB * 4 + 2];
			DOPB[3] <= mem[16384 + ADDRB * 4 + 3];
		    end
		end
		else begin
		    DOB[0] <= mem[ADDRB * 32 + 0];
		    DOB[1] <= mem[ADDRB * 32 + 1];
		    DOB[2] <= mem[ADDRB * 32 + 2];
		    DOB[3] <= mem[ADDRB * 32 + 3];
		    DOB[4] <= mem[ADDRB * 32 + 4];
		    DOB[5] <= mem[ADDRB * 32 + 5];
		    DOB[6] <= mem[ADDRB * 32 + 6];
		    DOB[7] <= mem[ADDRB * 32 + 7];
		    DOB[8] <= mem[ADDRB * 32 + 8];
		    DOB[9] <= mem[ADDRB * 32 + 9];
		    DOB[10] <= mem[ADDRB * 32 + 10];
		    DOB[11] <= mem[ADDRB * 32 + 11];
		    DOB[12] <= mem[ADDRB * 32 + 12];
		    DOB[13] <= mem[ADDRB * 32 + 13];
		    DOB[14] <= mem[ADDRB * 32 + 14];
		    DOB[15] <= mem[ADDRB * 32 + 15];
		    DOB[16] <= mem[ADDRB * 32 + 16];
		    DOB[17] <= mem[ADDRB * 32 + 17];
		    DOB[18] <= mem[ADDRB * 32 + 18];
		    DOB[19] <= mem[ADDRB * 32 + 19];
		    DOB[20] <= mem[ADDRB * 32 + 20];
		    DOB[21] <= mem[ADDRB * 32 + 21];
		    DOB[22] <= mem[ADDRB * 32 + 22];
		    DOB[23] <= mem[ADDRB * 32 + 23];
		    DOB[24] <= mem[ADDRB * 32 + 24];
		    DOB[25] <= mem[ADDRB * 32 + 25];
		    DOB[26] <= mem[ADDRB * 32 + 26];
		    DOB[27] <= mem[ADDRB * 32 + 27];
		    DOB[28] <= mem[ADDRB * 32 + 28];
		    DOB[29] <= mem[ADDRB * 32 + 29];
		    DOB[30] <= mem[ADDRB * 32 + 30];
		    DOB[31] <= mem[ADDRB * 32 + 31];
		    DOPB[0] <= mem[16384 + ADDRB * 4 + 0];
		    DOPB[1] <= mem[16384 + ADDRB * 4 + 1];
		    DOPB[2] <= mem[16384 + ADDRB * 4 + 2];
		    DOPB[3] <= mem[16384 + ADDRB * 4 + 3];
		end
	    end
	end
    end

    always @(posedge CLKB) begin
	if (ENB == 1'b1 && WEB == 1'b1) begin
	    mem[ADDRB * 32 + 0] <= DIB[0];
	    mem[ADDRB * 32 + 1] <= DIB[1];
	    mem[ADDRB * 32 + 2] <= DIB[2];
	    mem[ADDRB * 32 + 3] <= DIB[3];
	    mem[ADDRB * 32 + 4] <= DIB[4];
	    mem[ADDRB * 32 + 5] <= DIB[5];
	    mem[ADDRB * 32 + 6] <= DIB[6];
	    mem[ADDRB * 32 + 7] <= DIB[7];
	    mem[ADDRB * 32 + 8] <= DIB[8];
	    mem[ADDRB * 32 + 9] <= DIB[9];
	    mem[ADDRB * 32 + 10] <= DIB[10];
	    mem[ADDRB * 32 + 11] <= DIB[11];
	    mem[ADDRB * 32 + 12] <= DIB[12];
	    mem[ADDRB * 32 + 13] <= DIB[13];
	    mem[ADDRB * 32 + 14] <= DIB[14];
	    mem[ADDRB * 32 + 15] <= DIB[15];
	    mem[ADDRB * 32 + 16] <= DIB[16];
	    mem[ADDRB * 32 + 17] <= DIB[17];
	    mem[ADDRB * 32 + 18] <= DIB[18];
	    mem[ADDRB * 32 + 19] <= DIB[19];
	    mem[ADDRB * 32 + 20] <= DIB[20];
	    mem[ADDRB * 32 + 21] <= DIB[21];
	    mem[ADDRB * 32 + 22] <= DIB[22];
	    mem[ADDRB * 32 + 23] <= DIB[23];
	    mem[ADDRB * 32 + 24] <= DIB[24];
	    mem[ADDRB * 32 + 25] <= DIB[25];
	    mem[ADDRB * 32 + 26] <= DIB[26];
	    mem[ADDRB * 32 + 27] <= DIB[27];
	    mem[ADDRB * 32 + 28] <= DIB[28];
	    mem[ADDRB * 32 + 29] <= DIB[29];
	    mem[ADDRB * 32 + 30] <= DIB[30];
	    mem[ADDRB * 32 + 31] <= DIB[31];
	    mem[16384 + ADDRB * 4 + 0] <= DIPB[0];
	    mem[16384 + ADDRB * 4 + 1] <= DIPB[1];
	    mem[16384 + ADDRB * 4 + 2] <= DIPB[2];
	    mem[16384 + ADDRB * 4 + 3] <= DIPB[3];
	end
    end
// synopsys translate_on

endmodule
