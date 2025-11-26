// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHAODA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHAODA~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #49891 /* ~Похоже, ты застал ее врасплох. Она тут же прекращает рыскать по навесу и бросает на тебя взволнованный взгляд.~ */
  IF ~~ THEN REPLY #49892 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #49893 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49894 /* ~«Я ничего не делала! Клянусь!»~ */
  IF ~~ THEN REPLY #49895 /* ~«Почему бы тебе не сказать мне, чего ты не делала?» ~ */ GOTO 2
  IF ~~ THEN REPLY #49896 /* ~«Твои дела меня не касаются. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #49897 /* ~Она смотрит на тебя, как бы собираясь что-то сказать, но затем мигом бросается за дверь.~ */
  IF ~~ THEN REPLY #49898 /* ~«Стой...»~ */ DO ~EscapeArea()
~ EXIT
END
