// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDOLL~

IF ~  Global("Know_Lady","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #22975 /* ~Годы не пожалели эту маленькую тряпичную куклу: она расходится по швам, а ткань, похоже, уже начала расползаться. Выглядит она как какая-то странно одетая женщина с ореолом шипов вокруг головы.~ */
  IF ~~ THEN REPLY #22981 /* ~«Аааа... ты просто маленькая симпатичная кукла, не так ли? Разве нет? Да, именно так!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_3","GLOBALLaw",-1)
~ GOTO 1
  IF ~~ THEN REPLY #22982 /* ~Отложить куклу.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #22976 /* ~Кукла никак не реагирует на твои разговоры, безмолвно глядя на тебя своими глазками-пуговками.~ */
  IF ~~ THEN REPLY #22983 /* ~«Хорошо, хорошо... Я просто хотел немного повеселиться... фу-ух».~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #22977 /* ~Годы не пожалели эту маленькую тряпичную куклу: она расходится по швам, а ткань, похоже, уже начала расползаться. Очевидно, это умышленная копия Леди Боли, хотя глаза-пуговки и плюшевая мягкость как-то не особо нагоняют на тебя страх.~ */
  IF ~~ THEN REPLY #22984 /* ~«Аааа... ты просто маленькая Леди Боли, не так ли? Разве нет? Да, именно так!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22985 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22986 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22987 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #22988 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22989 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22990 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22991 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #22992 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #22993 /* ~Отложить куклу.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2 2.6 4.2 4.6
  SAY #22978 /* ~Едва начав произносить слова, ты неожиданно чувствуешь странное ползущее ощущение в затылке. Вместе с этим тебе пришло предчувствие, что из-за этих слов ты можешь оказаться в большой беде... даже само *ощущение* этого излучает опасность.~ */
  IF ~  GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #22994 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22995 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #22996 /* ~Отложить куклу.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0 2.1 2.3 2.4 3.1 4.0 4.1 4.3 4.4 5.0 5.1 5.2
  SAY #22979 /* ~Кукла никак не реагирует на твои разговоры, безмолвно глядя на тебя своими глазками-пуговками.~ */
  IF ~~ THEN REPLY #22997 /* ~«Аааа... ты просто маленькая Леди Боли, не так ли? Разве нет? Да, именно так!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22998 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #22999 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalLT("Lady","GLOBAL",48)
~ THEN REPLY #23000 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalLT("Lady","GLOBAL",49)
~ THEN REPLY #23001 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~  Global("Doll_Warning","GLOBAL",1)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23002 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatGT(Protagonist,12,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23003 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~SetGlobal("Doll_Warning","GLOBAL",1)
~ GOTO 3
  IF ~  Global("Doll_Warning","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
GlobalGT("Lady","GLOBAL",47)
~ THEN REPLY #23004 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 5
  IF ~  GlobalGT("Lady","GLOBAL",48)
~ THEN REPLY #23005 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 5
  IF ~~ THEN REPLY #23006 /* ~Отложить куклу.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.5 2.7 2.8 3.0 4.5 4.7 4.8
  SAY #22980 /* ~Произнеся слова, ты неожиданно ощущаешь порыв морозного ветра вокруг себя... и ужас. Что-то не так, тряпичная кукла выглядит не такой уж и безобидной, как казалось. На секунду, всего лишь на одну секунду тебе показалось, что клинки вокруг головы куклы сверкают металлическим блеском.~ */
  IF ~~ THEN REPLY #23007 /* ~«Аааа... ты просто маленькая Леди Боли, не так ли? Разве нет? Да, именно так!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23008 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #23009 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobal("Lady","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 4
  IF ~~ THEN REPLY #23010 /* ~Отложить куклу.~ */ EXIT
END

IF ~  GlobalGT("Know_Lady","GLOBAL",0)
Global("Doll_Switch","GLOBAL",1)
~ THEN BEGIN 6 // from:
  SAY #51951 /* ~Годы не пожалели эту маленькую тряпичную куклу: она расходится по швам, а ткань, похоже, уже начала расползаться. Очевидно, это умышленная копия Леди Боли, хотя глаза-пуговки и плюшевая мягкость как-то не особо нагоняют на тебя страх.~ */
  IF ~~ THEN REPLY #51955 /* ~«Аааа... ты просто маленькая Леди Боли, не так ли? Разве нет? Да, именно так!»~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_1","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51956 /* ~Правда: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ GOTO 7
  IF ~~ THEN REPLY #51957 /* ~Шутка: «О, великая Леди Боли, богиня Сигила, услышь мои молитвы и приди ко мне и помоги в час нужды».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lady_Doll_2","GLOBALLaw",-3)
~ GOTO 7
  IF ~~ THEN REPLY #51958 /* ~Отложить куклу.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #51960 /* ~Кукла никак не реагирует на твои разговоры, безмолвно глядя на тебя своими глазками-пуговками. Вне Сигила кукла не производит ОЩУЩЕНИЕ присутствия Леди Боли.~ */
  IF ~~ THEN REPLY #51961 /* ~Быстро обнять куклу и положить ее назад в сумку.~ */ EXIT
END
