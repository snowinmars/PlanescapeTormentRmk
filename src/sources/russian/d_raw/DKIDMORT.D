// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKIDMORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DKIDMORT~

IF ~  Global("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #28709 /* ~«Хвала силам, ты здесь, шеф. Вытащи меня отсюда».~ */
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28719 /* ~«Что ты здесь делаешь?»~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  Global("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28720 /* ~«Почему?»~ */ DO ~SetGlobal("KidMorte_Talk","AR0508",1)
~ GOTO 1
  IF ~  GlobalGT("KidMorte_Talk","AR0508",0)
~ THEN REPLY #28721 /* ~«Я работаю над этим, Морт».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1
  SAY #28710 /* ~«Те крысооборотни схватили меня и притащили сюда! Ну же, босс... нам нужно убираться отсюда! Это плохое место!»~ */
  IF ~~ THEN REPLY #28722 /* ~«Почему бы тебе просто не слететь оттуда?»~ */ GOTO 2
  IF ~~ THEN REPLY #28723 /* ~«Я даже не знаю. Кажется, тебе там так уютно со всеми остальными черепами...»~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #28711 /* ~«У меня не получается! Я пробовал! Давай, сними меня, пока...»~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1
  SAY #28712 /* ~«Хватит шутить, босс... нам нужно уходить отсюда, пока...»~ */
  IF ~~ THEN DO ~SetGlobal("KidMorte_Speak","AR0508",1)
StartCutSceneMode()
StartCutSceneEx("0508cs1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #28713 /* ~«О... нет, — яростно шепчет Морт. — НЕ раздражай этого знатока, босс... Он запишет тебя в книгу мертвых раньше, чем ты плюнешь».~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 23
END

IF ~~ THEN BEGIN 5 // from:
  SAY #28714 /* ~Морт включается в разговор. Его голос звучит жалко, испугано и почтительно. Очевидно, что, по мнению Морта, с этим типом, Лотаром, лучше не пересекаться. «Он имеет в виду меня. Послушайте, сэр, просто отпустите меня, и мы все забудем. Все останется в Канаве, а?»~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 6 // from:
  SAY #28715 /* ~Морт включается в разговор. «Он имеет в виду меня. Послушайте, сэр, просто отпустите меня, и мы все забудем. Все останется в Канаве, а?»~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 51
END

IF ~~ THEN BEGIN 7 // from:
  SAY #28716 /* ~«Мне это подходит, босс, ведь я здесь застрял. Соглашайся, ладно? Просто найди череп и возвращайся за мной».~ */
  IF ~~ THEN REPLY #28724 /* ~«Отлично. Лотар, я за ним вернусь. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #28725 /* ~«Это не подходит МНЕ, Морт. Я буду за него биться, Лотар».~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY #28717 /* ~«Босс, нет! Он сотрет тебя в порошок! — кажется, Морт просто в ужасе. — Он один самых больших шишек во всей чертовой Клетке!»~ */
  IF ~~ THEN REPLY #28726 /* ~«Очень жаль. Отдай его, Лотар».~ */ EXTERN ~DLOTHAR~ 18
  IF ~~ THEN REPLY #28727 /* ~«Отлично. Я вернусь за ним, Лотар».~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY #28718 /* ~«Босс, не нарывайся! Соглашайся!»~ */
  IF ~~ THEN EXTERN ~DLOTHAR~ 34
END

IF ~  Global("Morte_Stolen","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #54289 /* ~Это чистая полка со свободным местом, размером с череп, между двумя скалящимися черепами.~ */
  IF ~~ THEN REPLY #54292 /* ~Оставить его в покое.~ */ EXIT
END

IF ~  GlobalGT("Morte_Stolen","GLOBAL",1)
~ THEN BEGIN 11 // from:
  SAY #54290 /* ~Это чистая полка со свободным местом, размером с череп, между двумя скалящимися черепами.~ */
  IF ~~ THEN REPLY #54291 /* ~Оставить его в покое.~ */ EXIT
END
