// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCBOSS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCBOSS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2899 /* ~Я злой, погрязший в клише босс конструктов, который правит кубом модронов. Поклонись передо мной и плачь, плоть.~ */
  IF ~~ THEN REPLY #2900 /* ~Поклонись мне, злой дрон. Хорошего дня... и счастливо оставаться.~ */ EXIT
END
