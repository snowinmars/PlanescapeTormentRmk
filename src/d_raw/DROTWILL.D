// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROTWILL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DROTWILL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2824 /* ~Перед тобой крепкий жилистый мужчина. Его самоуверенное лицо с острыми чертами имеет немного рассеянный вид. Взгляд у него ясный и суровый. Он вял, и в то же время всегда готов к действиям; в своих мозолистых руках он держит нож. «Итак. Еще один посетитель к Гнилому Уильяму. Выкладывай, что у тебя на уме, путник. Излагай ясно, и, быть может, мы тебя отпустим».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3371 /* ~«Я ищу Фарода».~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3648 /* ~«Я ищу дневник».~ */ GOTO 12
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3649 /* ~«Я просто проходил мимо».~ */ GOTO 13
  IF ~~ THEN REPLY #3650 /* ~«Мне не нужны неприятности».~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3651 /* ~«Черный Бутон хочет твоей смерти».~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3652 /* ~«Кристалл хочет твоей смерти».~ */ GOTO 17
  IF ~~ THEN REPLY #3653 /* ~«Это не твое дело».~ */ GOTO 20
END

IF ~~ THEN BEGIN 1 // from: 0.0 12.0 20.0
  SAY #3654 /* ~«Значит, ищешь Фарода? Что ж, за определенную плату я могу тебе сказать, где найти его».~ */
  IF ~~ THEN REPLY #3718 /* ~«Сколько?»~ */ GOTO 2
  IF ~~ THEN REPLY #3719 /* ~«Боюсь, что мне это неинтересно».~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #3661 /* ~Он оценивающе смотрит на тебя. «Каких-то жалких пять медяков. Справедливая цена для такого отчаянного, как ты».~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #3656 /* ~«Хорошо, держи. Где он?»~ */ DO ~TakePartyGold(5)
~ GOTO 3
  IF ~~ THEN REPLY #3657 /* ~«Я не заинтересован в этом».~ */ GOTO 4
  IF ~~ THEN REPLY #3658 /* ~«У меня нет столько».~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #3668 /* ~«Ты можешь найти его на площади Старьевщиков. Ищи его и его сборщиков, и тогда у тебя не будет с этим затруднений».~ */
  IF ~~ THEN REPLY #3659 /* ~«Это я уже слышал!»~ */ GOTO 5
  IF ~~ THEN REPLY #3660 /* ~«Спасибо. Прощай».~ */ GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 2.2 3.1
  SAY #3672 /* ~«Ага, тогда, быть может, мы найдем более интересную тему. Есть тут рохля по имени Кристалл, заправляет маленькими сестричками, которых называют Бритвенными Ангелами. Избавься от нее, и тогда поговорим о награде».~ */
  IF ~~ THEN REPLY #3662 /* ~«А что мне от этого будет?»~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3663 /* ~«Я сделаю это».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3664 /* ~«Нет. Я не наемный убийца».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #3665 /* ~«Сперва я хочу это обдумать».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #37831 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #3676 /* ~«Ну да, но ты ведь получил то, за что платил. Итак... что ты здесь делаешь?»~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #3666 /* ~«Я ищу дневник».~ */ GOTO 12
  IF ~~ THEN REPLY #3667 /* ~«Я просто проходил мимо».~ */ GOTO 13
  IF ~~ THEN REPLY #3669 /* ~«Мне не нужны неприятности».~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3670 /* ~«Черный Бутон хочет твоей смерти».~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3671 /* ~«Кристалл хочет твоей смерти».~ */ GOTO 17
  IF ~~ THEN REPLY #3673 /* ~«Это не твое дело».~ */ GOTO 20
END

IF ~~ THEN BEGIN 6 // from: 4.0 14.0 15.0
  SAY #3677 /* ~«Я тебе разве не сказал, что мы поговорим об этом только после того, как ты разберешься со своим мокрым делом? Я на полном серьезе, пень. Ты займешься этим или нет?»~ */
  IF ~~ THEN REPLY #3674 /* ~«Я просто хочу знать, что мне от этого будет».~ */ GOTO 9
  IF ~  !Dead("Krystall")
