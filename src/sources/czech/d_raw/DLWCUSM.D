// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLWCUSM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DLWCUSM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3398 /* ~I'm a male customer in the Lower Ward section. I wander around, examining merchandise, and generally serving as fluff.~ */
  IF ~~ THEN REPLY #3399 /* ~Great. Díky for your "time."~ */ EXIT
END
