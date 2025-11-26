// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARKP.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARKP~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #50470 /* ~Улыбчивый мужчина приветливо кивает, когда ты подходишь. «Добро пожаловать в мое кафе, уважаемый сэр. Чем могу служить? Может быть, вина?»~ */
  IF ~~ THEN REPLY #50866 /* ~«Не нужно вина, меня есть вопросы...»~ */ GOTO 1
  IF ~~ THEN REPLY #50867 /* ~«Ничего, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50868 /* ~Мужчина бросает на тебя беспомощный взгляд. «Смиренно прошу прощения, сэр, но, согласно правилам, я только готовлю напитки, ничего больше. Боюсь, для общения вы должны поискать кого-нибудь другого. Вы уверены, что ничего не хотите? Может, хлеба или сыра?»~ */
  IF ~~ THEN REPLY #50869 /* ~«Нет, мне ничего не нужно. Прощай».~ */ EXIT
END
