// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBATHUG.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBATHUG~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2826 /* ~"Who in the Abyss are you? Go talk to Rotten William - he don't like your answers, you'll get cut. You don't talk to him, you'll get cut by the rest of us. Now go!"~ */
  IF ~~ THEN REPLY #3550 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #3551 /* ~"Powers above! Didn't I tell you to talk to Rotten William? You stupid, stupid berk. DARKALLEY SHIVS! ATTACK!"~ */
  IF ~~ THEN REPLY #3552 /* ~Run away.~ */ EXIT
  IF ~~ THEN REPLY #3553 /* ~Attack.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 2 // from:
  SAY #3554 /* ~"You killed that vigilante? Good. He was really crimping our style. Talk to William - he'll get you something nice."~ */
  IF ~~ THEN REPLY #3555 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 3 // from:
  SAY #3556 /* ~"Stop talkin' to me and get rid of that stinkin' vigilante! Our lives are in danger, sod!"~ */
  IF ~~ THEN REPLY #3557 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 4 // from:
  SAY #3558 /* ~"I knew that self-righteous wench'd get herself knocked off sometime. Go talk to Rotten William. He's got something to say to you."~ */
  IF ~~ THEN REPLY #3559 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 5 // from:
  SAY #3560 /* ~"Don't you have a worthless waste of space to go kill?"~ */
  IF ~~ THEN REPLY #3561 /* ~Leave.~ */ EXIT
END

IF ~  False()
~ THEN BEGIN 6 // from:
  SAY #3562 /* ~"You! Die! DARKALLEY SHIVS! ATTACK!"~ */
  IF ~~ THEN REPLY #3563 /* ~Attack.~ */ DO ~Enemy()
SetGlobal("0301_Bad_Angry","AR0301",1)
~ EXIT
  IF ~~ THEN REPLY #3564 /* ~Run away.~ */ EXIT
END
