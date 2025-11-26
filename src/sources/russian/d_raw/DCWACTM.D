// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~Этот джентльмен увлеченно наблюдает за игрой двух актеров.~ */
  IF ~~ THEN REPLY #28178 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~Мужчина поворачивается к тебе, но его внимание все еще поглощено действиями актеров. Он негромко произносит: «Да-да, приветствую. Что вы об этом думаете? Тот, что справа, неплох, но его партнеру неплохо бы прорепетировать побольше, вам не кажется?»~ */
  IF ~~ THEN REPLY #28180 /* ~«Я не уверен в этом».~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~«Да, он неважный актер».~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~«Нет, мне кажется, что он хороший актер».~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~«Тогда неважно... У меня есть несколько вопросов...»~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~«Хм-м-м». Мужчина возвращается к наблюдению за актерами.~ */
  IF ~~ THEN REPLY #28182 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~Нахмурившись, он тихо отвечает: «Не сейчас. Я слежу за представлением. Прощайте, сэр».~ */
  IF ~~ THEN REPLY #28184 /* ~«Всего лишь несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~Он продолжает говорить тихим, но уже более напряженным тоном: «Нет. Оставьте меня, сэр, иначе я вынужден буду позвать стражников».~ */
  IF ~~ THEN REPLY #28186 /* ~«Отлично, зови их».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~Мужчина кивает в знак приветствия, но всем своим видом указывает замолчать.~ */
  IF ~~ THEN REPLY #28195 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Уйти.~ */ EXIT
END
