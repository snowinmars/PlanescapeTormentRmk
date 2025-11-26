// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"Jestem jednym z *ogólnych* Czuciowców w Gmachu Rozrywki. Miło mi cię poznać."~ */
  IF ~~ THEN REPLY #2986 /* ~"Miło mi, że cię zostawiam."~ */ EXIT
END
