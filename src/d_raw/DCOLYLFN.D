// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLYLFN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLYLFN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #18505 /* ~Этот пронырливый с виду парень крадется среди мусора, словно тень в лохмотьях. Он делает вид, будто не замечает тебя, но ты чувствуешь, как он искоса поглядывает на тебя вороватым взглядом. Внезапно он делает тебе знак: «Пс-с. Ты. Пс-с. Эй!»~ */
  IF ~~ THEN REPLY #18506 /* ~Подойти к нему.~ */ GOTO 58
  IF ~~ THEN REPLY #18507 /* ~Проигнорировать его и пройти мимо.~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 2 even though they appear after this state */
~  NumTimesTalkedTo(0)
NearbyDialog("DMorte")
~ THEN BEGIN 1 // from:
  SAY #18508 /* ~Этот пронырливый с виду парень крадется среди мусора, словно тень в лохмотьях. Увидев вас с Мортом, он делает тебе знак: «Пс-с... эй! Тот череп. Где ты его достал? Эт мой череп! Гони его сюда».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
NearbyDialog("DAnnah")
~ THEN BEGIN 2 // from:
  SAY #18509 /* ~Этот пронырливый с виду парень крадется среди мусора, словно тень в лохмотьях. Заприметив Анну, он выпячивает глаза и процеживает слюну сквозь свои желтые зубы, словно предвкушая пищу. «Пс-с... эй! Звенелки за потаскушку, а? Хорошенькая». Он облизывает свои потрескавшиеся, покрытые струпьями губы.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 108
END

IF WEIGHT #4 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #18510 /* ~«А. Че нада?!»~ */
  IF ~~ THEN REPLY #18511 /* ~«Мне нужны кое-какие сведения...»~ */ GOTO 23
END

IF WEIGHT #3 ~  NumTimesTalkedToGT(0)
NearbyDialog("DMorte")
~ THEN BEGIN 4 // from:
  SAY #18512 /* ~«Эй, как там мой череп?» Он заливается ужасным свистящим смехом.~ */
  IF ~~ THEN REPLY #18513 /* ~«Мне нужны кое-какие сведения...»~ */ GOTO 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #18514 /* ~«Ворюга! Падальщик, мерзкий вор, берущий чужое без спросу! Гони череп! Мой! Он мой!»~ */
  IF ~~ THEN REPLY #18515 /* ~«Это не твой череп».~ */ GOTO 6
  IF ~~ THEN REPLY #18516 /* ~Правда: «Вперед, забирай череп».~ */ GOTO 9
  IF ~~ THEN REPLY #18517 /* ~Напасть на него, как только он потеряет бдительность: «Вперед, забирай череп».~ */ GOTO 10
  IF ~~ THEN REPLY #18518 /* ~«Чем докажешь, что это твой череп?»~ */ GOTO 12
  IF ~~ THEN REPLY #18519 /* ~Правда: «Если тебе удастся доказать, что череп твой, я отдам его тебе. Так будет честно».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18520 /* ~«Я куплю у тебя череп. Пойдет?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18521 /* ~«Кто ты?»~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18522 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18523 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 12.0 13.0 16.6 19.2
  SAY #18524 /* ~«Значит, я — *лжец*? Череп *мой*! Мой! — он что-то бормочет, поглядывая на тебя. — Ты лживый ворюга... Я тебе кишки выпущу».~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18525 /* ~«Только тронь меня — и будешь жалеть об этом те несколько мгновений, которые остались тебе до смерти».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18526 /* ~«Я бы не стал этого делать».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
~ THEN REPLY #18527 /* ~«Давай, попробуй. Посмотрим, что из этого выйдет».~ */ GOTO 7
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18528 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18529 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18530 /* ~«Только тронь меня — и будешь жалеть об этом те несколько мгновений, которые остались тебе до смерти».~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18531 /* ~«Я бы не стал этого делать».~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
~ THEN REPLY #18532 /* ~«Давай, попробуй. Посмотрим, что из этого выйдет».~ */ GOTO 8
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18533 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18534 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 6.1 6.2
  SAY #18546 /* ~Человек бросает на тебя прищуренный взгляд. Похоже, он не уверен в своих шансах на победу: он что-то бормочет, но ничего не предпринимает. «Череп мой. Ты — вор. Ворюга...»~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18547 /* ~«Исчезни, полукровка».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18548 /* ~«Исчезни, полукровка».~ */ DO ~TakePartyGold(5)
