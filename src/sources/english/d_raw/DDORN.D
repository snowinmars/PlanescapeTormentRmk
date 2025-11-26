// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDORN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDORN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #57946 /* ~You see a middle aged man. He looks at you with interest as you approach. "Good day, cutter."~ */
  IF ~~ THEN REPLY #57947 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #57948 /* ~Ignore him.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #57949 /* ~He gives you a slight bow. "I'm Dorn. Can I interest you in my wares?"~ */
  IF ~~ THEN REPLY #57950 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #57951 /* ~"Show me what you have."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57952 /* ~"No, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #57953 /* ~He shakes his head. "I don't have time for questions right now. Another day perhaps."~ */
  IF ~~ THEN REPLY #57954 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57955 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 3 // from:
  SAY #57958 /* ~You see Dorn, the merchant. He smiles at you. "Again we meet. How may I serve you?"~ */
  IF ~~ THEN REPLY #57960 /* ~"Show me your wares."~ */ DO ~StartStore("CrstG3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #57962 /* ~"Farewell."~ */ EXIT
END
