// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMANTUOK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMANTUOK~

IF ~  Global("Current_Area","GLOBAL",1600)
Global("AR0508_Visited","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #25632 /* ~Ты видишь гибрид человека и крысы. В его красных глазах виден коварный блеск. Из его пасти доносится вкрадчивый голос: «Итак, двуногий добровольно пришел в залы Многоединого. Чего же ты хочешь, человек, и куда ты собрался идти? Подойди и скажи Мантуоку правду».~ */
  IF ~~ THEN REPLY #25665 /* ~«Я уже собирался уходить».~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #25666 /* ~«Я пришел из Погребенной деревни, и просто тут осматривался».~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #25667 /* ~«Я пришел к тебе».~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #25668 /* ~«То, откуда я и куда иду — мое личное дело».~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #25669 /* ~«*Что* ты такое?»~ */ DO ~SetGlobal("Know_Mantuok","GLOBAL",1)
~ GOTO 9
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #25634 /* ~«Нет, двуногий, ты не уходишь. А теперь ответь на мой вопрос: чего ты хочешь и куда направляешься?»~ */
  IF ~~ THEN REPLY #25670 /* ~«Я пришел из Погребенной деревни, и просто тут разведывал».~ */ GOTO 2
  IF ~~ THEN REPLY #25671 /* ~«То, откуда я и куда иду — мое личное дело».~ */ GOTO 8
  IF ~~ THEN REPLY #25672 /* ~«*Что* ты такое?»~ */ GOTO 9
  IF ~~ THEN REPLY #25673 /* ~«Я сказал, что уже ухожу. Прощай».~ */ GOTO 8
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #25637 /* ~«Ах, деревня. Напомни мне... мусорщики, да? Пришел порыться в мусоре?»~ */
  IF ~~ THEN REPLY #25674 /* ~«Да, но в этом ночном горшке и порыться-то негде».~ */ GOTO 3
  IF ~~ THEN REPLY #25675 /* ~«Нет».~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #25638 /* ~«Значит, ничего ценного, двуногий? Единственное испражнение, которое я вижу здесь — это ТЫ. Однако, боюсь, придется нам привыкнуть к этой вони: ты больше никогда не увидишь дневной свет».~ */
  IF ~~ THEN REPLY #25676 /* ~«Что ты имеешь в виду?»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25677 /* ~«Ты мне угрожаешь?»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25678 /* ~«Думаю, да».~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #25639 /* ~«Тогда твой ответ вынуждает Мантуока спросить: зачем ты здесь? Неправильный поворот, неверный шаг, стечение обстоятельств, так? Ты искал меня или Многоединого? Или, может, ты просто не знаешь, почему ты здесь? Объясни мне это сейчас же».~ */
  IF ~~ THEN REPLY #25679 /* ~«Это было стечение обстоятельств».~ */ GOTO 5
  IF ~~ THEN REPLY #25680 /* ~«Я ищу Многоединого».~ */ GOTO 6
  IF ~~ THEN REPLY #25681 /* ~«Кто такой Многоединый?»~ */ GOTO 9
  IF ~~ THEN REPLY #25682 /* ~«Я пришел к тебе».~ */ GOTO 14
  IF ~~ THEN REPLY #25683 /* ~«Думаю, что здесь мне делать нечего».~ */ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0 17.0
  SAY #25640 /* ~«Значит, стечение обстоятельств? Для тебя все сложилось бы намного лучше, если бы ты не совершил ошибку и не пришел сюда».~ */
  IF ~~ THEN REPLY #25684 /* ~«О чем это ты?»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25685 /* ~«Я исправлю это и уйду...»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 17.1
  SAY #25642 /* ~«Говори, двуногий, и я передам твое послание Многоединому».~ */
  IF ~~ THEN REPLY #25686 /* ~«Хорошо».~ */ GOTO 7
  IF ~~ THEN REPLY #25687 /* ~«Я так не думаю».~ */ GOTO 18
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #25645 /* ~Мантуок наклоняется, повернув к тебе ухо.~ */
  IF ~~ THEN REPLY #25688 /* ~Атаковать его.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #25689 /* ~«Тут не о чем рассказывать».~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25690 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25691 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25692 /* ~«Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе мертвецы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 8 // from: 0.3 1.1 1.3 4.4 7.1 17.3 18.2 20.1
  SAY #25646 /* ~Он ухмыляется. «Вот как. У тебя будет время пересмотреть свой ответ, много времени». Он поднимает руки, из его пальцев струится дым.~ */
  IF ~~ THEN REPLY #25693 /* ~«Что за?..»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 0.4 1.2 4.2 14.1 15.4 17.2
  SAY #25647 /* ~«Значит, ты действительно не знаешь? Ясно, что ты зашел сюда по ошибке. Ты не уйдешь отсюда». Он поднимает руки, из его пальцев струится дым.~ */
  IF ~~ THEN REPLY #25695 /* ~«Мы могли бы обсудить это...»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
  IF ~~ THEN REPLY #25696 /* ~«Что ты делаешь?»~ */ DO ~SetGlobal("ZAP","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("Zap",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.2 7.3 15.0 15.1 20.2 20.3
  SAY #25650 /* ~Он умолкает. Его хвост мотается из стороны в сторону. Некоторое время он пристально на тебя смотрит. «Мои уши не обманывают меня, и ты сказал, что Безмолвный Король — всего лишь блеф мертвяков? Да, так и есть, — он бросает на тебя взгляд, а когда поворачивается, в его глазах горит торжество. — Скоро трупы станут по-настоящему мертвыми, и мы до отвала наедимся их мясом, — внезапно он с подозрением смотрит на тебя, — если только это не уловка. Значит, ты поговоришь с Многоединым?»~ */
  IF ~~ THEN REPLY #25697 /* ~«О, теперь я могу поговорить с Многоединым?»~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #25652 /* ~«Да. Запомни: они уже знают, что ты им скажешь. Прощай. Мы еще увидимся».~ */
  IF ~~ THEN REPLY #25698 /* ~«Тогда прощай». ~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 7.4 15.2 20.4
  SAY #25654 /* ~Мантуок шипит: «Он слишком силен? Ты видел доказательство его мощи? Тьфу! Многоединый услышит об этом из твоих уст. Ты расскажешь эти скверные новости сам! Идем со мной».~ */
  IF ~~ THEN REPLY #25699 /* ~«Я так не думаю».~ */ GOTO 13
  IF ~~ THEN REPLY #25700 /* ~«Пошли».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #25655 /* ~«Это была не просьба». Он поднимает руки, из его пальцев струится дым. На миг все окутывается тьмой.~ */
  IF ~~ THEN REPLY #25701 /* ~«Что за?..»~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 0.2 4.3
  SAY #25656 /* ~«Пришел ко *мне*? И кто же послал тебя с этим дурацким поручением?»~ */
  IF ~  Global("Soego_Journal","GLOBAL",1)
~ THEN REPLY #25702 /* ~«Соэго».~ */ DO ~SetGlobal("Know_Soego_Rats","GLOBAL",1)
~ GOTO 15
  IF ~~ THEN REPLY #25703 /* ~«Никто».~ */ GOTO 9
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #25704 /* ~«Никто. Просто я подумал, что ты тут главный».~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #25657 /* ~Он умолкает, как бы оценивая тебя. «А почему жрец тлена и пепла не пользуется обычным способом? Почему Соэго Брат-крыс не использует курьеров? Тьфу. Неважно. Рассказывай, и покончим с этим».~ */
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25705 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25706 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25707 /* ~«Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе мертвецы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
  IF ~~ THEN REPLY #25708 /* ~«Он сказал, что я должен передать это Многоединому лично».~ */ GOTO 16
  IF ~~ THEN REPLY #25709 /* ~«На самом деле, нет никакого сообщения».~ */ GOTO 9
END

IF ~~ THEN BEGIN 16 // from: 15.3
  SAY #25658 /* ~Крысооборотень яростно махает хвостом. «Хорошо. Ты поговоришь с Многоединым. Не лги, двуногий, поскольку они могут прочесть твои мысли так же легко, как и услышать твой голос».~ */
  IF ~~ THEN REPLY #25710 /* ~«Я запомню это».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2
  SAY #25659 /* ~«Твой язык страдает от избытка лжи и похвалы — это признак мошенника. Говори прямо, или пожалеешь. Зачем ты здесь и что ты ищешь? Может, стечение обстоятельств привело тебя к моей двери? Какие у тебя здесь дела?»~ */
  IF ~~ THEN REPLY #25711 /* ~«Это было стечение обстоятельств».~ */ GOTO 5
  IF ~~ THEN REPLY #25712 /* ~«Я ищу Многоединого».~ */ GOTO 6
  IF ~~ THEN REPLY #25713 /* ~«Кто такой Многоединый?»~ */ GOTO 9
  IF ~~ THEN REPLY #25714 /* ~«Думаю, что здесь мне делать нечего».~ */ GOTO 8
END

IF ~~ THEN BEGIN 18 // from: 6.1
  SAY #25660 /* ~«И зачем? Какое у тебя дело к Многоединому?»~ */
  IF ~~ THEN REPLY #25715 /* ~«Я принес новости».~ */ GOTO 19
  IF ~~ THEN REPLY #25716 /* ~«Мои дела тебя не касаются».~ */ GOTO 20
  IF ~~ THEN REPLY #25717 /* ~«Ничего особенного».~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #25661 /* ~Он открывает рот и выдает поток брани, но потом его взгляд устремляется вдаль, а голова склоняется набок, как будто он слушает чье-то послание. Когда его взгляд снова фокусируется на тебе, он выплевывает: «Лучше бы твои новости стоили того, чтобы услышать их, двуногий, иначе страдания твои войдут в легенды».~ */
  IF ~~ THEN REPLY #25718 /* ~«Избавь меня от своих угроз. Пошли».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #25662 /* ~«Я голос Многоединого! Ты мне расскажешь о своих делах! — его голос стихает и становится вкрадчивым. — Ты скажешь мне, или у тебя будут... неприятности, ясссно?»~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #25719 /* ~«Если ты попробуешь причинить мне вред, Мантуок, Многоединый заставит тебя пожалеть об этом».~ */ GOTO 21
  IF ~~ THEN REPLY #25720 /* ~«Вообще-то, здесь у меня нет дел».~ */ GOTO 8
  IF ~  Global("Silent_King","GLOBAL",1)
Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25721 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALChaotic_Hargrimm_7","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Hargrimm_3","GLOBALGood",-1)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
!Global("Lawful_Hargrimm_1","GLOBAL",1)
~ THEN REPLY #25722 /* ~«Безмолвный Король — всего лишь мертвый скелет. Он бессилен».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",4)
AddexperienceParty(2000)
~ GOTO 10
  IF ~  Global("Silent_King","GLOBAL",1)
~ THEN REPLY #25723 /* ~«Безмолвный Король слишком силен, чтобы нападать на него. Держитесь подальше от Мертвых Народов, иначе мертвецы уничтожат вас».~ */ DO ~SetGlobal("CR_Vic","GLOBAL",5)
AddexperienceParty(2000)
~ GOTO 12
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #25663 /* ~От этого Мантуок подпрыгивает и шипит. «Мерзкий, мерзкий человек. Угрожает Мантуоку. Не уважаешь Мантуока. Плюет на его долг. Говорит Мантуоку колкие угрозы. Сегодня ты не завел себе друзей, человек. Иди к Многоединому и рассказывай, с чем пришел».~ */
  IF ~~ THEN REPLY #25724 /* ~«Спасибо. Ты мне очень помог».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("RatKing",FALSE)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedTo(0)
~ THEN BEGIN 22 // from:
  SAY #29320 /* ~Ты видишь гибрид человека и крысы. В его красных глазах виден коварный блеск. Из его пасти доносится вкрадчивый голос: «Итак... двуногий пробрался в логово слуг Лотара. Чего же ты хочешь, человек, и куда ты собрался идти? Подойди и скажи Мантуоку правду».~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29351 /* ~«Я выполняю задание Лотара. Мне нужно добыть череп».~ */ GOTO 23
  IF ~~ THEN REPLY #29352 /* ~«Кто ты?»~ */ GOTO 27
  IF ~~ THEN REPLY #29353 /* ~«Я ищу здесь главного».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29354 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29355 /* ~«Просто осматриваюсь».~ */ GOTO 33
END

IF ~~ THEN BEGIN 23 // from: 22.0 52.0
  SAY #29321 /* ~При упоминании Лотара крысочеловек пригибает голову и шипит: «Прислал безволосого для работы на Семью? Невозможно!»~ */
  IF ~~ THEN REPLY #29356 /* ~«Он сказал, что от тебя нету толку, и что ему нужен кто-то, кому он мог бы довериться. То есть мне».~ */ GOTO 24
  IF ~~ THEN REPLY #29357 /* ~«Тем не менее».~ */ GOTO 24
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29358 /* ~«Хочешь сыра, Мантуок?» Дать ему отравленный сыр.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29363 /* ~«Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1
  SAY #29322 /* ~Мантуок снова шипит на тебя: «Тогда убирайся и не приходи, пока череп не будет у тебя в руках, — он умолкает и с подозрением смотрит на тебя. — У тебя уже есть череп?»~ */
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29364 /* ~Дать ему отравленный сыр. «Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29365 /* ~Дать ему сыр. «Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 26
  IF ~~ THEN REPLY #29366 /* ~«Вообще-то, да».~ */ GOTO 36
  IF ~~ THEN REPLY #29367 /* ~«Еще нет. Но я вернусь с ним».~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.2 24.0 36.8 38.8 41.1 42.3
  SAY #29323 /* ~Крысочеловек выхватывает отравленный сыр из твоей руки и тщательно обнюхивает его, с подозрением поглядывая на тебя. Он глотает сыр, и его тело сотрясает от спазма. В конвульсиях он падает на землю, из его рта вытекает тоненькая струйка кровавой слюны. «А...»~ */
  IF ~  NumTimesTalkedTo(0)
~ THEN REPLY #29368 /* ~«Прощай, крысочеловек».~ */ DO ~AddexperienceParty(2000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
  IF ~  NumTimesTalkedToGT(0)
~ THEN REPLY #29369 /* ~«Гори в аду, Мантуок».~ */ DO ~AddexperienceParty(5000)
SetGlobal("0508_Wererat_Alert","AR0508",1)
Kill(Myself)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.3 24.1
  SAY #29324 /* ~Мантуок хватает сыр из твое руки и с подозрением обнюхивает его. Он прячет сыр и говорит: «Иди, чужак. Мы еще поговорим, когда ты вернешься». Он начинает грызть сыр.~ */
  IF ~~ THEN REPLY #29370 /* ~«На здоровье, Мантуок».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 22.1
  SAY #29325 /* ~«Я Мантуок. Я глас Многоединого и агент Лотара, Повелителя Костей. Здесь я говорю, а ты отвечаешь. Чего тебе здесь нужно?»~ */
  IF ~~ THEN REPLY #29371 /* ~«Кто такой Многоединый?»~ */ GOTO 30
  IF ~  Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29372 /* ~«Кто такой Лотар?»~ */ GOTO 30
  IF ~~ THEN REPLY #29373 /* ~«Ты работаешь на них обоих? Разве такое возможно?»~ */ GOTO 37
  IF ~~ THEN REPLY #29374 /* ~«Просто осматриваюсь».~ */ GOTO 33
  IF ~~ THEN REPLY #29375 /* ~«Я ищу хозяина этого места».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29376 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29377 /* ~«Это тебя не касается».~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.6 30.3 37.3
  SAY #29326 /* ~«Все, что здесь происходит, касается меня. Говори, иначе моя крысиная семья будет есть твою плоть целую вечность».~ */
  IF ~~ THEN REPLY #29378 /* ~«Просто осматриваюсь».~ */ GOTO 33
  IF ~~ THEN REPLY #29379 /* ~«Я ищу хозяина этого места».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29380 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29381 /* ~«А я уже сказал, что это тебя не касается».~ */ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.3
  SAY #29327 /* ~Мантуок стискивает рот и что-то бормочет себе под нос. «Что ж, ладно. Я вкушу твою кровь и познаю тайны твоей плоти. Крысы! Ко мне!» Он нападает.~ */
  IF ~~ THEN REPLY #29382 /* ~«Давай, Мантуок».~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.0 27.1
  SAY #29328 /* ~«В этом месте, мясо, вопросы задаю я. Я на них не отвечаю. Чего... тебе... надо?»~ */
  IF ~~ THEN REPLY #29383 /* ~«Просто осматриваюсь».~ */ GOTO 33
  IF ~~ THEN REPLY #29385 /* ~«Я ищу хозяина этого места».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29386 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29387 /* ~«Это тебя не касается».~ */ GOTO 28
END

IF ~~ THEN BEGIN 31 // from: 22.2 27.4 28.1 30.1 37.1 52.1
  SAY #29329 /* ~«Ищешь Лотара? И притом пришел из его убежища. Уходи сейчас же, и я забуду, что видел тебя».~ */
  IF ~~ THEN REPLY #29388 /* ~«Хорошо».~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 22.3 27.5 28.2 30.2 37.2 52.2
  SAY #29330 /* ~«Болтливый череп? Надо же. Пустая трата времени. Надеюсь, ты договорился с хозяином о возвращении твоего друга, потому что другого пути получить его назад нет».~ */
  IF ~~ THEN REPLY #29389 /* ~«Я запомню это. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 22.4 27.3 28.0 30.0 37.0 52.3
  SAY #29331 /* ~«Это совершенно неприемлемо. В логове Семьи ты должен иметь цель».~ */
  IF ~~ THEN REPLY #29390 /* ~«Тогда я пошел».~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #29332 /* ~«Да, иди и не возвращайся, иначе пожалеешь».~ */
  IF ~~ THEN REPLY #29391 /* ~«Как угодно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #29333 /* ~Мантуок внимательно смотрит на тебя и обдумывает свои слова. «Только не подумай, что я забуду твои слова, человек. Иди к хозяину, если хочешь, но помни, что за тобой будут следить до конца твоих дней». Он отходит.~ */
  IF ~~ THEN REPLY #29392 /* ~«Я запомню это».~ */ EXIT
END

IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN BEGIN 36 // from: 24.2
  SAY #29334 /* ~«А ты достал тот череп, который нужен хозяину?»~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29393 /* ~«У меня есть череп».~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29394 /* ~«Да, от скелета».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29395 /* ~«Да, от зомби».~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29396 /* ~«Да, от упыря».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29397 /* ~«Да. От крысооборотня».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29398 /* ~«Да, от древнего скелета».~ */ GOTO 41
  IF ~~ THEN REPLY #29399 /* ~«Еще нет».~ */ GOTO 43
  IF ~~ THEN REPLY #29400 /* ~Блеф: «Прочь с дороги, Мантуок, не то умрешь на месте».~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29401 /* ~«Хочешь сыра, Мантуок?» Дать ему отравленный сыр.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29402 /* ~«Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 27.2
  SAY #29335 /* ~«Хм, а почему бы и нет? Хозяин искушен в тайнах силы, а Многоединый — в тайнах города. Возможно, однажды я объединю их усилия и стану от этого сильнее. В таком соглашении Многоединый видит много преимуществ... а обращение жителей Погребенной деревни поможет расширить влияние Лотара и Многоединого. Все в выигрыше, правда? Итак... чего ты здесь добиваешься?»~ */
  IF ~~ THEN REPLY #29403 /* ~«Просто осматриваюсь».~ */ GOTO 33
  IF ~~ THEN REPLY #29404 /* ~«Я ищу хозяина этого места».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29405 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29406 /* ~«Это тебя не касается».~ */ GOTO 28
END

IF ~~ THEN BEGIN 38 // from: 36.9 41.2 42.4
  SAY #29336 /* ~Он хватает сыр из твоей руки и проглатывает его целиком. «Насчет того черепа: ты его достал?»~ */
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29407 /* ~«У меня есть череп».~ */ GOTO 39
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29408 /* ~«Да, от скелета».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29409 /* ~«Да, от зомби».~ */ GOTO 41
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29410 /* ~«Да, от упыря».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29411 /* ~«Да. От крысооборотня».~ */ GOTO 41
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29412 /* ~«Да, от древнего скелета».~ */ GOTO 41
  IF ~~ THEN REPLY #29413 /* ~«Еще нет».~ */ GOTO 43
  IF ~~ THEN REPLY #29414 /* ~Блеф: «Прочь с дороги, Мантуок, не то умрешь на месте».~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29415 /* ~«Хочешь еще сыра, Мантуок?» Дать ему отравленный сыр.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
END

IF ~~ THEN BEGIN 39 // from: 36.0 38.0
  SAY #29337 /* ~«Это тот, который просил хозяин?»~ */
  IF ~~ THEN REPLY #29416 /* ~«Да».~ */ GOTO 41
  IF ~~ THEN REPLY #29417 /* ~«Нет».~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.1
  SAY #29338 /* ~Мантуок презрительно искривляет губы. «Тогда приложи все усилия, чтобы достать его хозяину. Он будет рад твоему возвращению».~ */
  IF ~~ THEN REPLY #29418 /* ~«Спасибо, Мантуок».~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 36.1 36.2 36.3 36.4 36.5 38.1 38.2 38.3 38.4 38.5 39.0
  SAY #29339 /* ~«Дай его мне, и я отдам его хозяину. Твои услуги больше не нужны».~ */
  IF ~~ THEN REPLY #29419 /* ~«Нет, я думаю, что доставлю его ему лично».~ */ GOTO 42
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29420 /* ~«Хочешь сыра, Мантуок?» Дать ему отравленный сыр.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29421 /* ~«Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29422 /* ~Дать ему безымянный череп: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29423 /* ~Дать ему череп Харгримма: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29424 /* ~Дать ему череп Тухлой Мери: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29425 /* ~Дать ему череп Акасты: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29426 /* ~Дать ему череп Соэго: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29427 /* ~Дать ему череп Безмолвного Короля: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #29340 /* ~«Ты не понял... — лапы Мантуока сжимаются и разжимаются, его хвост начинает ходить из стороны в сторону. — Это была не просьба. Отдай мне череп. Мы не хотим неприятностей... прежде всего здесь, двуногий. Тут даже такому как ты будет сложно справиться».~ */
  IF ~~ THEN REPLY #29428 /* ~«Возможно, твоя презренная болезнь повредил тебе слух. Я сказал, что я сам передам Лотару череп».~ */ GOTO 48
  IF ~~ THEN REPLY #29429 /* ~«Я сказал, что я сам передам Лотару череп».~ */ GOTO 47
  IF ~~ THEN REPLY #29430 /* ~«Пропусти меня, не то умрешь на месте».~ */ GOTO 44
  IF ~  PartyHasItem("Pcheese")
~ THEN REPLY #29431 /* ~«Хочешь сыра, Мантуок?» Дать ему отравленный сыр.~ */ DO ~DestroyItemObject("Pcheese",Protagonist,TRUE)
~ GOTO 25
  IF ~  PartyHasItem("Cheese")
~ THEN REPLY #29432 /* ~«Хочешь сыра, Мантуок?»~ */ DO ~DestroyItemObject("Cheese",Protagonist,TRUE)
~ GOTO 38
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #29433 /* ~«Лотар пообещал мне безопасный проход. Если ты станешь у меня на пути, он об этом узнает — либо от меня, либо от моего черепа, если тебе каким-то образом удастся убить меня».~ */ GOTO 45
  IF ~  PartyHasItem("Skull")
~ THEN REPLY #29434 /* ~Дать ему безымянный череп: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("Skull",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullHa")
~ THEN REPLY #29435 /* ~Дать ему череп Харгримма: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullHa",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSM")
~ THEN REPLY #29436 /* ~Дать ему череп Тухлой Мери: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSM",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullAc")
~ THEN REPLY #29437 /* ~Дать ему череп Акасты: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullAc",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSo")
~ THEN REPLY #29438 /* ~Дать ему череп Соэго: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSo",1)
~ GOTO 46
  IF ~  PartyHasItem("SkullSK")
~ THEN REPLY #29439 /* ~Дать ему череп Безмолвного Короля: «Тогда вот. Возьми этот череп».~ */ DO ~TakePartyItemNum("SkullSK",1)
~ GOTO 46
END

IF ~~ THEN BEGIN 43 // from: 36.6 38.6
  SAY #29341 /* ~«Тогда *достань* его, двуногий, и не возвращайся, пока не найдешь его. Не заставляй хозяина ждать».~ */
  IF ~~ THEN REPLY #29440 /* ~«Я больше не буду заставлять его ждать».~ */ DO ~MoveToPoint([1154.3067])
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.7 38.7 42.2
  SAY #29342 /* ~«Нет, человечек, думаю, что сегодня умру не я. Я вырву нужный хозяину череп из твоих холодных мертвых пальцев».~ */
  IF ~~ THEN REPLY #29441 /* ~«Попробуй».~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.5
  SAY #29343 /* ~«Тогда я убью тебя и закопаю твое тело и череп в таком месте, где их никогда не найдут».~ */
  IF ~~ THEN REPLY #29442 /* ~«Попробуй, Мантуок».~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 46 // from: 41.3 41.4 41.5 41.6 41.7 41.8 42.6 42.7 42.8 42.9 42.10 42.11
  SAY #29344 /* ~Мантуок берет череп и критически его обнюхивает. «В катакомбах много, очень много мест, двуногий, не так ли? Много мест, где можно кого-нибудь замуровать, чтобы его крики никогда больше не услышали. В одно из таких мест попадешь ты, — он поворачивается к своим крысолюдям. — Бейте его, пока не упадет. Потом унесите тело в катакомбы и где-нибудь замуруйте. Пусть вечно живет в стене».~ */
  IF ~~ THEN REPLY #29443 /* ~«Ах ты сукин...»~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 42.1
  SAY #29345 /* ~«Тогда ты не оставляешь мне выбора, — он поворачивается к своим крысолюдям. -Бейте его, пока не упадет. Потом унесите тело в катакомбы и где-нибудь замуруйте. Пусть вечно живет в стене».~ */
  IF ~~ THEN REPLY #29444 /* ~«Ах ты сукин...»~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 42.0
  SAY #29346 /* ~«Это не болезнь! Это благословение! Я намного лучше тебя, полутрупа».~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #29445 /* ~«Полагаю, как лучшие вы считаете за привилегию ползать по канавам, питаться отбросами и, временами, мертвечиной, лишь бы не сдохнуть, и ходить в великолепных лохмотьях со своими лысыми чешуйчатыми хвостами, волочащимися за вами по дерьму? Вы — вредители, тени людей, отчаянно желающие быть ими. Жалкое зрелище».~ */ GOTO 49
  IF ~~ THEN REPLY #29446 /* ~«Ты мне не ровня».~ */ GOTO 50
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #29347 /* ~Пока ты говоришь, взгляд Мантуока стекленеет от ярости. Без слов он кидается на тебя.~ */
  IF ~~ THEN REPLY #29447 /* ~«Лучше ты сам, чем ты со своими друзьями...»~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 48.1
  SAY #29348 /* ~«Нет, мы выше тебя. Мы хищники. Мы охотимся на двуногих. Ты для нас еда».~ */
  IF ~~ THEN REPLY #29448 /* ~«Ты для меня — как учебная мишень».~ */ GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #29349 /* ~Он поворачивается к своим крысолюдям. «Бейте его, пока не упадет. Потом унесите тело в катакомбы и где-нибудь замуруйте. Пусть вечно живет в стене».~ */
  IF ~~ THEN REPLY #29449 /* ~«Посмотрим на твою попытку...»~ */ DO ~Enemy()
SetGlobal("0508_Wererat_Alert","AR0508",1)
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF ~  Global("Current_Area","GLOBAL",508)
NumTimesTalkedToGT(0)
~ THEN BEGIN 52 // from:
  SAY #29350 /* ~«Ты вернулся, человечек. Чего ты хочешь?»~ */
  IF ~  GlobalGT("Lo_Quest","GLOBAL",0)
GlobalLT("Lo_Quest","GLOBAL",5)
~ THEN REPLY #29450 /* ~«Я выполняю задание Лотара. Мне нужно добыть череп».~ */ GOTO 23
  IF ~~ THEN REPLY #29451 /* ~«Я ищу здесь главного».~ */ GOTO 31
  IF ~  Global("Morte_Stolen","GLOBAL",1)
Global("Lo_Quest","GLOBAL",0)
~ THEN REPLY #29452 /* ~«Я ищу своего друга Морта».~ */ GOTO 32
  IF ~~ THEN REPLY #29453 /* ~«Просто осматриваюсь».~ */ GOTO 33
END
