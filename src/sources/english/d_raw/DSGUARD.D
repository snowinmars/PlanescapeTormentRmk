// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSGUARD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSGUARD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalLT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 0 // from:
  SAY #46767 /* ~"Sorry, sir. No one's allowed up here till the factor Sandoz gets back. You can't go in."~ */
  IF ~~ THEN REPLY #46768 /* ~"What can you tell me about him?"~ */ GOTO 1
  IF ~~ THEN REPLY #46906 /* ~"All right. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #46907 /* ~"He's a believer, sir, a true believer - but he's moody and all that travel across the multiverse can't be good for your head. You either lose perspective or get too much of it. Either way, it ain't good. I'm hoping he'll make it back safe."~ */
  IF ~~ THEN REPLY #46908 /* ~"We'll see, I suppose. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedTo(0)
~ THEN BEGIN 2 // from:
  SAY #46909 /* ~"Greetings, sir. Did Keldor send you? Sandoz came up here and he's been raving and muttering behind the door all day. I hope you can do something for him."~ */
  IF ~~ THEN REPLY #46910 /* ~"We'll see about that." Call through the door: "Sandoz! I need to talk to you!"~ */ EXTERN ~DSANDOZ~ 0
END

IF WEIGHT #5 /* Triggers after states #: 5 6 4 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
!Global("G_Test3","GLOBAL",7)
Global("Sandoz_Dead_KAPUTZ","GLOBAL",0)
NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #46911 /* ~"Need to talk to Sandoz, sir? Good luck..."~ */
  IF ~~ THEN REPLY #46912 /* ~"Thanks." Call through the door: "Sandoz! We've got to talk!"~ */ EXTERN ~DSANDOZ~ 1
END

IF WEIGHT #1 ~  GlobalGT("Join_Godsmen","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #46913 /* ~"Sir." The guard seems unwilling to speak further.~ */
  IF ~~ THEN REPLY #46914 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 6 even though they appear after this state */
~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",7)
~ THEN BEGIN 5 // from:
  SAY #63354 /* ~The guard stares bitterly at you. "He's dead already. Aren't you happy with yourself? Go down and talk to Keldor."~ */
  IF ~~ THEN REPLY #63355 /* ~"Fine. Farewell."~ */ EXIT
END

IF WEIGHT #2 ~  Global("Join_Godsmen","GLOBAL",4)
Global("G_Test3","GLOBAL",6)
~ THEN BEGIN 6 // from:
  SAY #64646 /* ~"Sir." The guard seems unwilling to speak further.~ */
  IF ~~ THEN REPLY #64647 /* ~"Farewell."~ */ EXIT
END
