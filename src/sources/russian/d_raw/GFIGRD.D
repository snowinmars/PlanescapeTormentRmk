// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : GFIGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~GFIGRD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #5691 /* ~«Товарищи! Ко мне! Здесь нарушитель! Прямо тут!»~ */
  IF ~~ THEN REPLY #5692 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #5693 /* ~«Сэр, вас попросили уйти. Прошу так и поступить. Сейчас же».~ */
  IF ~~ THEN REPLY #5694 /* ~Готово.~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 21 even though they appear after this state */
~  CreatureInArea("AR0500")
~ THEN BEGIN 2 // from:
  SAY #5695 /* ~«Пожалуйста, освободите двор, сэр. Либо входите, либо выходите».~ */
  IF ~~ THEN REPLY #66282 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #5701 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #5704 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #5708 /* ~NULL MODE~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #4 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #5712 /* ~«Добрый день, сэр. Могу ли я чем-то помочь?»~ */
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5714 /* ~«В общем, да. Не знал, кому бы это рассказать, но тебе, думаю, можно. Бедай-Линн попросила меня убить Сандоза. Как насчет такого?»~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5715 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~~ THEN REPLY #5716 /* ~«Где тут контора клерка?»~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5717 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5718 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 9
  IF ~~ THEN REPLY #5719 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 8.4 9.0 10.1 14.1 16.0 19.0 20.0
  SAY #5720 /* ~«Боюсь, это секрет, сэр. Даже для наших самых высокоценимых членов фракции. Если вы непричастны к проекту, и не получили разрешение от одного из начальников, мы не можем пропустить вас».~ */
  IF ~~ THEN REPLY #5721 /* ~«Отлично. Не подскажешь, где контора клерка?»~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5722 /* ~«Отлично. Где я могу найти ваших начальников?»~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5723 /* ~«Отлично. Где я могу найти ваших начальников?»~ */ GOTO 9
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5724 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5725 /* ~«Кстати, о начальниках: Бедай-Линн попросила меня убить Сандоза. Как насчет такого?»~ */ GOTO 13
  IF ~~ THEN REPLY #5726 /* ~«Что, если я выбью из тебя это?»~ */ GOTO 11
  IF ~~ THEN REPLY #5727 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2 7.0 9.1 10.0 16.3 19.2 20.2
  SAY #5759 /* ~«Прямо на юг от главной литейной ты найдешь конторку со столом. Это и есть контора клерка».~ */
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5760 /* ~«Спасибо. Где я могу найти начальство?»~ */ GOTO 9
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5761 /* ~«Спасибо. Где я могу найти начальство?»~ */ GOTO 10
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5762 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5763 /* ~«Не знал, кому бы это рассказать, но... Бедай-Линн попросила меня убить Сандоза».~ */ GOTO 13
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5764 /* ~«Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~~ THEN REPLY #64516 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.4 7.2 8.0 16.5 19.4 20.4
  SAY #5765 /* ~«После гибели Сандоза Кельдор — пожалуй, единственный, кто может вам чем-то помочь. Вы можете найти его в главном зале собраний — за дверью на правой стороне главной литейной. Пропустить невозможно».~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5766 /* ~«Отлично. Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~~ THEN REPLY #5767 /* ~«Можешь подсказать, где найти контору клерка?»~ */ GOTO 8
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5768 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~~ THEN REPLY #5769 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 6.3 7.1 8.1 16.4 19.3 20.3
  SAY #5770 /* ~«По этому поводу вам смогут помочь либо Сандоз, либо Кельдор. Кельдор в главном Зале собраний, прямо за дверью на правой стороне главной литейной. Сандоза обычно можно найти в помещении за Залом».~ */
  IF ~~ THEN REPLY #5771 /* ~«Спасибо. Как мне найти контору клерка?»~ */ GOTO 8
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5772 /* ~«Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5773 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5774 /* ~«Кстати, о Сандозе: Бедай-Линн попросила меня убить его. Как насчет такого?»~ */ GOTO 13
  IF ~~ THEN REPLY #5775 /* ~«Спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 7.5
  SAY #5776 /* ~«Хотелось бы увидеть, как вы это сделаете, сэр».~ */
  IF ~~ THEN REPLY #5777 /* ~Атаковать.~ */ DO ~Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #5778 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 7.3 8.2 9.2 10.2 16.2 18.0
  SAY #5779 /* ~«Нет, сэр. На ночь мы покинули комнату».~ */
  IF ~~ THEN REPLY #5780 /* ~«Разве это не необычно?»~ */ GOTO 14
  IF ~~ THEN REPLY #5781 /* ~«По чьему приказу?»~ */ GOTO 15
  IF ~~ THEN REPLY #5782 /* ~«У меня другие, не касающиеся убийства вопросы».~ */ GOTO 16
  IF ~~ THEN REPLY #5783 /* ~«Понятно. Это интересно. Спасибо за уделенное время».~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 6.0 7.4 8.3 10.3 16.1 19.1 20.1
  SAY #5784 /* ~«ЧТО? Вы серьезно? Поговорите об этом с Кельдором. А пока мы позаботимся об инженере. Спасибо вам».~ */
  IF ~~ THEN REPLY #5785 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.0 15.1 17.1
  SAY #5786 /* ~«Да, сэр, это необычно. Обычно нас держат здесь день и ночь, чтобы обеспечить безопасность проекта».~ */
  IF ~~ THEN REPLY #5787 /* ~«Кто имеет право отпустить вас подобным образом?»~ */ GOTO 15
  IF ~~ THEN REPLY #5788 /* ~«Что ты можешь рассказать о проекте?»~ */ GOTO 7
  IF ~~ THEN REPLY #5789 /* ~«Значит, ты утверждаешь, что ничего не видел».~ */ GOTO 17
  IF ~~ THEN REPLY #5790 /* ~«Интересно. Спасибо».~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.1 14.0
  SAY #5791 /* ~«Единственные люди, обладающие такой властью, — Тильдон и Бедай-Линн. Я предполагаю, что фракторы, либо кто-нибудь, близкий к ним, мог бы отдать такой приказ, но не похоже, чтобы они это делали. Я не знаю, чей это приказ, и не представляю, кто бы мог захотеть его отдать».~ */
  IF ~~ THEN REPLY #5792 /* ~«Это мало чем поможет, но хоть что-то для начала. В таком случае, ответь мне на другие вопросы».~ */ GOTO 16
  IF ~~ THEN REPLY #5793 /* ~«А было ли необычным то, что ты получил этот приказ?»~ */ GOTO 14
  IF ~~ THEN REPLY #5794 /* ~«И ты ничего не видел?»~ */ GOTO 17
  IF ~~ THEN REPLY #5795 /* ~«Это... много чего объясняет. Счастливо».~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 12.2 15.0 17.0 18.1
  SAY #5796 /* ~«Еще вопросы?»~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5797 /* ~«Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5798 /* ~«В общем, да. Не знал, кому бы это рассказать, но тебе, думаю, можно. Бедай-Линн попросила меня убить Сандоза. Как насчет такого?»~ */ GOTO 13
  IF ~  Global("Join_Godsmen","GLOBAL",3)
