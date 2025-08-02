// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTB~

IF ~~ THEN BEGIN 0 // from:
  SAY #106498 /* ~[This is a placeholder to prevent a string with a sound file from becoming strref 106498, which causes problems.]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #54305 /* ~Батарейки в комплект не входят. Не доступно в магазинах. Требуется сборка. Использовать по назначению. При нарушении законов сделка может быть аннулирована.~ */
  IF ~~ THEN EXTERN ~DTEST~ 24
END
