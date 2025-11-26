// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAPPRENT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\pl_PL\dialog.tlk
// dialogF  : (none)

BEGIN ~DAPPRENT~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #51175 /* ~Zdaje się być skupiony na wykonywanym zadaniu. Najlepiej chyba będzie mu nie przeszkadzać.~ */
  IF ~~ THEN REPLY #51176 /* ~Odejdź.~ */ EXIT
END
