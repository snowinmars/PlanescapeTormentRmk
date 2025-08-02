// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDRTRGH1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDRTRGH1~

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 0 // from:
  SAY #38573 /* ~«Сссс... мясссная тварь... трокопотока не пуссскает нас к сокровищами, да? Троко должен сссдохнуть. Тебе — сокровища, нам — тело. Ладно?»~ */
  IF ~~ THEN REPLY #38588 /* ~«Что это за существо?»~ */ GOTO 1
  IF ~~ THEN REPLY #38589 /* ~«Конечно».~ */ GOTO 2
  IF ~~ THEN REPLY #38590 /* ~«Я так не думаю».~ */ GOTO 3
  IF ~~ THEN REPLY #38591 /* ~«Что с твоим другом?»~ */ GOTO 4
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #38592 /* ~«Это трокопотока. Белый. Ссс рогами. Грязный. Троко ессст мясссо. Нашшш враг. Убей его, ладно?»~ */
  IF ~~ THEN REPLY #38593 /* ~«Что с твоим другом?»~ */ GOTO 4
  IF ~~ THEN REPLY #38594 /* ~«Я убью его».~ */ GOTO 2
  IF ~~ THEN REPLY #38595 /* ~«Сам этим занимайся».~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1 4.1
  SAY #38596 /* ~«Да... хорошо. Ты берешшшь сокровища на трупе. Мы берем мясссо. Давай! Прикончи его!»~ */
  IF ~~ THEN REPLY #38597 /* ~«Я пошел».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 1.2 4.2
  SAY #38598 /* ~«Ссссс... бесссполезная мясссная тварь. Убирайся!»~ */
  IF ~~ THEN REPLY #38599 /* ~«Хорошо».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.3 1.0
  SAY #38600 /* ~«Ха-ха... да он труссс. Испугалссся троко. Ха-ха. Убей его для нассс, ладно?»~ */
  IF ~~ THEN REPLY #38601 /* ~«Так что же это такое?»~ */ GOTO 1
  IF ~~ THEN REPLY #38602 /* ~«Хорошо. Я убью его».~ */ GOTO 2
  IF ~~ THEN REPLY #38603 /* ~«Нет, я так не думаю».~ */ GOTO 3
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",0)
~ THEN BEGIN 5 // from:
  SAY #38604 /* ~«Ха-ха... да он труссс. Испугалссся троко. Ха-ха. Убей его для нассс, ладно?»~ */
  IF ~~ THEN REPLY #38605 /* ~«Тогда я пошел».~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 6 // from:
  SAY #38606 /* ~«Он мертв... из-за тебя! Он мертв! Умри, мясссо!» Упырь нападает на тебя!~ */
  IF ~~ THEN REPLY #38607 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38608 /* ~Сбежать.~ */ DO ~Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",1)
~ THEN BEGIN 7 // from:
  SAY #38609 /* ~«Он мертв... из-за тебя! Он мертв! Умри, мясссо!» Упырь нападает на тебя!~ */
  IF ~~ THEN REPLY #38610 /* ~Сражаться.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #38611 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 8 // from:
  SAY #38612 /* ~«Сссс... троко мертв... ты берешшшь сокровище, мы — мяссссо, ладно?»~ */
  IF ~~ THEN REPLY #38613 /* ~«Что это за тварь?»~ */ GOTO 9
  IF ~~ THEN REPLY #38614 /* ~«По рукам».~ */ GOTO 10
  IF ~~ THEN REPLY #38615 /* ~«Нет, сперва ты умрешь».~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #38616 /* ~«Это трокопотока. Белый. Ссс рогами. Грязный. Троко ессст мясссо. Нашшш враг. Невкусссный. Теперь мертвый. Спассссибо, мясссная тварь».~ */
  IF ~~ THEN REPLY #38617 /* ~«Не за что. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #38618 /* ~«Тогда забирай и уходи... нам нужно есссть».~ */
  IF ~~ THEN REPLY #38619 /* ~«Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Troco_Calm","AR1700",2)
~ THEN BEGIN 11 // from:
  SAY #38620 /* ~«Снова вернулась, мясссная тварь? Забирай ссвои монеты и уходи».~ */
  IF ~~ THEN REPLY #38621 /* ~«Отлично. Прощай».~ */ EXIT
END
