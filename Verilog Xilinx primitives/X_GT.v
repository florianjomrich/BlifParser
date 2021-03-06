// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/X_GT.v,v 1.10.122.3 2004/09/28 20:47:45 wloo Exp $
//**************************************************************
//  Copyright (c) 2002 Xilinx Inc.  All Rights Reserved
//  File Name    : X_GT.v
//  Module Name  : X_GT
//  Function     : Gigabit Transceiver
//  Site         : GT
//  Spec Version : 1.2
//  Generated by : write_verilog
//**************************************************************

`timescale 1 ps / 1 ps 

module X_GT (
	CHBONDDONE,
	CHBONDO,
	CONFIGOUT,
	RXBUFSTATUS,
	RXCHARISCOMMA,
	RXCHARISK,
	RXCHECKINGCRC,
	RXCLKCORCNT,
	RXCOMMADET,
	RXCRCERR,
	RXDATA,
	RXDISPERR,
	RXLOSSOFSYNC,
	RXNOTINTABLE,
	RXREALIGN,
	RXRECCLK,
	RXRUNDISP,
	TXBUFERR,
	TXKERR,
	TXN,
	TXP,
	TXRUNDISP,

	BREFCLK,
	BREFCLK2,
	CHBONDI,
	CONFIGENABLE,
	CONFIGIN,
	ENCHANSYNC,
	ENMCOMMAALIGN,
	ENPCOMMAALIGN,
	LOOPBACK,
	POWERDOWN,
	REFCLK,
	REFCLK2,
	REFCLKSEL,
	RXN,
	RXP,
	RXPOLARITY,
	RXRESET,
	RXUSRCLK,
	RXUSRCLK2,
	TXBYPASS8B10B,
	TXCHARDISPMODE,
	TXCHARDISPVAL,
	TXCHARISK,
	TXDATA,
	TXFORCECRCERR,
	TXINHIBIT,
	TXPOLARITY,
	TXRESET,
	TXUSRCLK,
	TXUSRCLK2
);

parameter ALIGN_COMMA_MSB = "FALSE";
parameter CHAN_BOND_LIMIT = 16;
parameter CHAN_BOND_MODE = "OFF";
parameter CHAN_BOND_OFFSET = 8;
parameter CHAN_BOND_ONE_SHOT = "FALSE";
parameter CHAN_BOND_SEQ_1_1 = 11'b00000000000;
parameter CHAN_BOND_SEQ_1_2 = 11'b00000000000;
parameter CHAN_BOND_SEQ_1_3 = 11'b00000000000;
parameter CHAN_BOND_SEQ_1_4 = 11'b00000000000;
parameter CHAN_BOND_SEQ_2_1 = 11'b00000000000;
parameter CHAN_BOND_SEQ_2_2 = 11'b00000000000;
parameter CHAN_BOND_SEQ_2_3 = 11'b00000000000;
parameter CHAN_BOND_SEQ_2_4 = 11'b00000000000;
parameter CHAN_BOND_SEQ_2_USE = "FALSE";
parameter CHAN_BOND_SEQ_LEN = 1;
parameter CHAN_BOND_WAIT = 8;
parameter CLK_COR_INSERT_IDLE_FLAG = "FALSE";
parameter CLK_COR_KEEP_IDLE = "FALSE";
parameter CLK_COR_REPEAT_WAIT = 1;
parameter CLK_COR_SEQ_1_1 = 11'b00000000000;
parameter CLK_COR_SEQ_1_2 = 11'b00000000000;
parameter CLK_COR_SEQ_1_3 = 11'b00000000000;
parameter CLK_COR_SEQ_1_4 = 11'b00000000000;
parameter CLK_COR_SEQ_2_1 = 11'b00000000000;
parameter CLK_COR_SEQ_2_2 = 11'b00000000000;
parameter CLK_COR_SEQ_2_3 = 11'b00000000000;
parameter CLK_COR_SEQ_2_4 = 11'b00000000000;
parameter CLK_COR_SEQ_2_USE = "FALSE";
parameter CLK_COR_SEQ_LEN = 1;
parameter CLK_CORRECT_USE = "TRUE";
parameter COMMA_10B_MASK = 10'b1111111000;
parameter CRC_END_OF_PKT = "K29_7";
parameter CRC_FORMAT = "USER_MODE";
parameter CRC_START_OF_PKT = "K27_7";
parameter DEC_MCOMMA_DETECT = "TRUE";
parameter DEC_PCOMMA_DETECT = "TRUE";
parameter DEC_VALID_COMMA_ONLY = "TRUE";
parameter MCOMMA_10B_VALUE = 10'b1100000000;
parameter MCOMMA_DETECT = "TRUE";
parameter PCOMMA_10B_VALUE = 10'b0011111000;
parameter PCOMMA_DETECT = "TRUE";
parameter REF_CLK_V_SEL = 0;
parameter RX_BUFFER_USE = "TRUE";
parameter RX_CRC_USE = "FALSE";
parameter RX_DATA_WIDTH = 2;
parameter RX_DECODE_USE = "TRUE";
parameter RX_LOS_INVALID_INCR = 1;
parameter RX_LOS_THRESHOLD = 4;
parameter RX_LOSS_OF_SYNC_FSM = "TRUE";
parameter SERDES_10B = "FALSE";
parameter TERMINATION_IMP = 50;
parameter TX_BUFFER_USE = "TRUE";
parameter TX_CRC_FORCE_VALUE = 8'b11010110;
parameter TX_CRC_USE = "FALSE";
parameter TX_DATA_WIDTH = 2;
parameter TX_DIFF_CTRL = 500;
parameter TX_PREEMPHASIS = 0;

output CHBONDDONE;
output [3:0] CHBONDO;
output CONFIGOUT;
output [1:0] RXBUFSTATUS;
output [3:0] RXCHARISCOMMA;
output [3:0] RXCHARISK;
output RXCHECKINGCRC;
output [2:0] RXCLKCORCNT;
output RXCOMMADET;
output RXCRCERR;
output [31:0] RXDATA;
output [3:0] RXDISPERR;
output [1:0] RXLOSSOFSYNC;
output [3:0] RXNOTINTABLE;
output RXREALIGN;
output RXRECCLK;
output [3:0] RXRUNDISP;
output TXBUFERR;
output [3:0] TXKERR;
output TXN;
output TXP;
output [3:0] TXRUNDISP;

input BREFCLK;
input BREFCLK2;
input [3:0] CHBONDI;
input CONFIGENABLE;
input CONFIGIN;
input ENCHANSYNC;
input ENMCOMMAALIGN;
input ENPCOMMAALIGN;
input [1:0] LOOPBACK;
input POWERDOWN;
input REFCLK;
input REFCLK2;
input REFCLKSEL;
input RXN;
input RXP;
input RXPOLARITY;
input RXRESET;
input RXUSRCLK;
input RXUSRCLK2;
input [3:0] TXBYPASS8B10B;
input [3:0] TXCHARDISPMODE;
input [3:0] TXCHARDISPVAL;
input [3:0] TXCHARISK;
input [31:0] TXDATA;
input TXFORCECRCERR;
input TXINHIBIT;
input TXPOLARITY;
input TXRESET;
input TXUSRCLK;
input TXUSRCLK2;

endmodule
