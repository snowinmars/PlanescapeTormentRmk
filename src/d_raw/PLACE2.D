// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : PLACE2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~PLACE2~

IF ~  Global("Jhelai","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #38700 /* ~Перед тобой тощий мужчина в рваной одежде, с носом крючком и двумя обломанными рогами, выступающими изо лба. Он шатается из стороны в сторону, что-то бормоча себе под нос... от него воняет рассолом, блевотиной и дешевым вином.[Be sure to put in placeholder 2]~ */
  IF ~  Global("Craddock_Quest","GLOBAL",1)
~ THEN REPLY #38701 /* ~«Приветствую».~ */ DO ~SetGlobal("Jhelai","GLOBAL",1)
SetGlobal("Craddock_Quest","GLOBAL",2)
~ GOTO 1
  IF ~~ THEN REPLY #38702 /* ~«Ты ведь Джелай? Если да, то Крэддок хочет, чтобы ты вернулся назад на рынок».~ */ JOURNAL #30880 /* ~Авель Многодум сказал мне, что Равель попала в один из лабиринтов Леди Боли, и что ключ к порталу в ее лабиринт, по слухам, является частью ее самой. Не самые полезные сведения.~ */ EXIT
  IF ~~ THEN REPLY #38703 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #38704 /* ~«А?» Мужчина рассеянно на тебя косится. «Что надо?»~ */
  IF ~~ THEN REPLY #38705 /* ~«Ты ведь Джелай? Если да, то Крэддок хочет, чтобы ты вернулся назад на рынок».~ */ EXIT
  IF ~~ THEN REPLY #38706 /* ~«Неважно. Извини за беспокойство».~ */ EXIT
END
