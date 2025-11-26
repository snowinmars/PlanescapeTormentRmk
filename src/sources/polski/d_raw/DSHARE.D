// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHARE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHARE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2800 /* ~Zwłoki~ */
  IF ~~ THEN REPLY #2801 /* ~Szpetny~ */ EXIT
END
