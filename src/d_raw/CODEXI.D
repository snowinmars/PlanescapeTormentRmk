// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : CODEXI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~CODEXI~

IF ~  Global("CodexI","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #50399 /* ~То, что сперва показалось тебе ничем не примечательной книгой, закрытой на крохотный латунный замочек, на самом деле имеет переплет из необычной кожи, украшенный заколдованной бронзой. Названа она просто: «Кодекс необъяснимого».~ */
  IF ~~ THEN REPLY #50400 /* ~Открыть ее... и прочесть!~ */ DO ~SetGlobal("CodexI","GLOBAL",1)
GiveExperience(Protagonist,1000)
~ GOTO 1
  IF ~~ THEN REPLY #50401 /* ~Благоговейно спрятать книгу.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #50402 /* ~Ты отпираешь крепления и открываешь книгу. Когда ты окидываешь взглядом ее содержание, у тебя отпадает челюсть. Ты стоишь, завороженный, листая ее страницы. Ее содержимое попросту невозможно описать: кажется, что простые слова не в силах объяснить все скрытые в ней чудеса.~ */
  IF ~  NearbyDialog("Dmorte")
~ THEN REPLY #50403 /* ~«Это было... это... я...»~ */ EXTERN ~DMORTE~ 500
  IF ~  !NearbyDialog("Dmorte")
~ THEN REPLY #50405 /* ~«Это было... это... я...»~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.1
  SAY #50406 /* ~Минуту ты задумчиво стоишь, глядя на Кодекс, после чего закрываешь его и почтительно прячешь.~ */
  IF ~~ THEN REPLY #50407 /* ~Уйти.~ */ EXIT
END

IF ~  Global("CodexI","GLOBAL",1)
~ THEN BEGIN 3 // from:
  SAY #50408 /* ~Кодекс необъяснимого обернут в переплет из необычной кожи и заколдованной бронзы. Его содержимое попросту невозможно описать: кажется, что простые слова не в силах объяснить все скрытые в нем чудеса.~ */
  IF ~~ THEN REPLY #50409 /* ~Благоговейно спрятать книгу.~ */ EXIT
END
