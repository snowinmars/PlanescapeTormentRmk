// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT5.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT5~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3194 /* ~Może opowiem ci o tunelach. Dobra?~ */
  IF ~~ THEN REPLY #3195 /* ~Tak. Chyba że nie.~ */ EXIT
END
