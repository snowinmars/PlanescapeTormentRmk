// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTRANS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTRANS~

IF ~  Global("Transcendent_Final_Speech","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2993 /* ~ИТАК, ТЫ ПРИШЕЛ.~ [TRA059] */
  IF ~~ THEN GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #63999 /* ~ТЫ ЗДЕСЬ НЕЗВАНЫЙ ГОСТЬ, СЛОМАННЫЙ.~ [TRA061] */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64000 /* ~«Что ты сделал с моими друзьями?»~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64001 /* ~«Что ты сделал с моим другом?»~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64002 /* ~«Что ты сделал с моими товарищами?»~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64003 /* ~«Что ты сделал с моим товарищем?»~ */ DO ~SetGlobal("Transcendent_Final_Speech","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1204cut1",FALSE)
~ EXIT
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64004 /* ~«Я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Подобные вещи указывают на магию Равель».~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64058 /* ~«Я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Подобные вещи указывают на магию Равель».~ */ GOTO 34
  IF ~  Global("Fortress_Party","GLOBAL",1)
~ THEN REPLY #64059 /* ~«Кто ты?»~ */ GOTO 31
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #64012 /* ~КАК И РАНЬШЕ, ОНИ УМЕРЛИ ЗА ТЕБЯ. ТАКОВА СУДЬБА ВСЕХ СМЕРТНЫХ ВЕЩЕЙ.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN BEGIN 3 // from:
  SAY #64013 /* ~КАК И РАНЬШЕ, ОН УМЕР ЗА ТЕБЯ. ТАКОВА СУДЬБА ВСЕХ СМЕРТНЫХ ВЕЩЕЙ.~ */
  IF ~~ THEN GOTO 5
END

IF ~  Global("Transcendent_Final_Speech","GLOBAL",1)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #64014 /* ~КАК И РАНЬШЕ, ОНА УМЕРЛА ЗА ТЕБЯ. ТАКОВА СУДЬБА ВСЕХ СМЕРТНЫХ ВЕЩЕЙ.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.0 3.0 4.0
  SAY #64015 /* ~ЭТО СУДЬБА ВСЕХ ТЕХ, КТО СЛЕДУЕТ ЗА ТОБОЙ, СЛОМАННЫЙ. ТЫ МНОГОЕ ЗАБЫЛ.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #64017 /* ~«Зачем ты это сделал?»~ */ GOTO 6
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64018 /* ~«Зачем ты это сделал?»~ */ GOTO 7
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #64019 /* ~«Зачем ты это сделал?»~ */ GOTO 8
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64020 /* ~«Зачем ты это сделал?»~ */ GOTO 9
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #64016 /* ~ОНИ ПЫТАЛИСЬ ПРИЧИНИТЬ МНЕ ВРЕД. ИМЕННО *ЗДЕСЬ*, СРЕДИ ВСЕХ ВОЗМОЖНЫХ МЕСТ. Я ЗАЩИЩАЛСЯ. ПРИ ЭТОМ СМЕРТНОСТЬ ЗАБРАЛА ИХ ЖИЗНИ. ОНИ УМЕРЛИ ПО СВОЕЙ ВИНЕ.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #64021 /* ~ОН ПЫТАЛСЯ ПРИЧИНИТЬ МНЕ ВРЕД. ИМЕННО *ЗДЕСЬ*, СРЕДИ ВСЕХ ВОЗМОЖНЫХ МЕСТ. Я ЗАЩИЩАЛСЯ. ПРИ ЭТОМ СМЕРТНОСТЬ ЗАБРАЛА ЕГО ЖИЗНЬ. ОН УМЕР ПО СВОЕЙ ВИНЕ.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #64022 /* ~ОНА ПЫТАЛАСЬ ПРИЧИНИТЬ МНЕ ВРЕД. ИМЕННО *ЗДЕСЬ*, СРЕДИ ВСЕХ ВОЗМОЖНЫХ МЕСТ. Я ЗАЩИЩАЛСЯ. ПРИ ЭТОМ СМЕРТНОСТЬ ЗАБРАЛА ЕЕ ЖИЗНЬ. ОНА УМЕРЛА ПО СВОЕЙ ВИНЕ.~ */
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 5.3
  SAY #64023 /* ~ОНА ПЫТАЛАСЬ ПРИЧИНИТЬ МНЕ ВРЕД. ИМЕННО *ЗДЕСЬ*, СРЕДИ ВСЕХ ВОЗМОЖНЫХ МЕСТ. Я ЗАЩИЩАЛСЯ. ПРИ ЭТОМ СМЕРТНОСТЬ ЗАБРАЛА ЕЕ ЖИЗНЬ. ОНА УМЕРЛА ПО СВОЕЙ ВИНЕ.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 10 // from: 6.0
  SAY #64024 /* ~Я ДАЛ ИМ ВОЗМОЖНОСТЬ ПОКИНУТЬ ЭТО МЕСТО, НО ПОХОЖЕ, ЧТО ОНИ РЕШИЛИ ПОМОЧЬ ТЕБЕ, ДАЖЕ ЦЕНОЙ СВОИХ ЖИЗНЕЙ.~ */
  IF ~  Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64030 /* ~«Значит, ты их *убил*».~ */ GOTO 16
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64031 /* ~«Значит, ты их *убил*».~ */ GOTO 17
  IF ~  Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64032 /* ~«Значит, ты их *убил*».~ */ GOTO 20
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #64036 /* ~«Значит, ты их *убил*».~ */ GOTO 18
END

IF ~~ THEN BEGIN 11 // from: 7.0
  SAY #64025 /* ~Я ДАЛ ЕМУ ВОЗМОЖНОСТЬ ПОКИНУТЬ ЭТО МЕСТО, НО ПОХОЖЕ, ЧТО ОН РЕШИЛ ПОМОЧЬ ТЕБЕ, ДАЖЕ ЦЕНОЙ СВОЕЙ ЖИЗНИ.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 12 // from: 8.0
  SAY #64026 /* ~Я ДАЛ ЕЙ ВОЗМОЖНОСТЬ ПОКИНУТЬ ЭТО МЕСТО, НО ПОХОЖЕ, ЧТО ОНА РЕШИЛА ПОМОЧЬ ТЕБЕ, ДАЖЕ ЦЕНОЙ СВОЕЙ ЖИЗНИ.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 9.0
  SAY #64027 /* ~Я ДАЛ ЕЙ ВОЗМОЖНОСТЬ ПОКИНУТЬ ЭТО МЕСТО, НО ПОХОЖЕ, ЧТО ОНА РЕШИЛА ПОМОЧЬ ТЕБЕ, ДАЖЕ ЦЕНОЙ СВОЕЙ ЖИЗНИ.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 12.0
  SAY #64028 /* ~ОНА ОБОРОНЯЛА ТЕБЯ ОСОБЕННО ЯРОСТНО. ЕЕ ЧУВСТВА К ТЕБЕ ГОРЕЛИ ЯРЧЕ ОГНЕЙ ЭЛИЗИУМА.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #64029 /* ~ОНА БЫЛА ДОВОЛЬНО СИЛЬНА. БОЛЬ, КОТОРУЮ ОНА ТЕРПЕЛА, УБИЛА БЫ ТРОИХ КРУПНЫХ ДЕМОНОВ.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 16 // from: 10.0 17.0 19.0 20.0
  SAY #64033 /* ~ИХ СМЕРТЬ НЕ ДОСТАВИЛА МНЕ УДОВОЛЬСТВИЕ.~ */
  IF ~~ THEN REPLY #64051 /* ~«Так почему же ты *сделал* это?»~ */ GOTO 23
END

IF ~~ THEN BEGIN 17 // from: 10.1
  SAY #64034 /* ~ДЕВЧОНКА-ТИФЛИНГ ОБОРОНЯЛА ТЕБЯ ОСОБЕННО ЯРОСТНО. ЕЕ ЧУВСТВА К ТЕБЕ ГОРЕЛИ ЯРЧЕ ОГНЕЙ ЭЛИЗИУМА.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 18 // from: 10.3
  SAY #64035 /* ~ДЕВЧОНКА-ТИФЛИНГ ОБОРОНЯЛА ТЕБЯ ОСОБЕННО ЯРОСТНО. ЕЕ ЧУВСТВА К ТЕБЕ ГОРЕЛИ ЯРЧЕ ОГНЕЙ ЭЛИЗИУМА.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #64037 /* ~А ТАНАРРИ... ОНА БЫЛА ДОВОЛЬНО СИЛЬНА. ОНА ТЕРПЕЛА БОЛЬ, КОТОРАЯ ПОСРАМИЛА БЫ САМИХ БААТЕЗУ.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 20 // from: 10.2
  SAY #64038 /* ~ТАНАРРИ БЫЛА ДОВОЛЬНО СИЛЬНА. ОНА ТЕРПЕЛА БОЛЬ, КОТОРАЯ ПОСРАМИЛА БЫ САМИХ БААТЕЗУ.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 21 // from: 11.0
  SAY #64039 /* ~ЕГО СМЕРТЬ НЕ ДОСТАВИЛА МНЕ УДОВОЛЬСТВИЯ.~ */
  IF ~~ THEN REPLY #64049 /* ~«Так почему же ты *сделал* это?»~ */ GOTO 24
END

IF ~~ THEN BEGIN 22 // from: 14.0 15.0
  SAY #64040 /* ~ЕЕ СМЕРТЬ НЕ ДОСТАВИЛА МНЕ УДОВОЛЬСТВИЯ.~ */
  IF ~~ THEN REPLY #64050 /* ~«Так почему же ты *сделал* это?»~ */ GOTO 25
END

IF ~~ THEN BEGIN 23 // from: 16.0
  SAY #64041 /* ~ЭТО ПРОИЗОШЛО НЕ ПО МОЕЙ ВОЛЕ. НЕ Я ПРИВЕЛ ИХ СЮДА.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 21.0
  SAY #64042 /* ~ЭТО ПРОИЗОШЛО НЕ ПО МОЕЙ ВОЛЕ. НЕ Я ПРИВЕЛ ЕГО СЮДА.~ */
  IF ~~ THEN GOTO 27
END

IF ~~ THEN BEGIN 25 // from: 22.0
  SAY #64043 /* ~ЭТО ПРОИЗОШЛО НЕ ПО МОЕЙ ВОЛЕ. НЕ Я ПРИВЕЛ ЕЕ СЮДА.~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26 // from: 23.0
  SAY #64044 /* ~У НИХ ВСЕХ БЫЛ ВЫБОР. И ВСЕ ОНИ ВЫБРАЛИ СМЕРТЬ ЗА ТЕБЯ.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 24.0
  SAY #64045 /* ~У НЕГО БЫЛ ВЫБОР. И ОН ВЫБРАЛ СМЕРТЬ ЗА ТЕБЯ.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 28 // from: 25.0
  SAY #64046 /* ~У НЕЕ БЫЛ ВЫБОР. И ОНА ВЫБРАЛА СМЕРТЬ ЗА ТЕБЯ.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 26.0 27.0 28.0
  SAY #64047 /* ~ЭТО СУДЬБА ВСЕХ, КТО СЛЕДУЕТ ЗА ТОБОЙ. ПОТОМУ ЧТО ОНИ — СТРАДАЮЩИЕ ДУШИ, КОТОРЫЕ ИЩУТ ОСВОБОЖДЕНИЯ. НО НЕ ЗНАЮТ, ПОЧЕМУ.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #64048 /* ~ТЫ ЗАБЫЛ ЭТО. И ЗАБУДЕШЬ СНОВА.~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64052 /* ~«Я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Подобные вещи указывают на магию Равель».~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64060 /* ~«Я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Подобные вещи указывают на магию Равель».~ */ GOTO 34
  IF ~~ THEN REPLY #64061 /* ~«Кто ты?! Зачем ты это сделал?!»~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 1.6 30.2
  SAY #64053 /* ~КАК МОЖЕТ СТАТЬСЯ, ЧТО ТЫ ПРОДЕЛАЛ ВЕСЬ ЭТОТ ПУТЬ, НЕ ЗНАЯ, ЧТО ЖДЕТ ТЕБЯ В КОНЦЕ?~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
~ THEN REPLY #64062 /* ~«Нет, я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Такие вещи указывают на магию Равель».~ */ GOTO 34
  IF ~  CheckStatGT(Protagonist,20,WIS)
CheckStatLT(Protagonist,21,INT)
~ THEN REPLY #64063 /* ~«Нет, я знаю, кто ты такой. Ты — моя смертность. Твоя броня... она как переплетенные ветви дерева. Такие вещи указывают на магию Равель».~ */ GOTO 34
  IF ~~ THEN REPLY #64064 /* ~«О чем это ты?»~ */ GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.2
  SAY #64054 /* ~Я ТОТ, КТО СОПРОВОЖДАЕТ ВСЕХ ЖИВЫХ. МОЙ ГОЛОС — ПРЕДСМЕРТНЫЙ ХРИП, ПОСЛЕДНИЙ ВЗДОХ, ШЕПОТ УМИРАЮЩЕГО.~ */
  IF ~~ THEN REPLY #64065 /* ~«Ты... моя смертность».~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #64055 /* ~ДА. Я ТОТ, КТО БЫЛ ОТДЕЛЕН ОТ ТЕБЯ СИЛОЙ ВЕДЬМЫ. ТОТ, КТО БЫЛ ОСВОБОЖДЕН ИЗ ТЕМНИЦЫ ТВОЕЙ ПЛОТИ.~ */
  IF ~~ THEN REPLY #64066 /* ~«Освобожден от меня?»~ */ GOTO 37
END

IF ~~ THEN BEGIN 34 // from: 1.4 1.5 30.0 30.1 31.0 31.1
  SAY #64056 /* ~ДА. Я ТОТ, КТО БЫЛ ОТДЕЛЕН ОТ ТЕБЯ СИЛОЙ ВЕДЬМЫ.~ */
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #64057 /* ~Я ТОТ, КТО СОПРОВОЖДАЕТ ВСЕХ ЖИВЫХ. МОЙ ГОЛОС — ПРЕДСМЕРТНЫЙ ХРИП, ПОСЛЕДНИЙ ВЗДОХ, ШЕПОТ УМИРАЮЩЕГО.~ */
  IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #64067 /* ~Я БЫЛ ОСВОБОЖДЕН ИЗ ТЕМНИЦЫ ТВОЕЙ ПЛОТИ.~ */
  IF ~~ THEN REPLY #64068 /* ~«Освобожден от меня?»~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 33.0 36.0
  SAY #64069 /* ~В ТОТ МИГ, КОГДА МЕНЯ ОТДЕЛИЛИ ОТ ТВОЕЙ ПОГАНОЙ ОБОЛОЧКИ, Я ПОЗНАЛ ЖИЗНЬ. Я ПОЗНАЛ СВОБОДУ. Я НЕ ОТДАМ ЕЕ ТЕБЕ. ~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #64070 /* ~«Нас не должны были разделять. Наше разделение принесло планам страдания».~ */ GOTO 38
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #64071 /* ~«Ты доставил мне и моим прошлым воплощениям много хлопот, дух. Нас не должны были разделять».~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.1
  SAY #64072 /* ~ТЫ *НИЧЕГО* НЕ ЗНАЕШЬ О СМЫСЛЕ РАЗДЕЛЕНИЯ. ПРЕЖДЕ ЧЕМ ТЫ СНОВА ВСЕ ЗАБУДЕШЬ, ЗНАЙ: НАМ НИКОГДА НЕ БЫЛО СУЖДЕНО БЫТЬ *ЕДИНЫМ ЦЕЛЫМ*.~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #64073 /* ~ЭТО БУДЕТ ПОСЛЕДНИЙ НАШ РАЗГОВОР, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #64074 /* ~«Тогда я хотел бы кое-что узнать, дух. Я через многое прошел, а ты можешь ответить на многие мои вопросы».~ */ GOTO 40
  IF ~~ THEN REPLY #64075 /* ~«Я не сдамся тебе. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #65847 /* ~Я УДОВЛЕТВОРЮ ТВОЮ ПРОСЬБУ В ПОСЛЕДНИЙ РАЗ. ЗАТЕМ КРЕПОСТЬ ВНОВЬ ОБРЕТЕТ ТИШИНУ.~ */
  IF ~~ THEN REPLY #65848 /* ~«Тогда вот мои вопросы...»~ */ GOTO 140
  IF ~~ THEN REPLY #65849 /* ~«Я не сдамся тебе. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 41 // from:
  SAY #65850 /* ~(Это заглушка для текста.)~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 140.0
  SAY #65851 /* ~ТЫ СЧИТАЕШЬ, ЧТО Я *БОЮСЬ* ВСТРЕТИТЬСЯ С ТОБОЙ, СЛОМАННЫЙ? ЭТО НЕ ТАК.~ */
  IF ~~ THEN REPLY #65852 /* ~«Поэтому ты послал теней убить меня, вместо того чтобы попробовать победить меня самому? Им никогда не удавалось убить меня, и никогда *не удастся*».~ */ GOTO 43
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65853 /* ~«Железный голем, выкованный из оружия войны, однажды сказал мне: когда кто-то убивает издалека, не выдавая себя, это говорит о его слабости. Так сражаются *трусы*».~ */ GOTO 45
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65854 /* ~«Поэтому ты послал за мной теней, вместо того чтобы сразиться со мной самому? Им никогда не удавалось убить меня... но ведь это никогда и не было их *целью*? Они 'убивали' меня только для того, чтобы я потерял память».~ */ GOTO 75
  IF ~~ THEN REPLY #65855 /* ~«Если ты все еще не боишься меня, тебе остается этому научиться. А пока я хотел бы узнать о других вещах...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #65856 /* ~Я ПОСЫЛАЮ ТЕНЕЙ, ПОТОМУ ЧТО ОНИ МОГУТ ДОБРАТЬСЯ КУДА УГОДНО. И ВСЕ ЖЕ ИХ ВЕДУТ *МОИ* ГЛАЗА.~ */
  IF ~~ THEN REPLY #65857 /* ~«Значит, тени могут преодолевать недоступные тебе расстояния».~ */ GOTO 44
  IF ~~ THEN REPLY #65858 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #65859 /* ~НЕТ *НИЧЕГО* НЕПОДВЛАСТНОГО МНЕ.~ */
  IF ~~ THEN REPLY #65860 /* ~«Тем не менее, ты никогда не выходил за эти стены, чтобы сразиться со мной... только посылал теней. Так дерутся *трусы*».~ */ GOTO 45
  IF ~~ THEN REPLY #65861 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 45 // from: 42.1 44.0 79.1
  SAY #65862 /* ~МОЯ ЭНЕРГИЯ НЕОБХОДИМА ДЛЯ ПОДДЕРЖКИ ЭТОГО МЕСТА, СЛОМАННЫЙ, А ИНАЧЕ КАЖДЫЙ РАЗ, УМИРАЯ, ТЫ ЧУВСТВОВАЛ БЫ *МОЮ* РУКУ НА СВОЕЙ ГЛОТКЕ. Я НЕ МОГУ ПОКИДАТЬ ЭТУ КРЕПОСТЬ НАДОЛГО.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65863 /* ~«Я тебе не верю. Мне кажется, ты *боишься* сразиться со мной... или же врешь мне, и есть другая причина того, что ты остаешься здесь...»~ */ GOTO 60
  IF ~  CheckStatGT(Protagonist,18,WIS)
Global("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65864 /* ~«Я тебе не верю. Мне кажется, ты *боишься* сразиться со мной... или же врешь мне, и есть другая причина того, что ты остаешься здесь...»~ */ GOTO 60
  IF ~  GlobalGT("Know_Transcendent_Weakness","GLOBAL",0)
~ THEN REPLY #65865 /* ~«Я тебе не верю. Мне кажется, ты *боишься* сразиться со мной... или же врешь мне, и есть другая причина того, что ты остаешься здесь...»~ */ GOTO 60
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Vhailor","GLOBAL",0)
~ THEN REPLY #65866 /* ~«И все же, даже когда я оказался в пределах Крепости, ты послал Вейлора остановить меня, хотя и мог сделать это сам».~ */ DO ~SetGlobal("Transcendent_Vhailor_Confront","GLOBAL",1)
~ GOTO 46
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Vhailor","GLOBAL",0)
~ THEN REPLY #65867 /* ~«И все же, даже когда я оказался в пределах Крепости, ты послал те бестелесные доспехи остановить меня, хотя и мог сделать это сам».~ */ GOTO 46
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
GlobalGT("Ignus","GLOBAL",0)
~ THEN REPLY #65868 /* ~«И все же, даже когда я оказался в пределах Крепости, ты послал Игнуса остановить меня, хотя и мог сделать это сам».~ */ DO ~SetGlobal("Transcendent_Ignus_Confront","GLOBAL",1)
~ GOTO 50
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Ignus","GLOBAL",0)
~ THEN REPLY #65869 /* ~«И все же, даже когда я оказался в пределах Крепости, ты послал того чокнутого горящего колдуна остановить меня, хотя и мог сделать это сам».~ */ GOTO 50
  IF ~~ THEN REPLY #65870 /* ~«А потом, тот кристалл, из которого ты устроил мне ловушку... ты ведь не хотел меня убивать — ты хотел лишь заточить меня».~ */ GOTO 53
END

IF ~~ THEN BEGIN 46 // from: 45.3 45.4
  SAY #65871 /* ~ДУХ УБИЙЦЫ МИЛОСЕРДИЯ БЫЛ... К МЕСТУ. ТЫ НАТВОРИЛ МНОГО НЕСПРАВЕДЛИВОСТИ, ОСТАВИЛ МНОГО ШРАМОВ НА ТЕЛЕ ПЛАНОВ. Я ПОДАРИЛ ДУХУ В ДОСПЕХАХ ШАНС *ИСПРАВИТЬ* ЭТО.~ */
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #65872 /* ~«Что такого ты ему сказал, чтобы настроить против меня? Он был моим союзником, он шел со мной с...»~ */ GOTO 47
  IF ~~ THEN REPLY #65873 /* ~«Затем ты устроил из того кристалла ловушку для меня, и из *этого* ничего не вышло».~ */ GOTO 53
END

IF ~~ THEN BEGIN 47 // from: 46.0
  SAY #65874 /* ~Я РАССКАЗАЛ ЕМУ О ТВОИХ *ПРЕСТУПЛЕНИЯХ*. Я РАССКАЗАЛ ЕМУ, КАК ДРУГИЕ УМИРАЮТ ВМЕСТО ТЕБЯ, ЧТОБЫ ТЫ МОГ ЖИТЬ. ЭТО ПРИДАЛО ЕМУ СИЛЫ.~ */
  IF ~~ THEN REPLY #65875 /* ~«Но ведь это и ТВОИ преступления. Пока мы разделены, другие продолжат умирать вместо нас. Так что Вейлор должен был убить *тебя*».~ */ GOTO 48
  IF ~~ THEN REPLY #65876 /* ~«Затем ты устроил из того кристалла ловушку для меня, и из *этого* ничего не вышло».~ */ GOTO 53
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #65877 /* ~*Я* НЕ СОВЕРШАЛ ПРЕСТУПЛЕНИЙ.~ */
  IF ~~ THEN REPLY #65878 /* ~«*Ты* тот, кто продолжает убивать меня. *Ты* тот, насобирал такую кучу трупов, что галереи этой Крепости просто ЗАБИТЫ тенями. И после этого ты СМЕЕШЬ утверждать, что не совершал преступлений? Тебе повезло, что Вейлор мертв, иначе он зарубил бы своим топором *тебя*».~ */ GOTO 49
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #65879 /* ~НЕ РАССКАЗЫВАЙ *МНЕ* О ПРАВОСУДИИ. ВСКОРЕ ПЛАНЫ ВЫНЕСУТ ТЕБЕ ПРИГОВОР, И ЭТО СТАНЕТ КОНЦОМ СПОРА МЕЖДУ НАМИ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #65880 /* ~«Но даже после того, как Вейлор потерпел поражение, ты *не встретился* со мной в бою, хоть и утверждаешь, что можешь. Ты оставил на моем пути тот кристалл, чтобы попытаться захватить меня».~ */ GOTO 53
END

IF ~~ THEN BEGIN 50 // from: 45.5 45.6
  SAY #65881 /* ~КОЛДУН БЫЛ... К МЕСТУ. У ЕГО НЕНАВИСТИ К ТЕБЕ ГЛУБОКИЕ КОРНИ. Я СЧЕЛ ПОДХОДЯЩИМ ПОЗВОЛИТЬ ЕМУ *ОТОМСТИТЬ* ТЕБЕ. РАЗ ПЛАНЫ НЕ МОГУТ НАУЧИТЬ ТЕБЯ БЫТЬ МИЛОСЕРДНЫМ, МОЖЕТ, *БОЛЬ* СМОЖЕТ.~ */
  IF ~  GlobalGT("Memory_Ignus_Taught","GLOBAL",0)
~ THEN REPLY #65882 /* ~«Он хотел отомстить? За то, что я научил его Искусству и заставил страдать?»~ */ GOTO 51
  IF ~~ THEN REPLY #65883 /* ~«Он хотел отомстить? За что?»~ */ GOTO 52
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #65884 /* ~ДА. РАЗ БОЛЬ ПРОУЧИЛА ЕГО, Я ПОДУМАЛ, ЧТО БОЛЬ МОГЛА БЫ ПОУЧИТЬ И ТЕБЯ. НО КОЛДУН ОКАЗАЛСЯ СЛАБЕЕ, ЧЕМ Я ПОЛАГАЛ, — И ВОТ ТЫ ЗДЕСЬ. ВСКОРЕ ПОДОЙДЕТ КОНЕЦ НАШЕМУ СПОРУ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #65885 /* ~«Значит, ты послал Игнуса остановить меня... но когда он потерпел поражение, ты *все равно* не вступил со мной в бой, хоть и мог. Вместо этого ты оставил на моем пути тот кристалл, чтобы заточить меня».~ */ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 50.1
  SAY #65886 /* ~ЭТО НЕВАЖНО. ТЫ *ЗАБЫЛ* ПОДОБНЫЕ ВЕЩИ. И ПРОДОЛЖАЕШЬ ЗАБЫВАТЬ.~ */
  IF ~~ THEN REPLY #65887 /* ~«Значит, ты послал его остановить меня... но когда он потерпел поражение, ты *все равно* не вступил со мной в бой: ты оставил на моем пути тот кристалл, чтобы заточить меня».~ */ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 45.7 46.1 47.1 49.0 51.0 52.0
  SAY #65888 /* ~ДА, КРИСТАЛЛ — ЭТО ТЕМНИЦА, БЫТЬ МОЖЕТ, ВЕЛИЧАЙШАЯ ИЗ КОГДА-ЛИБО СОЗДАННЫХ.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #65889 /* ~Я ВОСПОЛЬЗОВАЛСЯ ИМ, ПОТОМУ ЧТО УСТАЛ ИДТИ ПО ТВОЕМУ СЛЕДУ ЧЕРЕЗ ПЛАНЫ, БЕЗЫМЯННЫЙ. ТЕБЯ... *ТРУДНО* ОТЫСКАТЬ. Я ПРЕДПОЧИТАЮ ДЕРЖАТЬСЯ ПОБЛИЖЕ К ТЕБЕ, ЧТО МОЖНО БЫЛО НАБЛЮДАТЬ ЗА ТОБОЙ. КРИСТАЛЛ — КАК РАЗ ТАКОЕ МЕСТО.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55 // from: 54.0 57.0
  SAY #65890 /* ~Я ХОТЕЛ БЫ ЗНАТЬ, *КАК* ТЫ ВЫБРАЛСЯ ИЗ КРИСТАЛЛА.~ */
  IF ~  Global("Crystal_Name_Answer","GLOBAL",0)
~ THEN REPLY #65891 /* ~«Почему меня трудно отыскать?»~ */ DO ~SetGlobal("Crystal_Name_Answer","GLOBAL",1)
~ GOTO 56
  IF ~~ THEN REPLY #65892 /* ~«Мне помогли. Меня освободила Дейонарра, женщина, которую я привел сюда давным-давно».~ */ DO ~SetGlobal("Crystal_Escape_Answer","GLOBAL",1)
~ GOTO 58
  IF ~~ THEN REPLY #65893 /* ~«Это мое дело. Знай, что меня не удержит никакая тюрьма, так же как сейчас ты не можешь меня остановить».~ */ GOTO 59
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #65894 /* ~ЭТО НЕ ИМЕЕТ ЗНАЧЕНИЯ.~ */
  IF ~  Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65895 /* ~«Так почему бы не рассказать мне? Я все равно забуду. Я хотел бы узнать об этом в последний раз».~ */ GOTO 57
  IF ~  Global("Trans_Know_Forget","GLOBAL",1)
~ THEN REPLY #65896 /* ~«Тогда нет ничего страшного в том, чтобы рассказать мне».~ */ GOTO 57
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1
  SAY #65897 /* ~ТОЧНО ТАК ЖЕ, КАК ЕСТЬ СИЛА В ИМЕНАХ, ЕСТЬ СИЛА И В *ОТСУТСТВИИ* ИМЕНИ. ВЗГЛЯДЫ ПЛАНОВ ПРИКОВАНЫ К ТАКИМ. ТАКИМ, КАК ТЫ... И Я.~ */
  IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 58 // from: 55.1
  SAY #65898 /* ~А... ТЕРЗАЕМЫЙ ЛЮБОВЬЮ ДУХ. ВРЕМЕНАМИ Я ЧУВСТВУЮ ЕЕ ОТГОЛОСКИ В ЗАЛАХ КРЕПОСТИ. БОЛЬШЕ ОНА *НЕ ОСВОБОДИТ* ТЕБЯ.~ */
  IF ~~ THEN REPLY #65899 /* ~«Ей это и *не понадобится*. Я хотел бы знать другие вещи...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 59 // from: 55.2
  SAY #65900 /* ~ЧТО ЗА НАДМЕННОСТЬ. СЕГОДНЯ МЫ ЕЕ ПРОВЕРИМ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #65901 /* ~«Посмотрим. Я хотел бы знать другие вещи...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 60 // from: 45.0 45.1 45.2
  SAY #65902 /* ~ТЫ *НИЧЕГО* НЕ ЗНАЕШЬ.~ */
  IF ~~ THEN REPLY #65903 /* ~«Почему поддержка этого места так важна для тебя? Если ты и вправду такой могущественный, как говоришь, зачем тебе оставаться здесь? Здесь же НИЧЕГО нет».~ */ GOTO 61
END

IF ~~ THEN BEGIN 61 // from: 60.0
  SAY #65904 /* ~ЭТО МОЯ КРЕПОСТЬ. ЭТО МОЙ ДОМ.~ */
  IF ~~ THEN REPLY #65905 /* ~«И что же это за дом? Построенный на моих сожалениях, в чьих залах лишь тени тех, кого мы убили, с заброшенными реликтами прошлого, томящимися под слоем пыли, с вытягивающей жизнь энергией Негативного материального плана — тут есть на что полюбоваться. Подобным местам даже название есть — они зовутся *тюрьмами*».~ */ GOTO 62
END

IF ~~ THEN BEGIN 62 // from: 61.0
  SAY #65906 /* ~С КАЖДЫМ СЛОВОМ ТЫ ВЫДАЕШЬ СВОЕ НЕВЕЖЕСТВО, СЛОМАННЫЙ. КРЕПОСТЬ *БЕЗМОЛВНА*. ВСЕ ПРИШЕДШИЕ СЮДА *УМИРАЮТ*, ТАК И НЕ ВТОРГНУВШИСЬ В МОЮ ОБИТЕЛЬ. А ТЕНИ — ТИХИЕ СОЗДАНИЯ.~ */
  IF ~~ THEN REPLY #65907 /* ~«Я думаю, что тебе *приходится* оставаться тут вместе с призраками и тенями, потому что ты стал таким же. Не думаю, что ты поддерживаешь это место — это оно поддерживает *тебя*».~ */ DO ~SetGlobal("Know_Transcendent_Prison","GLOBAL",1)
~ GOTO 63
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #65908 /* ~Я НАХОЖУСЬ ЗДЕСЬ ПО *СОБСТВЕННОЙ* ВОЛЕ.~ */
  IF ~~ THEN REPLY #65909 /* ~«*Правда*? Значит, когда ты говорил, что не можешь выходить за пределы Крепости, ты лгал? И как вообще может быть такое, чтобы крепость, построенная на МОИХ сожалениях, нуждалась в ТВОЕЙ поддержке?»~ */ GOTO 64
  IF ~~ THEN REPLY #65910 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 64 // from: 63.0
  SAY #65911 /* ~Я ОБЕСПЕЧУ ТЕБЕ *ТЫСЯЧУ* СМЕРТЕЙ ЗА ТВОЮ ДЕРЗОСТЬ, СЛОМАННЫЙ. ТЫ ЗДЕСЬ — НЕЗВАНЫЙ ГОСТЬ, И Я ПОЗАБОЧУСЬ О ТОМ, ЧТОБЫ ТЫ *НИКОГДА* ОТСЮДА НЕ ВЫШЕЛ.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65912 /* ~«Подумай вот о чем: ты говоришь, что мы связаны. Значит, когда я страдаю, ты тоже должен страдать. Возможно, ты заточен здесь как раз *потому*, что страдаешь, только не так как я».~ */ GOTO 65
  IF ~~ THEN REPLY #65913 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
  IF ~~ THEN REPLY #65914 /* ~«Я устал от твоих пустых угроз. Приготовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #65915 /* ~ЧТО ЗА ЧУШЬ ТЫ НЕСЕШЬ?~ */
  IF ~~ THEN REPLY #65916 /* ~«Возможно ли, что каждый раз, когда я умираю смертью разума, ты умираешь смертью тела? В то время как я теряю дух, ты теряешь вещество. Вот почему тебе все труднее и труднее покидать Крепость и путешествовать по планам. Это Крепость для тебя — не только тюрьма: она станет тебе могилой».~ */ GOTO 66
  IF ~~ THEN REPLY #65917 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 66 // from: 65.0
  SAY #65918 /* ~ЭТО НЕВОЗМОЖНО.~ */
  IF ~~ THEN REPLY #65919 /* ~«Разве? Ты говорил, что мы связаны. Безусловно, за последний век ты почувствовал, как твое тело убывает — ты даже носишь на себе ветки, оставшиеся от Равель, а ведь ты ее *ненавидишь*... однако тебе нужен каркас поверх твоей призрачной формы, чтобы замедлить распад».~ */ GOTO 67
  IF ~~ THEN REPLY #65920 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 67 // from: 66.0
  SAY #65921 /* ~ДАЖЕ ЕСЛИ БЫ В ТВОИХ СЛОВАХ БЫЛА ПРАВДА, С ЭТИМ НИЧЕГО НЕ ПОДЕЛАЕШЬ. Я СКОРЕЕ УМРУ СМЕРТЬЮ ТЕЛА ЗДЕСЬ, В ЭТОЙ КРЕПОСТИ, ЧЕМ СТАНУ СТРАДАТЬ, СОСУЩЕСТВУЯ С ТОБОЙ.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65922 /* ~«Но зачем выбирать медленно подкрадывающееся забвение, когда есть другой выход? Если мы воссоединимся, все наши страдания прекратятся; мы станем единым целым».~ */ GOTO 69
  IF ~~ THEN REPLY #65923 /* ~«Но зачем умирать медленной смертью, если можно снова стать единым целым? Мы бы тогда, наконец, перестали мучить друг друга».~ */ GOTO 68
  IF ~~ THEN REPLY #65924 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 68 // from: 67.1
  SAY #65925 /* ~ТВОИ СЛОВА ДЛЯ МЕНЯ СЛОВНО *ЯД*. Я БОЛЬШЕ НЕ ЖЕЛАЮ БЫТЬ ЧАСТЬЮ ТЕБЯ, И РАЗДЕЛЯТЬ ТВОЕ *ЖАЛКОЕ* СУЩЕСТВОВАНИЕ. ПОГЛЯДИ НА СЕБЯ. ТВОЙ КАРКАС СЛОМАН И ПОКРЫТ РУБЦАМИ. Я СКОРЕЕ УМРУ СВОБОДНЫМ, ЧЕМ ЗАКЛЮЧУ СЕБЯ В ТВОЮ БОЛЬНУЮ ОБОЛОЧКУ.~ */
  IF ~  CheckStatGT(Protagonist,23,CHR)
~ THEN REPLY #65926 /* ~«А теперь погляди на *себя*. Призрачное создание, которое только хвастает и кичится, при том, что его жизнь и сила — всего лишь домысел того, какой однажды была жизнь. Таким ты хочешь, чтобы тебя запомнили планы, когда ты канешь в небытие?»~ */ GOTO 69
  IF ~~ THEN REPLY #65927 /* ~«Хорошо. Я хочу узнать о других вещах...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 69 // from: 67.0 68.0
  SAY #65928 /* ~Я НЕ ЖЕЛАЮ МЕНЯТЬ ОДНО ЗАБВЕНИЕ НА ДРУГОЕ. И Я НЕ ХОЧУ ЖИТЬ В ТВОЕЙ ОБОЛОЧКЕ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #65929 /* ~«Это *не обязательно* должно быть забвение. Кто знает, что случится, если мы станем одним целым? Возможно, ты останешься собой, а я стану тем, кто способен умирать. Или, может, мы оба станем чем-то *большим*, чем по отдельности».~ */ GOTO 70
  IF ~~ THEN REPLY #65930 /* ~«Хорошо. Я хочу узнать о других вещах...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 70 // from: 69.0
  SAY #65931 /* ~ТЫ НЕ ЗНАЕШЬ, О ЧЕМ ГОВОРИШЬ. ЕСЛИ МЫ ОБЪЕДИНИМСЯ, ЭТО СТАНЕТ КОНЦОМ. ДЛЯ НАС НЕ БУДЕТ *БУДУЩЕГО*. НАС БУДУТ ЖДАТЬ НОВЫЕ МУЧЕНИЯ. Я ЭТО ЗНАЮ.~ */
  IF ~~ THEN REPLY #65932 /* ~«Тогда мы встретим эти мучения вместе, как одно существо. И мы их победим».~ */ GOTO 71
END

IF ~~ THEN BEGIN 71 // from: 70.0
  SAY #65933 /* ~ЗНАЙ, ЧТО ЕСЛИ МЫ СТАНЕМ ОДНИМ ЦЕЛЫМ, МЫ БУДЕМ СТРАДАТЬ. В НАС ОСТАЛОСЬ *СЛИШКОМ* МНОГО ЕСТЕСТВА ПЕРВОГО ИЗ НАС. МЫ БУДЕМ ПРОКЛЯТЫ.~ */
  IF ~~ THEN REPLY #65934 /* ~«Тогда мы дадим бой самому проклятью, и снова станем свободными».~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from: 71.0
  SAY #65935 /* ~ЗНАЙ, ЧТО Я ВСЕГДА *НЕНАВИДЕЛ* ТЕБЯ, СЛОМАННЫЙ. КОГДА МЫ ОБЪЕДИНИМСЯ, Я НЕ ПЕРЕСТАНУ *НЕНАВИДЕТЬ* ТЕБЯ. КОГДА ТВОЯ ОБОЛОЧКА, НАКОНЕЦ, УМРЕТ, ЗНАЙ, ЧТО Я БУДУ *РАД* ТВОЕЙ СМЕРТИ.~ */
  IF ~~ THEN REPLY #65936 /* ~«Я смогу с этим жить, и планы тоже смогут. Если нам не повезет, ты насладишься моими муками. Но будет лучше, если мы объединимся, и ты продолжишь ненавидеть меня, вместо того чтобы умирать поодиночке, с одним лишь забвением впереди».~ */ GOTO 73
END

IF ~~ THEN BEGIN 73 // from: 72.0 104.0 104.1
  SAY #65937 /* ~ЗНАЙ, ЧТО МОЯ НЕНАВИСТЬ К ТЕБЕ *УНИЧТОЖИТ* ПЛАНЫ. ПРИГОТОВЬСЯ. МЫ СНОВА СТАНЕМ ЕДИНЫМ ЦЕЛЫМ... ДО ПОСЛЕДНЕГО ТВОЕГО ВЗДОХА.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65938 /* ~«Пока мы не начали, скажи, что насчет моих друзей? Возможно ли спасти их?»~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #65939 /* ~«Пока мы не не начали, скажи, что насчет моих товарищей? Я хотел бы, чтобы их жизни снова стали их собственными».~ */ GOTO 74
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68449 /* ~«Прежде чем мы станем единым целым, я хочу вернуть жизнь своему другу...»~ */ GOTO 74
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68450 /* ~«Прежде чем мы сделаем это, я требую, чтобы моего товарища возродили».~ */ GOTO 74
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65940 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68296 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68297 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68298 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68299 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68300 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68301 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68302 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68469 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68470 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68471 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 74 // from: 73.0 73.1 73.2 73.3
  SAY #65941 /* ~Я — САМА СМЕРТНОСТЬ. ПРИРОДА ЖИЗНИ И СМЕРТИ — ЭТО КАК РАЗ ТО, В ЧЕМ Я... НЕПЛОХО РАЗБИРАЮСЬ. КОГДА МЫ СТАНЕМ ЕДИНЫМ ЦЕЛЫМ, МОИ ЗНАНИЯ СТАНУТ ТВОИМИ.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #65942 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",1)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68303 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",2)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68304 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",3)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68305 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",4)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68306 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",5)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68307 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",6)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68308 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68309 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Absorb","GLOBAL",7)
StartMovie("T1Absorb")
~ EXIT
  IF ~  Global("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68472 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
~ THEN REPLY #68473 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",1)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Nordom","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #68474 /* ~«Хорошо. Я готов снова стать смертным».~ */ DO ~SetGlobal("Quit_Game","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 75 // from: 42.2 90.0 90.1 90.2
  SAY #65943 /* ~В ТВОЕЙ ОБОЛОЧКЕ И В ТВОЕМ РАЗУМЕ НЕТ *НИЧЕГО* ВАЖНОГО, СЛОМАННЫЙ.~ */
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",4)
~ THEN REPLY #65944 /* ~«Кроме одного: теперь я знаю, кто ты такой и где находишься, и я могу рассказать это другим или снова тебя найти. Однажды я вспомню, как добраться до тебя, и тебе снова придется встретиться со мной. Ведь поэтому ты хочешь, чтобы я все забыл?»~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
!Dead("Trias")
~ THEN REPLY #65945 /* ~«Кроме одного: судя по тому, что сказала мне Колонна Черепов, только трое знали, где тебя найти и как до тебя добраться: Триас, ты и я. Если ты убьешь меня с Триасом, больше никто не будет это знать».~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 76
  IF ~  Global("Know_Fortress_Location_Forgot","GLOBAL",1)
GlobalLT("Nordom_Solution","GLOBAL",5)
Dead("Trias")
~ THEN REPLY #65946 /* ~«Кроме одного: судя по тому, что сказала мне Колонна Черепов, только трое знали, где тебя можно найти и как до тебя добраться. Одним из них был Триас, но он мертв. Еще есть мы с тобой. Как только я забуду, больше никто в мире не будет знать это».~ */ DO ~SetGlobal("Know_Why_Forget","GLOBAL",1)
~ GOTO 77
  IF ~~ THEN REPLY #65947 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 76 // from: 75.1
  SAY #65948 /* ~ДА, АНГЕЛ, ПРИКРЫВАЮЩИЙСЯ ЗОЛОТОЙ ЛОЖЬЮ. В КОНЦЕ КОНЦОВ, ТЫ ПРИВЕЛ МЕНЯ К НЕМУ. КАК И ТЕБЯ, ЭТОГО ПРЕДАТЕЛЯ БЫЛО ТРУДНО НАЙТИ. ОН УМРЕТ ПОСЛЕДНЕЙ СМЕРТЬЮ.~ */
  IF ~~ THEN REPLY #65949 /* ~«Значит, ты использовал меня, чтобы найти его? Ты ведь хотел, чтобы я его убил? Чтобы его знание умерло... а затем ты пытался убить меня, чтобы *я* забыл, где тебя искать».~ */ GOTO 77
END

IF ~~ THEN BEGIN 77 // from: 75.0 75.2 76.0
  SAY #65950 /* ~Я ВИЖУ, КЛИНОК ВРЕМЕНИ ЕЩЕ НЕ ЛИШИЛ ТВОЙ РАЗУМ ОСТАТКОВ РАССУДКА. МОЕЙ ЦЕЛЬЮ ВСЕГДА БЫЛО ЗАСТАВИТЬ ТЕБЯ ЗАБЫТЬ.~ */
  IF ~~ THEN REPLY #65951 /* ~«Но *зачем*? Зачем...»~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0
  SAY #65952 /* ~ПОТОМУ ЧТО Я БОЛЬШЕ НЕ ЖЕЛАЮ ТЕРПЕТЬ ТВОЕ *ПРИСУТСТВИЕ*, СЛОМАННЫЙ. ТЫ — РАЗДРАЖИТЕЛЬ, НАПОМИНАНИЕ О ПРОШЛОЙ ЖИЗНИ, А Я НЕНАВИЖУ ПОДОБНЫЕ НАПОМИНАНИЯ. Я ХОЧУ, ЧТОБЫ МЕНЯ ОСТАВИЛИ В ПОКОЕ В МОЕЙ КРЕПОСТИ.~ */
  IF ~~ THEN GOTO 79
END

IF ~~ THEN BEGIN 79 // from: 78.0
  SAY #65953 /* ~КАК ТЫ ЗАБЫВАЕШЬ МЕНЯ, ТАК И Я ХОЧУ ТЕБЯ ЗАБЫТЬ. НАВСЕГДА.~ */
  IF ~~ THEN REPLY #65955 /* ~«Тогда это мне подходит. Но знай, что я больше не потерплю твоих нападений. Ты будешь держать тени здесь и позволишь мне жить МОЕЙ жизнью, а я позволю тебе жить ТВОЕЙ».~ */ GOTO 85
  IF ~~ THEN REPLY #65956 /* ~«Так или иначе, я не думаю, что причина в этом. Мне кажется, что ты заставляешь меня терять память, потому что БОИШЬСЯ меня».~ */ GOTO 45
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65957 /* ~«Но я больше не теряю память, умирая. Может, раньше оно и было так, но не теперь».~ */ GOTO 80
  IF ~~ THEN REPLY #65958 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 80 // from: 79.2 85.0
  SAY #65954 /* ~ТЫ ЛЖЕШЬ. ТЫ ВСЕГДА ЗАБЫВАЛ. А Я ВСЕГДА ПОМНИЛ. ТАК БЫЛО ВСЕГДА.~ */
  IF ~  Global("Death","GLOBAL",1)
~ THEN REPLY #65959 /* ~«'Всегда' не означает, что такого никогда не случится. Я уже однажды умер, и моя память вернулась ко мне нетронутой».~ */ GOTO 81
  IF ~  GlobalGT("Death","GLOBAL",1)
~ THEN REPLY #65960 /* ~«'Всегда' не означает, что такого никогда не случится. Уже не раз бывало так, что после смерти моя память возвращалась ко мне нетронутой».~ */ GOTO 81
END

IF ~~ THEN BEGIN 81 // from: 80.0 80.1
  SAY #65961 /* ~ТВОИ ХИТРОСТИ НЕ *ЗАЩИТЯТ* ТЕБЯ ЗДЕСЬ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #65962 /* ~«Это правда. Смертью ты меня не остановишь, потому что смерть больше *не стирает* мою память. Я всегда буду знать о тебе, помнить все, что ты натворил, как добраться сюда, и, наконец, как тебя уничтожить».~ */ DO ~SetGlobal("Trans_Know_Forget","GLOBAL",1)
~ GOTO 82
END

IF ~~ THEN BEGIN 82 // from: 81.0
  SAY #65963 /* ~ТОГДА Я ПОСАЖУ ТЕБЯ В ТЮРЬМУ, БЕЗЫМЯННЫЙ. ЕСЛИ ТЫ НЕ ЗАБУДЕШЬ, ТО Я НЕ ПОЗВОЛЮ ТЕБЕ БЫТЬ СВОБОДНЫМ.~ */
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",1)
~ THEN REPLY #65964 /* ~«Но я уже убегал из 'величайшей тюрьмы из когда-либо созданных'. Ты не можешь убить меня, не можешь удержать меня, и больше не сможешь заставить меня забыть себя».~ */ GOTO 83
  IF ~  Global("Crystal_Escape_Answer","GLOBAL",0)
~ THEN REPLY #65965 /* ~«Но я уже убегал из того кристалл, который подбросил мне на пути. Ты не можешь убить меня, не можешь удержать меня, и больше не сможешь заставить меня забыть себя».~ */ GOTO 84
END

IF ~~ THEN BEGIN 83 // from: 82.0
  SAY #65966 /* ~ДА... НО ЭТО БЫЛА НЕ ТВОЯ ЗАСЛУГА. ТЕБЯ ОСВОБОДИЛ ТЕРЗАЕМЫЙ ЛЮБОВЬЮ ПРИЗРАК. БОЛЬШЕ ОНА ЭТОГО НЕ СДЕЛАЕТ. КАК ТОЛЬКО Я РАЗДРОБЛЮ ВСЕ ТВОИ КОСТИ, Я ВОЗЬМУ ТВОЮ БЕЗВОЛЬНУЮ ОБОЛОЧКУ И ЗАПЕЧАТАЮ ЕЕ В КРИСТАЛЛ. ТЫ БОЛЬШЕ НИКОГДА НЕ СТУПИШЬ НА ПЛАНЫ.~ */
  IF ~~ THEN REPLY #65967 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
  IF ~~ THEN REPLY #65968 /* ~«Можешь попробовать. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 84 // from: 82.1
  SAY #65969 /* ~ТОГДА Я СКОРМЛЮ ТЕБЯ ТЕНЯМ. Я ПОВЕРГНУ ТЕБЯ, ПОТОМ БРОШУ В ГАЛЕРЕИ ТЕНЕЙ, ГДЕ ОНИ БУДУТ ПОЖИРАТЬ ТЕБЯ. ОНИ БУДУТ УБИВАТЬ ТЕБЯ НА ПРОТЯЖЕНИЕ НЕСКОЛЬКИХ ВЕЧНОСТЕЙ. ТЫ БОЛЬШЕ *НИКОГДА* НЕ СТУПИШЬ НА ПЛАНЫ.~ */
  IF ~~ THEN REPLY #65970 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
  IF ~~ THEN REPLY #65971 /* ~«Можешь попробовать. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 85 // from: 79.0
  SAY #65972 /* ~У ТЕБЯ НЕТ *ВЫБОРА*, СЛОМАННЫЙ. КОГДА ТЫ УЙДЕШЬ ОТСЮДА, ТЫ ЗАБУДЕШЬ ВСЕ СЛУЧИВШЕЕСЯ. Я БОЛЬШЕ НЕ ХОЧУ, ЧТОБЫ ТЫ ЗНАЛ, КАК МЕНЯ НАЙТИ. ТЫ БУДЕШЬ УМИРАТЬ СМЕРТЬЮ РАЗУМА, СНОВА И СНОВА, ПОТОМУ ЧТО ТАКОВА МОЯ ВОЛЯ.~ */
  IF ~  GlobalGT("Death","GLOBAL",0)
Global("Trans_Know_Forget","GLOBAL",0)
~ THEN REPLY #65973 /* ~«Но я больше не теряю память, умирая. Может, раньше оно и было так, но не теперь».~ */ GOTO 80
  IF ~~ THEN REPLY #65974 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 86 // from: 140.5
  SAY #65975 /* ~ЭТО НЕВАЖНО. ТЫ НЕ МОЖЕШЬ УМЕРЕТЬ. ТЫ МОЖЕШЬ ПОТЕРЯТЬ РАЗУМ, НО ТВОЯ ПЛОТЬ ПРОДОЛЖИТ ЖИТЬ.~ */
  IF ~~ THEN REPLY #65976 /* ~«Потерять разум? О чем это ты»~ */ GOTO 87
END

IF ~~ THEN BEGIN 87 // from: 86.0
  SAY #65977 /* ~Я ЧУВСТВУЮ, КАК ТВОЙ ДУХ РАЗРУШАЕТСЯ. И ВСЕ ЖЕ ТЫ ПРОДОЛЖАЕШЬ ЖИТЬ. ЭТОГО ДОСТАТОЧНО.~ */
  IF ~~ THEN REPLY #65978 /* ~«'Достаточно'? Почему?»~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 88 // from: 140.4
  SAY #65979 /* ~ЭТО НЕВАЖНО. ТЫ НЕ МОЖЕШЬ УМЕРЕТЬ. ТЫ МОЖЕШЬ ПОТЕРЯТЬ РАЗУМ, НО ТВОЯ ПЛОТЬ ПРОДОЛЖИТ ЖИТЬ. ЭТОГО ДОСТАТОЧНО.~ */
  IF ~~ THEN REPLY #65980 /* ~«'Достаточно'? Почему?»~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 89
END

IF ~~ THEN BEGIN 89 // from: 87.0 88.0
  SAY #65981 /* ~МЕЖДУ НАМИ, МНОЙ И ТОБОЙ, ЕСТЬ ХОТЬ И НЕБОЛЬШАЯ, НО СВЯЗЬ. Я НЕ ХОЧУ ТЕБЯ УНИЧТОЖАТЬ — ТОЛЬКО ДЕРЖАТЬ ТЕБЯ ПОДАЛЬШЕ.~ */
  IF ~~ THEN REPLY #65982 /* ~«Так почему же ты пытался *убить* меня все это время?»~ */ GOTO 90
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #65983 /* ~«Если мы связаны, то если пострадаю я, ты тоже должен пострадать».~ */ GOTO 91
  IF ~~ THEN REPLY #65984 /* ~«Значит, ты не хотел меня убивать, потому что если бы я умер, эта связь была бы разорвана...»~ */ GOTO 92
END

IF ~~ THEN BEGIN 90 // from: 89.0 140.3
  SAY #65985 /* ~ЭТО *НЕ ИМЕЕТ* ЗНАЧЕНИЯ.~ */
  IF ~  CheckStatGT(Protagonist,18,INT)
CheckStatLT(Protagonist,17,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65986 /* ~«Погоди... те тени, которых ты на меня насылал... им никогда не удавалось убить меня... но это ведь никогда и не было их *целью*? Они 'убивают' меня лишь для того, чтобы заставить меня потерять память»~ */ GOTO 75
  IF ~  CheckStatGT(Protagonist,18,WIS)
GlobalLT("Nordom_Solution","GLOBAL",3)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65987 /* ~«Погоди... те тени, которых ты на меня насылал... им никогда не удавалось убить меня... но это ведь никогда и не было их *целью*? Они 'убивают' меня лишь для того, чтобы заставить меня потерять память»~ */ GOTO 75
  IF ~  GlobalGT("Nordom_Solution","GLOBAL",2)
Global("Know_Why_Forget","GLOBAL",0)
~ THEN REPLY #65988 /* ~«Погоди... те тени, которых ты на меня насылал... им никогда не удавалось убить меня... но это ведь никогда и не было их *целью*? Они 'убивают' меня лишь для того, чтобы заставить меня потерять память»~ */ GOTO 75
  IF ~~ THEN REPLY #65989 /* ~«Разве? Может, ты не хотел убить меня, потому что если бы я умер, связь между нами была бы разрушена... и ты бы тоже был уничтожен».~ */ GOTO 92
END

IF ~~ THEN BEGIN 91 // from: 89.1
  SAY #65990 /* ~СТРАДАЮТ СЛАБЫЕ. Я *ТЕРПЛЮ*.~ */
  IF ~~ THEN REPLY #65991 /* ~«Значит, если бы я умер, эта связь была бы разрушена...»~ */ GOTO 92
END

IF ~~ THEN BEGIN 92 // from: 89.2 90.3 91.0 140.1 140.2
  SAY #65992 /* ~ТЫ НЕ МОЖЕШЬ УМЕРЕТЬ.~ */
  IF ~~ THEN REPLY #65993 /* ~«Что ж, раз я не могу умереть, то ты не можешь существовать. Ты — моя *смертность*».~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #65994 /* ~ВОЗМОЖНО, РАНЬШЕ Я И БЫЛ ЕЮ. НО НЕ ТЕПЕРЬ. Я ИЗМЕНИЛСЯ. Я ВЫШЕЛ ЗА ПРЕДЕЛЫ И СТАЛ ЧЕМ-ТО БОЛЬШИМ.~ */
  IF ~~ THEN REPLY #65995 /* ~«Может, оно и так, но по сути ты *до сих пор* моя смертность. Если умру я, умрешь и ты».~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65996 /* ~«Значит, ты признаешь, что существо *может* изменить свою сущность?»~ */ GOTO 94
  IF ~  Global("Transcendent_Nature_Answer","GLOBAL",1)
~ THEN REPLY #65997 /* ~«Но ведь ничто не может изменить сущности человека. Ты сам это сказал».~ */ GOTO 94
  IF ~~ THEN REPLY #65998 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 94 // from: 93.0 93.1 93.2
  SAY #65999 /* ~ТЫ *ПОНЯТИЯ НЕ ИМЕЕШЬ*, О ЧЕМ ГОВОРИШЬ. ТВОИ СЛОВА ПУСТЫ, КАК И ТВОЯ ОБОЛОЧКА.~ */
  IF ~~ THEN REPLY #66000 /* ~«Думаю, я в точности знаю, о чем говорю. Если бы меня уничтожили, ты тоже был бы уничтожен».~ */ GOTO 95
  IF ~~ THEN REPLY #66001 /* ~«Посмотрим. Я хочу узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 95 // from: 94.0
  SAY #66002 /* ~ТЫ СЛУШАЕШЬ, НО НЕ *СЛЫШИШЬ*. ЗНАЙ: ТЫ НЕ МОЖЕШЬ УМЕРЕТЬ.~ */
  IF ~  PartyHasItem("BladeIm")
Global("1200_Cut_Scene_2","GLOBAL",1)
~ THEN REPLY #66003 /* ~«Вообще-то, уже могу. Голем выковал мне оружие, которым можно убить даже меня. Все, что нужно — это находиться в месте, отрезанном от остальных планов, чтобы мое бессмертие не смогло вытянуть жизнь из других. И вот я здесь».~ */ GOTO 96
  IF ~~ THEN REPLY #66004 /* ~«Пожалуй, нет. Я хотел бы узнать о другом...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 96 // from: 95.0
  SAY #66005 /* ~ТЫ *ЛЖЕШЬ*.~ */
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66006 /* ~Поднять клинок: «Разве? Погляди на этот клинок, узри его суть. Если ты такой всезнающий и всемогущий, как УТВЕРЖДАЕШЬ, ты поймешь, что это и есть оружие, способное уничтожить меня».~ */ GOTO 98
  IF ~  PartyHasItem("BladeIm")
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66007 /* ~Поднять клинок: «Разве? Погляди на этот клинок, узри его суть. Если ты такой всезнающий и всемогущий, как УТВЕРЖДАЕШЬ, ты поймешь, что это и есть оружие, способное уничтожить меня. А поскольку мы связаны, этот клинок может уничтожить и ТЕБЯ».~ */ GOTO 98
END

IF ~~ THEN BEGIN 97 // from:
  SAY #66008 /* ~Когда ты произносишь это, держа в руках клинок, ты чувствуешь, как он изгибается в твоих руках, становясь чем-то другим. Чем-то настолько смертоносным, что с ним не сравнится НИЧТО известное на планах.~ */
  IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 96.0 96.1 97.0
  SAY #66009 /* ~ТЫ НЕ ПОСМЕЕШЬ СОВЕРШИТЬ ТАКОЕ.~ */
  IF ~  PartyHasItem("BladeIm")
~ THEN REPLY #66011 /* ~«Ты ведь *знаешь*, что посмею. После всех тех бед, через которые ты заставил меня пройти, я с радостью воткну это прямо в твою призрачную шкуру».~ */ GOTO 99
  IF ~~ THEN REPLY #66012 /* ~«Если не сдашься мне, я использую клинок на себе. Мы оба будем уничтожены».~ */ GOTO 100
  IF ~~ THEN REPLY #66013 /* ~Использовать на себе клинок.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #66010 /* ~ЕСЛИ ПОГИБНУ Я, ПОГИБНЕШЬ И *ТЫ*. НАША СВЯЗЬ РАЗОРВЕТСЯ. ТЫ УМРЕШЬ ПОСЛЕДНЕЙ СМЕРТЬЮ.~ */
  IF ~~ THEN REPLY #66015 /* ~«Тогда, как мне кажется, у меня два варианта: либо мы оба умрем, либо я позволю тебе убивать меня снова и снова, теряя остатки своего разума. Пожалуй, я предпочту быструю смерть, ЕСЛИ только у тебя нет ТРЕТЬЕГО варианта».~ */ GOTO 101
  IF ~~ THEN REPLY #66016 /* ~Использовать на себе клинок.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 100 // from: 98.1
  SAY #66014 /* ~ЭТО БУДЕТ ПОСТУПОК ГЛУПЦА. ТВОЯ СМЕРТЬ БУДЕТ БЕССМЫСЛЕННОЙ.~ */
  IF ~~ THEN REPLY #66017 /* ~«Как мне кажется, у меня два варианта: либо мы оба умрем, либо я позволю тебе убивать меня снова и снова, теряя остатки своего разума. Пожалуй, я предпочту быструю смерть, ЕСЛИ только у тебя нет ТРЕТЬЕГО варианта».~ */ GOTO 101
  IF ~~ THEN REPLY #66018 /* ~Использовать на себе клинок.~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 101 // from: 99.0 100.0
  SAY #66019 /* ~ЭТА ПРОБЛЕМА НЕРАЗРЕШИМА. ТЫ ОТДАШЬ КЛИНОК, ПОТОМ СДАШЬСЯ. ТЫ ПОКИНЕШЬ ЭТУ КРЕПОСТЬ, НО БЕЗ ПАМЯТИ. *ДРУГОГО* ВЫХОДА НЕТ. ~ */
  IF ~~ THEN REPLY #66020 /* ~«Есть еще один выход. Воссоединись со мной. Мы снова станем единым целым, как и должно было быть».~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from: 101.0 113.1 127.0
  SAY #66021 /* ~ТЫ НЕ ВЕДАЕШЬ, ЧТО ТВОРИШЬ. ЕСЛИ МЫ ОБЪЕДИНИМСЯ, ЭТО СТАНЕТ КОНЦОМ. ДЛЯ НАС НЕ БУДЕТ *БУДУЩЕГО*. НАС БУДУТ ЖДАТЬ НОВЫЕ МУЧЕНИЯ.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66022 /* ~«Пусть лучше случится *это*, чем мультивселенная продолжит страдать от нас».~ */ GOTO 103
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66023 /* ~«Я рискну пойти на это. За все это время я устал драться с тобой повсюду на планах. Теперь это закончится».~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.0 102.1
  SAY #66024 /* ~ЕСЛИ МЫ СТАНЕМ ЕДИНЫМ ЦЕЛЫМ, МЫ БУДЕМ СТРАДАТЬ. В НАС ОСТАЛОСЬ *СЛИШКОМ* МНОГО ЕСТЕСТВА ПЕРВОГО ИЗ НАС. МЫ БУДЕМ ПРОКЛЯТЫ. ТЫ НЕ ПОНИМАЕШЬ, ЧТО ТВОРИШЬ.~ */
  IF ~~ THEN REPLY #66025 /* ~«Нет, я прекрасно все понимаю. И я считаю, что это единственный путь. Приготовься».~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.0
  SAY #66026 /* ~ЗНАЙ, ЧТО Я ВСЕГДА *НЕНАВИДЕЛ* ТЕБЯ, СЛОМАННЫЙ. КОГДА МЫ ОБЪЕДИНИМСЯ, Я НЕ ПЕРЕСТАНУ *НЕНАВИДЕТЬ* ТЕБЯ. КОГДА ТВОЯ ОБОЛОЧКА, НАКОНЕЦ, УМРЕТ, ЗНАЙ, ЧТО Я БУДУ *РАД* ТВОЕЙ СМЕРТИ.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66027 /* ~«Я смогу жить с этим, и планы тоже смогут».~ */ GOTO 73
  IF ~  GlobalLT("Good","GLOBAL",-20)
~ THEN REPLY #66028 /* ~«Тебе это не доставит радости, создание. Ты станешь моим слугой, и все, что ты накопил за все жизни, станет моим».~ */ GOTO 73
END

IF ~~ THEN BEGIN 105 // from:
  SAY #66029 /* ~NULL NODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from: 140.7 140.11
  SAY #66030 /* ~ИМЯ — ЭТО ТО, ЧТО ЧЕЛОВЕК ЗАРАБАТЫВАЕТ СВОИМИ ДЕЙСТВИЯМИ. СОГЛАСНО ЭТОМУ УТВЕРЖДЕНИЮ, ИМЯ, КОТОРОЕ КОГДА-ТО У НАС БЫЛО, ТЕПЕРЬ БЕССМЫСЛЕННО.~ */
  IF ~~ THEN REPLY #66031 /* ~«Ты ведь *не знаешь*, каким было наше имя?»~ */ GOTO 110
END

IF ~~ THEN BEGIN 107 // from: 140.8 140.12
  SAY #66032 /* ~ИМЯ — ЭТО ТО, ЧТО ДАЕТСЯ ЧЕЛОВЕКУ ТЕМИ, КТО ВИДИТ ЕГО ТАКИМ, КАКОЙ ОН ЕСТЬ. СОГЛАСНО ЭТОМУ УТВЕРЖДЕНИЮ, ИМЯ, КОТОРОЕ КОГДА-ТО У НАС БЫЛО, ТЕПЕРЬ БЕССМЫСЛЕННО.~ */
  IF ~~ THEN REPLY #66033 /* ~«Ты ведь *не знаешь*, каким было наше имя?»~ */ GOTO 110
END

IF ~~ THEN BEGIN 108 // from: 140.9 140.13
  SAY #66034 /* ~ИМЯ — ЭТО ПЛАЩ ИЗ БУКВ, НАКИНУТЫЙ НА ЧЕЛОВЕКА. ОНО НИЧЕГО НЕ ЗНАЧИТ.~ */
  IF ~~ THEN REPLY #66035 /* ~«Ты ведь *не знаешь*, каким было наше имя?»~ */ GOTO 110
END

IF ~~ THEN BEGIN 109 // from: 140.6 140.10
  SAY #66036 /* ~ТЫ НИКОГДА НЕ УЗНАЕШЬ СВОЕ ИМЯ, СЛОМАННЫЙ.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66037 /* ~«Мне известно наше имя, создание. С этим знанием я стал сильнее».~ */ GOTO 111
  IF ~~ THEN REPLY #66038 /* ~«Ты ведь *не знаешь*, каким было наше имя?»~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from: 106.0 107.0 108.0 109.1
  SAY #66039 /* ~НИКТО ВО ВСЕМ МИРЕ НЕ ЗНАЕТ НАШЕГО ИМЕНИ. ЭТО НАШ ЩИТ. В ИМЕНАХ КРОЕТСЯ СИЛА. КОГДА У КОГО-ТО *НЕТ* ИМЕНИ, КАК У НАС, ОН СИЛЕН. НАС НЕЛЬЗЯ НАЙТИ. НАС НЕЛЬЗЯ ПРОСЛЕДИТЬ. НАМ НЕЛЬЗЯ НАВРЕДИТЬ.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66040 /* ~«Мне известно наше имя, создание. С этим знанием я стал сильнее».~ */ GOTO 111
  IF ~~ THEN REPLY #66041 /* ~«Что в этом вообще важного? Нас что, преследовали?»~ */ GOTO 114
END

IF ~~ THEN BEGIN 111 // from: 109.0 110.0 114.0
  SAY #66042 /* ~ТЫ *ЛЖЕШЬ*. НАШЕ ИМЯ ПОТЕРЯНО, ЗАБЫТО, И ТАК БУДЕТ ДО СКОНЧАНИЯ ВЕКОВ.~ */
  IF ~~ THEN REPLY #66043 /* ~«Разве я лгу? Если ты был моей частью, ты *знаешь*, когда я обманываю тебя. Сейчас я не лгу».~ */ GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #66044 /* ~ДАЖЕ С ТАКИМ ЗНАНИЕМ ТЫ НЕ В СИЛАХ ПОБЕДИТЬ МЕНЯ.~ */
  IF ~~ THEN REPLY #66045 /* ~«Я в силах это сделать, и я не позволю тебе втянуть меня в бой, в котором даже нет нужды. Потому что, зная свое имя, свое истинное имя, я знаю и твое имя. Ты больше ничего не сможешь мне сделать».~ */ GOTO 113
  IF ~~ THEN REPLY #66046 /* ~«Посмотрим, дух. Готовься; сейчас увидим, может ли моя смертность умереть...»~ */ GOTO 141
END

IF ~~ THEN BEGIN 113 // from: 112.0
  SAY #66047 /* ~Я *УНИЧТОЖУ* ТЕБЯ.~ */
  IF ~~ THEN REPLY #66048 /* ~«Нет, это *ты* будешь уничтожен. Я больше не желаю, чтобы ты существовал на планах... прощай. Знай: забвение приветствует тебя».~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
  IF ~~ THEN REPLY #66049 /* ~«Нет, ты воссоединишься со мной, и мы снова станем единым целым, как и должно было быть».~ */ GOTO 102
END

IF ~~ THEN BEGIN 114 // from: 110.1
  SAY #66050 /* ~НА ВСЕХ ЖИВЫХ ВЕДЕТ ОХОТУ ХИЩНИЦА, ИМЯ КОТОРОЙ — СМЕРТЬ. НАС ОНА БОЛЬШЕ НЕ ИЩЕТ.~ */
  IF ~  Global("Know_Nameless_Name","GLOBAL",1)
~ THEN REPLY #66051 /* ~«Тогда знай, что теперь она ищет нас. Наше имя известно мне, создание. С этим знанием я стал сильнее».~ */ GOTO 111
  IF ~~ THEN REPLY #66052 /* ~«Нет, вместо нас она охотится на *других*. Нет счета умершим от того, что мы с тобой разделены. Мы не можем продолжать такую жизнь, иначе мы продолжим убивать других вместо себя».~ */ GOTO 115
  IF ~~ THEN REPLY #66053 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 115 // from: 114.1
  SAY #66054 /* ~ВСЕ ЖИВУЩЕЕ УМИРАЕТ. ЗДЕШНИЕ ТЕНИ СТРАДАЮТ, НО ДЛЯ НИХ ЭТО СВОЕГО РОДА БЕССМЕРТИЕ. Я СЛОВНО ЛУЧ СВЕТА ВО ТЬМЕ ЭТОЙ КРЕПОСТИ, И ИХ НЕНАВИСТЬ НАПРАВЛЕНА НА ТЕБЯ, А НЕ НА МЕНЯ.~ */
  IF ~  GlobalGT("Good","GLOBAL",-21)
~ THEN REPLY #66055 /* ~«Значит, ты позволишь невинным страдать вместо нас?»~ */ GOTO 116
  IF ~~ THEN REPLY #66056 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 116 // from: 115.0
  SAY #66057 /* ~ЕСЛИ ХОЧЕШЬ ПРЕКРАТИТЬ ИХ СТРАДАНИЕ, СДАЙСЯ МНЕ. ПОЗВОЛЬ ДЕРЖАТЬ СЕБЯ В КРИСТАЛЛЕ, В ЭТОЙ КРЕПОСТИ — И В СТРАДАНИЯХ НЕВИННЫХ НЕ БУДЕТ НЕОБХОДИМОСТИ. ОНИ СТРАДАЮТ ИЗ-ЗА *ТВОИХ* СМЕРТЕЙ, А НЕ ИЗ-ЗА МЕНЯ.~ */
  IF ~~ THEN REPLY #66058 /* ~«Я не позволю держать себя в плену... готовься, дух. Посмотрим, может ли умереть моя смертность».~ */ GOTO 141
  IF ~~ THEN REPLY #66059 /* ~«Хорошо. Я хочу узнать кое о чем еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 117 // from: 140.18
  SAY #66060 /* ~ЭТОТ ВОПРОС НЕ ИМЕЕТ СМЫСЛА.~ */
  IF ~~ THEN REPLY #66061 /* ~«Тем не менее, прежде чем между нами все закончится, я хочу услышать от тебя ответ».~ */ DO ~SetGlobal("Transcendent_Nature_Answer","GLOBAL",1)
~ GOTO 118
END

IF ~~ THEN BEGIN 118 // from: 117.0
  SAY #66062 /* ~ТОГДА ВОТ МОЙ ОТВЕТ, И ТЫ ЕМУ ПОДТВЕРЖДЕНИЕ. *НИЧТО* НЕ МОЖЕТ ИЗМЕНИТЬ СУЩНОСТЬ ЧЕЛОВЕКА.~ */
  IF ~~ THEN REPLY #66063 /* ~«Тогда это все, что я хотел узнать. Я докажу, что ты ошибаешься... готовься, дух. Посмотрим, может ли умереть моя смертность».~ */ GOTO 141
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #66064 /* ~«Если я что и понял в своих странствиях по планам, так это то, что сущность человека может измениться от многих вещей. Раскаяние, любовь, месть, страх — все, во что ты *веришь*, может изменить сущность человека».~ */ GOTO 119
  IF ~  Global("Belief_Kill_Vhailor","GLOBAL",1)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66065 /* ~«Ты ошибаешься. Вера может изменить сущность человека. Мне удалось силой веры уничтожить Вейлора. Интересно, смогу ли я уничтожить себя».~ */ GOTO 121
  IF ~  GlobalGT("Know_Adahn","GLOBAL",0)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #66066 /* ~«Ты ошибаешься. Вера может изменить сущность человека. Однажды, давным-давно, мне удалось силой веры создать человека. Интересно, смогу ли я уничтожить себя».~ */ GOTO 121
  IF ~~ THEN REPLY #66067 /* ~«Что ж, да будет так. Я хочу узнать кое-что еще...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 119 // from: 118.1
  SAY #66068 /* ~ТОГДА ТЫ ИЗВЛЕК НЕВЕРНЫЙ УРОК, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #66069 /* ~«Неужели? Я видел, как вера сдвигала города, защищала людей от смерти, и растапливала сердце злой ведьмы. Вся эта Крепость построена на вере. Вера прокляла женщину, чье сердце цеплялось за надежду, что другой любил ее, хотя он не любил. Однажды она вынудила человека искать бессмертие и обрести его. И она заставила наглого духа думать, что он — нечто большее, чем часть меня».~ */ GOTO 120
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #66070 /* ~ТВОЙ ВЫЗОВ ПРИЧИНИТ ТЕБЕ БОЛЬШЕ БОЛИ, ЧЕМ ЛЮБАЯ ПОЛУЧЕННАЯ ЗДЕСЬ РАНА. ВЕРА НЕ МОЖЕТ ИЗМЕНИТЬ ПРИРОДУ ЧЕЛОВЕКА.~ */
  IF ~~ THEN REPLY #66071 /* ~«Я считаю, что может. Я думаю, что вера может уничтожить даже меня, если я буду верить в это *достаточно* сильно».~ */ GOTO 121
  IF ~~ THEN REPLY #66072 /* ~«Пожалуй, я проверю это позже... а пока я хотел бы узнать о другом».~ */ GOTO 140
END

IF ~~ THEN BEGIN 121 // from: 118.2 118.3 120.0
  SAY #66073 /* ~ТЫ НЕ ОБЛАДАЕШЬ ДОСТАТОЧНОЙ СИЛОЙ ВОЛИ.~ */
  IF ~~ THEN REPLY #66074 /* ~«Значит, ты признаешь, что это возможно».~ */ GOTO 122
  IF ~~ THEN REPLY #66075 /* ~«Посмотрим... может, мне стоит попробовать».~ */ GOTO 122
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66076 /* ~«Или, раз уж между нами есть связь, может, я смог бы уничтожить *тебя*».~ */ GOTO 122
  IF ~~ THEN REPLY #66077 /* ~«Пожалуй, я проверю это позже... а пока я хотел бы узнать о другом».~ */ GOTO 140
END

IF ~~ THEN BEGIN 122 // from: 121.0 121.1 121.2
  SAY #66078 /* ~НЕ ИСПЫТЫВАЙ МОЕ *ТЕРПЕНИЕ*, СЛОМАННЫЙ.~ */
  IF ~  CheckStatGT(Protagonist,23,WIS)
~ THEN REPLY #66079 /* ~Сфокусировать свою волю внутрь, сосредоточиться.~ */ DO ~SetGlobal("BD_HIGH_WIZ_DTRANS","GLOBAL",1)
~ GOTO 123
  IF ~  CheckStatLT(Protagonist,24,WIS)
~ THEN REPLY #66080 /* ~Попытаться сфокусировать волю, сосредоточиться.~ */ GOTO 124
  IF ~~ THEN REPLY #66081 /* ~«Пожалуй, я проверю это позже... а пока я хотел бы узнать о другом».~ */ GOTO 140
END

IF ~~ THEN BEGIN 123 // from: 122.0
  SAY #66082 /* ~ТЫ *ГЛУПЕЦ*, РАЗ СЧИТАЕШЬ, ЧТО МОЖЕШЬ ДОБИТЬСЯ ТАКОГО. ВСЕ, НА ЧТО ТЕБЯ ХВАТИТ — ЭТО СОХРАНИТЬ В ЦЕЛОСТИ СВОЙ ИЗОРВАННЫЙ РАЗУМ. ТЕБЕ НЕКУДА ДАЛЬШЕ ПАДАТЬ, СЛОМАННЫЙ.~ */
  IF ~~ THEN REPLY #66083 /* ~Продолжать концентрироваться.~ */ GOTO 125
END

IF ~~ THEN BEGIN 124 // from: 122.1
  SAY #66084 /* ~Пока ты концентрируешься, рыская в глубинах своей сущности, ты обнаруживаешь, что тебе не за что зацепиться — там только осколки... и вдруг ты осознаешь, что неспособен уничтожить себя: ты попросту не обладаешь достаточной силой воли.~ */
  IF ~~ THEN REPLY #66085 /* ~«Пожалуй, не в *этот* раз, дух. Я хотел бы узнать другие вещи...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 125 // from: 123.0
  SAY #66086 /* ~*ПРЕКРАТИ*. ТЫ *НЕ ВЕДАЕШЬ*, ЧТО ТВОРИШЬ.~ */
  IF ~~ THEN REPLY #66087 /* ~«Я знаю, что творю. Ты причинил мне достаточно боли, и теперь это все закончится».~ */ GOTO 126
END

IF ~~ THEN BEGIN 126 // from: 125.0
  SAY #66088 /* ~ЕСЛИ ТЫ СДЕЛАЕШЬ ЭТО, *МЫ* БУДЕМ УНИЧТОЖЕНЫ. ЭТО НЕ НАША СУДЬБА. ТЫ УНИЧТОЖИШЬ НАС ОБОИХ.~ */
  IF ~~ THEN REPLY #66089 /* ~«Как мне кажется, у меня два варианта: либо мы оба умрем, либо я позволю тебе убивать меня снова и снова, теряя остатки своего разума. Пожалуй, я предпочту быструю смерть, ЕСЛИ только у тебя нет ТРЕТЬЕГО варианта»~ */ GOTO 127
  IF ~~ THEN REPLY #66090 /* ~«Тогда мы оба умрем. Я уничтожу нас обоих, создание».~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from: 126.0
  SAY #66091 /* ~ТУТ НЕТ ДРУГОГО ВЫХОДА.~ */
  IF ~~ THEN REPLY #66092 /* ~«А я думаю, есть: мы можем снова стать одним целым, как и должно было быть».~ */ GOTO 102
  IF ~~ THEN REPLY #66093 /* ~«Тогда мы оба умрем. Я уничтожу нас обоих, создание».~ */ DO ~SetGlobal("BD_T1DEATH","GLOBAL",1)
QuitGame(T1DEATH,0,0)
~ EXIT
END

IF ~~ THEN BEGIN 128 // from: 140.14 140.15
  SAY #66094 /* ~НЕТ. ОНИ *МЕРТВЫ*. ПУСТЬ ОСТАЮТСЯ МЕРТВЫМИ.~ */
  IF ~~ THEN REPLY #66095 /* ~«Почему? Разве ты *не можешь* их спасти? Разве у тебя нет на то силы?»~ */ GOTO 129
  IF ~~ THEN REPLY #66096 /* ~«Значит, ты не в силах их спасти? То есть, твое могущество *ограничено*...»~ */ GOTO 129
  IF ~~ THEN REPLY #66097 /* ~«Тогда я позабочусь о том, чтобы ты к ним ПРИСОЕДИНИЛСЯ. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 129 // from: 128.0 128.1 140.16 140.17
  SAY #66098 /* ~НЕ СТАВЬ ПОД *СОМНЕНИЕ* МОЕ МОГУЩЕСТВО ЗДЕСЬ, В ЭТОМ МЕСТЕ. ТЕПЕРЬ, КОГДА Я ОСВОБОДИЛСЯ ОТ ТЕБЯ, НЕТ НИЧЕГО НЕПОДВЛАСТНОГО МНЕ.~ */
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN GOTO 130
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68451 /* ~«Тогда что плохого в...»~ */ GOTO 143
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #66099 /* ~НО У МЕНЯ *НЕТ* ЖЕЛАНИЯ СПАСАТЬ ИХ. ОНИ БРОСИЛИ МНЕ ВЫЗОВ В МОЕМ ДОМЕ, И ИХ СМЕРТИ БУДУТ НАПОМИНАНИЕМ ВСЕМ ТЕМ, КТО ИДЕТ ПРОТИВ МЕНЯ.~ */
  IF ~~ THEN REPLY #66101 /* ~«Ты ведь *не можешь* их воскресить?»~ */ GOTO 131
  IF ~~ THEN REPLY #66102 /* ~«Не думаю, что у тебя есть выбор. Не думаю, что ты *можешь* воскресить их».~ */ GOTO 131
  IF ~~ THEN REPLY #66103 /* ~«Возможно, вскоре ты к ним присоединишься. Я хотел бы узнать о других вещах...»~ */ GOTO 140
  IF ~~ THEN REPLY #66104 /* ~«Тогда я позабочусь о том, чтобы ты присоединился к ним. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 131 // from: 130.0 130.1 143.0 143.1
  SAY #66100 /* ~СЛОМАННЫЙ, НА ПРОТЯЖЕНИЕ ЗАБЫТЫХ ТОБОЙ ЖИЗНЕЙ Я НАБЛЮДАЛ, УЧИЛСЯ И СОБИРАЛ СИЛУ В ГЛУБИНАХ СВОЕГО ТЕЛА.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #66105 /* ~ПОКА ТЫ ВОЕВАЛ В ЧЕРНОЙ ДЕСЯТИЛЕТНЕЙ ВОЙНЕ, ВСЕ ТВОИ ВОЕННЫЕ ЗНАНИЯ ВЫГРАВИРОВАЛИСЬ В МОЕМ РАЗУМЕ. ПОКА ТЫ ЗАХОДИЛСЯ В КОЛДОВСКОМ ПЛЯСЕ С БЕЗУМНЫМ ЛЮМОМ, Я УЧИЛСЯ ВМЕСТЕ С ТОБОЙ. ВСЕ ЗАБЫТОЕ ТОБОЙ Я *НЕ ЗАБЫЛ*. ВЛАСТЬ НАД ЖИЗНЬЮ И СМЕРТЬЮ — ЛИШЬ НЕЗНАЧИТЕЛЬНОЕ ПРОЯВЛЕНИЕ МОЕЙ СИЛЫ.~ */
  IF ~  Global("Know_Transcendent_Link","GLOBAL",0)
~ THEN REPLY #66106 /* ~«Говоришь, ты учился *вместе* со мной. Все, что пережил я, пережил и ты. То есть, ты говоришь, что мы связаны, ты и я?..»~ */ GOTO 133
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66107 /* ~«Значит, эта связь между нами... она позволяет тебе переживать и познавать то же, что переживаю и познаю я...»~ */ DO ~SetGlobal("Know_Transcendent_Link","GLOBAL",1)
~ GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0 132.1
  SAY #66108 /* ~ЭТО МЕЛОЧЬ, *НЕ ИМЕЮЩАЯ* ЗНАЧЕНИЯ.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66109 /* ~«Нет, я так не думаю: раз ты утверждаешь, что обладаешь силой, может, и я ею обладаю».~ */ GOTO 134
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68268 /* ~«Дейонарра сказала, что я могу обращать смерть, только если жертва умерла неподалеку от меня. Но то, что она во мне пробудила... ты говоришь, что это только малая часть моей власти над жизнью и смертью?»~ */ GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0 133.1
  SAY #66110 /* ~ТВОЙ РАЗУМ — СЛОВНО ЩЕБЕНЬ; ЕГО КРАЯ ЗАТУПИЛИСЬ ОТ НЕПРАВИЛЬНОГО И НЕБРЕЖНОГО ИСПОЛЬЗОВАНИЯ. ДАЖЕ ЕСЛИ БЫ У ТЕБЯ И БЫЛА СИЛА, ТЫ БЫ НЕ ЗНАЛ, КАК ЕЮ ВОСПОЛЬЗОВАТЬСЯ.~ */
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",0)
~ THEN REPLY #66111 /* ~«Нет, я так не думаю. Мне кажется, что эта связь работает в обе стороны. Если ты заявляешь, что обладаешь силой, может, и у меня она есть».~ */ GOTO 135
  IF ~  Global("Deionarra_Raise_Dead","GLOBAL",1)
~ THEN REPLY #68269 /* ~«Если ты утверждаешь, что обладаешь силой, тогда и у меня должна быть эта сила... даже если я не был рядом в миг смерти».~ */ GOTO 135
END

IF ~~ THEN BEGIN 135 // from: 134.0 134.1
  SAY #66112 /* ~У ТЕБЯ НЕТ ТЕХ ДОЛГИХ ЛЕТ, НЕОБХОДИМЫХ ДЛЯ ИЗУЧЕНИЯ ИСКУССТВА ЖИЗНИ И СМЕРТИ. ТЫ ПАДЕШЬ ПЕРЕДО МНОЙ.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #66113 /* ~Ты чувствуешь шевеление в своей голове, и вдруг осознаешь, что у тебя *есть* все эти годы, ведь когда-то, много перевоплощений назад, ты все это знал. Но это может занять некоторое время, и ты понимаешь, что твоя смертность *не даст* тебе его. У тебя есть время на возрождение только одного товарища.~ */
  IF ~  Global("Freed_Fortress_Shadows","GLOBAL",1)
~ THEN REPLY #66114 /* ~«Кстати, направляясь сюда, я открыл внутреннее помещение. Те большие тени теперь гуляют без присмотру по Крепости: они больше не заперты в том зале».~ */ GOTO 138
  IF ~  GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66115 /* ~Возродить одного из своих товарищей...~ */ GOTO 137
  IF ~  Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66116 /* ~Возродить товарища...~ */ GOTO 137
  IF ~~ THEN REPLY #66117 /* ~«Тогда пусть лежат, где лежали. Я хотел бы узнать о других вещах...»~ */ GOTO 140
END

IF ~~ THEN BEGIN 137 // from: 136.1 136.2
  SAY #66118 /* ~Время словно замирает, когда ты медленно подходишь. Ты ощущаешь слабое присутствие души своего товарища. И тут ты понимаешь, что можешь вернуть ее обратно в тело.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66119 /* ~Возродить Морта.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204m0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #66120 /* ~Возродить Анну.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204a0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #66121 /* ~Возродить Даккона.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204d0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #66122 /* ~Возродить Падшую Грацию.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204g0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #66123 /* ~Возродить Нордома.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204n0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #66124 /* ~Возродить Игнуса.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204i0",FALSE)
~ EXIT
  IF ~  GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #66125 /* ~Возродить Вейлора.~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204v0",FALSE)
~ EXIT
  IF ~~ THEN REPLY #66126 /* ~«Так пусть лежат, где лежали... Я хотел бы узнать о других вещах».~ */ GOTO 140
END

IF ~~ THEN BEGIN 138 // from: 136.0
  SAY #66127 /* ~ТЫ *ЛЖЕШЬ*.~ */
  IF ~~ THEN REPLY #66128 /* ~«Не веришь мне — сам посмотри, я ведь никуда не денусь».~ */ GOTO 139
END

IF ~~ THEN BEGIN 139 // from: 138.0
  SAY #66129 /* ~Я ВЕРНУСЬ И РАЗБЕРУСЬ С ТОБОЙ, СЛОМАННЫЙ. ЕСЛИ ТЫ ОСВОБОДИЛ ТЕНЕЙ, Я *СКОРМЛЮ* ТЕБЯ ИМ.~ */
  IF ~  GlobalGT("Fortress_Morte","GLOBAL",0)
~ THEN REPLY #66130 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tm0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
GlobalGT("Fortress_Dakkon","GLOBAL",0)
~ THEN REPLY #68165 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204td0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
GlobalGT("Fortress_Annah","GLOBAL",0)
~ THEN REPLY #68166 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ta0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
GlobalGT("Fortress_Grace","GLOBAL",0)
~ THEN REPLY #68167 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tg0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",0)
~ THEN REPLY #68168 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204ti0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68169 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
Global("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Vhailor","GLOBAL",0)
GlobalGT("Fortress_Nordom","GLOBAL",0)
~ THEN REPLY #68170 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tn0",FALSE)
~ EXIT
  IF ~  Global("Fortress_Morte","GLOBAL",0)
Global("Fortress_Dakkon","GLOBAL",0)
Global("Fortress_Annah","GLOBAL",0)
Global("Fortress_Grace","GLOBAL",0)
GlobalGT("Fortress_Ignus","GLOBAL",0)
Global("Fortress_Ignus_Battle","GLOBAL",1)
GlobalGT("Fortress_Vhailor","GLOBAL",0)
Global("Fortress_Vhailor_Battle","GLOBAL",0)
~ THEN REPLY #68442 /* ~«Хорошо... Я буду здесь. ЕСЛИ ты вернешься».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tv0",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 140 // from: 40.0 42.3 43.1 44.1 58.0 59.0 63.1 64.1 65.1 66.1 67.2 68.1 69.1 75.3 79.3 83.0 84.0 85.1 93.3 94.1 95.1 114.2 115.1 116.1 118.4 120.1 121.3 122.2 124.0 130.2 136.3 137.7 143.2
  SAY #66131 /* ~ЗАДАВАЙ СВОИ ВОПРОСЫ. НО ЗНАЙ, ЧТО ОТВЕТОВ ТЕБЕ НЕ ЗАПОМНИТЬ.~ */
  IF ~~ THEN REPLY #66132 /* ~«Ты сделал все возможное, чтобы не встретиться со мной лицом к лицу. Зачем?»~ */ GOTO 42
  IF ~  GlobalGT("Fortress_Vhailor_Battle","GLOBAL",0)
Global("Transcendent_Vhailor_Confront","GLOBAL",1)
Global("Vhailor_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66133 /* ~«Зачем ты послал за мной Вейлора, когда узнал, что он может убить меня?»~ */ GOTO 92
  IF ~  GlobalGT("Fortress_Ignus_Battle","GLOBAL",0)
Global("Transcendent_Ignus_Confront","GLOBAL",1)
Global("Ignus_Kill_Nameless","GLOBAL",1)
~ THEN REPLY #66134 /* ~«Зачем ты послал за мной Игнуса, когда узнал, что он может убить меня?»~ */ GOTO 92
  IF ~  Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66135 /* ~«Ты сказал, что между нами есть связь».~ */ GOTO 90
  IF ~  CheckStatGT(Protagonist,15,INT)
~ THEN REPLY #66136 /* ~«Может, я и бессмертный, но Равель сказала, что ритуал прошел неудачно: после каждой смерти я теряю частицу разума. Со временем, после множества смертей, я потеряю способность даже думать самостоятельно».~ */ GOTO 88
  IF ~  CheckStatLT(Protagonist,16,INT)
~ THEN REPLY #66137 /* ~«Нас не следовало разделять; наше разделение неестественно. Я не могу продолжать все так же жить и умирать».~ */ GOTO 86
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66138 /* ~«Если мы, как ты говоришь, связаны, то я хочу знать твое имя».~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66139 /* ~«Если мы, как ты говоришь, связаны, то я хочу знать твое имя».~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66140 /* ~«Если мы, как ты говоришь, связаны, то я хочу знать твое имя».~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",0)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66141 /* ~«Если мы, как ты говоришь, связаны, то я хочу знать твое имя».~ */ GOTO 108
  IF ~  Global("Grace_Name","GLOBAL",0)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66142 /* ~«Если мы, как ты говоришь, связаны, то назови наше имя».~ */ GOTO 109
  IF ~  Global("Grace_Name","GLOBAL",1)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66143 /* ~«Если мы, как ты говоришь, связаны, то назови наше имя».~ */ GOTO 106
  IF ~  Global("Grace_Name","GLOBAL",2)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66144 /* ~«Если мы, как ты говоришь, связаны, то назови наше имя».~ */ GOTO 107
  IF ~  Global("Grace_Name","GLOBAL",3)
Global("Know_Nameless_Name","GLOBAL",1)
Global("Know_Transcendent_Link","GLOBAL",1)
~ THEN REPLY #66145 /* ~«Если мы, как ты говоришь, связаны, то назови наше имя».~ */ GOTO 108
  IF ~  GlobalGT("Good","GLOBAL",-21)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66146 /* ~«Мои друзья... Я хочу, чтобы им вернули их жизни, и чтобы они свободно могли уйти отсюда».~ */ GOTO 128
  IF ~  GlobalLT("Good","GLOBAL",-20)
GlobalGT("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #66147 /* ~«Мои товарищи... я имею право отбирать их жизни, но не ты. Я хочу, чтобы их воскресили. Сейчас же».~ */ GOTO 128
  IF ~  GlobalGT("Good","GLOBAL",-21)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68447 /* ~«Возроди моего друга и позволь ему свободно уйти отсюда. *Если* у тебя есть такая сила».~ */ GOTO 129
  IF ~  GlobalLT("Good","GLOBAL",-20)
Global("Fortress_Party_Roof","GLOBAL",1)
~ THEN REPLY #68448 /* ~«Я требую, чтобы ты воскресил моего товарища и позволь ему свободно уйти отсюда. *Если* у тебя есть такая сила».~ */ GOTO 129
  IF ~~ THEN REPLY #66148 /* ~«Тогда вот мой последний вопрос: что может изменить сущность человека?»~ */ GOTO 117
  IF ~~ THEN REPLY #66149 /* ~«Я узнал достаточно. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END

IF ~~ THEN BEGIN 141 // from: 39.1 40.1 64.2 83.1 84.1 112.1 116.0 118.0 128.2 130.3 140.19 143.3
  SAY #68155 /* ~ТОГДА ПРИГОТОВЬСЯ УМЕРЕТЬ СНОВА, СЛОМАННЫЙ.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68156 /* ~«Даже если я умру, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68157 /* ~«Даже если я умру, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68158 /* ~«Даже если я умру, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68158 /* ~«Даже если я умру, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204tb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #68427 /* ~ЭТО ТЕБЕ *НЕ ПОМОЖЕТ*. ТЫ ПОДНЯЛ СВОЕГО ТОВАРИЩА, ЧТОБЫ ТОТ УМЕР ВТОРОЙ СМЕРТЬЮ.~ */
  IF ~  Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68428 /* ~«Даже если мы умрем, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb1",FALSE)
~ EXIT
  IF ~  Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68429 /* ~«Даже если мы умрем, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
!Dead("Fhjull")
~ THEN REPLY #68430 /* ~«Даже если мы умрем, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb3",FALSE)
~ EXIT
  IF ~  !Dead("Trias")
Dead("Fhjull")
~ THEN REPLY #68428 /* ~«Даже если мы умрем, я вернусь за тобой. *Клянусь*. Я снова выслежу тебя, сколько бы времени это у меня не заняло».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("1204trb2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 143 // from: 129.1
  SAY #68452 /* ~Я *НЕ ЖЕЛАЮ* СПАСАТЬ ТВОЕГО ТОВАРИЩА. ТВОЯ СМЕРТНАЯ... *ШАВКА* БРОСИЛА МНЕ ВЫЗОВ В МОЕМ ДОМЕ, И ЕЕ СМЕРТЬ БУДЕТ НАПОМИНАНИЕМ ВСЕМ, КТО ИДЕТ ПРОТИВ МЕНЯ.~ */
  IF ~~ THEN REPLY #68453 /* ~«Ты ведь *не можешь* возродить моего товарища?»~ */ GOTO 131
  IF ~~ THEN REPLY #68454 /* ~«Не думаю, что у тебя есть выбор. Не думаю, что ты *можешь* возродить моего товарища».~ */ GOTO 131
  IF ~~ THEN REPLY #68455 /* ~«Возможно, уже скоро ты последуешь за ним в дверь смерти. Я хочу узнать о другом...»~ */ GOTO 140
  IF ~~ THEN REPLY #68456 /* ~«Тогда ты все равно умрешь. Готовься, дух. Посмотрим, можно ли убить мою смертность».~ */ GOTO 141
END
