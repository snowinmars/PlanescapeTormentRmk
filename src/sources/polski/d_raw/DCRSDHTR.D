// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSDHTR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSDHTR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3182 /* ~"Ratunku! Złapali mnie handlarze niewolników! Niech mi ktoś pomoże!"~ */
  IF ~~ THEN REPLY #3183 /* ~"Poczekaj, aż tam przyjdę!"~ */ EXIT
END
