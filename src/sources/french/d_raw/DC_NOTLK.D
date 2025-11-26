// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_NOTLK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\fr_FR\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_NOTLK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67920 /* ~"J'ignore ce que tu veux, mais ça ne m'intéresse pas. Laisse-moi tranquille."~ */
  IF ~~ THEN REPLY #67921 /* ~"Très bien. Au revoir."~ */ EXIT
END
