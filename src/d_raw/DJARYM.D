// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJARYM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJARYM~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 2 3 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #47884 /* ~«Что?.. Кто?..»~ */
  IF ~~ THEN REPLY #47885 /* ~«Приветствую».~ */ GOTO 4
  IF ~~ THEN REPLY #47886 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 2 3 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #47887 /* ~«Опять ты?»~ */
  IF ~~ THEN REPLY #47888 /* ~«Приветствую».~ */ GOTO 4
  IF ~~ THEN REPLY #47889 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  Global("GemQuest","Global",1)
~ THEN BEGIN 2 // from:
  SAY #47890 /* ~«А, ты вернулся. Ну как, нашел?»~ */
  IF ~~ THEN REPLY #47891 /* ~«Нет, все еще ищу».~ */ GOTO 6
  IF ~~ THEN REPLY #47892 /* ~«А что я должен был искать?»~ */ GOTO 7
  IF ~  PartyHasItem("DGem")
~ THEN REPLY #47893 /* ~«Такой тебе подходит?»~ */ DO ~TakePartyItem("DGem")
~ GOTO 8
END

IF WEIGHT #0 ~  Global("GemQuest","Global",2)
~ THEN BEGIN 3 // from:
  SAY #47894 /* ~«Привет еще раз. Извини за грубость, но теперь, когда у меня есть рубин, мне нужно подготовиться к совершению заклинания».~ */
  IF ~~ THEN REPLY #47895 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.0 1.0
  SAY #47896 /* ~«У меня нет времени на твои разговоры. Понимаешь, я думаю над тем, как мне закончить свое заклинание без ключевого компонента».~ */
  IF ~~ THEN REPLY #47897 /* ~«Возможно, я смогу помочь».~ */ GOTO 5
  IF ~~ THEN REPLY #47898 /* ~«Тогда я, пожалуй, пойду. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47899 /* ~Джарим на секунду умолкает. «Думаю, хуже от этого не будет. Для завершения заклинания мне нужен рубин. Он должен быть исключительного качества, а не тот мусор, что продается на рынке. Если найдешь такой, принеси его мне, и я щедро оплачу твои заботы».~ */
  IF ~~ THEN REPLY #47900 /* ~«Прощай».~ */ DO ~SetGlobal("GemQuest","Global",1)
~ JOURNAL #47842 /* ~Изготовителю заклинаний по имени Джарим нужен рубин для завершения своих заклинаний. Он обещал щедро вознаградить мои поиски, если я принесу ему камень. Его дом находится на площади Старьевщиков.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.0
  SAY #47901 /* ~«Не сдавайся. Рубин обязательно должен быть где-то поблизости».~ */
  IF ~~ THEN REPLY #47902 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.1
  SAY #47903 /* ~«Ты должен был искать рубин, вспоминаешь? И если находишь, принести его сюда».~ */
  IF ~~ THEN REPLY #47904 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #47905 /* ~«Он великолепен! А где ты его... А, неважно. Вот, держи, — Джарим в обмен за камень дает тебе порядочное количество монет. — А теперь, если ты не против, я бы хотел бы поработать над своим заклинанием».~ */
  IF ~~ THEN REPLY #47906 /* ~«Прощай».~ */ DO ~GivePartyGold(200)
AddexperienceParty(500)
SetGlobal("GemQuest","Global",2)
~ JOURNAL #47841 /* ~Джарим остался очень довольным рубином, который я принес ему. Интересно, был бы он так же доволен, если бы я сказал ему, что этот камень со шкатулки Моридора?~ */ EXIT
END
