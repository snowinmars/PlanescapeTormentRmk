// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDNMERCH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDNMERCH~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #50999 /* ~You see a skeleton bouncing from the ball of one foot to another. Air whistles from between its teeth. It looks very, very bored. At your approach, its demeanor changes entirely. "Welcome, welcome! I've got a host of items for your perusal, fresh from the latest berks who've been trying to loot the quiet ones. Would you like to see them?"~ */
  IF ~~ THEN REPLY #51002 /* ~"Yes. Show me what you've got."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51001 /* ~"No. Instead, I'd like you to answer me some questions."~ */ GOTO 1
  IF ~~ THEN REPLY #51003 /* ~"No. My mistake. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #51004 /* ~He sighs. "Look, I know I've got eternity to stand around and gossip until the cows come home, but the truth is I don't like dealing with the living, all right? I take this stuff from the living before they die and I sell it to other deaders, so if it's all the same to you, I'd rather just conclude the transaction and go home, all right? So. You want to see what I have? Fine. I'll show it to you. Otherwise, leave me alone."~ */
  IF ~~ THEN REPLY #51006 /* ~"Show me what you have."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51005 /* ~"Forget it, then."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 2 // from:
  SAY #51007 /* ~"Oh. You again. What do you want now?"~ */
  IF ~~ THEN REPLY #51008 /* ~"Are you going to answer any of my questions?"~ */ GOTO 3
  IF ~~ THEN REPLY #51009 /* ~"Do you have any new wares to offer?"~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51010 /* ~"Nothing. My mistake. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #51011 /* ~"No." He looks around behind you. "I'd rather stare at the wall, frankly." He looks back at you. "Are you going to buy something or not?"~ */
  IF ~~ THEN REPLY #51012 /* ~"I guess I will."~ */ DO ~StartStore("Gaerien",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #51034 /* ~"No, I don't think so."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #51035 /* ~"Good day, then." He continues to whistle tunelessly behind his white, white teeth.~ */
  IF ~~ THEN REPLY #51036 /* ~"Good day."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Undead_Alert","AR1500",1)
~ THEN BEGIN 5 // from:
  SAY #51037 /* ~The merchant looks unimpressed, despite the clamor of the area. "Come to put me down then, eh? Go ahead. I don't care."~ */
  IF ~~ THEN REPLY #51038 /* ~"You really don't care?"~ */ GOTO 6
  IF ~~ THEN REPLY #51039 /* ~"Let's put that to the test."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51040 /* ~"Then I'll leave you be. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #51041 /* ~"Of course not. I died horribly a long time ago. I'm not worried about anything you could possibly do to me. Pain means nothing. All I have now is consciousness, and I don't value that so highly that I'll fight you for it."~ */
  IF ~~ THEN REPLY #51042 /* ~"Good. Die."~ */ DO ~Enemy()
ForceAttack(Protagonist,"DNMerch")
~ EXIT
  IF ~~ THEN REPLY #51043 /* ~"Interesting. Farewell, then."~ */ EXIT
END
