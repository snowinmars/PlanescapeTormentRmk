// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"Jsem jedním z Vnímavých Městské haly. Je mi potěšením."~ */
  IF ~~ THEN REPLY #2986 /* ~"Byl bych rád, kdybys odešel."~ */ EXIT
END
