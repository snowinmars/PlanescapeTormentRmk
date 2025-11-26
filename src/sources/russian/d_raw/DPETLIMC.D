// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMC.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMC~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39450 /* ~Это ваш собственный лим-лим. Заметив твое внимание к нему, он начинает ласково щебетать. «Пийо!»~ */
  IF ~~ THEN REPLY #42733 /* ~Осмотреть своего лим-лима.~ */ GOTO 1
  IF ~~ THEN REPLY #42734 /* ~Поднять своего лим-лима обратно.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42735 /* ~Погладить своего лим-лима.~ */ GOTO 2
  IF ~~ THEN REPLY #42736 /* ~Пнуть своего лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42737 /* ~Прекратить играть с своим лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42730 /* ~Твой лим-лим напоминает насекомое и животное одновременно. Ноги слишком большие, в отличие от рудиментарных маленьких рук, пестрый полупанцирь закрывает всю спину. У него также есть пара насекомовидных крыла, пара небольших черных глаз и вечно радостно улыбающийся рот.~ */
  IF ~~ THEN REPLY #42738 /* ~Поднять своего лим-лима обратно.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42739 /* ~Погладить своего лим-лима.~ */ GOTO 2
  IF ~~ THEN REPLY #42740 /* ~Пнуть своего лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42741 /* ~Прекратить играть с своим лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42731 /* ~«Пийо! Пийо!» Лим-лим весело прыгает, жужжа крыльями. Похоже, он очень быстро привязывается к хозяину.~ */
  IF ~~ THEN REPLY #42742 /* ~Поднять своего лим-лима обратно.~ */ DO ~GiveItemCreate("LimLim",Protagonist,1,0,0)
DestroySelf()
~ EXIT
  IF ~~ THEN REPLY #42743 /* ~Погладить своего лим-лима еще немного.~ */ GOTO 2
  IF ~~ THEN REPLY #42744 /* ~Пнуть своего лим-лима.~ */ GOTO 3
  IF ~~ THEN REPLY #42745 /* ~Прекратить играть с своим лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42732 /* ~Ты пытаешься отвесить быстрый пинок своему лим-лиму, однако он ловко подпрыгивает. «Пийо!» Он разворачивается и убегает, жужжа крыльями.~ */
  IF ~~ THEN REPLY #42746 /* ~Отпустить его.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #42747 /* ~Догнать его, попытаться пнуть его еще раз.~ */ DO ~SetGlobal("Buy_LL","GLOBAL",2)
EscapeArea()
~ EXIT
END
