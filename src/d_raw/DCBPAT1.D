// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBPAT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBPAT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3186 /* ~Я завсегдатай бара Проклятого. Имя сменю потом.~ */
  IF ~~ THEN REPLY #3187 /* ~Хорошо, хорошо.~ */ EXIT
END
