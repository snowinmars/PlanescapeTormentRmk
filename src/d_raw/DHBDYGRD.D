// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHBDYGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHBDYGRD~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2893 /* ~Этот гигант носит такие же гигантские, богато украшенные красные доспехи. Когда ты подходишь к нему, он рассматривает тебя, внимательно, но без страха.~ */
  IF ~~ THEN REPLY #31238 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #31239 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2894 /* ~Из его шлема эхом раздается зычный бас: «Приветствую, гражданин. Я Само-Собой... телохранитель Усердной, Четвертого судьи района. Тебе придется извинить меня, но мой долг — быть рядом с ней. Прощай».~ */
  IF ~~ THEN REPLY #31240 /* ~«Минутку.. У меня несколько вопросы...»~ */ GOTO 2
  IF ~~ THEN REPLY #31241 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #31235 /* ~Он попросту отворачивается и уходит.~ */
  IF ~~ THEN REPLY #31242 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #31236 /* ~Этот гигант носит такие же гигантские, богато украшенные красные доспехи. Подходя к нему, даже сквозь щели в его шлеме ты видишь, как подозрительно он на тебя смотрит.~ */
  IF ~~ THEN REPLY #31243 /* ~«Приветствую...»~ */ GOTO 4
  IF ~~ THEN REPLY #31244 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #31237 /* ~Неожиданно он поднимает оружие. «Так я и думал: ты — это он!» Он стремительно атакует тебя, подзывая криками других стражников.~ */
  IF ~~ THEN REPLY #31245 /* ~Защищаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #31246 /* ~Убежать.~ */ DO ~Enemy()
SetGlobal("Call_MK","GLOBAL",1)
~ EXIT
END
