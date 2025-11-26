// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DZERB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DZERB~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51192 /* ~This huge creature stands over nine feet tall. Rippling muscles support its massive frame. It seems to be engaged in conversation with two similar creatures next to it. ~ */
  IF ~~ THEN REPLY #51193 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #51194 /* ~Ignore the creature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51195 /* ~He turns at your greeting and begins to look about. After a moment he looks down and notices you. A look of confusion crosses his features. "What you want of Zerb?"~ */
  IF ~~ THEN REPLY #51196 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51197 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51198 /* ~He gives you an apologetic look and shakes his head. "Zerb not speak language well. Sorry, you talk Thorp." He gestures to one of the creatures next to him.~ */
  IF ~~ THEN REPLY #51199 /* ~"All right, thank you."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51200 /* ~You see Zerb. He looks down at you and smiles. "Zerb greet you again."~ */
  IF ~~ THEN REPLY #51201 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51202 /* ~"Never mind, farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51203 /* ~You see Zerb. He looks down at you and bows. "Zerb greet you, friend. Zerb thank you for saving life." He turns away.~ */
  IF ~~ THEN REPLY #51204 /* ~Leave.~ */ EXIT
END
