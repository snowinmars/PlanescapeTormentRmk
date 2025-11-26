// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_08.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_08~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34209 /* ~Dieser brilliant strahlende, rote Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem feurigen purpurroten Licht. In den Boden ist das Wort 'NENNY' graviert.~ */
  IF ~~ THEN REPLY #54100 /* ~Geh weg.~ */ EXIT
END
