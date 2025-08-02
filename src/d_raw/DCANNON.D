// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCANNON.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCANNON~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 3 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from:
  SAY #66183 /* ~Это громадное устройство издает мощный гул. Оно похоже на гигантский цветок, не выращенный, а созданный, украшенный металлическими выпуклостями и выступами. У тебя просто глаза разбегаются от поразительного количества кнопок, индикаторов и клапанов.~ */
  IF ~  Global("Sabotage","GLOBAL",4)
~ THEN REPLY #66188 /* ~Саботировать огневой механизм у основания машины.~ */ DO ~SetGlobal("Sabotage","GLOBAL",5)
~ GOTO 1
  IF ~~ THEN REPLY #66189 /* ~Поиграться с кнопками.~ */ GOTO 2
  IF ~~ THEN REPLY #66190 /* ~Оставить его в покое.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #66185 /* ~Огневой механизм кажется угрожающе нестабильным. Быстрым движением ты срываешь его с креплений. Перемены в циклах вибрации ревущей машины едва заметны, но ты слышишь, как ее прежде стабильный гул начинает меняться. Тебе лучше уйти.~ */
  IF ~~ THEN REPLY #66191 /* ~Уйти.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #66186 /* ~Похоже, в текущий момент тебе ничего не удастся изменить.~ */
  IF ~~ THEN REPLY #66192 /* ~Уйти.~ */ EXIT
END

IF WEIGHT #0 ~  Global("Sabotage","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #66187 /* ~Мощный гул машины быстро приближается к кульминации. Тебе лучше уйти, пока взрыв машины не разорвал тебя на части.~ */
  IF ~~ THEN REPLY #66193 /* ~Уйти.~ */ DO ~TeleportParty("AR0502",[963.1377],14)
~ EXIT
END
