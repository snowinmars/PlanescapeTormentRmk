// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2554 /* ~Перед тобой хмурый бледный мужчина в черной мантии. Он молча уставился на свою выпивку.~ */
  IF ~~ THEN REPLY #2556 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #2557 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2555 /* ~Перед тобой хмурый бледный тленный в черной мантии. Он молча уставился на свою выпивку.~ */
  IF ~~ THEN REPLY #2558 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #2559 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2560 /* ~Тленный поднимает голову «Да?»~ */
  IF ~~ THEN REPLY #2561 /* ~«Можно задать тебе пару вопросов?..»~ */ GOTO 3
  IF ~~ THEN REPLY #2562 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2563 /* ~«Только не сейчас». Тленный умолкает и возвращается к своей выпивке.~ */
  IF ~~ THEN REPLY #2564 /* ~«Тогда прощай». ~ */ EXIT
END
