// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_01.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_01~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34191 /* ~Dieser klare Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem brilliant strahlenden inneren Licht. In den Boden ist das Wort 'YVES' graviert.~ */
  IF ~~ THEN REPLY #54093 /* ~Geh weg.~ */ EXIT
END
