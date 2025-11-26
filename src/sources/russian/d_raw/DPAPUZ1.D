// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPAPUZ1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPAPUZ1~

IF ~~ THEN BEGIN 0 // from: 2.0
  SAY #49597 /* ~Похоже на то, что дабус пытался разрушить это древнее строение. Несколько досок вырваны из каркаса здания: их гвозди были практически полностью выдернуты.~ */
  IF ~  PartyHasItem("Hammer")
~ THEN REPLY #49598 /* ~Молотком приколотить доски на место.~ */ DO ~SetGlobal("Alley_Puzzle_2","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #49599 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49600 /* ~Ты аккуратно приколачиваешь доски на место. Отступив на шаг, чтобы рассмотреть свою работу, ты замечаешь, что, как это ни странно, здание уже не кажется таким старым, каким оно показалось на первый взгляд.~ */
  IF ~~ THEN REPLY #49602 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #59103 /* ~Этот шаткий жилой дом выглядит так, будто он стоит тут уже много веков. Его деревянные стены высохли и обветшали от времени. Несколько досок с этой стороны здания, похоже, были недавно выдернуты.~ */
  IF ~  Global("Pregnant_Quest","GLOBAL",2)
~ THEN REPLY #59105 /* ~Осмотреть здание.~ */ GOTO 0
  IF ~~ THEN REPLY #59106 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alley_Puzzle_2","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #59107 /* ~После того, как выдернутые доски были аккуратно прибиты, к этому старому зданию вернулось его особое очарование обветшалости.~ */
  IF ~~ THEN REPLY #59108 /* ~Уйти.~ */ EXIT
END
