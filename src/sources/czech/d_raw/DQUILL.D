// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUILL~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2972 /* ~I'm a drunk rake that likes to wander around the Clerk's Ward and pick fights. If I see you, you're bound to be a target, so watch yourself.~ */
  IF ~~ THEN REPLY #2973 /* ~No, I think YOU'RE the one who better watch themselves.~ */ EXIT
END
