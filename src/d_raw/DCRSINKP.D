// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSINKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSINKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3179 /* ~Слыхал, что ты ищешь способ попасть в Тюрьму. Как только я получу нормальный диалог, я скажу тебе, как это сделать.~ */
  IF ~~ THEN REPLY #3181 /* ~А потом я смогу добраться до этого изменника ангела Триаса! Круто!~ */ EXIT
  IF ~~ THEN EXIT
END