~ EXIT
  IF ~~ THEN REPLY #18549 /* ~Правда: «Тогда вперед. Забирай череп».~ */ GOTO 9
  IF ~~ THEN REPLY #18550 /* ~Напасть на него, как только он потеряет бдительность: «Ладно. Забирай череп».~ */ GOTO 10
  IF ~~ THEN REPLY #18551 /* ~«Чем докажешь, что это твой череп?»~ */ GOTO 12
  IF ~~ THEN REPLY #18552 /* ~Правда: «Если тебе удастся доказать, что череп твой, я отдам его тебе. Так будет честно».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18553 /* ~«Я куплю у тебя череп. Пойдет?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18554 /* ~«Кто ты?»~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18555 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18556 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.5 6.6 6.7
  SAY #18557 /* ~Человек бросает на тебя прищуренный взгляд. И вдруг бросается в атаку!~ */
  IF ~~ THEN REPLY #18558 /* ~Вступить с ним в бой.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18559 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1 7.2 12.1 13.1 19.0
  SAY #18560 /* ~Он улыбается и тихонько посмеивается, протягивая руку к Морту. Раздается щелчок, он одергивает ее с воплем: «Ай-й-й! Ай-й! Я тебя *прикончу*! *Прикончу*!»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 10 // from: 5.2 7.3 12.2 13.2 19.1
  SAY #18561 /* ~Он улыбается и тихонько посмеивается, протягивая руку к Морту. Ты не успеваешь напасть на него: раздается щелчок, он с воплем одергивает руку. «Ай-й-й! Ай-й! Я тебя *прикончу*! *Прикончу*!»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 189
END

IF ~~ THEN BEGIN 11 // from:
  SAY #18562 /* ~Человек сердито смотрит на тебя, закусив губу от боли. Внезапно он бросается в атаку!~ */
  IF ~~ THEN REPLY #18563 /* ~Вступить с ним в бой.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18564 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.3 5.4 7.4 7.5 13.3 13.4
  SAY #18565 /* ~Он глядит на тебя, как на пустоголового. «Он мой как пить дать — нечего доказывать, так что ничего не знаю! Гони череп, быстро!»~ */
  IF ~~ THEN REPLY #18566 /* ~«Это не твой череп».~ */ GOTO 6
  IF ~~ THEN REPLY #18567 /* ~Правда: «Тогда вперед. Забирай череп».~ */ GOTO 9
  IF ~~ THEN REPLY #18568 /* ~Напасть на него, как только он потеряет бдительность: «Ладно. Забирай череп».~ */ GOTO 10
  IF ~~ THEN REPLY #18569 /* ~«Я куплю у тебя череп. Пойдет?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~~ THEN REPLY #18570 /* ~«Кто ты?»~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18571 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18572 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 5.6 7.7 12.4
  SAY #18573 /* ~«Эй, череп мой, мой! Гони его сюда — и я забуду, что ты его украл», — бормочет он, поглядывая на тебя прищуренными глазами.~ */
  IF ~~ THEN REPLY #18574 /* ~«Это не твой череп».~ */ GOTO 6
  IF ~~ THEN REPLY #18575 /* ~Правда: «Вперед, забирай череп».~ */ GOTO 9
  IF ~~ THEN REPLY #18576 /* ~Напасть на него, как только он потеряет бдительность: «Вперед, забирай череп».~ */ GOTO 10
  IF ~~ THEN REPLY #18577 /* ~«Чем докажешь, что это твой череп?»~ */ GOTO 12
  IF ~~ THEN REPLY #18578 /* ~Правда: «Если тебе удастся доказать, что череп твой, я отдам его тебе. Так будет честно».~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Yellow_1","GLOBALLaw",1)
