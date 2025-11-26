// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR6.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR6~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38107 /* ~Нет ничего, что можно было сделать. Память ушла, и, наверное, никогда не вернется. С каждой смертью я теряю часть себя.~ */
  IF ~~ THEN REPLY #53738 /* ~Продолжить.~ */ GOTO 1
  IF ~~ THEN REPLY #53739 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53740 /* ~Как можно стать бессмертным и продолжать умирать?~ */
  IF ~~ THEN REPLY #53741 /* ~Продолжить.~ */ GOTO 2
  IF ~~ THEN REPLY #53742 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53743 /* ~Он сказал мне, что мой разум слабеет с каждой смертью. Я спросил его, как такое может быть, но он не ответил. Он стал бесполезным. Я зарезал его, так что теперь ни одно из воплощений не сможет извлечь выгоду из его бесполезности.~ */
  IF ~  Global("Inscr_6","GLOBAL",0)
~ THEN REPLY #53744 /* ~Осмотреть панель.~ */ GOTO 3
  IF ~~ THEN REPLY #53745 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53746 /* ~Гравировка описания груба и контрастирует с мастерством, с которым сделана панель. Внимательно осмотрев ее, ты думаешь, что панель можно вдавить в стену.~ */
  IF ~~ THEN REPLY #53747 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_6","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53748 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53749 /* ~Панель скользит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53750 /* ~Отойти от описания.~ */ EXIT
END
