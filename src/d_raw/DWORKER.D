// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DWORKER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DWORKER~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #3160 /* ~Привет. Я работаю на складе в Проклятом. Если меня вежливо попросить, то я скажу тебе, что тут собираются анархисты, и, возможно, ты сам решишь встретиться с ними.~ */
  IF ~~ THEN REPLY #3161 /* ~Конечно. А еще, может быть, срежу себе корешок.~ */ EXIT
  IF ~~ THEN EXIT
END
