// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGOON2.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGOON2~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
CreatureInArea("AR0707")
~ THEN BEGIN 0 // from:
  SAY #53701 /* ~"No one wants you here, berk. You better leave before you get hurt." ~ */
  IF ~~ THEN REPLY #53702 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(1)
CreatureInArea("AR0707")
~ THEN BEGIN 1 // from:
  SAY #53703 /* ~"Last chance to leave on your own, stranger. You head out that door or there'll be a world of trouble."~ */
  IF ~~ THEN REPLY #53704 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 3 4 even though they appear after this state */
~  NumTimesTalkedTo(2)
CreatureInArea("AR0707")
~ THEN BEGIN 2 // from:
  SAY #53705 /* ~"You gotta do it the hard way, don't you, berk? You should've left while you could." There is a flash of steel!~ */
  IF ~~ THEN REPLY #53706 /* ~Attack.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  Global("Lynch_Mob","GLOBAL",0)
CreatureInArea("AR0900")
~ THEN BEGIN 3 // from:
  SAY #66781 /* ~This person's eyes are glazed with bloodlust, voice ragged from screaming hatred with the mouth of a mob. You find yourself thoroughly ignored.~ */
  IF ~~ THEN REPLY #66784 /* ~"Farewell, then."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Lynch_Mob","GLOBAL",1)
CreatureInArea("AR0900")
~ THEN BEGIN 4 // from:
  SAY #66782 /* ~"Thanks, friend. We've got a city to save..."~ */
  IF ~~ THEN REPLY #66783 /* ~"Good luck..."~ */ EXIT
END