~ GOTO 12
  IF ~~ THEN REPLY #18579 /* ~«Я куплю у тебя череп. Пойдет?»~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Yellow_1","GLOBALGood",1)
~ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18580 /* ~«Просто забудь, что видел его. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18581 /* ~«Просто забудь, что видел его. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 5.5 7.6 12.3 13.5
  SAY #18582 /* ~Его глаза сужаются, а губы обнажают грязные кривые зубы в перекошенной ухмылке. «Череп... череп стоит *дофига*. Сможешь заплатить? Он ведь много для меня значит, этот череп».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 191
END

IF ~~ THEN BEGIN 15 // from:
  SAY #18583 /* ~Человек злобно шипит на Морта: «Че за манера: так говорить со своим хозяином?»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 192
END

IF ~~ THEN BEGIN 16 // from:
  SAY #18584 /* ~Человек оборачивается к тебе, обнажив зубы и рассвирепев пуще прежнего. «О, тебе это дорого... дорого обойдется».~ */
  IF ~  PartyGoldGT(0)
~ THEN REPLY #18585 /* ~Дать ему один медяк.~ */ DO ~TakePartyGold(1)
~ GOTO 17
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18586 /* ~Дать ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 18
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18587 /* ~Дать ему пятьдесят медяков.~ */ DO ~TakePartyGold(50)
~ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18588 /* ~Дать ему сто медяков.~ */ DO ~TakePartyGold(100)
~ GOTO 18
  IF ~  PartyGoldGT(499)
~ THEN REPLY #18589 /* ~Дать ему пятьсот медяков.~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  PartyGold(0)
~ THEN REPLY #18590 /* ~«У меня нет ни одной монеты».~ */ GOTO 19
  IF ~~ THEN REPLY #18591 /* ~«Забудь мое предложение. Это не твой череп, и ты его не получишь».~ */ GOTO 6
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #18592 /* ~«Мало... вытряхивай остальное, и я уйду».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 193
END

IF ~~ THEN BEGIN 18 // from: 16.1 16.2 16.3 16.4
  SAY #18593 /* ~«Эй... теперь между нами все улажено, — он выдает страшную ухмылку. — Только попробуй еще раз меня обчистить...»~ */
  IF ~~ THEN EXTERN ~DMORTE~ 194
END