~ THEN REPLY #5799 /* ~«Я разыскиваю убийцу кузнеца. Ты что-нибудь видел той ночью?»~ */ GOTO 12
  IF ~~ THEN REPLY #5800 /* ~«Где тут контора клерка?»~ */ GOTO 8
  IF ~  !Dead("Sandoz")
~ THEN REPLY #5801 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 10
  IF ~  Dead("Sandoz")
~ THEN REPLY #5802 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 9
  IF ~~ THEN REPLY #5803 /* ~«Забудь об этом. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 14.2 15.2
  SAY #5804 /* ~«Именно так, сэр. Я ничего не видел».~ */
  IF ~~ THEN REPLY #5805 /* ~«Хм. Тогда ответь мне на пару вопросов».~ */ GOTO 16
  IF ~~ THEN REPLY #5806 /* ~«Тебе не кажется, что этот приказ был необычным?»~ */ GOTO 14
  IF ~~ THEN REPLY #5807 /* ~«Это... много чего объясняет. Счастливо».~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 21 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",3)
~ THEN BEGIN 18 // from:
  SAY #5808 /* ~«Я понимаю, что мы обязаны помогать вам любым способом касательно этого убийства, но должен предупредить, что моя помощь будет не особо ценной».~ */
  IF ~~ THEN REPLY #5809 /* ~«Почему же нет? Тебя здесь не было?»~ */ GOTO 12
  IF ~~ THEN REPLY #5810 /* ~«Ладно. Ну, в любом случае, у меня есть еще пару вопросов».~ */ GOTO 16
  IF ~~ THEN REPLY #5811 /* ~«О, тогда забудь об этом».~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 19 // from:
  SAY #5812 /* ~Ты видишь внушительного стражника, который выглядит немного скучающим. «Приветствую, сэр. Чем могу служить?»~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5813 /* ~«Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5814 /* ~«В общем, да. Не знал, кому бы это рассказать, но тебе, думаю, можно. Бедай-Линн попросила меня убить Сандоза. Как насчет такого?»~ */ GOTO 13
  IF ~~ THEN REPLY #5815 /* ~«Где тут контора клерка?»~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5816 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5817 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 9
  IF ~~ THEN REPLY #5818 /* ~«Забудь об этом. Прощай».~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 21 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 20 // from:
  SAY #5819 /* ~«Приветствую, сэр. Чем могу служить?»~ */
  IF ~  CreatureInArea("AR0502")
~ THEN REPLY #5820 /* ~«Что за теми охраняемыми дверьми?»~ */ GOTO 7
  IF ~  GlobalGT("F_Ass","GLOBAL",0)
!Global("F_Ass","GLOBAL",3)
GlobalLT("F_Ass","GLOBAL",5)
~ THEN REPLY #5821 /* ~«В общем, да. Не знал, кому бы это рассказать, но тебе, думаю, можно. Бедай-Линн попросила меня убить Сандоза. Как насчет такого?»~ */ GOTO 13
  IF ~~ THEN REPLY #5822 /* ~«Где тут контора клерка?»~ */ GOTO 8
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
~ THEN REPLY #5823 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 10
  IF ~  Global("Sandoz_Dead_KAPUTZ","GLOBAL",1)
~ THEN REPLY #5824 /* ~«Где я могу найти здешнее начальство?»~ */ GOTO 9
  IF ~~ THEN REPLY #5825 /* ~«Забудь об этом. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0900")
~ THEN BEGIN 21 // from:
  SAY #67221 /* ~Стражник бросает на тебя гневный взгляд. «Прочь с дороги. У нас тут неотложное дело».~ */
  IF ~~ THEN REPLY #67222 /* ~«Прощай».~ */ EXIT
END
