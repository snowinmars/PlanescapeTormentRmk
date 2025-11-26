// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTARIN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTARIN~

IF ~  GlobalLT("Elyce","AR0400",4)
~ THEN BEGIN 0 // from:
  SAY #33625 /* ~Это один из двух парней, кричащих друг на друга и машущих оружием. Похоже, они в любой момент готовы вгрызться друг другу в глотки.~ */
  IF ~~ THEN REPLY #33636 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #33637 /* ~Держаться от них на расстоянии.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33626 /* ~Раскрасневшее от перенапряжения в перепалке лицо парня обращается к тебе. «Чего надо?! Не видишь, я *занят*, пустоголовый?»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33638 /* ~«Твоя сестра попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33639 /* ~«Мне интересно, почему вы деретесь».~ */ GOTO 2
  IF ~~ THEN REPLY #33640 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #33627 /* ~«Не твое дело, пень. Отвали!»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33641 /* ~«Твоя сестра попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33643 /* ~«Может, я смогу разрешить спор?»~ */ GOTO 3
  IF ~~ THEN REPLY #33644 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.1
  SAY #33628 /* ~«Нет, не можешь! Этот сукин сын мешает мою сеструху с *грязью*, но теперь-то он за это поплатится! Тебя это не касается, так что держись в сторонке!»~ */
  IF ~  Global("Elyce","AR0400",3)
~ THEN REPLY #33645 /* ~«Твоя сестра попросила меня остановить вас обоих».~ */ GOTO 4
  IF ~~ THEN REPLY #33646 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.0 2.0 3.0
  SAY #33629 /* ~Парень неожиданно затихает. «Элис тебя позвала, да? Не знаю, кто ты такой, пень, но что-то не пойму, как это ты вдруг решил нас остановить!»~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33647 /* ~«Жестоко избив вас обоих, если придется».~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33648 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33650 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33652 /* ~«Жестоко избив вас обоих, если придется».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33654 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33656 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ GOTO 6
  IF ~~ THEN REPLY #33658 /* ~«Да я и не собирался. Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.1 4.2 4.3 6.1 6.2 6.3
  SAY #33630 /* ~«Ты что, *рехнулся*, рубака? Погляди на себя... может, ты и весь шрамах, да только меня этим не напугаешь! Хватит трясти черепушкой, *сваливай* отсюдова!»~ */
  IF ~  CheckStatGT(Protagonist,11,CHR)
~ THEN REPLY #33659 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 8
  IF ~  CheckStatLT(Protagonist,12,CHR)
~ THEN REPLY #33660 /* ~«Послушай, Элис не хочет, чтобы вы поранили друг друга... Вы что, не можете разобраться в проблеме, не причиняя ей страданий?»~ */ GOTO 6
  IF ~~ THEN REPLY #33661 /* ~«Отлично... Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.5 5.1
  SAY #33631 /* ~«Не лезь не в свое дело! Иди, окунись в кучу навоза, пень!»~ */
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33662 /* ~«Прекратите драться, иначе я жестоко изобью вас обоих».~ */ DO ~SetGlobal("Elyce","AR0400",4)
AddexperienceParty(300)
~ GOTO 7
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33663 /* ~«Прекратите драться, иначе я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,11,STR)
CheckStatLT(Protagonist,12,CON)
~ THEN REPLY #33664 /* ~«Прекратите драться, иначе я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~  CheckStatLT(Protagonist,12,STR)
CheckStatGT(Protagonist,11,CON)
~ THEN REPLY #33665 /* ~«Прекратите драться, иначе я жестоко изобью вас обоих».~ */ GOTO 5
  IF ~~ THEN REPLY #33666 /* ~«Отлично... Прощай».~ */ DO ~SetGlobal("Elyce","AR0400",2)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.0 6.0
  SAY #33632 /* ~Парень быстро оглядывает тебя с ног до головы. «Э-э-э... ну это... Конечно же, всяко лучше нам с этим бедолагой переговорить насчет этого. Да и Элис будет рада...»~ */
  IF ~~ THEN REPLY #33667 /* ~«Рад, что ты подходишь к проблеме с этой стороны. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 4.4 5.0
  SAY #33633 /* ~Немного похмурившись, парень кивает головой. «Да, ты прав, рубака... Я хотел защитить ее интересы, а вышло так, что совсем о ней не подумал, — он вздыхает. — Наверное, стоит решить проблему с этим бедолагой по-другому...»~ */
  IF ~~ THEN REPLY #33668 /* ~«Рад, что ты подходишь к проблеме с этой стороны. Прощай».~ */ EXIT
END

IF ~  Global("Elyce","AR0400",4)
~ THEN BEGIN 9 // from:
  SAY #33634 /* ~Брат Элис доброжелательно кивает тебе: «Спасибо, что помог с тем делом... ты хороший рубака».~ */
  IF ~~ THEN REPLY #33669 /* ~«Спасибо. Прощай».~ */ EXIT
END