IF ~~ THEN BEGIN 19 // from: 16.5
  SAY #18594 /* ~«Тогда гони череп, ворюга! Отдай! Отдай, отдай мне его!»~ */
  IF ~~ THEN REPLY #18595 /* ~Правда: «Ладно. Забирай».~ */ GOTO 9
  IF ~~ THEN REPLY #18596 /* ~Напасть на него, как только он потеряет бдительность: «Ладно. Забирай».~ */ GOTO 10
  IF ~~ THEN REPLY #18597 /* ~«Нет. Он не твой, и ты его не получишь».~ */ GOTO 6
  IF ~~ THEN REPLY #18598 /* ~Напасть на него.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #18599 /* ~«Да забей... нарываешься на неприятности. Как пить дать, нарываешься!»~ */
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18600 /* ~«Не совершай ошибку, допуская, что я заплатил тебе из страха или слабости... ты мог бы уже быть мертвым».~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18601 /* ~«Не совершай ошибку, допуская, что я заплатил тебе из страха или слабости... ты мог бы уже быть мертвым».~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,10,STR)
CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18602 /* ~«Не совершай ошибку, допуская, что я заплатил тебе из страха или слабости... ты мог бы уже быть мертвым».~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,STR)
CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18603 /* ~«Не совершай ошибку, допуская, что я заплатил тебе из страха или слабости... ты мог бы уже быть мертвым».~ */ GOTO 22
  IF ~~ THEN REPLY #18604 /* ~«Понятно. У меня есть несколько вопросов...»~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18605 /* ~«Ага, 'нарываюсь'. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18606 /* ~«Ага, 'нарываюсь'. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18607 /* ~«Пф». Он сужает глаза, но ничего не отвечает. Кажется, он обеспокоен.~ */
  IF ~~ THEN REPLY #18608 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18609 /* ~«Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18610 /* ~«Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 20.2 20.3
  SAY #18611 /* ~«Ба! Тряси черепушкой где-нибудь в другом месте. Пошел прочь. Грязный вор. Ворюга...» Он пытается пройти мимо тебя.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18612 /* ~Уйти.~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18613 /* ~Уйти.~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 3.0 4.0 20.4 21.0 58.0 59.0
  SAY #18614 /* ~Он ухмыляется. «Слухи — товар недешевый, — говорит он, потирая свои желтые пальцы. — Дзинь-дзинь?» При этом его глаза без конца бегают, часто задерживаясь на твоем кошельке.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18615 /* ~Дать ему пару монет.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18616 /* ~Бросить ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18617 /* ~Бросить ему в ладонь десять медяков.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18618 /* ~«Ты ничего не получишь. Колись».~ */ GOTO 27
  IF ~~ THEN REPLY #18619 /* ~«Э... почему у тебя желтые пальцы?»~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18620 /* ~«Забудь, что я спрашивал. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18621 /* ~«Забудь, что я спрашивал. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 27.1 30.0
  SAY #18622 /* ~Он насмешливо произносит: «Слухи — товар *недешевый*. Ты глухой? *Слушай*, когда я говорю».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18623 /* ~Бросить ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18624 /* ~Бросить ему в ладонь десять медяков.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18625 /* ~«Ты ничего не получишь. Колись».~ */ GOTO 27
  IF ~~ THEN REPLY #18626 /* ~«Э... почему у тебя желтые пальцы?»~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18627 /* ~«Забудь, что я спрашивал. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18628 /* ~«Забудь, что я спрашивал. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1 24.0 27.2 30.1
  SAY #18629 /* ~Он осматривает монеты, потом косится на тебя. «Я кое-чего знаю. Че тебя интересует?»~ */
  IF ~~ THEN REPLY #18630 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~~ THEN REPLY #18631 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18632 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18633 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18634 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18635 /* ~«Ничего, забудь. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18636 /* ~«Ничего, забудь. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 23.2 24.1 27.3 30.2
  SAY #18637 /* ~«Говори. Я послушаю. Может, чего и расскажу...»~ */
  IF ~~ THEN REPLY #18638 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~~ THEN REPLY #18639 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18640 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18641 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18642 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18643 /* ~«Ничего, забудь. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18644 /* ~«Ничего, забудь. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.3 24.2 30.3
  SAY #18645 /* ~«Ничего я тебе не скажу, — он ухмыляется, затем указывает на себя. — Я знаю слухи, а ты — *нет*. Будут звенелки — получишь слухи, усек?»~ */
  IF ~  CheckStatGT(Protagonist,15,STR)
CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18646 /* ~Схватить его и встряхнуть как следует.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_3","GLOBALGood",-1)
~ GOTO 54
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18647 /* ~Дать ему пару монет.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18648 /* ~Бросить ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18649 /* ~Бросить ему в ладонь десять медяков.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18650 /* ~«Э... почему у тебя желтые пальцы?»~ */ GOTO 28
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18651 /* ~«Тогда забудь, что я спрашивал. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18652 /* ~«Тогда забудь, что я спрашивал. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 23.4 24.3 27.4
  SAY #18653 /* ~«А? Чего-чего?» Его глаза превращаются в щелочки. Он косится на тебя.~ */
  IF ~~ THEN REPLY #18654 /* ~«Если подумать, мне это неинтересно. Забудь».~ */ GOTO 30
  IF ~~ THEN REPLY #18655 /* ~«Твои пальцы, они желтые. Почему?»~ */ GOTO 29
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18656 /* ~«Неважно. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18657 /* ~«Неважно. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.1
  SAY #18658 /* ~«Одна штучка, которую я подцепил от мертвеца... трупная гнильца, вроде как говорят».~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 28.0 29.0
  SAY #18659 /* ~«Да пофигу... звенелки за слухи, еще не забыл? Дзинь-дзинь?» Он протягивает к тебе ладони.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18660 /* ~Дать ему пару монет.~ */ GOTO 24
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18661 /* ~Бросить ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 25
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18662 /* ~Бросить ему в ладонь десять медяков.~ */ DO ~TakePartyGold(10)
~ GOTO 26
  IF ~~ THEN REPLY #18663 /* ~«Ты ничего не получишь. Колись».~ */ GOTO 27
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18664 /* ~«Забудь, что я спрашивал. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18665 /* ~«Забудь, что я спрашивал. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 25.0 26.0 33.2 34.1 35.1 39.0 40.0
  SAY #18666 /* ~«Это ж этот треклятый город, бедолага ты эдакий... колечко, а в нем — город. Центр больших колец».~ */
  IF ~~ THEN REPLY #18667 /* ~«Расскажи мне еще о городе».~ */ GOTO 32
  IF ~~ THEN REPLY #18668 /* ~«Как насчет этого района?»~ */ GOTO 32
  IF ~~ THEN REPLY #18669 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18670 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18671 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18672 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18673 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18674 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #18675 /* ~«Ты просто тратишь мое время и свои звенелки... поищи-ка осведомителя для таких вопросов».~ */
  IF ~~ THEN REPLY #18676 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18677 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18678 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18679 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18680 /* ~«В таком случае, пойду его поищу. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18681 /* ~«В таком случае, пойду его поищу. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 33 // from: 25.1 26.1 31.2 32.0 39.1 40.1
  SAY #18682 /* ~«А? — он выглядит озадаченным. — Что насчет их?»~ */
  IF ~~ THEN REPLY #18683 /* ~«Чем они занимаются?»~ */ GOTO 34
  IF ~~ THEN REPLY #18684 /* ~«Ты — один из них?»~ */ GOTO 35
  IF ~~ THEN REPLY #18685 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18686 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18687 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18688 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18689 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18690 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0 35.0
  SAY #18691 /* ~Он смотрит на тебя, как на бестолочь. «Обдирают жмуриков. Сбрасывают их у хаты трухлявеньких, получают звенелки за труды. А что?»~ */
  IF ~~ THEN REPLY #18692 /* ~«Ты — один из них?»~ */ GOTO 35
  IF ~~ THEN REPLY #18693 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18694 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18695 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18696 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18697 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18698 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.1 34.0
  SAY #18699 /* ~«Возможно. По случаю. А какая разница?»~ */
  IF ~~ THEN REPLY #18700 /* ~«Чем они занимаются?»~ */ GOTO 34
  IF ~~ THEN REPLY #18701 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18702 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18703 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18704 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18705 /* ~«Да никакой. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18706 /* ~«Да никакой. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 25.2 26.2 31.3 32.1 33.3 34.2 35.2 39.2 40.2
  SAY #18707 /* ~Внезапно он сужает глаза. «Э-э... — он склоняет голову набок, изучая тебя. — Фарод... знать о нем и трещать о нем... *стоит денег*. Того и гляди, попадешь в книгу мертвых. Нет-нет, это *стоит денег*».~ */
  IF ~~ THEN REPLY #18708 /* ~«Ты знаешь, где он находится?»~ */ GOTO 37
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18709 /* ~Предложить ему еще пять монет.~ */ GOTO 38
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18710 /* ~«Тогда забудь, что я спрашивал. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18711 /* ~«Тогда забудь, что я спрашивал. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18712 /* ~Он кивает, затем оглядывается по сторонам. «Эти слухи — товар *недешевый*».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18713 /* ~Предложить ему еще пять монет.~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 36.1 37.0
  SAY #18714 /* ~Он смотрит по сторонам, потом наклоняется к твоему уху: «Иди на восточную часть площади и жди: встретимся там через час. Больше не хочу, чтобы нас видели вместе. Хватит вопросов... Двигай, двигай!» Он пытается уйти.~ */
  IF ~~ THEN REPLY #18715 /* ~«Стой...»~ */ GOTO 62
  IF ~~ THEN REPLY #18716 /* ~Позволить ему уйти.~ */ GOTO 62
