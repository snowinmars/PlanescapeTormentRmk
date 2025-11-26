// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : SKELCAT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~SKELCAT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3345 /* ~Je suis un des disciples squelettes d'Hargrimm. Nous rendons hommage aux morts et honorons leur sacrifice.~ */
  IF ~~ THEN REPLY #3346 /* ~Je vous laisse alors, bons squelettes.~ */ EXIT
END
