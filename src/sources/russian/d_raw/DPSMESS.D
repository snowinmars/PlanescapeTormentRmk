// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPSMESS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DPSMESS~

IF ~  True()
~ THEN BEGIN 0 // from:
  SAY #47024 /* ~Кажется, этот парень куда-то спешит. Остановив его, ты встречаешь его возмущенный взгляд: он явно хочет поскорее уйти.~ */
  IF ~~ THEN REPLY #47025 /* ~«У меня к тебе несколько вопросов».~ */ GOTO 1
  IF ~~ THEN REPLY #47026 /* ~«Кто ты?»~ */ GOTO 1
  IF ~~ THEN REPLY #47027 /* ~«Что ты можешь рассказать об этом месте?»~ */ GOTO 1
  IF ~~ THEN REPLY #47031 /* ~«Забудь. Можешь продолжить свой путь».~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 0.1 0.2
  SAY #47029 /* ~Он останавливается на миг, но явно не слушает, что ты ему говоришь. «Не знаю», — говорит он и уходит.~ */
  IF ~~ THEN REPLY #47030 /* ~«Тогда прощай». ~ */ EXIT
END
