// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSBAUR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSBAUR~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #45379 /* ~You see the tall figure of a creature standing before you. The lower portion of its body resembles that of a goat. However, just above its powerful forelegs, its shape takes on a more human appearance, with a man's torso, arms, and head - all of which are covered in polished armor. The creature's eyes are closed and it appears to be sleeping.~ */
  IF ~~ THEN REPLY #45382 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #45383 /* ~Let the creature sleep.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #45380 /* ~The creature snorts briefly, but its eyes remain shut. Apparently, it is not a light sleeper.~ */
  IF ~~ THEN REPLY #45384 /* ~Let the creature sleep.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #45381 /* ~The half-man, half-goat is still deep asleep. ~ */
  IF ~~ THEN REPLY #45385 /* ~Let the creature sleep.~ */ EXIT
END
