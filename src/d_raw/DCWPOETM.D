// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~Этот джентльмен увлеченно слушает декламирующего пожилого поэта.~ */
  IF ~~ THEN REPLY #28211 /* ~«Приветствую...»~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Оставить мужчину в покое.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~Мужчина поворачивается к тебе, но его внимание все еще занимает поэт. Он тихо отвечает: «Взаимно». На секунду он умолкает, затем шепотом отвечает: «Не самое лучшее стихотворение из тех, что я слышал, но ведь не так уж и плохо, а?»~ */
  IF ~~ THEN REPLY #28214 /* ~«Я не уверен в этом».~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~«Да, поэт он неважный».~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~«Нет, мне кажется, что он хороший поэт».~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~«Тогда неважно... У меня есть несколько вопросов...»~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~«Хм-м-м». Мужчина кивает и продолжает следить за старым поэтом.~ */
  IF ~~ THEN REPLY #28219 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~Нахмурившись, он тихо отвечает: «Нет, сэр, не сейчас. Я слушаю стихи. Прощайте, сэр».~ */
  IF ~~ THEN REPLY #28222 /* ~«Всего лишь несколько вопросов...»~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Уйти.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~В его тихом голосе появляются угрожающие нотки. «Либо не шумите, либо уходите, сэр, иначе я вынужден буду позвать стражников».~ */
  IF ~~ THEN REPLY #28225 /* ~«Отлично, зови их».~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~Мужчина кивает в знак приветствия, но всем своим видом указывает замолчать.~ */
  IF ~~ THEN REPLY #28228 /* ~«У меня есть несколько вопросов...» ~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Уйти.~ */ EXIT
END
