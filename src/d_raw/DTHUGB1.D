// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1904 /* ~Ты видишь очень сильного человека с каменным выражением лица.~ */
  IF ~~ THEN REPLY #1905 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #1906 /* ~Пройти мимо.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #1907 /* ~Секунду мужчина смотрит на тебя, затем хмыкает и поднимает руку, показывая огромный кинжал. Недобро улыбаясь, он начинает заходить к тебе сбоку под угрожающим углом.~ */
  IF ~~ THEN REPLY #1908 /* ~Атаковать его.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1909 /* ~«Э-э, прощай...»~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
