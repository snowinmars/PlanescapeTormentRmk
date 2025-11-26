// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3188 /* ~Ja także jestem stałym bywalcem tego wspaniałego przybytku.~ */
  IF ~~ THEN REPLY #3189 /* ~Och, chyba naprawdę musi być on wspaniały.~ */ EXIT
END