END

IF ~~ THEN BEGIN 39 // from: 25.4 26.4 31.5 32.3 33.5 34.4 35.4 40.3
  SAY #18717 /* ~«Грязная *ведьма*! — он сплевывает и выводит полукруг напротив сердца. — Чтоб ее оспа побила, эту каргу-полукровку! Чтоб ее кишки сгнили от *тысячи тысяч* болячек. Если захочешь в нее плюнуть — ее нора в лачуге за площадью, возле забора, который вокруг мусора. Найдешь ее, коли захочешь, но после ко мне не подходи!»~ */
  IF ~~ THEN REPLY #18718 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~~ THEN REPLY #18719 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18720 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18721 /* ~«Я ищу потерянный дневник».~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18722 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18723 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 40 // from: 25.3 26.3 31.4 32.2 33.4 34.3 35.3 39.3
  SAY #18724 /* ~«Э... возможно... возможно... хотя нет. Не видал, не видал никаких книжек».~ */
  IF ~~ THEN REPLY #18725 /* ~«Расскажи мне о Сигиле».~ */ GOTO 31
  IF ~~ THEN REPLY #18726 /* ~«Расскажи мне о сборщиках».~ */ GOTO 33
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18727 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 36
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #18728 /* ~«Расскажи мне о Меббет».~ */ GOTO 39
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18729 /* ~«Это все, что я хотел узнать. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18730 /* ~«Это все, что я хотел узнать. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 41 // from: 5.7 6.3 6.8 7.0 7.8 12.5 13.6 20.5 21.1 22.0 23.5 24.4 25.5 26.5 27.5 28.2 30.4 31.6 32.4 33.6 34.5 35.5 36.2 39.4 40.4 58.1 59.1
  SAY #18731 /* ~Вдруг ты замечаешь, что Желтопалый стоит слишком близко к тебе и что его рука тянется вперед, словно пытаясь умыкнуть твой кошелек.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18732 /* ~Схватить его за руку.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18733 /* ~Схватить его за руку.~ */ GOTO 42
  IF ~  Global("Yellow_PP","GLOBAL",0)
~ THEN REPLY #18734 /* ~Внимательно наблюдать за его попыткой.~ */ DO ~GiveExperience(Protagonist,200)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
SetGlobal("Yellow_PP","GLOBAL",1)
TakePartyGold(5)
~ GOTO 57
  IF ~~ THEN REPLY #18735 /* ~«Что ты делаешь?»~ */ GOTO 50
  IF ~~ THEN REPLY #18736 /* ~Напасть на него.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.1 57.1
  SAY #18737 /* ~Он отскакивает и начинает убегать!~ */
  IF ~~ THEN REPLY #18738 /* ~«Черт...»~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 43 // from: 41.0 57.0
  SAY #18739 /* ~Ты хватаешь его за руку. Желтопалый, кажется, опешил. «Эй! Эй! Ты че вытворяешь! Пусти!» Он борется, но не может избавиться от твоей хватки.~ */
  IF ~~ THEN REPLY #18740 /* ~Правда: «Ты пытался обокрасть меня. Я тебя прикончу».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18741 /* ~Блеф: «Ты пытался обокрасть меня. Я тебя прикончу».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.1 50.3
  SAY #18742 /* ~«Эй-эй! Погоди! Ошибочка, ошибочка! Мы могли бы уладить это без участия книги мертвых!»~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18743 /* ~«Я пощажу тебя в обмен на кое-какие сведения».~ */ GOTO 45
  IF ~~ THEN REPLY #18744 /* ~«Отдай мне все, что у тебя есть, и я тебя пощажу».~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18745 /* ~«Просто убирайся отсюда, и больше мне не попадайся».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #18746 /* ~Он решительно кивает. «Да-да, спрашивай! Задавай вопросы!»~ */
  IF ~~ THEN REPLY #18747 /* ~«Скажи мне, где найти человека по имени Фарод».~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #18748 /* ~«Эй... — кажется, ему не по себе. — Слухи про Фарода — опасные слухи. Как насчет пары звенелок... а?»~ */
  IF ~~ THEN REPLY #18749 /* ~«Ты, похоже, забыл, в каком положении находишься. Рассказывай... живо».~ */ GOTO 47
  IF ~  PartyGoldGT(2)
