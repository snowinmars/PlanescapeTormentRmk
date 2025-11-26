// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPLACE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\de_DE\dialog.tlk
// dialogF  : (none)

BEGIN ~DPLACE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #20107 /* ~Die Figur sieht dich ausdruckslos an. Offensichtlich ist sie nur eine Hülle und hat nichts zu sagen.~ */
  IF ~~ THEN REPLY #20108 /* ~"Dann komm ich zurück, wenn du eingesetzt bist."~ */ EXIT
END
