// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH2~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38622 /* ~«Убей для нассс троко, да, и забирай его деньги. Нам доссстанется его еда. Нравитсся, а?»~ */
  IF ~~ THEN REPLY #38623 /* ~«Что это за существо?»~ */ GOTO 1
  IF ~~ THEN REPLY #38636 /* ~«Конечно».~ */ GOTO 4
  IF ~~ THEN REPLY #38637 /* ~«Я так не думаю».~ */ GOTO 3
  IF ~~ THEN REPLY #38638 /* ~«Что с твоим другом?»~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.0
  SAY #38624 /* ~«Трокопотока? Нравитссся? А нам — нет... ссстрашный и злой зверь. Мы им не нравимсся. Этот... охраняет труп, который нам нужен. Убьешшшь его?»~ */
  IF ~~ THEN REPLY #38625 /* ~«Что с твоим другом?»~ */ GOTO 2
  IF ~~ THEN REPLY #38632 /* ~«Я убью его».~ */ GOTO 4
  IF ~~ THEN REPLY #38635 /* ~«Сам этим занимайся».~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.3 1.0
  SAY #38626 /* ~«Не друг! Хвассстун! Хвассстливый упырь! Ничего не боюсссь, говорит! Видел, чтобы он подходил к троко? Нет! Он труссс! Убей троко и покажи, кто тут сссмелый!»~ */
  IF ~~ THEN REPLY #38627 /* ~«Так что же это такое?»~ */ GOTO 1
  IF ~~ THEN REPLY #38628 /* ~«Хорошо, я убью его».~ */ GOTO 4
  IF ~~ THEN REPLY #38631 /* ~«Нет, я так не думаю».~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 2.2
  SAY #38629 /* ~«Ссссс... бесссполезное мясо! Уходи!»~ */
  IF ~~ THEN REPLY #38630 /* ~«Хорошо».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.1
  SAY #38633 /* ~«Ссспасибо... заберешшшь деньги, когда он умрет».~ */
  IF ~~ THEN REPLY #38634 /* ~«Вот это — план».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38639 /* ~«Почему не убиваешшшь троко? Троко должен сссдохнуть! Убей его!»~ */
  IF ~~ THEN REPLY #38640 /* ~«Тогда я пошел».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38641 /* ~«Зачем... зачем ты вернулосссь, глупое мясссо? Умри-и-и!» Жуткая тварь накидывается на тебя!~ */
  IF ~~ THEN REPLY #38642 /* ~Сражаться.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #38643 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38644 /* ~«Зачем... зачем ты вернулосссь, глупое мясссо? Умри-и-и!» Жуткая тварь накидывается на тебя!~ */
  IF ~~ THEN REPLY #38645 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38646 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38647 /* ~«Ты за своим сссокровищем, да? Забирай и уходи, мясссная тварь».~ */
  IF ~~ THEN REPLY #38648 /* ~«Что это за тварь?»~ */ GOTO 9
  IF ~~ THEN REPLY #38651 /* ~«По рукам».~ */ GOTO 10
  IF ~~ THEN REPLY #38652 /* ~«Нет, сперва ты умрешь».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38649 /* ~«Трокопотока? Нравитссся? А нам — нет... ссстрашный и злой зверь. Мы им не нравимссся. Он уже мертвый, да?»~ */
  IF ~~ THEN REPLY #38650 /* ~«Не за что. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38653 /* ~«Тогда забирай и уходи... нам нужно есссть».~ */
  IF ~~ THEN REPLY #38654 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #67831 /* ~«Так ссскоро вернулся? Уйди. Мы едим».~ */
  IF ~~ THEN REPLY #67832 /* ~«Отлично. Прощай».~ */ EXIT
END