~ THEN REPLY #18750 /* ~Дать ему три медяка.~ */ DO ~TakePartyGold(3)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #18751 /* ~«Э-э… ну, я знаю, что его малина не здесь, наверху... но она поблизости, по соседству, просто запрятана. Он то тут, то там, без конца шныряет... по-ходу, есть место, через которое он ходит туда-сюда. В округе кто-то должен знать, где эта дыра... только не я».~ */
  IF ~~ THEN REPLY #18752 /* ~Правда: «Мне кажется, ты лжешь. Колись, не то я тебя прикончу».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Yellow_1","GLOBALGood",-1)
~ GOTO 48
  IF ~~ THEN REPLY #18753 /* ~Блеф: «Мне кажется, ты лжешь. Колись, не то я тебя прикончу».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_2","GLOBALLaw",-1)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0 47.1
  SAY #18754 /* ~«Эй... — он облизывает губы и оглядывается по сторонам. — Сейчас, сейчас... эй... есть тут проход, усек? Погляди в северо-западном углу площади... бьюсь об заклад, там-то и поселился старый гад. Только как пройти через проход — без понятия».~ */
  IF ~~ THEN REPLY #18755 /* ~«Отдай мне все, что у тебя есть».~ */ DO ~GivePartyGold(10000)
IncrementGlobalOnceEx("GLOBALEvil_Yellow_2","GLOBALGood",-1)
~ GOTO 49
  IF ~~ THEN REPLY #18756 /* ~«Убирайся отсюда... и больше мне не попадайся».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 44.1 48.0
  SAY #18757 /* ~Он кивает. Со страхом и ненавистью в глазах Желтопалый протягивает тебе несколько горстей медяков.~ */
  IF ~~ THEN REPLY #18758 /* ~«Убирайся отсюда... и больше мне не попадайся».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.3 57.2
  SAY #18759 /* ~Он хмурится и смотрит на тебя искоса, как будто ты — бестолочь. «А? Чего?»~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #18760 /* ~«Зачем тебе грабить меня? Я дам тебе все, что тебе нужно».~ */ EXTERN ~DMORTE~ 195
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #18761 /* ~«Зачем тебе грабить меня? Я дам тебе все, что тебе нужно».~ */ GOTO 51
  IF ~~ THEN REPLY #18762 /* ~Правда: «Ты пытался обокрасть меня. Я тебя прикончу».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #18763 /* ~Блеф: «Ты пытался обокрасть меня. Я тебя прикончу».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Yellow_1","GLOBALLaw",-1)
~ GOTO 44
  IF ~~ THEN REPLY #18765 /* ~«Ты хотел меня ограбить. Уходи и больше мне не попадайся».~ */ DO ~EscapeArea()
~ EXIT
  IF ~~ THEN REPLY #18764 /* ~«Забудь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.1
  SAY #18766 /* ~Желтопалый смотрит на тебя недоверчиво. «Мне бы не помешала куча звенелок. Я весь изголодался... жизнь на улицах Улья не очень-то балует».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #18767 /* ~Дать ему пять медяков.~ */ DO ~TakePartyGold(5)
~ GOTO 53
  IF ~  PartyGoldGT(9)
~ THEN REPLY #18768 /* ~Дать ему десять медяков.~ */ DO ~TakePartyGold(10)
~ GOTO 53
  IF ~  PartyGoldGT(49)
