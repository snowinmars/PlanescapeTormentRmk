// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMURK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMURK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58784 /* ~You see a merchant, there is nothing remarkable about him. He smiles and nods at your approach.~ */
  IF ~~ THEN REPLY #58785 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58786 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58789 /* ~He nods curtly to you. "And to you as well. I'm Murk, you interested in some goods?"~ */
  IF ~~ THEN REPLY #58790 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58791 /* ~"What do you carry?"~ */ GOTO 3
  IF ~~ THEN REPLY #58792 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58793 /* ~He shakes his head and frowns. "I don't sell information. If it's questions you have, take them elsewhere."~ */
  IF ~~ THEN REPLY #58794 /* ~"All right, what do you carry?"~ */ GOTO 3
  IF ~~ THEN REPLY #58795 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 4.0
  SAY #58796 /* ~His eyes light up and he smiles wickedly. "Well... I happen to carry a fine selection of gauntlets and axes. The only thing better than beating something to a pulp with your own two hands is slicing it into quivering pieces."~ */
  IF ~~ THEN REPLY #58797 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58798 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #58799 /* ~You see Murk, the merchant. He nods at your approach. "Hello again. What can I do for you?"~ */
  IF ~~ THEN REPLY #58800 /* ~"What do you carry?"~ */ GOTO 3
  IF ~~ THEN REPLY #58801 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58802 /* ~"Farewell."~ */ EXIT
END
