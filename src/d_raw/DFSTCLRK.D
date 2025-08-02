// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DFSTCLRK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DFSTCLRK~

IF ~  Global("Sensate_Access","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #49532 /* ~Привлекательная девушка мило улыбается тебе. «Могу ли я чем-то помочь вам, сэр?»~ */
  IF ~~ THEN REPLY #49533 /* ~«Как мне попасть в одну из этих комнат?»~ */ GOTO 1
  IF ~~ THEN REPLY #49534 /* ~«Могу ли я здесь отдохнуть?»~ */ GOTO 2
  IF ~~ THEN REPLY #49535 /* ~«Нет сейчас. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #49536 /* ~«Вы должны быть членом Общества Восприятия, сэр, и приняты Сплинтером. Если хотите поговорить с ним, то он стоит у входа в Фестхолл со внутренней стороны».~ */
  IF ~~ THEN REPLY #49537 /* ~«Тем не менее, могу ли я здесь отдохнуть?»~ */ GOTO 2
  IF ~~ THEN REPLY #49538 /* ~«Тогда прощай». ~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.0
  SAY #49539 /* ~«Городской Фестхолл нередко сдает неиспользуемые комнаты на вечер; если будет свободная комната, вы, несомненно, можете здесь отдохнуть. Проверить для вас, сэр?»~ */
  IF ~~ THEN REPLY #49540 /* ~«Да, пожалуйста».~ */ DO ~StartStore("Festhall",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #64176 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
HasItem("PCs_Key",Myself)
~ THEN BEGIN 3 // from:
  SAY #49541 /* ~Привлекательная девушка мило улыбается тебе. «Приветствую, сэр». Она закрывает глаза, листает большую конторскую книгу, останавливается на, как может показаться, случайной странице и открывает глаза. «А... вот ключ от вашей комнаты... — она дает тебе маленький ключик. — Самая восточная комната уже давно ждет вашего возвращения. Хотите отдохнуть, сэр?»~ */
  IF ~~ THEN REPLY #49542 /* ~«Да, было бы неплохо».~ */ DO ~GiveItem("PCs_Key",Protagonist)
FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49543 /* ~«Нет... но что ты имела в виду под 'ждет моего возвращения'?»~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ GOTO 4
  IF ~~ THEN REPLY #49544 /* ~«Не сейчас. Прощай».~ */ DO ~GiveItem("PCs_Key",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #49545 /* ~Девушка бросает на тебя недоуменный взгляд. «В моей книге указано, что это ваш ключ, сэр, и был им уже очень давно. Если это не так, тогда, возможно, я просто ошиблась. Хотите отдохнуть, сэр?»~ */
  IF ~~ THEN REPLY #49546 /* ~«Да, было бы неплохо».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49547 /* ~«Не сейчас. Прощай».~ */ EXIT
END

IF ~  Global("Sensate_Access","GLOBAL",1)
!HasItem("PCs_Key",Myself)
~ THEN BEGIN 5 // from:
  SAY #49548 /* ~Привлекательная девушка мило улыбается тебе. «Приветствую, сэр. Хотите отдохнуть?»~ */
  IF ~~ THEN REPLY #49549 /* ~«Да, было бы неплохо».~ */ DO ~FadeToColor([20.0],0)
Wait(1)
RestPartyEx(0,10,FALSE)
FadeFromColor([20.0],0)
~ EXIT
  IF ~~ THEN REPLY #49550 /* ~«Не сейчас. Прощай».~ */ EXIT
END
