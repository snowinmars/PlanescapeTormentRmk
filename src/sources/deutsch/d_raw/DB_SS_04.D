// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DB_SS_04.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DB_SS_04~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34197 /* ~Dieser transparente, bläulichweiße Stein, der von einem feinen Netz gravierter Silberbänder umsponnen wird, pulsiert mit einem sanften blauen Licht. In den Boden ist das Wort 'KESAI-SERRIS' graviert.~ */
  IF ~~ THEN REPLY #54096 /* ~Geh weg.~ */ EXIT
END
