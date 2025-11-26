// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVPCGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVPCGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #56950 /* ~Stráž zúžila oči a pozorně si tě prohlíží, ale nic neříká.~ */
  IF ~  !GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56953 /* ~"Co je za tím průchodem?"~ */ GOTO 1
  IF ~  GlobalGT("AR0403_Visited","GLOBAL",0)
~ THEN REPLY #56955 /* ~"Co je za tím průchodem?"~ */ GOTO 2
  IF ~~ THEN REPLY #56959 /* ~Ignoruj ho a jdi dál.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #56961 /* ~"Pharod a jeho dvůr, kámo. Dej si tam pozor a hlídej si hubu: je v tak blbý náladě, jako vždycky."~ */
  IF ~~ THEN REPLY #56963 /* ~"Díky. Sbohem."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #56964 /* ~"Nic moc. Nejsem si jistý, proč tady vlastně zůstávám." Pokrčil rameny.~ */
  IF ~~ THEN REPLY #56967 /* ~"Sbohem."~ */ EXIT
END
