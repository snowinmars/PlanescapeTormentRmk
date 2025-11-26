// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~Эта привлекательная молодая женщина наблюдает за игрой двух актеров.~ */
  IF ~~ THEN REPLY #28164 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Оставить женщину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~Женщина поворачивается к тебе, но ее внимание все еще поглощено действиями актеров. Она негромко произносит: «Рада встрече, сэр. Вы давно смотрите? Тот, что слева, неплох, но его партнеру неплохо бы прорепетировать побольше, вам не кажется?»~ */
  IF ~~ THEN REPLY #28166 /* ~«Я не уверен в этом».~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~«Да, он неважный актер».~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~«Нет, мне кажется, что он хороший актер».~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~«Тогда неважно... У меня есть несколько вопросов...»~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~Женщина лишь кивает в ответ, внимательно смотря на актеров.~ */
  IF ~~ THEN REPLY #28170 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~Нахмурившись, она тихо отвечает: «Я наслаждаюсь представлением, сэр. Помолчите, пожалуйста».~ */
  IF ~~ THEN REPLY #28172 /* ~«Всего лишь несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~Она продолжает говорить тихим, но уже более напряженным тоном: «Я прошу вас сохранять тишину, сэр. Или же покиньте это место, иначе я буду вынуждена позвать стражников».~ */
  IF ~~ THEN REPLY #28174 /* ~«Отлично, зови их».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~Женщина кивает в знак приветствия, но всем своим видом указывает замолчать.~ */
  IF ~~ THEN REPLY #28176 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Уйти.~ */ EXIT
END
