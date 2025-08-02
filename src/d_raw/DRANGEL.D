// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~«Ты вписал имя Гнилого Уильяма в книгу мертвых кровавыми чернилами, рубака. Теперь ты можешь свободно проходить по территории Бритвенных Ангелов».~ */
  IF ~~ THEN REPLY #34503 /* ~«Спасибо. Прощай».~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~Этот уличный житель встречает тебя с чрезмерной вежливостью и низким поклоном. «Приветствую, незнакомец. Ты выбрал, э-э, благоприятный день для прохождения через нашу территорию. Плата составляет всего лишь десять монет».~ */
  IF ~~ THEN REPLY #34505 /* ~«Десять монет? Это чересчур!»~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~«Я только что заплатил вон тем пням!»~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~«Десять? Хорошо. Держи».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~«Я уже заплатил».~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Блеф: «Я уже заплатил».~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~«Тебе придется со мной сразиться ради них».~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~«Всего лишь десять монет. Это наша территория. Уверен, ты знал, что это не место для слабаков. Ты явился сюда по собственной воле. Выбирай, чем будешь расплачиваться: медяками или кровью. Так что?»~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~«Монетами. Держи».~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~«Кровью».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~«Сначала попробуй меня догнать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~«А, те придурки не с нами. Заточки — наши заклятые враги. Теперь ты рассчитаешься с нами или мы оставим твою тушку лежать на земле».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~«Тогда вот. Возьми деньги».~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~«Ты сдохнешь раньше, приятель».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~«Сначала попробуй меня догнать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~«Бритвенные Ангелы благодарят тебя. Иди с миром, путник».~ */
  IF ~~ THEN REPLY #34521 /* ~«Спасибо, пень. Прощай».~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~Бритвенный Ангел на миг вглядывается в тени, и, сделав жест рукой, кивает. «Ладно. Двигай. Мы возьмем с тебя плату в следующий раз».~ */
  IF ~~ THEN REPLY #34523 /* ~«Я и не сомневаюсь. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~Бритвенный Ангел на миг вглядывается в тени, и, сделав жест рукой, качает головой. «Нет, ты не платил. Это последнее предупреждение. Десять монет или холодная земля».~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~«Тогда вот. Возьми деньги».~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~«Попробуй взять их у меня, пень».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~«Вижу, ты вернулся. Цена прежняя, если хочешь пройти. Десять монет, приятель, и ты уйдешь без новых шрамов».~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~«Десять монет? Это чересчур!»~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~«Я только что заплатил вон тем пням!»~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~«Десять? Хорошо. Держи».~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~«Я уже заплатил».~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Блеф: «Я уже заплатил».~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~«Тебе придется со мной сразиться ради них».~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~«Слышал, что ты выполняешь какую-то работенку для Кристалл. Хорошо. Сделай ее пошустрей, понял? О... пока не забыл: ты должен заплатить за проход. Теперь ты с нами, поэтому и платишь полцены: каких-то пять монет».~ */
  IF ~~ THEN REPLY #34537 /* ~«Но я работаю на Кристалл!»~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~«Держи».~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~«Я только что заплатил вон тем пням!»~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~«Я уже заплатил».~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Блеф: «Я уже заплатил».~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~«Ты сдохнешь раньше, приятель».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~«Как, ты еще не прикончил Гнилого Уильяма? Тогда гони пять монет, пока Кристалл не решит иначе».~ */
  IF ~~ THEN REPLY #34545 /* ~«Но я работаю на Кристалл!»~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~«Держи».~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~«Я только что заплатил вон тем пням!»~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~«Я уже заплатил».~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Блеф: «Я уже заплатил».~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~«Ты сдохнешь раньше, приятель».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~«Это ты. А этот я. Нам всем жрать охота, вот ты нас и прокормишь. Пять монет, или я порву тебя на грелки».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~«Держи».~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~«Ты сдохнешь раньше, приятель».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~«Сначала попробуй меня поймать».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~«Бывай. Удачи с этим ублюдком Гнилым Уильямом».~ */
  IF ~~ THEN REPLY #34557 /* ~«Ага, спасибо».~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~«Ага, и те придется их убить, чтобы вернуть деньги назад. Но они были там, а мы — здесь. Плати, приятель».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~«Держи».~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~«Почему бы не попробовать взять их у меня? Я готов».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~«Ни за что. Я ухожу».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~Бритвенный Ангел вглядывается в тень за подтверждением. Он поворачивается обратно. «Ага, мои извинения. Проходи».~ */
  IF ~~ THEN REPLY #34563 /* ~«Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~Бритвенный Ангел вглядывается в тень за подтверждением. Он поворачивается обратно. «Нет, ты не платил. Плати, дружок, иначе до Гнилого Уильяма тебе не добраться».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~«Держи».~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~«Я убью его сразу после того, как расправлюсь с тобой».~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~«Не думаю, что тебе удастся догнать меня»~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