~ THEN REPLY #3690 /* ~«Нет. Я не наемный убийца».~ */ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3692 /* ~«Конечно. Я сделаю это».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37832 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 7 // from: 4.1 6.2 8.2 9.1 10.1 14.1 15.1
  SAY #3678 /* ~«Великолепно! Возвращайся, когда закончишь. Мне не нужен твой скулеж по поводу того, что ты этого не можешь сделать. Мы заключили сделку и рассчитаемся позднее».~ */
  IF ~~ THEN REPLY #3693 /* ~«Не беспокойся по этому поводу».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.2 4.3 6.1 14.2 14.3 15.2 15.3
  SAY #3679 /* ~«Рекомендую изменить свое мнение. Не будем спешить, хорошо? Что скажешь насчет двух сотен монет?»~ */
  IF ~~ THEN REPLY #3694 /* ~«Как насчет четырех сотен?»~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3695 /* ~«Нет. Я не хочу этого делать».~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3696 /* ~«Я сделаю это».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Гнилой Уильям предложил мне 200 монет за смерть Кристалл, предводительницы противоборствующей банды в переулке Опасных углов. Я согласился.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37833 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 9 // from: 6.0
  SAY #3680 /* ~«Ты получишь то, что заслуживаешь, пень. Как насчет двух сотен монет, а? По рукам?»~ */
  IF ~~ THEN REPLY #3681 /* ~«А как насчет большей суммы?»~ */ GOTO 10
  IF ~  !Dead("Krystall")
~ THEN REPLY #3682 /* ~«Хорошо, по рукам».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31876 /* ~Гнилой Уильям предложил мне 200 монет за смерть Кристалл, предводительницы противоборствующей банды в переулке Опасных углов. Я согласился.~ */ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3697 /* ~«Нет. Я не хочу этого делать».~ */ GOTO 11
  IF ~  Dead("Krystall")
~ THEN REPLY #37834 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #3683 /* ~«Три сотни. Мое последнее слово».~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #3699 /* ~«Нет. Я не хочу этого делать».~ */ GOTO 11
  IF ~  !Dead("Krystall")
~ THEN REPLY #3700 /* ~«По рукам. Считай, что она мертва».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ JOURNAL #31877 /* ~Гнилой Уильям предложил мне 300 монет за смерть Кристалл, предводительницы противоборствующей банды в переулке Опасных Углов. Я согласился.~ */ GOTO 7
  IF ~  Dead("Krystall")
~ THEN REPLY #37835 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.2 10.0
  SAY #3684 /* ~«Ты сам выбрал этот путь. Жаль, что он не оказался верным, — он повышает свой голос. — Заточки! Разберитесь с этим потрохом!»~ */
  IF ~~ THEN REPLY #3701 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #3702 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 0.1 5.0 20.1
  SAY #3685 /* ~«Дневник, да? Не записная книжка? Не бухгалтерская? Именно дневник?» На миг он умолкает, и, когда ты уже готов ответить, говорит: «Если бы он оказался здесь, то он бы сразу пошел на разжигание костра. Нет, не видел».~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #3703 /* ~«Я ищу Фарода».~ */ GOTO 1
  IF ~~ THEN REPLY #3704 /* ~«Я просто проходил мимо».~ */ GOTO 13
  IF ~~ THEN REPLY #3705 /* ~«Мне не нужны неприятности».~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #3706 /* ~«Черный Бутон хочет твоей смерти».~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #3707 /* ~«Кристалл хочет твоей смерти».~ */ GOTO 17
  IF ~~ THEN REPLY #3708 /* ~«Это не твое дело».~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 0.2 5.1 12.1
  SAY #3686 /* ~«Просто проходил мимо, да? Как жаль. Никто не может пройти здесь бесплатно».~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #3709 /* ~«Я уже заплатил».~ */ GOTO 14
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #3710 /* ~Блеф: «Я уже заплатил».~ */ GOTO 14
  IF ~~ THEN REPLY #3711 /* ~«Какая цена?»~ */ GOTO 15
  IF ~~ THEN REPLY #3712 /* ~«Я хотел бы, чтобы ты назвал точную сумму».~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 13.0 13.1 13.3
  SAY #3687 /* ~Он начинает хохотать и поднимает руку. «Не так быстро, приятель. Это не та плата, о которой я говорил. Это кое-что совсем другое. Видишь ли, есть здесь рохля, заправляет бандой на другой стороне улицы, и я хотел бы, чтобы ты записал ее в книгу мертвых... кровью. Ее зовут Кристалл».~ */
  IF ~~ THEN REPLY #3713 /* ~«А что мне от этого будет?»~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~  !Dead("Krystall")
