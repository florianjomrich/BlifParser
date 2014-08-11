// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verplex_libs/data/simprims/Attic/X_PPC405_ADV.v,v 1.1.2.1 2004/09/28 20:47:46 wloo Exp $

`timescale 1 ps / 1 ps

module X_PPC405_ADV (
	APUFCMDECODED,
	APUFCMDECUDI,
	APUFCMDECUDIVALID,
	APUFCMENDIAN,
	APUFCMFLUSH,
	APUFCMINSTRUCTION,
	APUFCMINSTRVALID,
	APUFCMLOADBYTEEN,
	APUFCMLOADDATA,
	APUFCMLOADDVALID,
	APUFCMOPERANDVALID,
	APUFCMRADATA,
	APUFCMRBDATA,
	APUFCMWRITEBACKOK,
	APUFCMXERCA,
	C405CPMCORESLEEPREQ,
	C405CPMMSRCE,
	C405CPMMSREE,
	C405CPMTIMERIRQ,
	C405CPMTIMERRESETREQ,
	C405DBGLOADDATAONAPUDBUS,
	C405DBGMSRWE,
	C405DBGSTOPACK,
	C405DBGWBCOMPLETE,
	C405DBGWBFULL,
	C405DBGWBIAR,
	C405JTGCAPTUREDR,
	C405JTGEXTEST,
	C405JTGPGMOUT,
	C405JTGSHIFTDR,
	C405JTGTDO,
	C405JTGTDOEN,
	C405JTGUPDATEDR,
	C405PLBDCUABORT,
	C405PLBDCUABUS,
	C405PLBDCUBE,
	C405PLBDCUCACHEABLE,
	C405PLBDCUGUARDED,
	C405PLBDCUPRIORITY,
	C405PLBDCUREQUEST,
	C405PLBDCURNW,
	C405PLBDCUSIZE2,
	C405PLBDCUU0ATTR,
	C405PLBDCUWRDBUS,
	C405PLBDCUWRITETHRU,
	C405PLBICUABORT,
	C405PLBICUABUS,
	C405PLBICUCACHEABLE,
	C405PLBICUPRIORITY,
	C405PLBICUREQUEST,
	C405PLBICUSIZE,
	C405PLBICUU0ATTR,
	C405RSTCHIPRESETREQ,
	C405RSTCORERESETREQ,
	C405RSTSYSRESETREQ,
	C405TRCCYCLE,
	C405TRCEVENEXECUTIONSTATUS,
	C405TRCODDEXECUTIONSTATUS,
	C405TRCTRACESTATUS,
	C405TRCTRIGGEREVENTOUT,
	C405TRCTRIGGEREVENTTYPE,
	C405XXXMACHINECHECK,
	DCREMACABUS,
	DCREMACCLK,
	DCREMACDBUS,
	DCREMACENABLER,
	DCREMACREAD,
	DCREMACWRITE,
	DSOCMBRAMABUS,
	DSOCMBRAMBYTEWRITE,
	DSOCMBRAMEN,
	DSOCMBRAMWRDBUS,
	DSOCMBUSY,
	DSOCMRDADDRVALID,
	DSOCMWRADDRVALID,
	EXTDCRABUS,
	EXTDCRDBUSOUT,
	EXTDCRREAD,
	EXTDCRWRITE,
	ISOCMBRAMEN,
	ISOCMBRAMEVENWRITEEN,
	ISOCMBRAMODDWRITEEN,
	ISOCMBRAMRDABUS,
	ISOCMBRAMWRABUS,
	ISOCMBRAMWRDBUS,
	ISOCMDCRBRAMEVENEN,
	ISOCMDCRBRAMODDEN,
	ISOCMDCRBRAMRDSELECT,
	BRAMDSOCMCLK,
	BRAMDSOCMRDDBUS,
	BRAMISOCMCLK,
	BRAMISOCMDCRRDDBUS,
	BRAMISOCMRDDBUS,
	CPMC405CLOCK,
	CPMC405CORECLKINACTIVE,
	CPMC405CPUCLKEN,
	CPMC405JTAGCLKEN,
	CPMC405SYNCBYPASS,
	CPMC405TIMERCLKEN,
	CPMC405TIMERTICK,
	CPMDCRCLK,
	CPMFCMCLK,
	DBGC405DEBUGHALT,
	DBGC405EXTBUSHOLDACK,
	DBGC405UNCONDDEBUGEVENT,
	DSARCVALUE,
	DSCNTLVALUE,
	DSOCMRWCOMPLETE,
	EICC405CRITINPUTIRQ,
	EICC405EXTINPUTIRQ,
	EMACDCRACK,
	EMACDCRDBUS,
	EXTDCRACK,
	EXTDCRDBUSIN,
	FCMAPUCR,
	FCMAPUDCDCREN,
	FCMAPUDCDFORCEALIGN,
	FCMAPUDCDFORCEBESTEERING,
	FCMAPUDCDFPUOP,
	FCMAPUDCDGPRWRITE,
	FCMAPUDCDLDSTBYTE,
	FCMAPUDCDLDSTDW,
	FCMAPUDCDLDSTHW,
	FCMAPUDCDLDSTQW,
	FCMAPUDCDLDSTWD,
	FCMAPUDCDLOAD,
	FCMAPUDCDPRIVOP,
	FCMAPUDCDRAEN,
	FCMAPUDCDRBEN,
	FCMAPUDCDSTORE,
	FCMAPUDCDTRAPBE,
	FCMAPUDCDTRAPLE,
	FCMAPUDCDUPDATE,
	FCMAPUDCDXERCAEN,
	FCMAPUDCDXEROVEN,
	FCMAPUDECODEBUSY,
	FCMAPUDONE,
	FCMAPUEXCEPTION,
	FCMAPUEXEBLOCKINGMCO,
	FCMAPUEXECRFIELD,
	FCMAPUEXENONBLOCKINGMCO,
	FCMAPUINSTRACK,
	FCMAPULOADWAIT,
	FCMAPURESULT,
	FCMAPURESULTVALID,
	FCMAPUSLEEPNOTREADY,
	FCMAPUXERCA,
	FCMAPUXEROV,
	ISARCVALUE,
	ISCNTLVALUE,
	JTGC405BNDSCANTDO,
	JTGC405TCK,
	JTGC405TDI,
	JTGC405TMS,
	JTGC405TRSTNEG,
	MCBCPUCLKEN,
	MCBJTAGEN,
	MCBTIMEREN,
	MCPPCRST,
	PLBC405DCUADDRACK,
	PLBC405DCUBUSY,
	PLBC405DCUERR,
	PLBC405DCURDDACK,
	PLBC405DCURDDBUS,
	PLBC405DCURDWDADDR,
	PLBC405DCUSSIZE1,
	PLBC405DCUWRDACK,
	PLBC405ICUADDRACK,
	PLBC405ICUBUSY,
	PLBC405ICUERR,
	PLBC405ICURDDACK,
	PLBC405ICURDDBUS,
	PLBC405ICURDWDADDR,
	PLBC405ICUSSIZE1,
	PLBCLK,
	RSTC405RESETCHIP,
	RSTC405RESETCORE,
	RSTC405RESETSYS,
	TIEAPUCONTROL,
	TIEAPUUDI1,
	TIEAPUUDI2,
	TIEAPUUDI3,
	TIEAPUUDI4,
	TIEAPUUDI5,
	TIEAPUUDI6,
	TIEAPUUDI7,
	TIEAPUUDI8,
	TIEC405DETERMINISTICMULT,
	TIEC405DISOPERANDFWD,
	TIEC405MMUEN,
	TIEDCRADDR,
	TIEPVRBIT10,
	TIEPVRBIT11,
	TIEPVRBIT28,
	TIEPVRBIT29,
	TIEPVRBIT30,
	TIEPVRBIT31,
	TIEPVRBIT8,
	TIEPVRBIT9,
	TRCC405TRACEDISABLE,
	TRCC405TRIGGEREVENTIN
);

parameter in_delay=100;
parameter out_delay=100;
output APUFCMDECODED;
output APUFCMDECUDIVALID;
output APUFCMENDIAN;
output APUFCMFLUSH;
output APUFCMINSTRVALID;
output APUFCMLOADDVALID;
output APUFCMOPERANDVALID;
output APUFCMWRITEBACKOK;
output APUFCMXERCA;
output C405CPMCORESLEEPREQ;
output C405CPMMSRCE;
output C405CPMMSREE;
output C405CPMTIMERIRQ;
output C405CPMTIMERRESETREQ;
output C405DBGLOADDATAONAPUDBUS;
output C405DBGMSRWE;
output C405DBGSTOPACK;
output C405DBGWBCOMPLETE;
output C405DBGWBFULL;
output C405JTGCAPTUREDR;
output C405JTGEXTEST;
output C405JTGPGMOUT;
output C405JTGSHIFTDR;
output C405JTGTDO;
output C405JTGTDOEN;
output C405JTGUPDATEDR;
output C405PLBDCUABORT;
output C405PLBDCUCACHEABLE;
output C405PLBDCUGUARDED;
output C405PLBDCUREQUEST;
output C405PLBDCURNW;
output C405PLBDCUSIZE2;
output C405PLBDCUU0ATTR;
output C405PLBDCUWRITETHRU;
output C405PLBICUABORT;
output C405PLBICUCACHEABLE;
output C405PLBICUREQUEST;
output C405PLBICUU0ATTR;
output C405RSTCHIPRESETREQ;
output C405RSTCORERESETREQ;
output C405RSTSYSRESETREQ;
output C405TRCCYCLE;
output C405TRCTRIGGEREVENTOUT;
output C405XXXMACHINECHECK;
output DCREMACCLK;
output DCREMACENABLER;
output DCREMACREAD;
output DCREMACWRITE;
output DSOCMBRAMEN;
output DSOCMBUSY;
output DSOCMRDADDRVALID;
output DSOCMWRADDRVALID;
output EXTDCRREAD;
output EXTDCRWRITE;
output ISOCMBRAMEN;
output ISOCMBRAMEVENWRITEEN;
output ISOCMBRAMODDWRITEEN;
output ISOCMDCRBRAMEVENEN;
output ISOCMDCRBRAMODDEN;
output ISOCMDCRBRAMRDSELECT;
output [0:10] C405TRCTRIGGEREVENTTYPE;
output [0:1] C405PLBDCUPRIORITY;
output [0:1] C405PLBICUPRIORITY;
output [0:1] C405TRCEVENEXECUTIONSTATUS;
output [0:1] C405TRCODDEXECUTIONSTATUS;
output [0:29] C405DBGWBIAR;
output [0:29] C405PLBICUABUS;
output [0:2] APUFCMDECUDI;
output [0:31] APUFCMINSTRUCTION;
output [0:31] APUFCMLOADDATA;
output [0:31] APUFCMRADATA;
output [0:31] APUFCMRBDATA;
output [0:31] C405PLBDCUABUS;
output [0:31] DCREMACDBUS;
output [0:31] DSOCMBRAMWRDBUS;
output [0:31] EXTDCRDBUSOUT;
output [0:31] ISOCMBRAMWRDBUS;
output [0:3] APUFCMLOADBYTEEN;
output [0:3] C405TRCTRACESTATUS;
output [0:3] DSOCMBRAMBYTEWRITE;
output [0:63] C405PLBDCUWRDBUS;
output [0:7] C405PLBDCUBE;
output [0:9] EXTDCRABUS;
output [2:3] C405PLBICUSIZE;
output [8:28] ISOCMBRAMRDABUS;
output [8:28] ISOCMBRAMWRABUS;
output [8:29] DSOCMBRAMABUS;
output [8:9] DCREMACABUS;
input BRAMDSOCMCLK;
input BRAMISOCMCLK;
input CPMC405CLOCK;
input CPMC405CORECLKINACTIVE;
input CPMC405CPUCLKEN;
input CPMC405JTAGCLKEN;
input CPMC405SYNCBYPASS;
input CPMC405TIMERCLKEN;
input CPMC405TIMERTICK;
input CPMDCRCLK;
input CPMFCMCLK;
input DBGC405DEBUGHALT;
input DBGC405EXTBUSHOLDACK;
input DBGC405UNCONDDEBUGEVENT;
input DSOCMRWCOMPLETE;
input EICC405CRITINPUTIRQ;
input EICC405EXTINPUTIRQ;
input EMACDCRACK;
input EXTDCRACK;
input FCMAPUDCDCREN;
input FCMAPUDCDFORCEALIGN;
input FCMAPUDCDFORCEBESTEERING;
input FCMAPUDCDFPUOP;
input FCMAPUDCDGPRWRITE;
input FCMAPUDCDLDSTBYTE;
input FCMAPUDCDLDSTDW;
input FCMAPUDCDLDSTHW;
input FCMAPUDCDLDSTQW;
input FCMAPUDCDLDSTWD;
input FCMAPUDCDLOAD;
input FCMAPUDCDPRIVOP;
input FCMAPUDCDRAEN;
input FCMAPUDCDRBEN;
input FCMAPUDCDSTORE;
input FCMAPUDCDTRAPBE;
input FCMAPUDCDTRAPLE;
input FCMAPUDCDUPDATE;
input FCMAPUDCDXERCAEN;
input FCMAPUDCDXEROVEN;
input FCMAPUDECODEBUSY;
input FCMAPUDONE;
input FCMAPUEXCEPTION;
input FCMAPUEXEBLOCKINGMCO;
input FCMAPUEXENONBLOCKINGMCO;
input FCMAPUINSTRACK;
input FCMAPULOADWAIT;
input FCMAPURESULTVALID;
input FCMAPUSLEEPNOTREADY;
input FCMAPUXERCA;
input FCMAPUXEROV;
input JTGC405BNDSCANTDO;
input JTGC405TCK;
input JTGC405TDI;
input JTGC405TMS;
input JTGC405TRSTNEG;
input MCBCPUCLKEN;
input MCBJTAGEN;
input MCBTIMEREN;
input MCPPCRST;
input PLBC405DCUADDRACK;
input PLBC405DCUBUSY;
input PLBC405DCUERR;
input PLBC405DCURDDACK;
input PLBC405DCUSSIZE1;
input PLBC405DCUWRDACK;
input PLBC405ICUADDRACK;
input PLBC405ICUBUSY;
input PLBC405ICUERR;
input PLBC405ICURDDACK;
input PLBC405ICUSSIZE1;
input PLBCLK;
input RSTC405RESETCHIP;
input RSTC405RESETCORE;
input RSTC405RESETSYS;
input TIEC405DETERMINISTICMULT;
input TIEC405DISOPERANDFWD;
input TIEC405MMUEN;
input TIEPVRBIT10;
input TIEPVRBIT11;
input TIEPVRBIT28;
input TIEPVRBIT29;
input TIEPVRBIT30;
input TIEPVRBIT31;
input TIEPVRBIT8;
input TIEPVRBIT9;
input TRCC405TRACEDISABLE;
input TRCC405TRIGGEREVENTIN;
input [0:15] TIEAPUCONTROL;
input [0:23] TIEAPUUDI1;
input [0:23] TIEAPUUDI2;
input [0:23] TIEAPUUDI3;
input [0:23] TIEAPUUDI4;
input [0:23] TIEAPUUDI5;
input [0:23] TIEAPUUDI6;
input [0:23] TIEAPUUDI7;
input [0:23] TIEAPUUDI8;
input [0:2] FCMAPUEXECRFIELD;
input [0:31] BRAMDSOCMRDDBUS;
input [0:31] BRAMISOCMDCRRDDBUS;
input [0:31] EMACDCRDBUS;
input [0:31] EXTDCRDBUSIN;
input [0:31] FCMAPURESULT;
input [0:3] FCMAPUCR;
input [0:5] TIEDCRADDR;
input [0:63] BRAMISOCMRDDBUS;
input [0:63] PLBC405DCURDDBUS;
input [0:63] PLBC405ICURDDBUS;
input [0:7] DSARCVALUE;
input [0:7] DSCNTLVALUE;
input [0:7] ISARCVALUE;
input [0:7] ISCNTLVALUE;
input [1:3] PLBC405DCURDWDADDR;
input [1:3] PLBC405ICURDWDADDR;

endmodule
