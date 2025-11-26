// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2825 /* ~"What ho, traveler! You're in Razor Angel territory now... go talk to Krystall, our leader. She'll have something to say to you."~ */
  IF ~~ THEN REPLY #3365 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3565 /* ~"Listen to what I'm saying: Don't talk to me. Talk to Krystall. Talk to Krystall. Talk to Krystall. Get the picture?"~ */
  IF ~~ THEN REPLY #3566 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3567 /* ~"Hey, pally... thanks for taking out that vigilante. I'm sure I speak for everyone when I say we appreciate it. Krystall surely does."~ */
  IF ~~ THEN REPLY #3568 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3569 /* ~"Sure appreciate the help with the vigilante. Good luck with it!"~ */
  IF ~~ THEN REPLY #3570 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3571 /* ~"That'll drive the Darkalley Shivs away! The Alley is ours now!"~ */
  IF ~~ THEN REPLY #3572 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3573 /* ~"Teach those Darkalley Shivs a lesson!"~ */
  IF ~~ THEN REPLY #3574 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3575 /* ~"You dare show your face around here? Die, evil one!"~ */
  IF ~~ THEN REPLY #3576 /* ~Leave.~ */ DO ~Enemy()
SetGlobal("0301_Good_Angry","AR0301",1)
~ EXIT
END
