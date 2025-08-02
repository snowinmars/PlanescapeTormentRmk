// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMOOCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMOOCH~

IF ~  Global("Mochai","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #3078 /* ~«Да иду я, иду! Хватит мне докучать!»~ */
  IF ~~ THEN REPLY #10577 /* ~«Просто проверяю. Давай двигай».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
CheckStatGT(Protagonist,12,INT)
~ THEN BEGIN 1 // from:
  SAY #10578 /* ~Перед тобой женщина в мантии тленной, держащая в правой руке полупустой стакан. Когда ты проходишь мимо, она подзывает тебя к себе. «Эм, ты. Иди сюда...» Ты замечаешь, что с ней что-то не так... основываясь на наблюдениях за тленными, ты делаешь вывод, что для члена этой фракции она слишком живо выглядит.~ */
  IF ~~ THEN REPLY #10579 /* ~Подойти к ней.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10580 /* ~Оставить ее в покое.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10581 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #10582 /* ~Перед тобой тленная. Когда ты проходишь мимо, она подзывает тебя к себе. «Эм, ты. Иди сюда...»~ */
  IF ~~ THEN REPLY #10583 /* ~Подойти к ней.~ */ GOTO 5
  IF ~  !Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10584 /* ~Оставить ее в покое.~ */ GOTO 4
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10585 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Mooch","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #10586 /* ~«Эм... чего тебе?»~ */
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10587 /* ~«Баркис говорит, что пора бы уже тебе возвратить должок. Расплатись».~ */ GOTO 9
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10588 /* ~«Ты ведь ненастоящая тленная?»~ */ GOTO 8
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10589 /* ~«Мне нужны еще деньги, а не то я испорчу твой маскарад с переодеванием в тленных».~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10590 /* ~«Мне нужно больше денег, а не то я испорчу твой маскарад с переодеванием в тленных».~ */ GOTO 21
  IF ~~ THEN REPLY #10591 /* ~«Мне нужны ответы на несколько вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10592 /* ~«Ничего».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1
  SAY #10593 /* ~«Что, больно уж хорош, чтобы, эм, тусоваться с тленными, а? Купи мне выпивку, и я отстану».~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10594 /* ~«Без проблем. Вот пять монет. Только оставь меня в покое».~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #10595 /* ~«Ты ведь ненастоящая тленная?»~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10596 /* ~«Баркис говорит, что пора бы уже тебе возвратить должок. Расплатись».~ */ GOTO 9
  IF ~~ THEN REPLY #10597 /* ~«Я так не думаю. Хорошего дня».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.0 2.0
  SAY #10598 /* ~«Эй, рубака... купишь девушке выпивку?»~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10599 /* ~«Ты ведь ненастоящая тленная?»~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10600 /* ~«Баркис говорит, что пора бы уже тебе возвратить должок. Расплатись».~ */ GOTO 9
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~«Ладно. Держи пять монет».~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10601 /* ~«Кто ты?»~ */ GOTO 24
  IF ~~ THEN REPLY #10602 /* ~«Что это за место?»~ */ GOTO 25
  IF ~~ THEN REPLY #10603 /* ~«Расскажи о других здешних посетителях».~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10604 /* ~«Кто этот горящий труп?»~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
Global("Mochai","GLOBAL",1)
CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #10605 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10606 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~~ THEN REPLY #10607 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.2 12.0
  SAY #10608 /* ~«Спасибо, рубака... да пребудет с тобой Истинная Смерть». Она прячет твои деньги в карман и нервно поглядывает в сторону выхода.~ */
  IF ~~ THEN REPLY #10609 /* ~«Ответь мне на пару вопросов за мои звенелки».~ */ GOTO 7
  IF ~~ THEN REPLY #10610 /* ~«Всего хорошего».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.4 6.0 9.2 10.1 12.1 13.3 13.4 14.3 14.4 15.2 18.0 19.0 20.1 21.0 24.0 25.0 26.0 27.0
  SAY #10611 /* ~«Что, эм, ты хочешь знать?»~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10612 /* ~«Ты ведь ненастоящая тленная?»~ */ GOTO 8
  IF ~  Global("Mochai","GLOBAL",1)
~ THEN REPLY #10613 /* ~«Баркис говорит, что пора бы уже тебе возвратить должок. Расплатись».~ */ GOTO 9
  IF ~~ THEN REPLY #10614 /* ~«Кто ты?»~ */ GOTO 24
  IF ~~ THEN REPLY #10615 /* ~«Что это за место?»~ */ GOTO 25
  IF ~~ THEN REPLY #10616 /* ~«Расскажи о других здешних посетителях».~ */ GOTO 26
  IF ~  !Global("Ignus_Free","GLOBAL",1)
~ THEN REPLY #10617 /* ~«Кто этот горящий труп?»~ */ GOTO 27
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10618 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10619 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~  Global("Bribe_Mochai","GLOBAL",1)
~ THEN REPLY #10620 /* ~«Мне нужны еще деньги, а не то я испорчу твой маскарад с переодеванием в тленных».~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALEvil_Mochai_Two","GLOBALGood",-1)
GivePartyGold(25)
~ GOTO 20
  IF ~  Global("Bribe_Mochai","GLOBAL",2)
~ THEN REPLY #10621 /* ~«Мне нужно больше денег, а не то я испорчу твой маскарад с переодеванием в тленных».~ */ GOTO 21
  IF ~~ THEN REPLY #10622 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 4.1 5.0 7.0
  SAY #10623 /* ~Моментально протрезвев, она нервно озирается. «С чего, эм, с чего ты это взял?»~ */
  IF ~~ THEN REPLY #10624 /* ~«Потому что ты ведешь себя не как трухлявые, и, к тому же, не предлагаешь контракты. На деле ты берешь деньги вместо того, чтобы давать их за тела, которые работают в Морге».~ */ GOTO 10
  IF ~  Global("Join_Dustmen","GLOBAL",1)
~ THEN REPLY #10625 /* ~«Потому что я сам — тленный».~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 3.0 4.2 5.1 7.1
  SAY #10626 /* ~Она тихонько подпрыгивает — нервная обеспокоенность сменяется настоящей тревогой. «И что ты собираешься делать?»~ */
  IF ~  Global("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10627 /* ~«Подойди и расплатись. Сейчас же».~ */ GOTO 11
  IF ~  GlobalGT("Bribe_Mochai","GLOBAL",0)
~ THEN REPLY #10628 /* ~«Подойди и расплатись. Сейчас же».~ */ GOTO 22
  IF ~~ THEN REPLY #10629 /* ~«Пока ничего. Ответь мне на пару вопросов».~ */ GOTO 7
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.1
  SAY #10630 /* ~Она издает испуганный писк и начинает сбивчиво объясняться: «Нет, нет, нет-нет-нет. Я не тленная. Я просто нашла эту мантию на улице, а на хорошую одежду денег не было, и еще я слышала, что здесь где-то был вор в одежде тленного, но ты сможешь найти его где-то в юго-западной части Улья. Я видела его, а он меня не заметил. Пожалуйста, не делай мне больно».~ */
  IF ~~ THEN REPLY #10631 /* ~«Дай мне денег, и я тебя отпущу».~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_One","GLOBALGood",-1)
IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(50)
~ GOTO 19
  IF ~~ THEN REPLY #10632 /* ~«Я не собираюсь этого делать. Просто знай, что играешь ты неубедительно. А теперь ответь на мои вопросы».~ */ GOTO 7
  IF ~~ THEN REPLY #10633 /* ~«Не буду. Пока что. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.0
  SAY #10634 /* ~«Эм-м... Я не могу себе этого позволить. Может, одолжишь мне десять процентов? Я, эм, отдам их ему и он поймет, что я верну остальное».~ */
  IF ~~ THEN REPLY #10635 /* ~«Сколько тебе нужно?»~ */ GOTO 13
  IF ~~ THEN REPLY #10636 /* ~«Мне так не кажется. Я благотворительностью не занимаюсь. Есть еще идеи, как тебе с ним расплатиться?»~ */ GOTO 14
END

IF ~  NumTimesTalkedToGT(0)
GlobalLT("Mochai","GLOBAL",3)
~ THEN BEGIN 12 // from:
  SAY #10637 /* ~«Подкинь немного монеток на выпивку, а, рубака?»~ */
  IF ~  PartyGoldGT(5)
~ THEN REPLY #10638 /* ~«Ладно. Держи пять монет».~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~~ THEN REPLY #10639 /* ~«Нет. Лучше ответь мне на пару вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10640 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0 22.0
  SAY #10641 /* ~«Эм, думаю, мне понадобится сто монет на первый взнос».~ */
  IF ~  PartyHasItem("Embalm")
CheckStatGT(Protagonist,12,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10642 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~  PartyHasItem("Embalm")
CheckStatLT(Protagonist,13,DEX)
Global("Mochai","GLOBAL",1)
~ THEN REPLY #10643 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ GOTO 15
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10644 /* ~«Я одолжу тебе деньги. Вот. Возьми их и расплатись. Сейчас же».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Ложь: «Я б одолжил тебе денег, но у меня их нет. Ответь, пожалуйста, на пару вопросов».~ */ GOTO 7
  IF ~  PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Правда: «Я б одолжил тебе денег, но у меня их нет. Ответь, пожалуйста, на пару вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10652 /* ~«Я вернусь с деньгами».~ */ EXIT
  IF ~~ THEN REPLY #10645 /* ~«Может, есть другое решение?»~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 11.1 13.6 22.1
  SAY #10646 /* ~«Другой способ расплатиться? Ха, — она печально улыбается. — Ты всегда, эм, можешь убить меня».~ */
  IF ~  PartyHasItem("Embalm")
~ THEN REPLY #10647 /* ~Отвлечь ее: «Конечно, могу, но... эй, что это там?»~ */ GOTO 15
  IF ~~ THEN REPLY #10648 /* ~«Конечно, могу, но я хотел бы найти другое решение».~ */ GOTO 18
  IF ~  PartyGoldGT(99)
~ THEN REPLY #10649 /* ~«Я просто одолжу тебе эти деньги. А теперь иди и расплатись».~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mochai_One","GLOBALGood",1)
TakePartyGold(100)
SetGlobal("Mochai","GLOBAL",2)
~ GOTO 23
  IF ~  False()
PartyGoldGT(99)
~ THEN REPLY #10650 /* ~Ложь: «Я б одолжил тебе денег, но у меня их нет. Ответь, пожалуйста, на пару вопросов».~ */ GOTO 7
  IF ~  False()
PartyGoldLT(100)
~ THEN REPLY #10651 /* ~Правда: «Я б одолжил тебе денег, но у меня их нет. Ответь, пожалуйста, на пару вопросов».~ */ GOTO 7
  IF ~  False()
~ THEN REPLY #10652 /* ~«Я вернусь с деньгами».~ */ EXIT
  IF ~~ THEN REPLY #10653 /* ~«Я вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.7 5.8 7.6 7.7 13.0 13.1 14.0
  SAY #10654 /* ~«Где?» Она озирается, чтобы поглядеть, куда ты указываешь, и с минуту всматривается в ту сторону замутненным выпивкой взглядом. «Я ничего не вижу».~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 16
  IF ~  CheckStatLT(Protagonist,13,DEX)
PartyHasItem("Embalm")
~ THEN REPLY #10655 /* ~Отравить ей выпивку бальзамирующей жидкостью.~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mochai_Three","GLOBALGood",-1)
~ GOTO 17
  IF ~~ THEN REPLY #10656 /* ~«Неважно. Можешь ответить на мои вопросы?»~ */ GOTO 7
  IF ~~ THEN REPLY #10657 /* ~«Должно быть, там ничего не было. Забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #10658 /* ~В тот момент, когда она оглядывается, ты быстро вливаешь бальзамирующую жидкость в ее полупустой стакан. Жидкость моментально начинает вонять, но, кажется, она ничего не заметила. Она оборачивается назад и одним глотком осушает стакан с отравленной выпивкой. «Эм, что там было? Чего я должна была увидеть?» Внезапно она начинается задыхаться.~ */
  IF ~~ THEN REPLY #10659 /* ~«Свою смерть. Прощай, Мочай».~ */ DO ~Kill(Myself)
DestroyPartyItem("Embalm",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #10660 /* ~«Эм... что ты делаешь?» Она подозрительно смотрит на тебя с бутылкой бальзамирующей жидкости наготове.~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #10661 /* ~«Просто ставлю бутылку на стол. Купил себе выпивки».~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10662 /* ~«Просто ставлю бутылку на стол. Купил себе выпивки».~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,INT)
CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #10663 /* ~«Просто ставлю бутылку на стол. Купил себе выпивки».~ */ GOTO 18
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #10664 /* ~«Да расслабься ты. Я просто роюсь в своих вещах, чтобы вспомнить, что я с собой ношу».~ */ GOTO 18
  IF ~~ THEN REPLY #10665 /* ~«Это тебя не касается».~ */ GOTO 18
  IF ~~ THEN REPLY #10666 /* ~«Ничего. У меня встреча в другом месте. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 14.1 17.0 17.1 17.2 17.3 17.4
  SAY #10667 /* ~Она еще пару мгновений смотрит на тебя, пошатываясь, затем говорит: «Эм, ладно. Ты еще чего-то хотел?»~ */
  IF ~~ THEN REPLY #10668 /* ~«Да. Несколько ответов».~ */ GOTO 7
  IF ~~ THEN REPLY #10669 /* ~«Нет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 10.0
  SAY #10670 /* ~«Могу дать тебе пятьдесят монет. Пожалуйста... никому не говори».~ */
  IF ~~ THEN REPLY #10671 /* ~«Посмотрим. А теперь ответь мне еще на несколько вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10672 /* ~«Пятьдесят? Мне нужно больше».~ */ DO ~IncrementGlobal("Bribe_Mochai","GLOBAL",1)
GivePartyGold(25)
~ GOTO 20
  IF ~~ THEN REPLY #10673 /* ~«Посмотрим. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 3.2 7.8 19.1
  SAY #10674 /* ~«Эм, тебе нужно еще? Я не могу, эм, не могу предложить тебе столько же, сколько и в прошлый раз. Могу только дать, эм, двадцать пять монет».~ */
  IF ~~ THEN REPLY #10675 /* ~«Мне нужно еще».~ */ GOTO 21
  IF ~~ THEN REPLY #10676 /* ~«Этого хватит... пока. Тем временем, ответь еще на пару вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10677 /* ~«Этого должно хватить... пока. Я вернусь».~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 3.3 7.9 20.0
  SAY #10678 /* ~«Ну что ж, эм, очень жаль. Потому что я, эм, больше ничего не могу тебе дать. У меня, эм, просто-напросто нет больше денег».~ */
  IF ~~ THEN REPLY #10679 /* ~«Очень жаль. Ответь мне на пару вопросов».~ */ GOTO 7
  IF ~~ THEN REPLY #10680 /* ~«Очень жаль. Посмотрим, что из этого выйдет. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 9.1
  SAY #10681 /* ~Она глядит на тебя с горечью. «Я не могу. Один, эм, пень обобрал меня до нитки. Мне нужно занять денег или, эм, еще как-то расплатиться с ним».~ */
  IF ~~ THEN REPLY #10682 /* ~«Сколько тебе нужно?»~ */ GOTO 13
  IF ~~ THEN REPLY #10683 /* ~«Мне так не кажется. Я благотворительностью не занимаюсь. Есть еще идеи, как тебе с ним расплатиться?»~ */ GOTO 14
END

IF ~~ THEN BEGIN 23 // from: 13.2 14.2
  SAY #10684 /* ~Она кладет твои звенелки в карман, бросает короткий взгляд на дверь, как бы взвешивая шансы на побег, тяжело вздыхает, осознав, что шансов никаких, и угрюмо направляется к барной стойке. «Эм, ну типа прими мою благодарность».~ */
  IF ~~ THEN REPLY #10685 /* ~«Не стоит. Да, и не думай улизнуть через дверь, пока не расплатишься».~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3 7.2
  SAY #10686 /* ~«Я? Я — Мочай. Мне просто нравится, эм, напиваться здесь и, эмм... — она моментально теряет цепь своих рассуждений. — Я просто кое-кто, понимаешь?»~ */
  IF ~~ THEN REPLY #10687 /* ~«Понятно. Ответь на другие вопросы».~ */ GOTO 7
  IF ~~ THEN REPLY #10688 /* ~«Понятно. Ну, тогда прощай, Мочай».~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 5.4 7.3
  SAY #10689 /* ~«Таверна 'Тлеющий труп'. Читать не умеешь? Что, эм, нажрался побольше моего?»~ */
  IF ~~ THEN REPLY #10690 /* ~«Забудь. Расскажи еще кое о чем».~ */ GOTO 7
  IF ~~ THEN REPLY #10691 /* ~«Забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 5.5 7.4
  SAY #10692 /* ~«Не знаю. Они — просто, эм, люди. Я с людьми не очень-то много дел имею. Если только они мне выпивку не покупают...» Она с надеждой глядит на тебя.~ */
  IF ~~ THEN REPLY #10693 /* ~«Ясно. Дай-ка мне еще пару ответов».~ */ GOTO 7
  IF ~~ THEN REPLY #10694 /* ~«Понятно, почему. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 5.6 7.5
  SAY #10695 /* ~«Он, эм, не труп. Он, эм, какой-то чокнутый колдун. Поспрашивай. Тебе расскажут его историю».~ */
  IF ~~ THEN REPLY #10696 /* ~«Хорошо. Тогда ответь на другие вопросы».~ */ GOTO 7
  IF ~~ THEN REPLY #10697 /* ~«Прощай».~ */ EXIT
END
