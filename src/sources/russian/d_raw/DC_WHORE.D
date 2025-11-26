// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DC_WHORE.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DC_WHORE~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #67953 /* ~Безвкусно и скудно одетая женщина жеманно улыбается, ненавязчиво опуская бретельки своего бюстгальтера. «Двадцать монет, рубака, и я твоя...»~ */
  IF ~~ THEN REPLY #67958 /* ~«Вообще-то, у меня несколько вопросов...»~ */ GOTO 1
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67959 /* ~«Звучит неплохо... вот деньги».~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67960 /* ~«Э-э... а вместе с другими?»~ */ GOTO 2
  IF ~~ THEN REPLY #67961 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.1
  SAY #67954 /* ~Она вздыхает, и бретельки бюстгальтера возвращаются на место. «Нет. Извини, но так не пойдет».~ */
  IF ~~ THEN REPLY #67962 /* ~«По крайней мере, скажи мне, что это за охранник снаружи...»~ */ GOTO 3
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67963 /* ~«Ну тогда как насчет меня? Двадцать монет, да?»~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67964 /* ~«Отлично... Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 3.1
  SAY #67955 /* ~«Почему бы и нет?» Она развращенно улыбается, играя волосами. «Если будет достаточно весело, то они могут присоединиться...» Она подмигивает и подзывает вас к себе.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67965 /* ~«Верно... почему бы и нет? Вот деньги...»~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ GOTO 4
  IF ~~ THEN REPLY #67966 /* ~«Вообще-то, у меня есть пара вопросов...»~ */ GOTO 1
  IF ~~ THEN REPLY #67967 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #67956 /* ~«А, он?» Она оглядывается на огромного охранника у дверного проема: он стоит спиной к комнате, взгляд обращен в зал. «Я и мои подружки просто спим с ним за звенелки, чтобы он присматривал за нами, вот и все. А что? Он тебя нервирует? Не бойся, он не подглядывает... иди сюда...» Она открывает свои объятья.~ */
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67968 /* ~«Почему бы и нет? Вот деньги...»~ */ DO ~TakePartyGold(20)
FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
~ EXIT
  IF ~  PartyGoldGT(19)
~ THEN REPLY #67969 /* ~«Э-э... а вместе с другими?»~ */ GOTO 2
  IF ~~ THEN REPLY #67970 /* ~«Нет, спасибо. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.1 2.0
  SAY #67957 /* ~Вульгарно перепихнувшись, ты одеваешься и собираешь свои вещи.

«М-м, ты вроде не очень утомился? Приходи ко мне снова, когда захочешь. Прощай».~ */
  IF ~~ THEN REPLY #67971 /* ~«Может быть. Прощай».~ */ EXIT
  IF ~~ THEN REPLY #67972 /* ~Уйти.~ */ EXIT
END
