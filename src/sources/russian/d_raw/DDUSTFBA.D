// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFBA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFBA~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2543 /* ~Перед тобой хмурая бледная женщина в черной мантии. Она молча уставилась на свою выпивку.~ */
  IF ~~ THEN REPLY #2545 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #2546 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2544 /* ~Перед тобой хмурая бледная тленная в черной мантии. Она молча уставилась на свою выпивку.~ */
  IF ~~ THEN REPLY #2547 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #2548 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2549 /* ~Тленная поднимает голову «Да?»~ */
  IF ~~ THEN REPLY #2550 /* ~«Можно задать тебе пару вопросов?»~ */ GOTO 3
  IF ~~ THEN REPLY #2551 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2552 /* ~«Только не сейчас». Тленная умолкает и возвращается к своей выпивке.~ */
  IF ~~ THEN REPLY #2553 /* ~«Тогда прощай». ~ */ EXIT
END
