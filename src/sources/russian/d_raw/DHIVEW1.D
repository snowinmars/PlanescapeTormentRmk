// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DHIVEW1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DHIVEW1~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #2293 /* ~Ты видишь женщину, одетую в выцветшие, заплатанные лохмотья. При твоем приближении она бросает на тебя быстрый взгляд, но затем быстро отворачивается, не желая встречаться с тобой взглядом.~ */
  IF ~~ THEN REPLY #2294 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #2295 /* ~Игнорировать ее.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2296 /* ~Женщина снова бросает на тебя быстрый взгляд, одаривая тебя ледяными взором, а затем отворачивается. ~ */
  IF ~~ THEN REPLY #2297 /* ~«Э-э... мисс?»~ */ GOTO 2
  IF ~~ THEN REPLY #2298 /* ~Игнорировать ее.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #2299 /* ~Она поворачивается... но на этот раз в ее руке ты видишь кинжал. «Оставь меня в покое, собака, или я запихаю это в тебя так глубоко, что никто его больше не найдет!»~ */
  IF ~~ THEN REPLY #2300 /* ~«Убери это... Я просто хочу задать тебе пару вопросов».~ */ GOTO 3
  IF ~~ THEN REPLY #2301 /* ~Оставить ее в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #2302 /* ~Она делает полукруг над своим сердцем свободной рукой, пытаясь оберечься от зла. «Мне нечего сказать тебя! Исчезни!» ~ */
  IF ~~ THEN REPLY #2303 /* ~Атаковать ее.~ */ DO ~Enemy()
~ EXIT
  IF ~~ THEN REPLY #2304 /* ~Уйти.~ */ EXIT
END
