// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~«О, Бездна, ты кто такой? Иди поговори с Гнилым Уильямом — если ему не понравятся твои ответы, он тебя прирежет. Если не поговоришь с ним, тебя прирежем мы. А теперь двигай!»~ */
  IF ~~ THEN REPLY #3550 /* ~Уйти.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~«Силы небесные! Разве я не сказал тебе поговорить с Гнилым Уильямом? Ты тупой пень. ЗАТОЧКИ! В АТАКУ!»~ */
  IF ~~ THEN REPLY #3552 /* ~Убежать.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Атаковать.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~«Так ты убил того борца за справедливость? Отлично. Он сильно вредил нашему стилю. Поговори с Уильямом — у него есть для тебя кое-что приятное».~ */
  IF ~~ THEN REPLY #3555 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~«Хватит болтать со мной, лучше избавься от этого борца за справедливость! Наши жизни в опасности, бедолага!»~ */
  IF ~~ THEN REPLY #3557 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~«Я знал, что эта самонадеянная девчонка когда-нибудь навернется. Поговори с Гнилым Уильямом. Ему найдется что тебе сказать».~ */
  IF ~~ THEN REPLY #3559 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~«Не будь бесполезным для общества, иди и убей!»~ */
  IF ~~ THEN REPLY #3561 /* ~Уйти.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~«Ты! Сдохни! ЗАТОЧКИ! В АТАКУ!»~ */
  IF ~~ THEN REPLY #3563 /* ~Атаковать.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Убежать.~ */ EXIT
END
