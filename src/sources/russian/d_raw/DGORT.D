// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~Перед тобой стоит существо высотой в девять футов. Его массивное тело играет мускулами. Похоже, оно увлеченно общается с двумя другими подобными существами.~ */
  IF ~~ THEN REPLY #51180 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Не обращать внимания на существо.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~Он оборачивается на твое приветствие, глядя вниз на тебя. На его лице появляется смущение. «Горт приветствует малорослика».~ */
  IF ~~ THEN REPLY #51183 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~«Ничего, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~С извиняющимся видом он качает головой. «Горт мало плохо говорить с тобой. Прощение, спроси Торпа», — он указывает на одно из существ рядом с собой.~ */
  IF ~~ THEN REPLY #51186 /* ~«Хорошо, спасибо».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~Ты видишь Горта. С улыбкой он смотрит вниз на тебя. «Горт приветствует тебя еще один раз».~ */
  IF ~~ THEN REPLY #51188 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~«Неважно, прощай».~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~Ты видишь Горта. Он низко кланяется тебе: «Горт приветствует тебя, друг. Горт говорит спасибо за спасение жизни». Он отворачивается назад.~ */
  IF ~~ THEN REPLY #51191 /* ~Уйти.~ */ EXIT
END
