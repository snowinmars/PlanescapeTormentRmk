// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZOMMBAR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZOMMBAR~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2583 /* ~Зомби смотрит на тебя пустыми глазами. Его рот крепко зашит, некоторые части тела полностью забинтованы. От тела доносится слабый запах алкоголя.~ */
  IF ~~ THEN REPLY #2587 /* ~«Итак... что тут у нас интересного?»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Zombie_Bar_1","GLOBALLaw",-1)
~ GOTO 1
  IF ~  Global("Speak_with_Dead","GLOBAL",1)
~ THEN REPLY #2588 /* ~Использовать на скелете свою способность «История костей».~ */ GOTO 2
  IF ~~ THEN REPLY #2589 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #2591 /* ~Оставить зомби в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2584 /* ~Зомби продолжает пялиться на тебя.~ */
  IF ~~ THEN REPLY #2590 /* ~«Было приятно поболтать с тобой. Прощай».~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from: 0.1
  SAY #2585 /* ~Зомби не реагирует. Кажется, он далек от того, чтобы отвечать на твои вопросы.~ */
  IF ~~ THEN REPLY #2586 /* ~«Тогда прощай». ~ */ EXIT
END
