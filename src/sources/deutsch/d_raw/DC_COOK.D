// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_COOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_COOK~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67945 /* ~Dem Koch steigt die Zornesröte ins Gesicht. "Was? Hörst du schwer? Raus! Raus aus meiner Küche!"~ */
  IF ~~ THEN REPLY #67946 /* ~Geh weg.~ */ EXIT
END
