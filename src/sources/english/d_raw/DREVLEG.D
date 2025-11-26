// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~I am a "generic" revolutionary league member, though all of us really are individuals.~ */
  IF ~~ THEN REPLY #2979 /* ~Yes, aren't we all. Farewell.~ */ EXIT
END
