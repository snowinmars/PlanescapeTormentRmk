// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~Ты видишь ничем не примечательного торговца. При твоем приближении он улыбается и кивает тебе.~ */
  IF ~~ THEN REPLY #58785 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~Он отрывисто кивает тебе. «И я тоже. Я — Мурк, тебе что-то приглянулось?»~ */
  IF ~~ THEN REPLY #58790 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~«Что у тебя есть?»~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~«Нет, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~Хмурясь, он качает головой. «Я не продаю информацию. Если у тебя есть вопросы, поспрашивай их где-нибудь еще».~ */
  IF ~~ THEN REPLY #58794 /* ~«Хорошо, что у тебя есть?»~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~«Понятно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~Он широко улыбается, в глазах проскакивает искорка. «Хорошо... У меня случайно завалялись отличный набор рукавиц и топоров. Что может быть лучше, чем превращение своим собственными руками чего-нибудь в отбивную? Только шинкование на мелкие кусочки».~ */
  IF ~~ THEN REPLY #58797 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~Ты видишь торговца Мурка. При твоем приближении он кивает тебе. «И снова здравствуй. Чем я могу помочь?»~ */
  IF ~~ THEN REPLY #58800 /* ~«Что у тебя есть?»~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~«Покажи мне свои товары».~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~«Прощай».~ */ EXIT
END
