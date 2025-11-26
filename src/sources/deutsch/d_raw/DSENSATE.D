// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSENSATE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DSENSATE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2985 /* ~"Ich bin einer der 'artmäßigen' Sinnsaten in der Städtischen Festhalle. Freut mich, dich kennenzulernen."~ */
  IF ~~ THEN REPLY #2986 /* ~"Freut mich, dir Lebewohl zu sagen."~ */ EXIT
END
