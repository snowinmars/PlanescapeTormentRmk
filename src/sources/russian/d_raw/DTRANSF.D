// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANSF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANSF~

IF ~  Global("Annah_Death_Scene","GLOBAL",1)
!Global("Grace_Death_Scene","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #63314 /* ~А... ДЕВЧОНКА-ПОЛУНЕЧИСТЬ.~ */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63315 /* ~ГДЕ ТОТ, КТО ПРИВЕЛ ТЕБЯ СЮДА?~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 0
END

IF ~~ THEN BEGIN 2 // from:
  SAY #63316 /* ~В ТВОИХ СЛОВАХ МНОГО СТРАСТИ. И СЛИШКОМ МАЛО РАССУДИТЕЛЬНОСТИ.~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 1
END

IF ~~ THEN BEGIN 3 // from:
  SAY #63317 /* ~ЛЮБОПЫТНО...~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #63318 /* ~ПРИЧИНА ТОГО, ПОЧЕМУ ТЫ СЛЕДУЕШЬ ЗА НИМ, ТЕПЕРЬ ЯСНА...~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 2
END

IF ~~ THEN BEGIN 5 // from:
  SAY #63319 /* ~МОЖЕТ, ТЫ ЧУВСТВУЕШЬ СЕБЯ КАКОЙ-ТО *ОСОБЕННОЙ* В ЕГО ГЛАЗАХ?~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 3
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63320 /* ~ПОЛУНЕЧИСТЬ, Я НАБЛЮДАЛ ЗА ТЕМ, С КЕМ ТЫ ИДЕШЬ, НА ПРОТЯЖЕНИЕ МНОГИХ ЖИЗНЕЙ. Я ЗНАЮ ЕГО СЕРДЦЕ И ЗНАЮ, ЧТО БЫЛО НЕСЧЕТНОЕ КОЛИЧЕСТВО ДРУГИХ, КТО ИСПЫТЫВАЛ К НЕМУ ЧУВСТВА.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63321 /* ~ИЗ ВСЕХ ИХ, ТЫ, НЕСОМНЕННО, *САМАЯ* НЕЗНАЧИТЕЛЬНАЯ. ТЫ *ВЕЩЬ*, ПОРОЖДЕННАЯ ВО ВНЕБРАЧНОМ СОЮЗЕ ТВОИХ РОДИТЕЛЕЙ И ПЛАНОВ...~ */
  IF ~~ THEN EXTERN ~DANNAHF~ 4
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63322 /* ~ОТВЕТЬ МНЕ, И ПОЗНАЕШЬ МИР, ДИТЯ.~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63323 /* ~*ЗНАЧИТ* ЛИ ТОТ, ЗА КЕМ ТЫ ИДЕШЬ, ЧТО-НИБУДЬ ДЛЯ ТЕБЯ?~ */
  IF ~~ THEN DO ~SetGlobal("Annah_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201CSA3",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from:
  SAY #63336 /* ~МОИ ЦЕЛИ ТЕБЯ НЕ КАСАЮТСЯ, ПАДШАЯ ТАНАРРИ. ТВОЕ ЧЕРНОЕ СЕРДЦЕ БЬЕТСЯ В ТВОЕЙ ГРУДИ ТОЛЬКО ПО МОЕЙ МИЛОСТИ. МОЖЕШЬ УЙТИ ПРЯМО СЕЙЧАС, СОХРАНИВ СЕБЕ ЖИЗНЬ, ЕСЛИ ХОЧЕШЬ.~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",2)
StartCutSceneMode()
StartCutSceneEx("1201csG5",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",3)
~ THEN BEGIN 11 // from:
  SAY #63337 /* ~У ЭТОЙ ГЛУПОЙ ЗАТЕИ *НЕ МОЖЕТ БЫТЬ* УДОВЛЕТВОРИТЕЛЬНЫХ РЕШЕНИЙ. ТЫ ПОКИНЕШЬ ЭТО МЕСТО И ОСТАВИШЬ СВОЕГО НЕУМИРАЮЩЕГО СПУТНИКА.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #63338 /* ~НЕ БОЙСЯ ЗА ЕГО ЖИЗНЬ. ЕДИНСТВЕННАЯ ЦЕНА, КОТОРУЮ ОН ЗАПЛАТИТ — ЭТО ПОТЕРЯ ПАМЯТИ.~ */
  IF ~~ THEN EXTERN ~DGRACEF~ 6
END

IF ~~ THEN BEGIN 13 // from:
  SAY #63339 /* ~*ОН ЗАБУДЕТ*. НЕ ПОМНИТЬ — ЕГО *СУДЬБА*.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #63340 /* ~ОН ЗАБУДЕТ ТЕБЯ, ТАНАРРИ, ТАК ЖЕ, КАК ОН ЗАБЫЛ ВСЕХ ТЕХ, КТО ШЕЛ С НИМ ПО ЕГО ПУТИ СТРАДАНИЙ. ОН СУЩЕСТВУЕТ, ЧТОБЫ УМИРАТЬ, ЗАБЫВАТЬ, А ПОТОМ СНОВА УМИРАТЬ. ОН — *НИЧТО*.~ */
  IF ~~ THEN EXTERN ~DGRACEF~ 8
END

IF ~~ THEN BEGIN 15 // from:
  SAY #63341 /* ~ТАНАРРИ...~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #63342 /* ~ВОЗМОЖНО, ТЫ СОМНЕВАЕШЬСЯ В МОЕМ МОГУЩЕСТВЕ ЗДЕСЬ, В ЭТОМ МЕСТЕ. ДЕМОНСТРАЦИЯ УСТРАНИТ ТВОИ СОМНЕНИЯ.~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",4)
StartCutSceneMode()
StartCutSceneEx("1201csG7",FALSE)
~ EXIT
END