~ THEN REPLY #3714 /* ~«Я сделаю это».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~  !Dead("Krystall")
~ THEN REPLY #3715 /* ~«Нет. Я не наемный убийца».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  !Dead("Krystall")
~ THEN REPLY #3716 /* ~«Сперва я хочу это обдумать».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #38114 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 15 // from: 13.2 16.0
  SAY #3688 /* ~«Небольшая плата кровью. Хорошая новость: эта кровь — не твоя. Кровь чужая — рохли по имени Кристалл, которая осмелилась пытаться отхватить у меня часть моей территории. Я хочу, чтоб ты нашел ее, и чтобы она пропала. Прикончи ее».~ */
  IF ~~ THEN REPLY #3717 /* ~«А что мне от этого будет?»~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 6
  IF ~~ THEN REPLY #3720 /* ~«Я сделаю это».~ */ DO ~SetGlobal("RW","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #3721 /* ~«Нет. Я не наемный убийца».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #3722 /* ~«Сперва я хочу это обдумать».~ */ DO ~SetGlobal("RW","GLOBAL",1)
~ GOTO 8
  IF ~  Dead("Krystall")
~ THEN REPLY #41720 /* ~«Она уже мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 16 // from: 0.3 5.2 12.2 20.2
  SAY #3698 /* ~«Ага, хорошая новость для тебя в том, что я не причиню тебя вреда. Нужно лишь выполнить небольшое поручение для меня. Ты меня внимательно слушаешь?»~ */
  IF ~~ THEN REPLY #3723 /* ~«Что такое?»~ */ GOTO 15
END

IF ~~ THEN BEGIN 17 // from: 0.4 0.5 5.3 5.4 12.3 12.4 20.3 20.4
  SAY #3725 /* ~«Вот как. Так ты собираешься выполнять это поручение?»~ */
  IF ~~ THEN REPLY #3724 /* ~«Да».~ */ GOTO 18
  IF ~~ THEN REPLY #3726 /* ~«Не уверен».~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0 22.1
  SAY #34367 /* ~«Тогда не будем тратить время, хорошо? Мои Заточки защитят меня».~ */
  IF ~~ THEN REPLY #3727 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #11670 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #34368 /* ~«Ты всегда должен во всем быть уверен, парень. Вот я уверен, что ты сейчас умрешь». Он делает небольшое движение рукой.~ */
  IF ~~ THEN REPLY #34384 /* ~«О чем это ты?»~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 0.6 5.5 12.5
  SAY #34369 /* ~«Ты можешь думать что угодно, но все, что здесь происходит — мое дело. Еще раз... Что ты здесь делаешь?»~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #34385 /* ~«Я ищу Фарода».~ */ GOTO 1
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #34386 /* ~«Я ищу дневник».~ */ GOTO 12
  IF ~~ THEN REPLY #34388 /* ~«Мне не нужны неприятности».~ */ GOTO 16
  IF ~  Global("BR_RW","GLOBAL",1)
!Dead("BlackR")
~ THEN REPLY #34389 /* ~«Черный Бутон хочет твоей смерти».~ */ GOTO 17
  IF ~  Global("Krystall","GLOBAL",2)
!Dead("Krystall")
~ THEN REPLY #34390 /* ~«Кристалл хочет твоей смерти».~ */ GOTO 17
  IF ~~ THEN REPLY #34391 /* ~«Я сказал, что это не твое дело».~ */ GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.5
  SAY #34370 /* ~«Жаль, что ты это сказал. Тем более жаль, что ты умрешь». Он делает рукой сигнал и вынимает свой нож.~ */
  IF ~~ THEN REPLY #34392 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34393 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  Global("RW","GLOBAL",3)
~ THEN BEGIN 22 // from:
  SAY #34371 /* ~«Ты уже нашел того правдоборца, Черного Бутона? Уложил его, как мы договаривались?»~ */
  IF ~~ THEN REPLY #34394 /* ~«Еще нет».~ */ GOTO 23
  IF ~  Global("BR_RW","GLOBAL",2)
!Dead("BlackR")
~ THEN REPLY #34395 /* ~«Я нашел его, но он убедил меня убить тебя вместо него».~ */ GOTO 18
  IF ~  Dead("BlackR")
