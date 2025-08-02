// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DVORTEN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DVORTEN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42519 /* ~Ты видишь офицера Гармониума. При твоем приближении он бросает на тебя скучающий взгляд.~ */
  IF ~~ THEN REPLY #44833 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #44834 /* ~Игнорировать его.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42520 /* ~Он бросает на тебя скучающий взгляд. «Приветствую, гражданин. Вортен, Третья ступень, к твоим услугам».~ */
  IF ~~ THEN REPLY #44838 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #44839 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 5.0
  SAY #44835 /* ~Он вздыхает. «Не хочу быть грубым, но я при исполнении, и у меня нет времени на вопросы». Он делает паузу. «Если тебе нужна информация, поговори с Эббом Коленоскрипом».~ */
  IF ~~ THEN REPLY #44836 /* ~«Кто такой Эбб Коленоскрип?»~ */ GOTO 3
  IF ~~ THEN REPLY #44837 /* ~«Где я могу найти его?»~ */ GOTO 4
  IF ~~ THEN REPLY #44840 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #44841 /* ~«Это мой старый приятель. Думаю, он теперь решил стать осведомителем, так что теперь он сможет рассказать многое обо всем».~ */
  IF ~~ THEN REPLY #44842 /* ~«Где можно найти его?»~ */ GOTO 4
  IF ~~ THEN REPLY #44843 /* ~«Неважно. Прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #44844 /* ~Он задумывается. «Последний раз я слышал, что он обосновался в баре Тлеющий труп. Он находится где-то в Улье».~ */
  IF ~~ THEN REPLY #44845 /* ~«Спасибо, прощай».~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #44846 /* ~Ты видишь Вортена, офицера Гармониума Третьей ступени. При твоем приближении он бросает на тебя скучающий взгляд.~ */
  IF ~~ THEN REPLY #44847 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #44848 /* ~«Неважно, прощай».~ */ EXIT
END
