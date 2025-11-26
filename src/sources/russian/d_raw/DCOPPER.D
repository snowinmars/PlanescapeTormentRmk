// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Перед тобой высокий молчаливый человек. Его можно запросто принять за статую, хотя глубокие морщины на лице и лбу заставляют тебя думать, что скульптор немного переборщил с долотом при вытесывании лица. Он выглядит по меньшей мере лет за пятьдесят, но вот насколько за пятьдесят, сказать трудно. Он медленно поворачивается к тебе, и ты замечаешь тусклый медный блеск в его глазах.~ */
  IF ~~ THEN REPLY #2475 /* ~«Приветствую».~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Старик Медноглазый смотрит на тебя. Цвет глаз трудно определить — настолько глубоко они посажены, — но медный блеск явственно различим.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~«Я хочу подписать Контракт Смерти».~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~«Я хочу отменить Контракт Смерти, который подписал с тобой».~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~«Верни мне Контракт Смерти, который я подписал, или я заберу его силой».~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~«У меня есть кое-какие вопросы...» ~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~«Я ошибся... Я тебя перепутал кое с кем. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Медноглазый еле заметно кивает и медленно засовывает руки в мантию. Левой рукой он вытаскивает небольшой мешочек из человеческой кожи, а правой — кусок пергамента, намотанный на ручку, сделанную из фаланги. Мешочек и пергамент медленно ложатся на стол перед тобой.~ */
  IF ~~ THEN REPLY #2482 /* ~Взять пергамент и осмотреть его.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Подписать пергамент.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Осмотреть мешочек.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Взять мешочек.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~«Я передумал. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~Это контракт, свидетельствующий о том, что тленные получают во владение тело подписавшегося после того, как он пересечет Границу Вечности. Подписавшийся в обмен получает от тленных денежную сумму, оговоренную в момент подписания контракта. По всей видимости, именно она и содержится в мешочке.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Подменить пергамент другим контрактом, а затем подписать его.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Подменить пергамент другим контрактом, а затем подписать его.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Подменить пергамент другим контрактом, а затем подписать его.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Осмотреть пергамент.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Подписать пергамент.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Осмотреть мешочек.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Взять мешочек.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~«Я передумал. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Медноглазый никак не реагирует на подмену. Как только ты заканчиваешь подписывать контракт, Медноглазый кивает на мешочек в левой руке. Добравшись до мешочка, ты определяешь, что в нем около сотни медяков. Контракт в это время исчезает в рукаве мантии старика.~ */
  IF ~~ THEN REPLY #2498 /* ~«У меня есть вопросы...» ~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Медноглазый никак не реагирует на подмену. Как только ты заканчиваешь подписывать контракт, Медноглазый кивает на мешочек в левой руке. Он оставляет контракт на столе, будто предлагая изучить его снова... к своему ужасу ты замечаешь, что трюк не удался. Теперь, после твоей смерти, тленные завладеют твоим телом.~ */
  IF ~~ THEN REPLY #2500 /* ~«Ой... минуточку... могу ли я еще раз посмотреть на контракт?»~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~Пергамент исчезает в рукаве мантии Медноглазого. Он кивает на мешочек.~ */
  IF ~~ THEN REPLY #2503 /* ~«Отдай мне этот контракт или я убью тебя!»~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Взять мешочек и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Медноглазый не реагирует, но комната неожиданно погружается во мглу...~ */
  IF ~~ THEN REPLY #2506 /* ~«Что за?!..»~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~Мешочек наполнен медяками. Похоже, в нем около сотни монет.~ */
  IF ~~ THEN REPLY #2508 /* ~Взять пергамент и осмотреть его.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Подписать пергамент.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Снова осмотреть мешочек.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Взять мешочек.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~«Я передумал. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~Ты пытаешься схватить мешочек, но он исчезает со стола. Несколько раз сморгнув, ты снова видишь его на столе. Медноглазый по-прежнему не спускает с тебя глаз.~ */
  IF ~~ THEN REPLY #2514 /* ~Взять пергамент и осмотреть его.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Подписать пергамент.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Осмотреть мешочек.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Взять мешочек снова.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~«Я передумал. Прощай».~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Медноглазый хранит молчание.~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~«Я пришел подписать Контракт Смерти».~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~«Э-э... неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~Как только ты заканчиваешь подписывать контракт, Медноглазый кивает на мешочек в левой руке. В это же время контракт исчезает в его рукаве.~ */
  IF ~~ THEN REPLY #2521 /* ~«Я хочу задать тебе несколько вопросов...»~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Не произнося ни слова, Медноглазый поднимает со стола пергамент с мешочком и кладет их в рукав своей мантии.~ */
  IF ~~ THEN REPLY #2525 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Медноглазый хранит молчание.~ */
  IF ~~ THEN REPLY #12006 /* ~«Это твой последний шанс. Верни мне контракт или ты пожалеешь об этом».~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~«Э-э... неважно. Прощай».~ */ EXIT
END
