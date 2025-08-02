// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DUHIR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DUHIR~

IF ~  Global("BV_Enemy","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #23329 /* ~Ты успеваешь разглядеть лишь перекошенное от ужаса лицо сборщика в лохмотьях, после чего он разворачивается и убегает.~ */
  IF ~  Global("Uhir","GLOBAL",0)
~ THEN REPLY #22957 /* ~«В другой раз...»~ */ DO ~Enemy()
EscapeArea()
~ EXIT
  IF ~  GlobalGT("Uhir","GLOBAL",0)
~ THEN REPLY #23331 /* ~«Юхир, постой... проклятье».~ */ DO ~Enemy()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 3.2
  SAY #23335 /* ~«Э... ну, там, внизу, меня немного покусал упырь, пока я искал барахло на продажу».~ */
  IF ~~ THEN REPLY #23337 /* ~«Внизу?»~ */ GOTO 5
  IF ~~ THEN REPLY #23340 /* ~«У меня есть другие вопросы к тебе».~ */ GOTO 3
  IF ~~ THEN REPLY #23342 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 3.0
  SAY #23344 /* ~«Зовут Юхир, — он сплевывает. — Как будто здесь это что-то значит».~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23345 /* ~«Не твой ли это нож с нацарапанным словом 'ЮХИР'?»~ */ GOTO 16
  IF ~~ THEN REPLY #23347 /* ~«Ладно. У меня были к тебе другие вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #23348 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 4.1 5.1 7.0 8.0 9.1 10.2 10.3 11.0 12.0
  SAY #23349 /* ~Он кивает, но не отвечает.~ */
  IF ~~ THEN REPLY #23350 /* ~«Кто ты?»~ */ GOTO 2
  IF ~~ THEN REPLY #23351 /* ~«Чем ты занимаешься?»~ */ GOTO 4
  IF ~~ THEN REPLY #23352 /* ~«Ты весь в бинтах. Что с тобой приключилось?»~ */ GOTO 1
  IF ~~ THEN REPLY #23353 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #23354 /* ~«Жду, пока затянутся раны, а там еще раз спущусь. Я продаю вещички, которые нахожу внизу».~ */
  IF ~~ THEN REPLY #23355 /* ~«Внизу?»~ */ GOTO 5
  IF ~~ THEN REPLY #23357 /* ~«У меня есть другие вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #23359 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0
  SAY #23366 /* ~Он кивает. «Внизу в катакомбах, где одни трупаки. Слушай... а ты сам-то туда не собираешься?»~ */
  IF ~~ THEN REPLY #23368 /* ~«Возможно. А что?»~ */ GOTO 9
  IF ~~ THEN REPLY #23370 /* ~«Неважно. У меня есть другие вопросы».~ */ GOTO 3
  IF ~~ THEN REPLY #23371 /* ~«Я постараюсь. Прощай».~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",3)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY #23372 /* ~Юхир кивает тебе. «Еще раз спасибо за то, что помог мне вернуть мой счастливый ножик, рубака».~ */
  IF ~~ THEN REPLY #23373 /* ~«Конечно. Прощай».~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",1)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #23374 /* ~Юхир смотрит на тебя испуганными глазами, словно пес, который боится, что ты украдешь его еду. «А? Снова ты? Чего хочешь?»~ */
  IF ~~ THEN REPLY #23375 /* ~«Мне нужны ответы».~ */ GOTO 3
  IF ~~ THEN REPLY #23376 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",0)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #23377 /* ~Этот среднего возраста мужичок с кислой рожей при твоем приближении хватается за пояс... не найдя там оружия, он попросту пятится от тебя. Ты замечаешь, что под нарядом сборщика его икры и предплечья замотаны грязными бинтами. «Чего надо?»~ */
  IF ~~ THEN REPLY #23378 /* ~«Просто ответь на несколько вопросов...»~ */ DO ~SetGlobal("Uhir","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #23379 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.0
  SAY #23380 /* ~«Я потерял мой счастливый ножик! — сердито бормочет он, топая ногой. — Он был со мной многие годы, вот тут...» — он указывает на пустые ножны на поясе. ~ */
  IF ~~ THEN REPLY #23381 /* ~«Так что же с ним случилось?»~ */ GOTO 10
  IF ~~ THEN REPLY #23382 /* ~«Очень жаль. У меня есть другие вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #23383 /* ~«Надеюсь, ты. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 13.3
  SAY #23384 /* ~«Шарился по катакомбам внизу и наткнулся на упыря! Должно быть, отставший, потому что обычно они по одиночке не ходят. Хотел укусить меня за лицо, а я прикрылся рукой и пырнул его ножиком в глаз. Он упал и куснул меня за ногу, а потом я стряхнул с себя засранца и прибежал сюда».~ */
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23385 /* ~«Это не этот нож с выцарапанной надписью 'ЮХИР'?»~ */ GOTO 16
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23386 /* ~«Вот так история. Если попадется твой нож — принесу его тебе».~ */ DO ~SetGlobal("Uhir","GLOBAL",2)
~ JOURNAL #21912 /* ~Юхир потерял свой «счастливый нож» внизу, в катакомбах: он всадил его в глаз упырю и убежал. Если он мне попадется, я мог бы вернуть его Юхиру.~ */ GOTO 11
  IF ~  !Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23387 /* ~«Надеюсь, ты найдешь свой нож. У меня есть другие вопросы».~ */ GOTO 3
  IF ~  Global("Uhir","GLOBAL",2)
!PartyHasItem("UhrKnf")
~ THEN REPLY #23388 /* ~«Как я уже сказал, если мне попадется твой нож, я его тебе принесу. У меня же еще вопросы...»~ */ GOTO 3
  IF ~~ THEN REPLY #23389 /* ~«Готов поспорить, упырь расстроен не меньше твоего. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #23390 /* ~«Правда? Я буду благодарен, дело говорю. У него на рукоятке нацарапано мое имя...»~ */
  IF ~~ THEN REPLY #23391 /* ~«Рад был помочь. Пока я не ушел, позволь мне кое о чем спросить...»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ GOTO 3
  IF ~~ THEN REPLY #23392 /* ~«Видишь ли, я жду, что мне за него заплатят».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 12
  IF ~~ THEN REPLY #23393 /* ~«Я уже должен идти. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #23394 /* ~Юхир хмурится. «Я дам тебе все, что у меня есть, но на много не рассчитывай. Оглянись, рубака... я просто не могу осыпать тебя золотом».~ */
  IF ~~ THEN REPLY #23395 /* ~«Тогда на том и сойдемся. У меня вопрос...»~ */ GOTO 3
  IF ~~ THEN REPLY #23396 /* ~«Мы еще поговорим, когда я достану твой нож. Прощай».~ */ EXIT
END

IF ~  Global("Uhir","GLOBAL",2)
Global("BV_Enemy","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY #23397 /* ~Юхир смотрит на тебя прищурено. «Ну как, нашел мой ножик?»~ */
  IF ~  PartyHasItem("UhrKnf")
Global("Good_Uhir_1","GLOBAL",1)
~ THEN REPLY #23398 /* ~«Да... вот он».~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~  PartyHasItem("UhrKnf")
Global("Evil_Uhir_1","GLOBAL",1)
~ THEN REPLY #23399 /* ~«Да».~ */ GOTO 15
  IF ~  PartyHasItem("UhrKnf")
~ THEN REPLY #23400 /* ~Ложь: «Нет... Счастливо».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Uhir_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23401 /* ~«Еще нет. Еще раз, где ты его потерял?»~ */ GOTO 10
  IF ~  !PartyHasItem("UhrKnf")
~ THEN REPLY #23402 /* ~«Еще нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.0 15.0 15.1 16.0
  SAY #23403 /* ~Юхир берет нож и трепетно обнимает его. «О, ты вернулся! Мой счастливый ножик... спасибо, рубака. Так, теперь *ты*! — он начинает вычитывать нож, тряся его. — Больше не вздумай убегать!» Он с улыбкой засовывает нож в ножны.~ */
  IF ~~ THEN REPLY #23404 /* ~«Прощай, Юхир».~ */ JOURNAL #22025 /* ~Я вернул Юхиру его «счастливый» нож. Может, в следующий раз ему с ним повезет больше... хотя однажды он уже *спас* его от упыря.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1 16.1
  SAY #23405 /* ~«Все, что у меня есть — эта пригоршня монет... — он протягивает тебе дюжину монет. — Этого хватит?»~ */
  IF ~~ THEN REPLY #23406 /* ~«Да, этого хватит. Держи свой нож».~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
GivePartyGold(13)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23407 /* ~«Оставь себе свои деньги, Юхир... вот твой нож».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
~ GOTO 14
  IF ~~ THEN REPLY #23408 /* ~«Хм. Тогда я оставлю его себе. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Я решил прикарманить себе «счастливый» нож Юхира. Похоже, ему это не очень понравилось.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 2.0 10.0
  SAY #23409 /* ~Юхир выпучивает глаза от удивления. «Это ж мой счастливый ножик!»~ */
  IF ~~ THEN REPLY #23410 /* ~«Вот, держи. Он по праву твой».~ */ DO ~DestroyPartyItem("UhrKnf",TRUE)
AddexperienceParty(5000)
SetGlobal("Uhir","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALGood_Uhir_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Uhir_1","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #23411 /* ~«Если хочешь его вернуть, предлагаю выкупить его у меня».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #23412 /* ~«Славный нож... Я оставлю его себе, Юхир. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Uhir_2","GLOBALGood",-1)
Enemy()
~ JOURNAL #23255 /* ~Я решил прикарманить себе «счастливый» нож Юхира. Похоже, ему это не очень понравилось.~ */ EXIT
END
