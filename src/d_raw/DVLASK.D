// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVLASK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVLASK~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 1 even though they appear after this state */
~  Global("Vlask","Global",0)
~ THEN BEGIN 0 // from:
  SAY #45717 /* ~В отличие от других сборщиков, одежды этого отличного качества. «А, еще один мертвец нанес нам визит. Прошу прощения за этот *беспорядок*. У моих коллег нет времени на уборку».~ */
  IF ~~ THEN REPLY #45718 /* ~«Отсюда нет выхода...»~ */ DO ~SetGlobal("Vlask","GLOBAL",1)
~ GOTO 2
END

IF WEIGHT #0 ~  Global("Vlask","Global",1)
~ THEN BEGIN 1 // from:
  SAY #45719 /* ~Власк сдавленно хихикает. «Снова ты! У меня и моих друзей очень мало постоянных клиентов. Перейдем сразу к делу: теперь цена составляет двести медяков за ключ».~ */
  IF ~~ THEN REPLY #45720 /* ~«Я вернулся, чтобы убить тебя».~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(199)
~ THEN REPLY #45722 /* ~«Возьми деньги».~ */ DO ~TakePartyGold(200)
GiveItemCreate("Vkey",Protagonist,1,0,0)
~ GOTO 5
  IF ~~ THEN REPLY #45723 /* ~«У меня нет столько».~ */ GOTO 6
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #45724 /* ~«Отчего же, есть. Дверь находится прямо здесь. Вот только тебе понадобится вот это, чтобы активировать портал». В руке он держит нечто, похожее на маленькую стеклянную бусину. «А теперь поговорим о цене».~ */
  IF ~~ THEN REPLY #45725 /* ~«Лучше я тебя просто убью».~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #45726 /* ~«Я слушаю».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #45727 /* ~«Все просто. Ты платишь мне и моим товарищам сто медяков. Я даю тебе ключ к порталу».~ */
  IF ~~ THEN REPLY #45728 /* ~«А что, если я не хочу платить?»~ */ GOTO 4
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45729 /* ~«Вот деньги. Давай ключ».~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45732 /* ~«У меня нет столько».~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #45734 /* ~«Тогда я и мои друзья просто продадим твое тело тленным. Так или иначе, мы свое получим».~ */
  IF ~~ THEN REPLY #45735 /* ~«Лучше я тебя убью».~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~  PartyGoldGT(99)
~ THEN REPLY #45736 /* ~«Вот деньги. Давай ключ».~ */ DO ~GiveItemCreate("Vkey",Protagonist,1,0,0)
TakePartyGold(100)
~ GOTO 5
  IF ~  PartyGoldLT(100)
~ THEN REPLY #45737 /* ~«У меня нет столько».~ */ GOTO 6
END

IF ~~ THEN BEGIN 5 // from: 1.1 3.1 4.1
  SAY #45738 /* ~«Я со своими товарищами рад иметь дело с тобой. Просто раздави стеклянную бусину — и портал откроется».~ */
  IF ~~ THEN REPLY #45739 /* ~«Прощай».~ */ DO ~StartCutSceneMode()
StartCutSceneEx("3006CUT2",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.2 3.2 4.2
  SAY #45740 /* ~«Как жаль. Ребята, приготовьте этого для тленных».~ */
  IF ~~ THEN REPLY #45741 /* ~«Приготовься к смерти...»~ */ DO ~Enemy()
Help()
ForceAttack(Protagonist,Myself)
~ EXIT
END
