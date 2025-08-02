// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVVAG2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVVAG2~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #48812 /* ~Ты видишь хилого человека, жмущегося к углу.~ */
  IF ~~ THEN REPLY #48813 /* ~«Приветствую».~ */ GOTO 2
  IF ~~ THEN REPLY #48967 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #48968 /* ~«Ты вернулся? Ты ведь не причинишь мне вреда? Пожалуйста, оставь меня в покое».~ */
  IF ~~ THEN REPLY #48970 /* ~«О чем это ты толкуешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #48971 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #48972 /* ~«Пожалуйста, не трогай меня. Я ничего не сделал».~ */
  IF ~~ THEN REPLY #48974 /* ~«О чем это ты толкуешь?»~ */ GOTO 3
  IF ~~ THEN REPLY #48975 /* ~«Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0
  SAY #48976 /* ~«Пожалуйста... пожалуйста, не трогай меня».~ */
  IF ~~ THEN REPLY #48978 /* ~«Прощай».~ */ EXIT
END
