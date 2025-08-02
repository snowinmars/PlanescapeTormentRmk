// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DINSCR1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DINSCR1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #38097 /* ~Те крупицы жизни, что еще остались в этим мире, вытекают из этой дырки в моем теле. Пусть мир горит, пусть горят планы, только верните мне жизнь! Я уничтожу эту жизнь до основания, разобью ее, разрушу, смешаю ее с кровью и дерьмом, чтоб вы тоже не смогли ею жить! Пусть горит все живое за то, что я не могу умереть!~ */
  IF ~  Global("Inscr_1","GLOBAL",0)
~ THEN REPLY #53654 /* ~Осмотреть панель.~ */ GOTO 1
  IF ~~ THEN REPLY #53652 /* ~Отойти от описания.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #53656 /* ~Панель сделана таким образом, чтобы она могла вдавливаться в стену.~ */
  IF ~~ THEN REPLY #53657 /* ~Надавить на панель.~ */ DO ~SetGlobal("Inscr_1","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #53658 /* ~Оставить панель в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #53659 /* ~Ты наживаешь на панель, и она легко уходит в стену. Ты слышишь щелчок от саркофага позади тебя.~ */
  IF ~~ THEN REPLY #53660 /* ~Отойти от описания.~ */ EXIT
END