~ THEN REPLY #18769 /* ~Дать ему пятьдесят медяков.~ */ DO ~TakePartyGold(50)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~  PartyGoldGT(99)
~ THEN REPLY #18770 /* ~Дать ему сто медяков.~ */ DO ~TakePartyGold(100)
IncrementGlobalOnceEx("GLOBALGood_Yellow_2","GLOBALGood",1)
~ GOTO 53
  IF ~~ THEN REPLY #18771 /* ~«Беру свои слова обратно. Уходи и больше мне не попадайся».~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #18772 /* ~Желтопалый смотрит на тебя недоверчиво. «Мне бы не помешала куча звенелок. Я весь изголодался... жизнь на улицах Улья не очень-то балует».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 196
END

IF ~~ THEN BEGIN 53 // from: 51.0 51.1 51.2 51.3
  SAY #18773 /* ~«Эй... спасибо тебе большое. Так щедро с твоей стороны. Пусть тень Леди обходит тебя стороной».~ */
  IF ~~ THEN REPLY #18774 /* ~«Просто больше не пытайся меня ограбить. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 27.0
  SAY #18775 /* ~Твои руки выстреливают и хватают его за грязную одежду. Он худощав и достаточно легок, чтобы ты оторвал его от земли и немного потряс. «А-а-а! Я все расскажу, правда! Опусти меня!»~ */
  IF ~~ THEN REPLY #18776 /* ~Бросить его в кучу мусора.~ */ GOTO 55
  IF ~~ THEN REPLY #18777 /* ~Опустить его, но не выпустить из рук.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #18778 /* ~Ты с силой швыряешь его, но, едва упав на землю, он перекатывается и бросается наутек не разбирая дороги!~ */
  IF ~~ THEN REPLY #18779 /* ~«Черт...»~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.1
  SAY #18780 /* ~Как только ты опускаешь Желтопалого, он ловко пинает тебя по голени. Ты роняешь его, и за те полсекунды, необходимых тебе, чтобы опомниться, его уже и след простыл.~ */
  IF ~~ THEN REPLY #18781 /* ~«Черт...»~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 57 // from: 41.2
  SAY #18782 /* ~Ты внимательно наблюдаешь за тем, как проворные пальцы Желтопалого проскальзывают тебе в кошелек... и выскальзывают оттуда, вероятно, прихватив несколько монет. Несмотря на быстроту происходящего, есть в этом что-то тебе знакомое, и ты уверен, что смог бы повторить это, немного потренировавшись.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #18783 /* ~Схватить его за руку.~ */ GOTO 43
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #18784 /* ~Схватить его за руку.~ */ GOTO 42
  IF ~~ THEN REPLY #18785 /* ~«Что ты делаешь?»~ */ GOTO 50
  IF ~~ THEN REPLY #18786 /* ~Напасть на него.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #66861 /* ~Не обращать на него внимания и уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 0.0
  SAY #18787 /* ~«Я заприметил, что ты на меня таращишься... чего-то надо? А?»~ */
  IF ~~ THEN REPLY #18788 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18789 /* ~«Ничего. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18790 /* ~«Ничего. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #18791 /* ~«Эй-эй. Остынь, хвостатая потаскушка, — он оборачивается к тебе. — Я заприметил, что ты на меня таращишься... чего-то надо? А?»~ */
  IF ~~ THEN REPLY #18792 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 23
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #18793 /* ~«Ничего. Прощай».~ */ GOTO 41
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #18794 /* ~«Ничего. Прощай».~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #18795 /* ~«Эй-эй. Остынь, хвостатая потаскушка, — он оборачивается к тебе, и тут замечает Морта. — Эй! Тот череп. Где ты его достал, а? Он мой! Гони его сюда».~ */
  IF ~~ THEN EXTERN ~DMORTE~ 188
END

IF ~~ THEN BEGIN 61 // from:
  SAY #54287 /* ~Желтопалый уносится прочь, не переставая бормотать.~ */
  IF ~~ THEN REPLY #54288 /* ~Уйти.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 62 // from: 38.0 38.1
  SAY #54786 /* ~Наблюдая за тем, как Желтопалый в спешке уходит, ты ловишь себя на мысли, что в ближайшем будущем ты его уже не увидишь.~ */
  IF ~~ THEN REPLY #54787 /* ~Уйти.~ */ DO ~EscapeArea()
~ EXIT
END
