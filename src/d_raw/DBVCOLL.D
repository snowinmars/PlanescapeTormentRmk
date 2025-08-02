// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBVCOLL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBVCOLL~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #54788 /* ~Этот мужчина одет в грязную рваную одежду коричневого цвета. Его лицо скрыто длинным капюшоном.~ */
  IF ~~ THEN REPLY #54789 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #54790 /* ~Оставить его в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #54791 /* ~Его глаза, скрытые капюшоном, сужаются, он делает шаг назад. «Чего надо?»~ */
  IF ~~ THEN REPLY #54792 /* ~«Чем ты занимаешься?»~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54793 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54794 /* ~«Что это за место?»~ */ GOTO 4
  IF ~~ THEN REPLY #54795 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #54796 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0 4.0 9.0
  SAY #54797 /* ~«Я занимаюсь своим делом, рубака, и тебя попросил бы заниматься тем же».~ */
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54799 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54798 /* ~«Что это за место?»~ */ GOTO 4
  IF ~~ THEN REPLY #54800 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #54801 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 9.1
  SAY #54802 /* ~Он оглядывается вокруг. «На самом деле, определенного имени у него нет. Наверное, ты можешь называть его Мусорными районами».~ */
  IF ~~ THEN REPLY #54803 /* ~«Что ты здесь делаешь?»~ */ GOTO 2
  IF ~~ THEN REPLY #54804 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #54805 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.1 9.2
  SAY #54806 /* ~«Деревня Фарода, рубака, — он указывает на груду кирпичей и мусор, возвышающихся над тобой в вонючей темноте. — Погребенная деревня».~ */
  IF ~~ THEN REPLY #54807 /* ~«Что ты здесь делаешь?»~ */ GOTO 2
  IF ~~ THEN REPLY #54808 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #54809 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 2.2 3.1 4.1 9.3
  SAY #54810 /* ~«А?»~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54811 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54812 /* ~«Я разыскиваю человека по имени Фарод».~ */ GOTO 8
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54813 /* ~«Я ищу потерянный дневник».~ */ GOTO 6
  IF ~~ THEN REPLY #54814 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.2 7.0 8.0
  SAY #54815 /* ~Он недоуменно качает головой.~ */
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0108")
~ THEN REPLY #54816 /* ~«А как насчет Фарода? Знаешь, где он?»~ */ GOTO 7
  IF ~  Global("Pharod","GLOBAL",0)
CreatureInArea("AR0109")
~ THEN REPLY #54817 /* ~«А как насчет Фарода? Знаешь, где он?»~ */ GOTO 8
  IF ~~ THEN REPLY #54818 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.0 6.0
  SAY #54819 /* ~Мужчина кивает. «Тебе нужно идти к юго-западной части мусорного лабиринта. Там есть потайная дверь, которая ведет вниз, в логово Фарода».~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54820 /* ~«Еще я ищу потерянный дневник».~ */ GOTO 6
  IF ~~ THEN REPLY #54821 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.1 6.1
  SAY #54822 /* ~Мужчина кивает. «Тут есть арка, которая ведет из этой большой комнаты на северо-запад... Там ты и найдешь старика Фарода».~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #54823 /* ~«Еще я ищу потерянный дневник».~ */ GOTO 6
  IF ~~ THEN REPLY #54824 /* ~«Это все, что я хотел узнать. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #54825 /* ~Мужчина отступает назад, подозрительно оглядывая тебя из глубины своего капюшона. «Опять? Чего тебе надо?»~ */
  IF ~~ THEN REPLY #54826 /* ~«Чем ты занимаешься?»~ */ GOTO 2
  IF ~  CreatureInArea("AR0108")
~ THEN REPLY #54827 /* ~«Что это за место?»~ */ GOTO 3
  IF ~  CreatureInArea("AR0109")
~ THEN REPLY #54828 /* ~«Что это за место?»~ */ GOTO 4
  IF ~~ THEN REPLY #54829 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 5
  IF ~~ THEN REPLY #54830 /* ~«Ничего. Прощай».~ */ EXIT
END
