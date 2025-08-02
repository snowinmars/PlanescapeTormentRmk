// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRNGHGD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRNGHGD~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from: 3.0
  SAY #38492 /* ~«Ссссc... Мясссная тварь, для тебя здесссь нет мессста».~ */
  IF ~~ THEN REPLY #38493 /* ~«Что ты здесь делаешь?»~ */ GOTO 1
  IF ~~ THEN REPLY #38494 /* ~«Что это за место?»~ */ GOTO 2
  IF ~~ THEN REPLY #38495 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #38496 /* ~«Тогда я пойду. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 5.0
  SAY #38497 /* ~«Мы хотим расшшширить нашшш дом. Уссстранить врагов... найти еду, чтобы пришшшлось не жевать ходячее мяссско, верно? Безмолвный Король ссссказал нам... никакого ходячего мясссска».~ */
  IF ~~ THEN REPLY #38498 /* ~«Кто такой этот Безмолвный Король?»~ */ GOTO 4
  IF ~~ THEN REPLY #38499 /* ~«Что это за место?»~ */ GOTO 2
  IF ~~ THEN REPLY #38500 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #38501 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 5.1
  SAY #38502 /* ~«Это? Это Затопленные Народы. Это нашшши охотничьи угодья. Это... это нашшша кладовая».~ */
  IF ~~ THEN REPLY #38503 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.0 5.2
  SAY #38504 /* ~«Мы разведчики, разведчики Мертвых Народов».~ */
  IF ~~ THEN REPLY #38505 /* ~«Что вы разведываете?»~ */ GOTO 0
  IF ~~ THEN REPLY #38506 /* ~«Понятно. Тогда прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #38507 /* ~«Сссс! — упырь негодующе шипит. — Безмолвный Король — нашшш правитель. Акаста — нашшш лидер! Сссскоро мы найдем между ними балансссс!»~ */
  IF ~~ THEN REPLY #38508 /* ~«Так кто же ты такой?»~ */ GOTO 3
  IF ~~ THEN REPLY #38509 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #38510 /* ~«Сссс... мяссско вернулосссь...»~ */
  IF ~~ THEN REPLY #38511 /* ~«Что ты здесь делаешь?»~ */ GOTO 1
  IF ~~ THEN REPLY #38512 /* ~«Что это за место?»~ */ GOTO 2
  IF ~~ THEN REPLY #38513 /* ~«Кто ты?»~ */ GOTO 3
  IF ~~ THEN REPLY #38514 /* ~«Тогда я пойду. Прощай».~ */ EXIT
END
