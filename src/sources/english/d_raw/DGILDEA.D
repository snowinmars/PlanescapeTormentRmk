// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGILDEA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGILDEA~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #58500 /* ~You see a young woman. She appears to be quite bored. She perks up at your approach. "Good day to you, cutter. May I help you?"~ */
  IF ~~ THEN REPLY #58501 /* ~"Greetings."~ */ EXIT
  IF ~~ THEN REPLY #58502 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from:
  SAY #58503 /* ~She smiles. "I am Gildea. Would you care to see my wares?"~ */
  IF ~~ THEN REPLY #58504 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #58505 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58506 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #58507 /* ~She shakes her head. "I am a simple merchant, I have no answers for you."~ */
  IF ~~ THEN REPLY #58508 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58509 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #58510 /* ~You see Gildea the merchant. She smiles at you. "Welcome back. What can I do for you?"~ */
  IF ~~ THEN REPLY #58511 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #58512 /* ~"Nothing, farewell."~ */ EXIT
END
