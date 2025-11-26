// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPETLIMI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPETLIMI~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #39448 /* ~Это твой собственный лим-лим. Заметив твое внимание к нему, он начинает ласково щебетать. «Пийо!»~ */
  IF ~~ THEN REPLY #39449 /* ~Осмотреть лим-лима.~ */ GOTO 1
  IF ~~ THEN REPLY #42748 /* ~Отпустить лим-лима немного побегать вокруг.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42749 /* ~Погладить лим-лима.~ */ GOTO 2
  IF ~~ THEN REPLY #42750 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42751 /* ~Прекратить играть с лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42752 /* ~Твой лим-лим напоминает насекомое и животное одновременно. Ноги слишком большие, в отличие от рудиментарных маленьких рук, пестрый полупанцирь закрывает всю спину. У него также есть пара насекомовидных крыла, пара небольших черных глаз и рот, который всегда кажется радостно улыбающимся.~ */
  IF ~~ THEN REPLY #42753 /* ~Отпустить лим-лима немного побегать вокруг.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42754 /* ~Погладить лим-лима.~ */ GOTO 2
  IF ~~ THEN REPLY #42755 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42756 /* ~Прекратить играть с лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.1 2.1
  SAY #42757 /* ~«Пийо! Пийо!» Лим-лим весело извивается, жужжа крыльями. Похоже, он очень быстро привязывается к хозяину.~ */
  IF ~~ THEN REPLY #42758 /* ~Отпустить лим-лима немного побегать вокруг.~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
  IF ~~ THEN REPLY #42759 /* ~Погладить лим-лима еще немного.~ */ GOTO 2
  IF ~~ THEN REPLY #42760 /* ~Пнуть лим-лима.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_LL_1","GLOBALGood",-1)
~ GOTO 3
  IF ~~ THEN REPLY #42761 /* ~Прекратить играть с лим-лимом.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3 1.2 2.2
  SAY #42762 /* ~Ты пытаешься отвесить пинок лим-лиму, однако он выворачивается из твоих рук и спархивает на землю!~ */
  IF ~~ THEN REPLY #42763 /* ~«Ой...»~ */ DO ~DestroyPartyItem("LimLim",FALSE)
CreateCreatureAtFeet("Pet_Lim")
~ EXIT
END
