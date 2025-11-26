// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREVLEG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DREVLEG~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2978 /* ~Jestem "typowym" członkiem ligi rewolucyjnej, chociaż tak naprawdę każdy z nas jedyny w swoim rodzaju.~ */
  IF ~~ THEN REPLY #2979 /* ~Tak, czyż wszyscy tacy nie jesteśmy? Żegnaj.~ */ EXIT
END
