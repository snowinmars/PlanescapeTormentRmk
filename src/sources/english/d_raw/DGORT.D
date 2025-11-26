// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGORT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGORT~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #1 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #51179 /* ~This huge creature stands over nine feet tall. Rippling muscles support its massive frame. It seems to be engaged in conversation with two similar creatures next to it. ~ */
  IF ~~ THEN REPLY #51180 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #51181 /* ~Ignore the creature.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #51182 /* ~He turns at your greeting and looks down and at you. A look of confusion crosses his features. "Gort greet small one."~ */
  IF ~~ THEN REPLY #51183 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51184 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 3.0
  SAY #51185 /* ~He gives you an apologetic look and shakes his head. "Gort not speaking well your talk. Sorry, you ask Thorp." He gestures to one of the creatures next to him.~ */
  IF ~~ THEN REPLY #51186 /* ~"All right, thank you."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 4 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #51187 /* ~You see Gort. He looks down at you and smiles. "Gort greet you times more once."~ */
  IF ~~ THEN REPLY #51188 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #51189 /* ~"Never mind, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Barsh_Abishai","GLOBAL",4)
~ THEN BEGIN 4 // from:
  SAY #51190 /* ~You see Gort. He bows low to you. "Gort greet you, friend. Gort thank you saving of life that his." He turns away.~ */
  IF ~~ THEN REPLY #51191 /* ~Leave.~ */ EXIT
END
