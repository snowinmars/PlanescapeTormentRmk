// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DARMGRD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DARMGRD~

IF ~~ THEN BEGIN 0 // from:
  SAY #64550 /* ~«Эй! Вход в эту зону воспрещен! Тебе туда нельзя!»~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64555 /* ~«Как мне получить разрешение?»~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64556 /* ~Показать охране знак: «У меня есть знак».~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64557 /* ~Ложь: «У меня есть разрешение».~ */ GOTO 3
  IF ~~ THEN REPLY #64558 /* ~«Тогда забудь об этом».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 4.0
  SAY #64551 /* ~«Можешь поговорить с начальством или попробовать пройти через нас, — он мрачно усмехается. — Но я бы не советовал последний вариант».~ */
  IF ~~ THEN REPLY #64559 /* ~«Я все равно попробую».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64560 /* ~«Ладно, ладно, я уже ухожу».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 4.1
  SAY #64552 /* ~Он внимательно осматривает символ. «Прошу прощения за недоразумение, сэр. Могу ли я еще чем-нибудь помочь?»~ */
  IF ~~ THEN REPLY #64561 /* ~«Нет. Счастливо».~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
  IF ~~ THEN REPLY #64562 /* ~«Нет».~ */ DO ~SetDoorLocked("AR0502d3",FALSE)
OpenDoor("AR0502d3")
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.2 4.2
  SAY #64553 /* ~«Тогда ты должен мне его показать». Он ждет, пока ты что-нибудь предпримешь, потом продолжает: «Если ты собираешься играть в игры, то вскоре обнаружишь, что у меня небольшой запас терпения... и взрывной характер».~ */
  IF ~~ THEN REPLY #64563 /* ~«Тогда, наверно, тебе нужно с этим что-нибудь сделать».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64564 /* ~«Хорошо. Не нужно быть таким агрессивным. Прощай».~ */ EXIT
END

IF ~  True()
~ THEN BEGIN 4 // from:
  SAY #64554 /* ~«Могу ли я чем-нибудь помочь, сэр?»~ */
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64565 /* ~«Как мне пройти через эту дверь?»~ */ GOTO 1
  IF ~  PartyHasItem("Gtoken")
~ THEN REPLY #64566 /* ~Показать охране знак: «У меня есть знак».~ */ GOTO 2
  IF ~  !PartyHasItem("Gtoken")
~ THEN REPLY #64567 /* ~Ложь: «У меня есть разрешение на вход в эту дверь».~ */ GOTO 3
  IF ~~ THEN REPLY #64568 /* ~«Тогда забудь об этом».~ */ EXIT
END
