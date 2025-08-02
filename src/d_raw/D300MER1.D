// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~Похоже, этот мрачного вида старик продает всякое оружие. «А, давай, подходи! Хочешь поглядеть на мои клинки, а?»~ */
  IF ~~ THEN REPLY #17302 /* ~«Да, хочу».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~«Нет, но у меня есть кое-какие вопросы».~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~«Нет, я просто проходил мимо. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~«И снова здравствуй, рубака. Что, хочешь купить самую лучшую сталь в Сигиле, а?»~ */
  IF ~~ THEN REPLY #17305 /* ~«Да, хочу».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~«Нет, но у меня есть кое-какие вопросы».~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~«Нет, я просто проходил мимо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~«У меня и так полно работы, сэр...» Он неожиданно отворачивается и кашляет в кулак. «Извиняюсь. Как я уже сказал, я не могу остановить торговлю из-за пустой болтовни с тобой».~ */
  IF ~~ THEN REPLY #17311 /* ~«Ты болен?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~«Тогда покажи мне свои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~«Тогда я заплачу за потраченное время».~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~«Тогда неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~Старый торговец уличает момент, чтобы поглядеть по сторонам. Поняв, что вблизи нет потенциальных покупателей, он протягивает тебе открытую ладонь.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Бросить три монеты ему на ладонь.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~«Неважно. Давай посмотрим на твои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~Он кивает, пряча под одеждой три медяка. «Чего ты хочешь узнать, рубака?»~ */
  IF ~~ THEN REPLY #17357 /* ~«Расскажи мне об этом месте».~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~«Я ищу потерянный дневник».~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~«Забудь. Давай посмотрим на твои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~«Ничего, неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~«Об этом-то? Это всего лишь еще один рынок в Улье, самом худшем районе нашего благословенного города Сигила, — он горько улыбается, пожимая плечами. — На самом деле, это не такое уж плохое место, как для трущоб, если ты следишь за своей спиной и остерегаешься теней».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~«Я ищу потерянный дневник».~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~«Давай посмотрим на твои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~«Хм-м. Не, не знаю такого имени. Извини, рубака».~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~«Не очень-то это и помогло...»~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~«Расскажи мне об этом месте».~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~«Я ищу потерянный дневник».~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~«Забудь. Давай посмотрим на твои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~«Ничего, неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~«Не видал, извини. Если тебе нужен новый, то кто-нибудь из других торговцев сможет тебе продать». Он пожимает плечами.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~«Не очень-то это и помогло...»~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~«Расскажи мне об этом месте».~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~«Забудь. Давай посмотрим на твои товары».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~«Ничего, неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~Старый торговец тихонько смеется, затем кашляет в кулак. «Ты мне, рубака, не за ответы платил, а за время. Я бы помог, если мог, честно. Может, поглядишь на товары, а?»~ */
  IF ~~ THEN REPLY #17324 /* ~«Да».~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~«Не сейчас. Расскажи мне об этом месте».~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~«Нет, но я разыскиваю мужчину по имени Фарод».~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~«Нет, не сейчас. Я ищу потерянный дневник».~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~«Хо-хо! Не, рубака, я просто стар. Но за беспокойство спасибо». Он улыбается тебе.~ */
  IF ~~ THEN REPLY #17369 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~«Я разыскиваю мужчину по имени Фарод».~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~«Я ищу потерянный дневник».~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~«Можно взглянуть на твои товары?»~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~«Береги себя. Прощай».~ */ EXIT
END