~ THEN REPLY #34396 /* ~«Он мертв. Где моя награда?»~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #34372 /* ~«Еще нет? Ты что, слабак? Найди его и не возвращайся, пока не доведешь дело до конца!» В ярости он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #34397 /* ~«Сначала у меня есть несколько вопросов...»~ */ EXIT
  IF ~~ THEN REPLY #34398 /* ~«Тогда ладно».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 27.2
  SAY #34373 /* ~Глаза Гнилого Уильяма сверкают. «Ты разобрался с ним, да? Тогда получай награду. Дай только достану ее...» Он выхватывает свой кинжал и целится им тебе в живот.~ */
  IF ~~ THEN REPLY #34399 /* ~Сражаться.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34400 /* ~Сбежать.~ */ DO ~SetGlobal("RW","GLOBAL",4)
SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  Global("RW","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #34374 /* ~Его взгляд, как кинжал, пронзает тебя насквозь. «Ты убил эту жалкую сучку, как мы и договаривались, или опять пришел хвастаться своим провалом?»~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34401 /* ~«Еще нет».~ */ GOTO 26
  IF ~  Dead("Krystall")
~ THEN REPLY #34402 /* ~«Она мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #34375 /* ~Он качает головой. «Даже те бедолаги, которые называют себя моими товарищами, могут ответить за свои слова. А ты просто пустышка, вот ты кто. Мы окажем городу услугу, избавившись от тебя». Он достает свой нож.~ */
  IF ~~ THEN REPLY #34403 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34404 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 4.4 6.3 8.3 9.3 10.2 14.4 15.4 25.1 31.1
  SAY #34376 /* ~«Ага, так ты все-таки сделал свою работу. Теперь мне нужно избавиться от этого проклятого убийцы, от которого мои люди постоянно пропадают. Я даже удвою награду. Как тебе это нравится? Ты ведь не хочешь отказываться от этого предложения?»~ */
  IF ~~ THEN REPLY #34405 /* ~«Боюсь, что я намерен от него отказаться».~ */ GOTO 28
  IF ~  !Dead("BlackR")
~ THEN REPLY #34406 /* ~«Я сделаю это».~ */ GOTO 30
  IF ~  Dead("BlackR")
~ THEN REPLY #37836 /* ~«Он уже мертв. Где моя награда?»~ */ DO ~AddexperienceParty(1500)
~ GOTO 24
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #34379 /* ~«Ты уверен в этом? Тебе не нужна эта работа?»~ */
  IF ~~ THEN REPLY #34407 /* ~«Нет, не нужна».~ */ GOTO 29
  IF ~~ THEN REPLY #34408 /* ~«Если подумать, двойное вознаграждение — звучит совсем неплохо. Я сделаю это».~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #34380 /* ~«Очень жаль, правда. Эх, ну что ж. Ребята, пора сжечь этот мусор». Он медленно достает свой нож и приближается к тебе...~ */
  IF ~~ THEN REPLY #34409 /* ~Сражаться.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34410 /* ~Сбежать.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #34381 /* ~«Хорошо, хорошо. Ты найдешь его где-то в переулке. Думаю, он прячется в тенях».~ */
  IF ~~ THEN REPLY #34411 /* ~«Я найду его».~ */ JOURNAL #31878 /* ~Гнилой Уильям попросил меня убить Черного Бутона, убийцу, который обычно бродит по переулку Опасных Углов.~ */ EXIT
END

IF ~  Global("RW","GLOBAL",2)
~ THEN BEGIN 31 // from:
  SAY #34382 /* ~«Ты уже разделался с той жалкой сучкой Кристалл?»~ */
  IF ~  !Dead("Krystall")
~ THEN REPLY #34412 /* ~«Еще нет».~ */ DO ~SetGlobal("RW","GLOBAL",4)
~ GOTO 32
  IF ~  Dead("Krystall")
~ THEN REPLY #34413 /* ~«Она мертва».~ */ DO ~SetGlobal("RW","GLOBAL",3)
SetGlobal("Paid_DAS","AR0301",2)
AddexperienceParty(1500)
~ GOTO 27
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #34383 /* ~Он говорит сквозь стиснутые зубы, четко произнося каждое слово. «Не... возвращайся... назад... пока... она... не... умрет. Ты... все... понял? — он отворачивается. — Чтоб духу твоего здесь не было, пока она не исчезнет».~ */
  IF ~~ THEN REPLY #34414 /* ~«Отлично. Прощай».~ */ EXIT
END
