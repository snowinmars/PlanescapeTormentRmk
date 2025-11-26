// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ2~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49588 /* ~Похоже на то, что дабус был в процессе починки этого здания. На место нескольких старых досок были прибиты новые, более крепкие. Имея подходящий инструмент, можно отменить эти изменения.~ */
  IF ~  PartyHasItem("Prybar")
~ THEN REPLY #49590 /* ~Ломом выдернуть доски.~ */ DO ~SetGlobal("Alley_Puzzle_1","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49589 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49593 /* ~Одну за другой ты убираешь новые доски с фасада здания. Как только ты выдергиваешь последнюю доску, здание издает громкий скрип: его вес неравномерно распределяется по его теперь уже неустойчивой конструкции.~ */
  IF ~~ THEN REPLY #49603 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #58919 /* ~Похоже, что это полуразрушенное здание на грани того, чтобы рухнуть. Недавно тут прибили несколько новых досок, чтобы укрепить обветшалую постройку.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #58920 /* ~Осмотреть здание более тщательно.~ */ GOTO 0
  IF ~~ THEN REPLY #58921 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_1","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #58922 /* ~Похоже, что это полуразрушенное здание на грани того, чтобы рухнуть. Приколоченные дабусом доски были убраны, вернув лачугу в ее исходное разрушенное состояние.~ */
  IF ~~ THEN REPLY #58923 /* ~Уйти.~ */ EXIT
END
