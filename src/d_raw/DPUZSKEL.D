// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPUZSKEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPUZSKEL~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",0)
~ THEN BEGIN 0 // from:
  SAY #20282 /* ~Этот скелет бормочет себе под нос, время от времени останавливаясь, чтобы почесать череп. Он довольно стар, так что на его костях не осталось плоти... только несколько цветных тряпок.~ */
  IF ~~ THEN REPLY #20296 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #20297 /* ~Оставить скелет в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #20283 /* ~Он приветственно кивает в ответ, но не отвечает тебе.~ */
  IF ~~ THEN REPLY #20298 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #20299 /* ~«Мне пора идти. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #20284 /* ~Скелет поднимает на тебя взгляд и что-то раздражительно бормочет. «Не сейчас! Извини, но у меня тут просто *чудовищная* загадка, и я не могу ее разгадать!»~ */
  IF ~~ THEN REPLY #20300 /* ~«Что за загадка?»~ */ GOTO 3
  IF ~~ THEN REPLY #20301 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #20285 /* ~Он, похоже, удивлен. «Вот оно что? Попробовать желаешь, значит?»~ */
  IF ~~ THEN REPLY #20302 /* ~«Да, давай».~ */ DO ~SetGlobal("DN_Riddle","AR1500",1)
~ GOTO 4
  IF ~~ THEN REPLY #20303 /* ~«Нет, не бери в голову. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 10.3
  SAY #20286 /* ~«Отлично. Это все тот шутовской мешок с костями. Верно, ты видал его неподалеку. Не желает говорить ответ, и это меня просто *убивает*!»~ */
  IF ~~ THEN REPLY #20304 /* ~«Что ж, продолжай...»~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #20287 /* ~Он кивает. «Вспомни слова, которые кончаются на '-люс'. Вот два из них — полюс и плюс. Всеобщий планарный язык содержит три слова... Какое третье слово? Оно употребляется в каждодневной речи. Если ты слушал внимательно, то я его уже произнес».~ */
  IF ~  CheckStatGT(Protagonist,17,INT)
~ THEN REPLY #20305 /* ~«Конечно. Это язык».~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
AddexperienceParty(6250)
~ GOTO 6
  IF ~  CheckStatLT(Protagonist,18,INT)
~ THEN REPLY #20306 /* ~«Это... э... хм».~ */ GOTO 9
  IF ~~ THEN REPLY #20307 /* ~«Я подумаю над этим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 10.0 12.0 12.1 13.0
  SAY #20288 /* ~Он, похоже, не поверил. «*Что*? Но...»~ */
  IF ~~ THEN REPLY #20308 /* ~«Первые два предложения можно проигнорировать: они просто запутывают тебя. Вспомни: 'всеобщий — планарный — язык' содержит три слова... Третье слово — 'язык'».~ */ GOTO 8
  IF ~~ THEN REPLY #20309 /* ~Посмеяться и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #20289 /* ~[no text]~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0
  SAY #20290 /* ~«Это же... это же... о-о-о! Подлая хитрость! У меня же ведь нет языка! — он застывает, потом заходится в смехе, аж пыль из челюстей идет. — Неплохо, да. Благодарствую!»~ */
  IF ~~ THEN REPLY #20310 /* ~«Конечно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #20291 /* ~«Что, тоже в раздумьях? Скажи, коли разгадаешь... можешь еще попробовать вытрясти ее из того болтливого дурака, что ее подкинул!»~ */
  IF ~~ THEN REPLY #20311 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 14 even though they appear after this state */
~  GlobalGT("DN_Riddle","AR1500",0)
GlobalLT("DN_Riddle","AR1500",3)
~ THEN BEGIN 10 // from:
  SAY #20292 /* ~Скелет смотрит на тебя. «Ну как, разгадал ту подлую загадку?»~ */
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20312 /* ~«Да. Это язык».~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20313 /* ~«Да, но я тебе не скажу».~ */ GOTO 12
  IF ~  Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20314 /* ~Ложь: «Э... нет. Прощай».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_1","GLOBALLaw",-1)
~ EXIT
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20315 /* ~«Нет. Повтори мне загадку».~ */ GOTO 4
  IF ~  !Global("DN_Riddle","AR1500",2)
~ THEN REPLY #20316 /* ~«Еще нет. Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 14 even though they appear after this state */
~  Global("DN_Riddle","AR1500",3)
~ THEN BEGIN 11 // from:
  SAY #20293 /* ~«Еще раз благодарствую, что разгадал ту загадку! Представляю, как мой 'друг' огорчится из-за этого!» Он хохочет от всего сердца.~ */
  IF ~~ THEN REPLY #20317 /* ~«Конечно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #20294 /* ~«Но... но почему? Ладно тебе! Ты *должен* мне рассказать!»~ */
  IF ~  !Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20318 /* ~«Хорошо. Это язык».~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20319 /* ~«Хорошо. Это язык».~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~  Global("Lawful_Riddling_1","GLOBAL",1)
~ THEN REPLY #20320 /* ~«Я обещал не рассказывать».~ */ GOTO 13
  IF ~~ THEN REPLY #20321 /* ~«Разве я должен? Счастливо».~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.2
  SAY #20295 /* ~Он раздосадовано скрежещет зубами. «Вот еще! Совсем как... как... этот пустослов! Да уж! Спасибо *тебе* за помощь!»~ */
  IF ~~ THEN REPLY #20322 /* ~«Ладно, ладно. Это 'язык'».~ */ DO ~SetGlobal("DN_Riddle","AR1500",3)
IncrementGlobalOnceEx("GLOBALChaotic_Puzzled_2","GLOBALLaw",-3)
~ GOTO 6
  IF ~~ THEN REPLY #20323 /* ~«Прошу прощения. Счастливо».~ */ DO ~SetGlobal("Evil_PuzSkel","AR1500",1)
~ EXIT
END

IF WEIGHT #0 ~  Global("Evil_PuzSkel","AR1500",1)
~ THEN BEGIN 14 // from:
  SAY #68086 /* ~Скелет скрещивает руки на груди и отказывается говорить.~ */
  IF ~~ THEN REPLY #68087 /* ~Уйти.~ */ EXIT
END
