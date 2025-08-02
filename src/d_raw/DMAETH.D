// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMAETH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMAETH~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33587 /* ~Это один двух парней, кричащих друг на друга, и машущих перед собой оружием. Похоже, они в любой момент готовы вгрызться друг другу в глотки.~ */
  IF ~~ THEN REPLY #33598 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #33599 /* ~Держаться от них на расстоянии.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33588 /* ~Раскрасневшее от метаемых проклятий лицо парня обращается к тебе. «Чего надо?! Не видишь, я *занят*, пустоголовый?»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33600 /* ~«Твоя девушка попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33601 /* ~«Мне интересно, почему вы деретесь».~ */ GOTO 2
  IF ~~ THEN REPLY #33602 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33589 /* ~«Не твое дело, пень. Отвали!»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33603 /* ~«Твоя девушка попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33604 /* ~«Может быть, я смогу разрешить спор?»~ */ GOTO 3
  IF ~~ THEN REPLY #33605 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33590 /* ~«Нет, не можешь! Этот сукин сын сует свой вонючий нос в наши с Элис отношения, но теперь-то я этот нос укорочу маленько! Тебя это не касается, так что держись в сторонке!»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33606 /* ~«Твоя девушка попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33607 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33591 /* ~Парень неожиданно затихает. «Элис тебя позвала, да? Не знаю, кто ты такой, пень, но что-то не пойму, как это ты вдруг решил нас остановить!»~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33608 /* ~«Жестоко избив вас обоих, если придется».~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33609 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33610 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33611 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33612 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33613 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ GOTO 6
  IF ~~ THEN REPLY #33614 /* ~«Да я и не собирался. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33592 /* ~«Что, ты *рехнулся*, рубака? Погляди на себя... может ты и весь шрамах, да только меня этим не напугаешь! Хватит трясти черепушкой и *свали* отсюдова!»~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33615 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33616 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ GOTO 6
  IF ~~ THEN REPLY #33617 /* ~«Отлично... Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33593 /* ~«Не лезь не в свое дело! Иди, окунись в куче навоза, пень!»~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33618 /* ~«Хватит драться или я жестоко изобью вас обоих».~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(500)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33619 /* ~«Хватит драться или я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33620 /* ~«Хватит драться или я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33621 /* ~«Хватит драться или я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~~ THEN REPLY #33622 /* ~«Отлично... Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33594 /* ~Парень быстро оглядывает тебя с ног до головы. «Э-э-э... ну это... Конечно же, всяко лучше нам с этим бедолагой переговорить насчет этого. Да и Элис будет рада...»~ */
  IF ~~ THEN REPLY #33623 /* ~«Рад, что ты подходишь к проблеме с этой стороны. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33595 /* ~Немного похмурившись, парень кивает головой. «Да, ты прав, рубака... Я хотел с ним подраться, чтобы вырвать ее из тени братца. А теперь становлюсь не лучше, чем он, — вздыхает он. — Наверное, стоит решить проблему с этим бедолагой по-другому...»~ */
  IF ~~ THEN REPLY #33624 /* ~«Рад, что ты подходишь к проблеме с этой стороны. Прощай».~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33596 /* ~Возлюбленный Элис, кивая, улыбается тебе. «Спасибо, что вмешался в нашу драку... Ты очень порядочный рубака».~ */
  IF ~~ THEN REPLY #33597 /* ~«Спасибо. Прощай».~ */ EXIT
END
