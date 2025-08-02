// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DTHUGB3.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DTHUGB3~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #33542 /* ~Хмурая гримаса этого головореза похожа на гротескную маску. Когда ты подходишь к нему, он сужает глаза.~ */
  IF ~~ THEN REPLY #33545 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #33546 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33543 /* ~«Заткни свою глотку, ты уродский ублюдок! Тебе никто не разрешал говорить со мной! Свали, пока я не пустил тебе кровь!»~ */
  IF ~~ THEN REPLY #33544 /* ~«Только попробуй — и у тебя появится парочка новых дырок».~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #33547 /* ~Уйти.~ */ EXIT
END
