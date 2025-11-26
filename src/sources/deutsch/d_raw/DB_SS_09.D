// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_09.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_09~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34210 /* ~Dieser lichtdurchlässige indigoblaue Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem tiefen, blauen Licht. In den Boden ist das Wort 'JULIETTE' graviert.~ */
  IF ~~ THEN REPLY #54101 /* ~Geh weg.~ */ EXIT
END
