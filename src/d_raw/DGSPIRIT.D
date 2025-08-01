// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGSPIRIT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGSPIRIT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #32434 /* ~Посреди коридора из мрака в материализуется призрачная фигура, которая быстро преграждает тебе путь. Она парит над землей, некогда человеческие черты лица искажены гневом. «Осквернители! Убирайтесь отсюда! Сейчас же!»~ */
  IF ~~ THEN REPLY #32444 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #32445 /* ~Быстро уйти.~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #32435 /* ~Внезапно воздух вокруг становиться ледяным. Перед тобой снова предстает Призрачный Страж. Он парит к тебе, его призрачная мантия развевается на неосязаемом ветру.~ */
  IF ~  Global("Spirit_Quest","GLOBAL",0)
~ THEN REPLY #32446 /* ~«Постой, дух. У меня есть несколько вопросов...»~ */ GOTO 4
  IF ~  Global("Spirit_Quest","GLOBAL",1)
~ THEN REPLY #32447 /* ~«Постой, дух. Я хочу помочь избавиться от твоего непрошеного гостя».~ */ GOTO 8
  IF ~~ THEN REPLY #32448 /* ~«Неважно. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #32436 /* ~«Убирайтесь немедля!» Его гулкий голос эхом разноситься по коридорам. «Это место запрещено для всех живых. Уходите, пока еще в силах».~ */
  IF ~~ THEN REPLY #32449 /* ~«Сперва я бы хотел задать пару вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #32450 /* ~«Я хожу, где мне вздумается... прочь с дороги, дух».~ */ GOTO 3
  IF ~~ THEN REPLY #32451 /* ~«Как пожелаешь. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1 4.1
  SAY #32437 /* ~«Какая дерзость!» От оглушающего вопля призрака ты непроизвольно закрываешь уши. «Вас предупреждали... Я больше не позволю вам тревожить покой этого священного места».~ */
  IF ~~ THEN REPLY #32452 /* ~«Больше не позволишь? Здесь был еще кто-то?»~ */ GOTO 5
  IF ~~ THEN REPLY #32453 /* ~«Ну-ну. Иди-ка ты лучше детишек попугай».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32454 /* ~«Хотя, если подумать... Лучше я, пожалуй, пойду. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0
  SAY #32438 /* ~«Ищи свои ответы где-нибудь еще. Это место — прибежище для мертвых. И я не позволю еще одному нахальному смертному нарушать их покой!»~ */
  IF ~~ THEN REPLY #32455 /* ~«Еще одному? Здесь был еще кто-то?»~ */ GOTO 5
  IF ~~ THEN REPLY #32456 /* ~«Я хожу, где мне вздумается... прочь с дороги, дух».~ */ GOTO 3
  IF ~~ THEN REPLY #32457 /* ~«Как пожелаешь. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #32439 /* ~«Раз уж ты спрашиваешь... да, сюда проник еще один непрошеный гость, который до сих пор оскверняет эти священные залы». Гнев в голосе призрака утихает. Очевидно, мысль об этом его весьма огорчает. «Души моих братьев и сестер молят о спокойствии».~ */
  IF ~~ THEN REPLY #32458 /* ~«Кто этот непрошеный гость?»~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #32459 /* ~«Почему же ты не выдворишь его отсюда?»~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
~ GOTO 7
  IF ~~ THEN REPLY #32460 /* ~«Хотя, если подумать... Лучше я, пожалуй, пойду. Прощай».~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",1)
SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #32440 /* ~«Это трусливый злодей, который обладает исключительной властью над умершими. Он что-то здесь ищет... но что это и для чего это ему понадобилось, мне не известно».~ */
  IF ~~ THEN REPLY #32461 /* ~«Почему же ты не выдворишь его отсюда?»~ */ GOTO 7
  IF ~~ THEN REPLY #32462 /* ~«Хотя, если подумать... Лучше я, пожалуй, пойду. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1 6.0
  SAY #32441 /* ~«Я не могу. Этот трус забаррикадировался во внутренних покоях Мавзолея. Он создал сильные охраняющие чары, которые не позволяют мне попасть внутрь. Оттуда при помощи своей черной магии он пробуждает моих братьев от забвения и подчиняет их своей злодейской воле».~ */
  IF ~~ THEN REPLY #32463 /* ~«Возможно, я смогу помочь тебе...»~ */ GOTO 8
  IF ~~ THEN REPLY #32464 /* ~«Похоже, тебе нужна помощь одного непрошеного гостя, чтобы избавиться от другого».~ */ GOTO 8
  IF ~~ THEN REPLY #32465 /* ~«Хотя, если подумать... Лучше я, пожалуй, пойду. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1 7.0 7.1
  SAY #32442 /* ~В течении нескольких продолжительных мгновений призрак не произносит ни слова. Ты почти ощущаешь вес его безжизненного взора. «Да... ты бы мог преуспеть там, где я оказался бессилен. Если ты пообещаешь расправиться с этим негодяем, я дозволю тебе пройти. Твое слово?»~ */
  IF ~~ THEN REPLY #32466 /* ~«Я сделаю это».~ */ DO ~SetGlobal("Spirit_Quest","GLOBAL",2)
~ JOURNAL #31881 /* ~Я пообещал помочь призраку, стоящему на страже в Мавзолее. Похоже, что сюда проник некромант, который огородился во внутренней комнате сильными чарами для защиты от призрака. Должно быть, это он в ответе за «живых мертвецов», которые беспокоят Норочжа.~ */ GOTO 9
  IF ~~ THEN REPLY #32467 /* ~«Хотя, если подумать... Лучше я, пожалуй, пойду. Прощай».~ */ DO ~SetGlobalTimer("0208_Doomsday","AR0208",10)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #32443 /* ~«Быть посему». Призрак медленно растворяется в воздухе, оставляя лишь бестелесное эхо своего голоса. «Но будь осторожен... ступай тихо в этих залах, если не хочешь присоединиться к вечному покою других».~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Dead("Strahan")
~ THEN BEGIN 10 // from:
  SAY #32468 /* ~Едва ты ты ступаешь в коридор, как перед тобой материализуется Призрачный Страж. Его призрачное лицо с благодарностью обращено к тебе. «Спасибо тебе. Ты оказал мне огромную услугу. Мои братья вновь могут покойно отдыхать. Ступай с миром... друг». Призрак растворяется в воздухе. Ты остаешься один в заброшенных залах Мавзолея.~ */
  IF ~~ THEN REPLY #32469 /* ~Уйти.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Spirit_Quest","GLOBAL",4)
SetGlobal("Mausoleum_Quest","GLOBAL",2)
~ JOURNAL #37705 /* ~Я уничтожил некроманта, о котором говорил Призрачный Страж. Теперь его чары разрушены, а значит, усопшие больше не будут бродить по залам Мавзолея. Это обрадует Норочжа.~ */ EXIT
END
