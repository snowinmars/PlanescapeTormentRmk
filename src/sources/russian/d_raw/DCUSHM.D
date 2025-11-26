// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCUSHM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCUSHM~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #9350 /* ~Этот мужчина целиком поглощен изучением товаров, выставленных на прилавках рынка. При твоем приближении он даже не обращает на тебя внимания.~ */
  IF ~~ THEN REPLY #9351 /* ~«Ой... Прошу прощения за беспокойство».~ */ EXIT
END
