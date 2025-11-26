// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_03.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_03~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34195 /* ~Dieser orangerote Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem warmen orangefarbenen Licht. In den Boden ist das Wort 'DOLORA' graviert.~ */
  IF ~~ THEN REPLY #54095 /* ~Geh weg.~ */ EXIT
END
