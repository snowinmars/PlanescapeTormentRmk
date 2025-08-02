// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDILLON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DDILLON~

IF ~  Global("Alarm2","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY #7095 /* ~«Э-э-эй! Стража! Здесь нарушитель!»~ */
  IF ~~ THEN REPLY #7096 /* ~Готово.~ */ EXIT
END

IF ~  Global("Alarm1","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #7097 /* ~«Сэр, вам бы лучше исчезнуть. Если уж вас должны вывести, я не хочу укрывать вас здесь».~ */
  IF ~~ THEN REPLY #7098 /* ~Уйти.~ */ EXIT
END

IF ~  Global("Alarm2","GLOBAL",0)
Global("Alarm1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY #7099 /* ~«Чем могу служить, сэр?»~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7100 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7101 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7102 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7103 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7104 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 7
  IF ~~ THEN REPLY #7105 /* ~«Ничего. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0
  SAY #7106 /* ~«Прошу прощения, сэр. Бригадир говорит, что вы проводите слишком много времени в кузнице. Нам нужно, чтобы и другие имели к ней доступ. Примите мои извинения, сэр».~ */
  IF ~  Global("G_Test2","GLOBAL",9)
~ THEN REPLY #7107 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 5
  IF ~  Global("G_Test2","GLOBAL",10)
~ THEN REPLY #7108 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 6
  IF ~  Global("G_Test2","GLOBAL",11)
~ THEN REPLY #7109 /* ~«Расскажи мне о своем предшественнике».~ */ GOTO 7
  IF ~~ THEN REPLY #7110 /* ~«Ладно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 5.1 6.1 7.1
  SAY #7111 /* ~«Изволите немного руды? Хорошо. Используйте ее с толком, сэр. С ней нужно хорошо обращаться».~ */
  IF ~~ THEN REPLY #7112 /* ~«Я постараюсь. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #7113 /* ~«Как угодно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.2 3.0
  SAY #7114 /* ~«Странные вещи творятся! Как только Сароса посадили под замок, Тильдон просто исчез. Ни записки, ни объяснения... ничего. Просто встал и ушел. Он был та еще сволочь, так что никто о нем особо не горевал».~ */
  IF ~~ THEN REPLY #7115 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7116 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ GOTO 4
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7117 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1
  SAY #7118 /* ~«Что ж! Как только его арестовали и заперли, мы постарались на славу, чтобы стереть его из памяти. Мы всегда ненавидели этого пня, это уж точно, и без него с нам стало легче».~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7119 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7120 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7121 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 2.4 3.2
  SAY #7122 /* ~«Очень жаль, что Сароса больше нет. Хотя вместе с ним сгинул и этот болван Тильдон... сделка с нечистым, не иначе. Сарос мне нравился, но Тильдон? Его больше нет. Этого вполне достаточно».~ */
  IF ~  GlobalGT("Forge","GLOBAL",3)
~ THEN REPLY #7123 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ GOTO 3
  IF ~  GlobalLT("Forge","GLOBAL",4)
~ THEN REPLY #7124 /* ~«Я хочу воспользоваться кузницей. Ты можешь дать мне немного руды?»~ */ DO ~GiveItem("Iore",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #7125 /* ~«Понятно. Прощай».~ */ EXIT
END
