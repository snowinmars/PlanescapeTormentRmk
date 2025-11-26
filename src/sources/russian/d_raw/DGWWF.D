// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWF~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61250 /* ~Перед тобой занятая работница. Она не замечает твоего приближения.~ */
  IF ~~ THEN REPLY #61251 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #61252 /* ~Игнорировать ее.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61253 /* ~«Прости, рубака. Я действительно занята. Не отвлекай меня». Она отворачивается от тебя.~ */
  IF ~~ THEN REPLY #61254 /* ~Уйти.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61255 /* ~Ты видишь занятую работницу. «У меня нет времени говорить с тобой, рубака. Если чего нужно — подойди к бригадиру». Она отворачивается.~ */
  IF ~~ THEN REPLY #61256 /* ~Уйти.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61257 /* ~Ты видишь занятую работницу. Когда ты подходишь, она хмурится. «Отвали, пень. У меня нет времени на бессмысленную болтовню». Она игнорирует тебя.~ */
  IF ~~ THEN REPLY #61258 /* ~Уйти.~ */ EXIT
END
