// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTESTES.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTESTES~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #61602 /* ~Ты видишь низкорослого, лысеющего человека, стоящего в подобии фойе ветхой ночлежки. Его кустистые брови топорщатся от сосредоточения, с которым он соскабливает корку со своего большого, картофелеобразного носа.~ */
  IF ~~ THEN REPLY #61604 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #61605 /* ~Позволить мужчине заниматься своей гигиеной. Осмотреть комнату.~ */ JOURNAL #61617 /* ~Это тест. Он должен попасть в записи дневника... уверен, это была бы неплохая запись.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61603 /* ~Человек даже не поднимает голову. Вместо этого он продолжает коситься на свой нос. «Да? Чего надо?»~ */
  IF ~  Global("Arlo_Quest","GLOBAL",1)
~ THEN REPLY #61606 /* ~«Могу я тут отдохнуть?»~ */ EXIT
END
