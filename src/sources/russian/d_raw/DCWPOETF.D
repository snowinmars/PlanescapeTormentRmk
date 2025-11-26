// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~Эта привлекательная девушка увлеченно слушает декламирующего пожилого поэта.~ */
  IF ~~ THEN REPLY #28197 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Оставить девушку в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~Девушка поворачивается к тебе, однако поэт по-прежнему занимает ее внимание. Она тихо говорит: «Я прошу вас говорить потише, сэр». Она кивает на поэта. «Не классика, конечно, но у этого старика *есть* потенциал».~ */
  IF ~~ THEN REPLY #28199 /* ~«Я не уверен в этом».~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~«Да, поэт он неважный».~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~«Нет, мне кажется, что он хороший поэт».~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~«Тогда неважно... У меня есть несколько вопросов...»~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~Девушка медленно кивает, продолжая внимательно смотреть на поэта.~ */
  IF ~~ THEN REPLY #28201 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~Хмурясь, она тихо произносит: «Не сейчас, сэр. Проявите уважение к поэту и сохраняйте тишину... Прощайте».~ */
  IF ~~ THEN REPLY #28203 /* ~«Всего лишь несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~Она по-прежнему говорит тихо, но в ее голосе появляются угрожающие нотки. «Не время и не место для вопросов, сэр. Оставьте меня, или я позову стражников».~ */
  IF ~~ THEN REPLY #28205 /* ~«Отлично, зови их».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~Девушка кивает в знак приветствия, но всем своим видом указывает замолчать.~ */
  IF ~~ THEN REPLY #28656 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Уйти.~ */ EXIT
END
