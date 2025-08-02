// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250303)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\ru_RU\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~«Здесь тебе не рады, пень. Убирайся подобру-поздорову».~ */
  IF ~~ THEN REPLY #53702 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~«Странник, это твой последний шанс уйти по-доброму. Либо ты выйдешь за дверь, либо наживешь себе кучу неприятностей».~ */
  IF ~~ THEN REPLY #53704 /* ~«Прощай».~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~«Значит, хочешь по-плохому, пень? Лучше б ты свалил, пока мог». Сверкает сталь!~ */
  IF ~~ THEN REPLY #53706 /* ~Атаковать.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~Глаза этого человека остекленели от жажды крови, голос сорван от яростных криков в толпе. Похоже, он на тебя совершенно не обращает внимание.~ */
  IF ~~ THEN REPLY #66784 /* ~«Тогда прощай». ~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~«Спасибо, друг. Нам еще город спасать...»~ */
  IF ~~ THEN REPLY #66783 /* ~«Удачи...»~ */ EXIT
END
