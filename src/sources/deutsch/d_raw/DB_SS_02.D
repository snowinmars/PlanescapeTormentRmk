// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_02.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_02~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34194 /* ~Dieser bernsteinfarbene Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem sanften, gelben Licht. In den Boden sind die Worte 'KIMASXI NATTERNZUNGE' graviert.~ */
  IF ~~ THEN REPLY #54094 /* ~Geh weg.~ */ EXIT
END
