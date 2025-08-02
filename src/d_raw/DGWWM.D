// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGWWM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGWWM~

IF ~  RandomNum(2,0)
~ THEN BEGIN 0 // from:
  SAY #61241 /* ~Перед тобой занятый рабочий. Он не замечает твоего приближения.~ */
  IF ~~ THEN REPLY #61242 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #61243 /* ~Игнорировать его.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #61244 /* ~«Извини, я действительно занят. Прошу меня не беспокоить». Он отворачивается от тебя.~ */
  IF ~~ THEN REPLY #61245 /* ~Уйти.~ */ EXIT
END

IF ~  RandomNum(2,1)
~ THEN BEGIN 2 // from:
  SAY #61246 /* ~Ты видишь занятого рабочего. «У меня нет времени на разговоры. Прошу, подойди к бригадиру, если тебе нужна помощь». Он отворачивается.~ */
  IF ~~ THEN REPLY #61247 /* ~Уйти.~ */ EXIT
END

IF ~  RandomNum(2,2)
~ THEN BEGIN 3 // from:
  SAY #61248 /* ~Ты видишь занятого рабочего. Когда ты подходишь, он хмурится. «Отвали, пень. У меня нет времени на болтовню». Он игнорирует тебя.~ */
  IF ~~ THEN REPLY #61249 /* ~Уйти.~ */ EXIT
END
