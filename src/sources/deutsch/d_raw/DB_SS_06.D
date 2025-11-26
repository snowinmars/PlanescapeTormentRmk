// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_06.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_06~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34207 /* ~Dieser bläulich-lilafarbene Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem sanften lavendelfarbenen Licht. In den Boden ist das Wort 'VIVIAN' graviert.~ */
  IF ~~ THEN REPLY #54098 /* ~Geh weg.~ */ EXIT
END
