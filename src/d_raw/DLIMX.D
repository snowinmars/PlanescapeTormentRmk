// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLIMX.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DLIMX~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #20723 /* ~Это странного вида существо напоминает насекомое и животное одновременно. Ноги слишком большие, в отличие от рудиментарных маленьких рук, пестрый полупанцирь закрывает всю спину. У него также есть пара насекомовидных крыла, пара небольших черных глаз и вечно радостно улыбающийся рот.~ */
  IF ~~ THEN REPLY #21872 /* ~Погладить лим-лима.~ */ GOTO 1
  IF ~~ THEN REPLY #21873 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21874 /* ~Оставить лим-лима в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 1.0 3.0
  SAY #21867 /* ~«Пийо! Пийо!» Лим-лим весело прыгает, жужжа крыльями. Похоже, он очень быстро привязывается к хозяину.~ */
  IF ~~ THEN REPLY #21875 /* ~Погладить лим-лима еще немного.~ */ GOTO 1
  IF ~~ THEN REPLY #21876 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21877 /* ~Оставить лим-лима в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 3.1
  SAY #21869 /* ~Ты пытаешься отвесить быстрый пинок лим-лиму, однако он ловко подпрыгивает. «Пийо!» Он разворачивается и убегает, жужжа крыльями.~ */
  IF ~~ THEN REPLY #21878 /* ~Отпустить его.~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #21879 /* ~Догнать его, попытаться пнуть его еще раз.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #21871 /* ~Лим-лим смотрит вверх на тебя. «Пийо! Пийо!» Он счастливо жужжит крыльями, понимая, что ты уделяешь ему внимание. «Пийо!»~ */
  IF ~~ THEN REPLY #21880 /* ~Погладить лим-лима.~ */ GOTO 1
  IF ~~ THEN REPLY #21881 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 2
  IF ~~ THEN REPLY #21882 /* ~Оставить лим-лима в покое.~ */ EXIT
END
