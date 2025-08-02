// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~«Простите, сэр. Никому туда нельзя, пока не вернется фрактор Сандоз. Вы не можете туда войти».~ */
  IF ~~ THEN REPLY #46768 /* ~«Что ты можешь рассказать о нем?»~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~«Он верящий, сэр, истинный верящий. Однако у него часто меняется настроение, и все эти странствия по мультивселенной не могут не сказаться на голове. Ты либо теряешь общую картину, либо получаешь слишком много. Так или иначе, это не к добру. Надеюсь, он вернется в целости и сохранности».~ */
  IF ~~ THEN REPLY #46908 /* ~«Что ж, посмотрим. Прощай».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~«Приветствую, сэр. Вас прислал Кельдор? Сандоз зашел туда и вот уже целый день беснуется и что-то бормочет за дверью. Надеюсь, вы сможете что-нибудь с ним сделать».~ */
  IF ~~ THEN REPLY #46910 /* ~«На этот счет посмотрим». Крикнуть через дверь: «Сандоз! Нужно поговорить!»~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~«Хотите поговорить с Сандозом, сэр? Удачи...»~ */
  IF ~~ THEN REPLY #46912 /* ~«Спасибо». Крикнуть через дверь: «Сандоз! Нужно поговорить!»~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~«Сэр». Похоже, стражник не желает продолжать разговор.~ */
  IF ~~ THEN REPLY #46914 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~Стражник сурово смотрит на тебя. «Он уже мертв. Доволен собой? Иди и поговори с Кельдором».~ */
  IF ~~ THEN REPLY #63355 /* ~«Отлично. Прощай».~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~«Сэр». Похоже, стражник не желает продолжать разговор.~ */
  IF ~~ THEN REPLY #64647 /* ~«Прощай».~ */ EXIT
END
