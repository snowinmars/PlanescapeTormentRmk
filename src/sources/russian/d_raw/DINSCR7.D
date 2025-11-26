// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR7.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR7~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38109 /* ~Они сказали — Ты разделен. Ты один из многих мужчин. У тебя много имен, и каждое из них оставило на твоей плоти шрам.~ */
  IF ~~ THEN REPLY #53751 /* ~Продолжить.~ */ GOTO 1
  IF ~~ THEN REPLY #53752 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53753 /* ~ПОТЕРЯННЫЙ... БЕССМЕРТНЫЙ... КОНЕЦ ВОПЛОЩЕНИЙ... ЧЕЛОВЕК ТЫСЯЧИ СМЕРТЕЙ... ОБРЕЧЕННЫЙ ЖИТЬ... НЕУГОМОННЫЙ... ОДИН ИЗ МНОГИХ... ПЛЕННИК ЖИЗНИ... ПРИНОСЯЩИЙ ТЕНИ... УВЕЧНЫЙ... ПРИНОСЯЩИЙ БЕДЫ... ЙЕМЕТ...~ */
  IF ~~ THEN REPLY #53754 /* ~Продолжить.~ */ GOTO 2
  IF ~~ THEN REPLY #53755 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53756 /* ~Я так устал.~ */
  IF ~  Global("Inscr_7","GLOBAL",0)
~ THEN REPLY #53757 /* ~Осмотреть панель.~ */ GOTO 3
  IF ~~ THEN REPLY #53758 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #53759 /* ~Панель отлично сделана, выдавая работу мастера. Похоже, ее можно вдавить в стену.~ */
  IF ~~ THEN REPLY #53760 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_7","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #53761 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #53762 /* ~С легким свистом панель уходит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53763 /* ~Отойти от описания.~ */ EXIT
END
