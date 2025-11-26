// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"Was immer du willst, es interessiert mich nicht. Laß mich in Ruhe."~ */
  IF ~~ THEN REPLY #67921 /* ~"Also gut. Leb wohl."~ */ EXIT
END
