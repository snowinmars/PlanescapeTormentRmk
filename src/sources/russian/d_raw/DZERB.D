// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~Перед тобой стоит существо высотой в девять футов. Его массивное тело играет мускулами. Похоже, оно увлеченно общается с двумя другими подобными существами.~ */
  IF ~~ THEN REPLY #51193 /* ~«Приветствую».~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Не обращать внимания на существо.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~Он оборачивается на твое приветствие, глядя озираясь по сторонам. Глянув вниз, он замечает тебя. На его лице появляется смущение. «Что надо от Зерба?»~ */
  IF ~~ THEN REPLY #51196 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~«Ничего, прощай».~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~С извиняющимся видом он качает головой. «Зерб не говорит язык хорошо. Прощение, спроси Торпа», — он указывает на одно из существ рядом с собой.~ */
  IF ~~ THEN REPLY #51199 /* ~«Хорошо, спасибо».~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~Ты видишь Зерба. С улыбкой он смотрит вниз на тебя «Зерб приветствует тебя еще один раз».~ */
  IF ~~ THEN REPLY #51201 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~«Неважно, прощай».~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~Ты видишь Зерба. Он смотрит на тебя вниз, кланяясь. «Зерб приветствует тебя, друг. Зерб говорит спасибо, за спасение жизни». Он отворачивается назад.~ */
  IF ~~ THEN REPLY #51204 /* ~Уйти.~ */ EXIT
END
