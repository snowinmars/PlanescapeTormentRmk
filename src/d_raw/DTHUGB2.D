// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB2~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33529 /* ~Этот потрепанный головорез прямо-таки нарывается на неприятности.~ */
  IF ~~ THEN REPLY #33532 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #33534 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33530 /* ~Мужчина смотрит поверх тебя и сплевывает тебе под ноги. «Чего? Неприятностей захотелось, да?»~ */
  IF ~~ THEN REPLY #33535 /* ~«Ага... Готов?»~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33537 /* ~«Нет... Просто у меня есть несколько вопросов...»~ */ GOTO 2
  IF ~~ THEN REPLY #33538 /* ~«Нет. Прощай».~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1 1.2
  SAY #33531 /* ~«Тем хуже для тебя, бедолага... Потому что ты на них нарвался!» Мужчина вынимает длинный нож...~ */
  IF ~~ THEN REPLY #33540 /* ~Сражаться.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33541 /* ~Сбежать.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END
