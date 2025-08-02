// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGV1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGV1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #1956 /* ~Когда ты подходишь, мужчина отступает на шаг. В его глазах виден трусливый хищный огонек, как у падальщика... только глянув на него, ты осознаешь, что он прикидывает, сможет ли с тобой справиться. И все же его голос дрожит от неуверенности. «Оставь меня в покое, я н-н-ничего тебе не сделал».~ */
  IF ~~ THEN REPLY #1957 /* ~«Даже не думай нападать на меня, иначе мой клинок найдет себе новое жилище».~ */ GOTO 3
  IF ~~ THEN REPLY #1958 /* ~«Ты *нарываешься* на драку?»~ */ GOTO 1
  IF ~~ THEN REPLY #1960 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #1959 /* ~«Ни на какую драку я не нарываюсь, — при разговоре из его рта летит слюна, — но ты бы последил за собой, раз думаешь, что можешь меня взять!»~ */
  IF ~~ THEN REPLY #1961 /* ~«*Никто* не говорит со мной подобным тоном, и *никто* мне не угрожает. Возьми свои слова обратно, или для второго шанса будешь уже слишком мертвым».~ */ GOTO 2
  IF ~~ THEN REPLY #1962 /* ~«Да-да. Просто держись на расстоянии, иначе пожалеешь».~ */ GOTO 3
  IF ~~ THEN REPLY #1963 /* ~Атаковать его.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1964 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #1965 /* ~Он угрюмо смотрит на тебя.~ */
  IF ~~ THEN REPLY #1966 /* ~«Ты меня *понял*? Возьми свои слова обратно, не то я выпущу тебе кишки».~ */ GOTO 4
  IF ~~ THEN REPLY #1971 /* ~Атаковать его.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1972 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.1
  SAY #1967 /* ~Он угрюмо смотрит на тебя.~ */
  IF ~~ THEN REPLY #1968 /* ~«Ты меня *понял*? Не подходи, не то я выпущу тебе кишки».~ */ GOTO 5
  IF ~~ THEN REPLY #1969 /* ~Атаковать его.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #1970 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #1973 /* ~Его голос дрожит. «Тогда я... беру свои слова обратно. Никого не хотел обидеть».~ */
  IF ~~ THEN REPLY #1974 /* ~«Ладно. Прочь с глаз моих».~ */ EXIT
  IF ~~ THEN REPLY #1975 /* ~«Прочь с глаз моих».~ */ EXIT
  IF ~~ THEN REPLY #1976 /* ~Все равно напасть на него.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #1977 /* ~«В таком случае, наши пути больше не пересекутся. Не хотел тебя обидеть, проходя по той же улице».~ */
  IF ~~ THEN REPLY #1978 /* ~«Ладно. Убирайся с глаз моих».~ */ EXIT
  IF ~~ THEN REPLY #1979 /* ~«Прочь с глаз моих».~ */ EXIT
  IF ~~ THEN REPLY #1980 /* ~Все равно напасть на него.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Vulture_1","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Vulture_1","GLOBALLaw",-1)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
END
