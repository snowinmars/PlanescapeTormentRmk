// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\cs_CZ\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"Nezajímá mě co chcete. Nechte mě být."~ */
  IF ~~ THEN REPLY #67921 /* ~"Dobrá tedy. Sbohem."~ */ EXIT
END
