// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3333 /* ~It's possible that the cranium rats in the game may actually be able to speak with the character. If so, this template is here for it.~ */
  IF ~~ THEN REPLY #3334 /* ~Convenient.~ */ EXIT
END
