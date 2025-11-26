// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_05.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_05~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34199 /* ~Dieser violette Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem tiefen lila Licht. In den Boden ist das Wort 'MARISSA' graviert.~ */
  IF ~~ THEN REPLY #54097 /* ~Geh weg.~ */ EXIT
END
