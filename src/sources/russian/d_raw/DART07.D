// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DART07.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DART07~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #34198 /* ~Набор из четырех картин, изображающих пустынный морской берег поздней ночью. Воздух вокруг картин слегка отдает солью, а нарисованное море, казалось бы, хлещет о темный берег. Табличка гласит: «Побережье Карасуфры».~ */
  IF ~~ THEN REPLY #42662 /* ~Понюхать картину.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 2
  IF ~~ THEN REPLY #42663 /* ~Прикоснуться к картине.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ GOTO 1
  IF ~~ THEN REPLY #42664 /* ~Уйти.~ */ DO ~SetGlobal("View_Art_07","AR0608",1)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.0
  SAY #42660 /* ~Ты кладешь руку на картину, точно не зная, чего ожидать... но ощущаешь лишь фактуру покрытого краской холста.~ */
  IF ~~ THEN REPLY #42665 /* ~Понюхать картину.~ */ GOTO 2
  IF ~~ THEN REPLY #42666 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42661 /* ~Поверхность картины сильно пахнет морским воздухом.~ */
  IF ~~ THEN REPLY #42667 /* ~Прикоснуться к картине.~ */ GOTO 1
  IF ~~ THEN REPLY #42668 /* ~Уйти.~ */ EXIT
END
