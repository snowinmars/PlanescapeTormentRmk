// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DJAS.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DJAS~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0701")
GlobalGT("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #57140 /* ~Девушка — волосы спутаны, одежда растрепана — сквозь всхлипывания пытается улыбнуться тебе. «Спасибо тебе! *Огромное* тебе спасибо! Меня зовут Джасилья. Послушай... Мне нужно бежать, спасибо тебе еще раз!»~ */
  IF ~~ THEN REPLY #57141 /* ~«Без проблем».~ */ DO ~EscapeArea()
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",1)
~ THEN BEGIN 1 // from:
  SAY #57142 /* ~Девушка смотрит на тебя, не отрывая взгляда. «Ты спас меня... *большое* тебе спасибо! Я бы погибла без тебя...» Она пытается тебя обнять.~ */
  IF ~  NearbyDialog("Dannah")
~ THEN REPLY #57143 /* ~Захватить ее в объятия и поцеловать.~ */ GOTO 6
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57144 /* ~Захватить ее в объятия и поцеловать.~ */ GOTO 8
  IF ~~ THEN REPLY #57145 /* ~Позволить ей обнять себя.~ */ GOTO 2
  IF ~~ THEN REPLY #57146 /* ~Отстраниться.~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.2
  SAY #57147 /* ~Она крепко тебя обнимает. Ее щека, влажная от слез, касается твоей груди. Через некоторое время она отпускает тебя, улыбаясь. «Я должна идти... Но позволь сказать тебе спасибо. Я никогда не забуду твою доброту. Прощай, странник».~ */
  IF ~  NearbyDialog("Dannah")
~ THEN EXTERN ~DANNAH~ 279
  IF ~  !NearbyDialog("Dannah")
~ THEN REPLY #57148 /* ~«Прощай».~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3
  SAY #57149 /* ~От смущения потупив взор, она краснеет. «Ой... Я не хотела... Ну... — она снова смотрит на тебя с улыбкой. — Прощай, странник, *огромное* тебе спасибо! Я никогда не забуду твою доброту».~ */
  IF ~~ THEN REPLY #57150 /* ~«Конечно. Прощай».~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0704")
~ THEN BEGIN 4 // from:
  SAY #57151 /* ~Когда ты подходишь, Джасилья, прекратив уборку, улыбается. «Здравствуй снова, мой мрачный спаситель! Спасибо тебе еще! Что я могу сделать для тебя?»~ */
  IF ~~ THEN REPLY #57152 /* ~«Я ищу место, где можно было бы провести ночь».~ */ GOTO 5
  IF ~~ THEN REPLY #57154 /* ~«В данный момент ничем. Прощай, Джасилья».~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #57155 /* ~Она улыбается. «О... Тогда тебе нужно поговорить с моим отцом».~ */
  IF ~~ THEN REPLY #57156 /* ~«Спасибо. Прощай, Джасилья».~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.0
  SAY #57157 /* ~Когда она пытается обнять тебя, ты обхватываешь ее руками и целуешь в губы.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 280
END

IF ~~ THEN BEGIN 7 // from:
  SAY #57158 /* ~Немного отступив, она осторожно освобождается от твоей хватки. Смущенно улыбнувшись, она говорит: «Э-э... Прощай, странник, и спасибо тебе. Я... Я никогда не забуду твою доброту».~ */
  IF ~~ THEN REPLY #57159 /* ~«Конечно. Прощай».~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.1
  SAY #57160 /* ~Когда она пытается обнять тебя, ты обхватываешь ее руками и целуешь в губы. Немного отступив, она осторожно освобождается от твоей хватки. Смущенно улыбнувшись, она говорит: «Э-э... Прощай, странник, и спасибо тебе. Я... Я никогда не забуду твою доброту».~ */
  IF ~~ THEN REPLY #57161 /* ~«Конечно. Прощай».~ */ DO ~AddexperienceParty(75000)
EscapeArea()
~ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 10 even though they appear after this state */
~  CreatureInArea("AR0900")
Global("Benny","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #67818 /* ~Задыхаясь, девушка произносит: «Пожалуйста... пожалуйста... спаси меня от этих людей...»~ */
  IF ~~ THEN REPLY #67819 /* ~«Отлично. Прощай».~ */ EXIT
END

IF WEIGHT #0 ~  CreatureInArea("AR0701")
Global("Skatch_Dead_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #68097 /* ~«Помоги! Пожалуйста, убей их, пока они не угнали меня в рабство!»~ */
  IF ~~ THEN REPLY #68098 /* ~«Я сделаю все, что в моих силах...»~ */ EXIT
END
