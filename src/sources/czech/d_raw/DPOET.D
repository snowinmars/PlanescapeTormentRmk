// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPOET.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DPOET~

IF ~  !Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #43386 /* ~Tento laskavě vypadající stařec k tobě vyslal letmý pohled než se vrátil k svému přednesu.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43387 /* ~Provokovat básníka.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43838 /* ~Naštvi básníka.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43839 /* ~Naštvi básníka.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43840 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #43841 /* ~Tvé dopalování, neskládající se více než z vykřikování "Básnictví smrdí!" a občasných narážek, vyvolalo několik nepříjemných pohledů... ale nic víc.~ */
  IF ~~ THEN REPLY #43842 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #43843 /* ~Dopaluješ a posmíváš se básníkovi, děláš si srandu z jeho způsobu recitace, vystoupení a předpokládaného domácího života. Vyvolal jsi hrst nepříjemných pohledů a úsečný, rozhněvaný letmý pohled od básníka samotného... ale nic víc.~ */
  IF ~~ THEN REPLY #43844 /* ~Odejdi.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #43845 /* ~Dopaluješ a posmíváš se básníkovi, děláš si srandu z jeho způsobu recitace, vystoupení a předpokládaného domácího života. Završil jsi to přerušením několika jeho veršů a doplnil jsi je vlastními oplzlými rýmy, což vyvolalo nějaké pochichtávání mezi přihlížejícími a donutilo starého básníka - snažícího se tě ignorovat - ke skřípění zubů.~ */
  IF ~~ THEN REPLY #43846 /* ~Odejdi.~ */ EXIT
END

IF ~  Global("Chaotic_Poet_1","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #43847 /* ~Starý básník se na tebe letmo podíval a než se opět vrátil k přednesu, zamračil se.~ */
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #43848 /* ~Naštvi básníka o něco více.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  CheckStatGT(Protagonist,11,INT)
CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #43849 /* ~Naštvi básníka o něco více.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 2
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #43850 /* ~Naštvi básníka o něco více.~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Poet_1","GLOBALLaw",-1)
~ GOTO 3
  IF ~~ THEN REPLY #43851 /* ~Odejdi.~ */ EXIT
END
