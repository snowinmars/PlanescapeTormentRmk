// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~Перед тобой худощавый желтокожий человекоподобный незнакомец, полностью покрытый татуировками. Его брови подчеркнуты угольно-черными линиями, а зубы заточены под клыки. Завидев тебя, он призывно машет тебе, поигрывая игральными костями в руке.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~«Приветствую...»~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~«Приветствую...»~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~Он зловеще улыбается акульим оскалом. Его глаза похожи на сияющие черные светила. Он говорит тихим и скрипучим голосом: «Гаоха тоже приветствует тебя... Пришел сыграть в игру, да?»~ */
  IF ~~ THEN REPLY #34026 /* ~«Нет, но у меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~«Да, я сыграю».~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~«Нет... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~Едва он собирается что-то сказать, как его глаза — сияющие и черные, словно черный янтарь — останавливаются на Дакконе. С секунду они молча смотрят друг на друга, после чего гитцерай с татуировками возвращается к тебе. Он говорит тихим и скрипучим голосом: «Гаоха тоже приветствует тебя... Пришел сыграть в игру, да?»~ */
  IF ~~ THEN REPLY #34030 /* ~«Нет, но у меня есть несколько вопросов...»~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~«Да, я сыграю».~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~«Нет... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Улыбка тут же пропадает с лица Гаохи. Он качает головой. «Вопросы не интересны мне. Только игра... бросок кости, сверкание монеты выигранной или проигранной, да? — он подбрасывает игральную кость на ладони. — «Ты... не интересуешься такими вещами?»~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~«Хорошо... Я сыграю».~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~«Хорошо... Я сыграю».~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Гаоха вытаскивает из своего жакета монету. «Эта монета? Твоя монета, — он кладет ее у твоих ног, после чего достает другую. — Эта монета? Гаохи». Он кладет ее у своих ног, после берет большим и указательным пальцами две игральные кости. «Кости... мы вдвоем кидаем по одной, да?»~ */
  IF ~~ THEN REPLY #34038 /* ~«Продолжай...»~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~«Ты кидаешь больше, обе монеты... — он подхватывает монеты с земли и протягивает их тебе. — твои. Гаоха кидает больше? — он быстро прячет медяки назад в куртку. — Мои. Никто не кинул больше? Монеты лежат для другого броска. Итак — сколько монет будет лежать у твоих ног?»~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~«Один медяк».~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~«Один медяк».~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~«Пять медяков».~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~«Пять медяков».~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~«Десять медяков».~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~«Десять медяков».~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~«Двадцать пять медяков».~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~«Двадцать пять медяков».~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~«Пятьдесят медяков».~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~«Пятьдесят медяков».~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~«Сто медяков».~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~«Сто медяков».~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~«Нисколько. Сейчас я не хочу играть. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~Вы бросаете кости, и Гаоха выкидывает больше очков. Он подхватывает твои монеты и прячет их в куртке. Немного поколебавшись, он спрашивает: «Еще, да?»~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~«Постой, что-то не так?»~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~«Да, еще раз».~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Гаоха внимательно смотрит на тебя, затем кивает. «Никогда я не потакал глупости Хашмы — никогда я не *жульничал*, человек. Но я вижу удачу, читаю ее, *знаю* ее на лице человека. Но ты... в тебе я вижу ничего. Я *знаю* ничего. У тебя... нет удачи? Нет случая, удачного или неудачного? А может быть, ты сам по себе. Я не знаю». Он прячет игральные кости в жакет. «Мы можем играть позже, возможно, но не сейчас».~ */
  IF ~~ THEN REPLY #60421 /* ~«Ладно... Прощай».~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~«И сколько монет будет лежать у твоих ног?»~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~«Один медяк».~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~«Один медяк».~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~«Пять медяков».~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~«Пять медяков».~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~«Десять медяков».~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~«Десять медяков».~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~«Двадцать пять медяков».~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~«Двадцать пять медяков».~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~«Пятьдесят медяков».~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~«Пятьдесят медяков».~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~«Сто медяков».~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~«Сто медяков».~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~«Вообще-то — нисколько. Прощай».~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Гаоха, поигрывая игральными костями в руках, озаряет тебя своей зловещей острозубой ухмылкой. «Вернулся сыграть в игру, да?»~ */
  IF ~~ THEN REPLY #60437 /* ~«Нет, но у меня есть несколько вопросов...»~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~«Да, я сыграю».~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~«Да, я сыграю».~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~«Нет... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~Вы бросаете кости, и Гаоха выкидывает больше очков. Он подхватывает твои монеты, но, перед тем, как спрятать их в куртке, он хмуро смотрит на них. «На этот раз хватит. Но мы можем играть позже, возможно, ты и я».~ */
  IF ~~ THEN REPLY #60442 /* ~«Почему? Что-то не так?»~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~«Ладно. Прощай».~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~Вы бросаете кости, и ты выкидываешь больше очков. Ты забираешь монеты. Гаоха хмуро кивает. «На этот раз хватит. Но мы можем играть позже, возможно, ты и я».~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~«Постой, что-то не так?»~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~«Ладно. Прощай».~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Гаоха озаряет тебя своей зловещей острозубой ухмылкой. «Не терпится сыграть тебе, да? Но ты вернулся слишком рано. Вернись позже, и мы сможем играть еще раз».~ */
  IF ~~ THEN REPLY #60448 /* ~«Тогда прощай». ~ */ EXIT
END
