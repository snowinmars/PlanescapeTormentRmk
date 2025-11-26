// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~Ты видишь высокую фигуру существа, возвышающегося перед тобой. Нижняя часть его тела напоминает козла. Тем не менее, выше передних ног явно различимы человеческие черты: мужской торс, руки и голова — все покрыто сверкающими доспехами. Глаза существа закрыты, похоже, он спит.~ */
  IF ~~ THEN REPLY #45382 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Пусть спит дальше.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~Существо отрывисто фыркает, но при это глаз не открывает. Определенно, спит оно крепко.~ */
  IF ~~ THEN REPLY #45384 /* ~Пусть спит дальше.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~Получеловек-полукозел продолжает крепко спать. ~ */
  IF ~~ THEN REPLY #45385 /* ~Пусть спит дальше.~ */ EXIT
END
