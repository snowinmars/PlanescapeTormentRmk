// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34208 /* ~Dieser lichtdurchlässige grüne Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem hellen grünen Licht. In den Boden ist das Wort 'ECCO' graviert.~ */
  IF ~~ THEN REPLY #54099 /* ~Geh weg.~ */ EXIT
END
