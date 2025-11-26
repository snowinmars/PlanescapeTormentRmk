// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGT1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGT1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33548 /* ~«Подвязки Шивы! *Это* еще что за вонючка?»~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY #33549 /* ~«Может, стоит обчистить этот жалкий труп и притащить его назад за награду, а?» Он смотрит на своего приятеля, водя бровями.~ */
  IF ~~ THEN REPLY #33565 /* ~«Как забавно... а теперь прочь с дороги».~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33566 /* ~«Прочь с дороги, не то я прикончу вас обоих».~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33567 /* ~«Прочь с дороги, не то я прикончу вас обоих».~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33568 /* ~«Мне не нужны неприятности... просто дайте мне пройти».~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33569 /* ~«Мне не нужны неприятности... просто дайте мне пройти».~ */ EXTERN ~DTHUGT2~ 6
  IF ~~ THEN REPLY #33570 /* ~Простонать, как нежить: «У-у-у...»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Taunter_1","GLOBALLaw",-1)
~ EXTERN ~DTHUGT2~ 7
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33550 /* ~Мужчина поднимает брови. «Хе! Он сказал 'прочь с дороги'...»~ */
  IF ~~ THEN EXTERN ~DTHUGT2~ 2
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #33551 /* ~Мужчина поднимает руки. «Погоди, рубака! Мы просто пошутили! Иди куда шел...»~ */
  IF ~~ THEN DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXTERN ~DTHUGT2~ 3
END

IF ~~ THEN BEGIN 4 // from: 1.2 7.2
  SAY #33552 /* ~Его лицо внезапно мрачнеет, губы искривляются в усмешке. «Посмотрим, как ты с этим справишься, труп!»~ */
  IF ~~ THEN DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXTERN ~DTHUGT2~ 4
END

IF ~~ THEN BEGIN 5 // from:
  SAY #33553 /* ~«Эй, чувак, хватит трясти черепушкой. Оставим в покое этого пня. Ну же».~ */
  IF ~~ THEN REPLY #33571 /* ~Пусть уходят.~ */ DO ~SetGlobal("Thug_Escape","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #33554 /* ~Они оба достают ножи...~ */
  IF ~~ THEN REPLY #33572 /* ~Сражаться с ними.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33573 /* ~Сбежать.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #33555 /* ~«Нет, болван! Он просто... просто...»~ */
  IF ~~ THEN REPLY #33574 /* ~Посмотреть на них голодным взглядом, пуская слюни.~ */ EXTERN ~DTHUGT2~ 8
  IF ~  CheckStatGT(Protagonist,12,STR)
~ THEN REPLY #33575 /* ~«Прочь с дороги, не то я прикончу вас обоих».~ */ GOTO 3
  IF ~  CheckStatLT(Protagonist,13,STR)
~ THEN REPLY #33576 /* ~«Прочь с дороги, не то я прикончу вас обоих».~ */ GOTO 4
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #33577 /* ~«Просто дайте мне пройти. Мне не нужны неприятности».~ */ EXTERN ~DTHUGT2~ 5
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #33578 /* ~«Просто дайте мне пройти. Мне не нужны неприятности».~ */ EXTERN ~DTHUGT2~ 6
END
