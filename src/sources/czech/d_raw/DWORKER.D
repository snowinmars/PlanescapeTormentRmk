// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWORKER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DWORKER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3160 /* ~Hello. I work in the warehouse in Curst. If asked nicely, I might tell you that the Anarchists meet here, and that maybe you ought to think about meeting up with them.~ */
  IF ~~ THEN REPLY #3161 /* ~Sure thing. And maybe I'll cut my dick off.~ */ EXIT
  IF ~~ THEN EXIT
END
