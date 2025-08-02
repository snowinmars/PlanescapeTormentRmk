// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHKSLAV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHKSLAV~

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #50969 /* ~Перед тобой крепкий токола, бывший работорговец. Он весь в крови тварей Карцери. «Убиваем монстров, да? Не так уж плохо... убивать вместо ловли рабов. Нам нравится, да?»~ */
  IF ~~ THEN REPLY #50970 /* ~«Продолжай работу».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #50971 /* ~«Ха! Нам нравится убивать, а?»~ */
  IF ~~ THEN REPLY #50972 /* ~«Держись... уже почти конец...»~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #50973 /* ~Перед тобой крепкий токола-работорговец. Его тусклые, наполненные ненавистью глаза пристально смотрят на тебя. Он фыркает каждый раз, когда ты к нему обращаешься, и не дает ответа.~ */
  IF ~~ THEN REPLY #50974 /* ~«Тогда прощай...» ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",900)
Global("Slaver_Gone","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #50975 /* ~Токола что-то тебе ворчит.~ */
  IF ~~ THEN REPLY #50976 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 4 // from:
  SAY #50977 /* ~Перед тобой крепкий токола-работорговец. Его тусклые, наполненные ненавистью глаза пристально смотрят на тебя. Он фыркает каждый раз, когда ты к нему обращаешься, и не дает ответа.~ */
  IF ~~ THEN REPLY #50978 /* ~«Тогда прощай...» ~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Current_Area","GLOBAL",701)
~ THEN BEGIN 5 // from:
  SAY #50979 /* ~Токола что-то тебе ворчит.~ */
  IF ~~ THEN REPLY #50980 /* ~«Тогда прощай». ~ */ EXIT
END
