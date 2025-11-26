// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGRACEF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DGRACEF~

IF ~  Global("Grace_Death_Scene","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #63324 /* ~«Значит, ты и есть паук, сидящий в центре всего этого».~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("1201csG4",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #63325 /* ~«У меня есть много вопросов, на которые ты мог бы ответить. Твой цели в этом деле не совсем ясны».~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 10
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalLT("Fortress_Party","GLOBAL",3)
~ THEN BEGIN 2 // from:
  SAY #63326 /* ~«Мое сердце вовсе не черное, и я не боюсь за свою жизнь».~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #63327 /* ~«Один дорогой мне человек находится в твоей крепости. Я не уйду, пока мы снова не встретимся и он не найдет удовлетворительное решение в этом деле».~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~  Global("Grace_Death_Scene","GLOBAL",2)
GlobalGT("Fortress_Party","GLOBAL",2)
~ THEN BEGIN 4 // from:
  SAY #63328 /* ~«Мое сердце вовсе не черное, и я не боюсь за свою жизнь».~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #63329 /* ~«Мои товарищи, мои друзья находятся в твоей крепости. Я не уйду, пока мы снова не встретимся, и тот, за кем мы следуем, не найдет удовлетворительное решение в этом деле».~ */
  IF ~~ THEN DO ~SetGlobal("Grace_Death_Scene","GLOBAL",3)
StartCutSceneMode()
StartCutSceneEx("1201csG6",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #63330 /* ~«Я вынуждена дать отказ твоему предложению покинуть моих друзей, каким бы милосердным оно ни было».~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #63331 /* ~«Что касается 'небольшой' цены, которую он заплатит, то для него она равноценна смерти. Я долгое время путешествовала с этим человеком, и есть вещи, которые я бы не хотела, чтобы он забыл».~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 13
END

IF ~~ THEN BEGIN 8 // from:
  SAY #63332 /* ~«Это *твое* мнение».~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #63333 /* ~«Как бы там ни было, я не хочу, чтобы он забыл меня или все то, за что он боролся, добираясь сюда».~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #63334 /* ~«Он много выстрадал, и я поддержу скорее его, чем то надменное существо, которое кичится сейчас передо мной и дерется, как дерутся *трусы*, предпочитая убивать издалека, чтобы противник не мог его достать».~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #63335 /* ~«Ты больше не будешь его мучить».~ */
  IF ~~ THEN EXTERN ~DTRANSF~ 15
END
