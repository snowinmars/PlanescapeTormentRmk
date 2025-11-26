// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DAALEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DAALEK~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #33862 /* ~You see an older man with long, white hair and weathered yellow skin. He stands tall despite his obvious age. He smiles and gives you a slight bow.~ */
  IF ~~ THEN REPLY #33863 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #33864 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #33865 /* ~"And to you as well, cutter. How may I serve you?" He raises his eyebrows as he awaits your answer.~ */
  IF ~~ THEN REPLY #33866 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #33867 /* ~"I'm interested in some spells."~ */ GOTO 5
  IF ~~ THEN REPLY #33868 /* ~"I'm interested in what you have for sale."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33869 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #33870 /* ~He frowns. "Forgive me, cutter, but I sell items of a magical nature, not information. If it is information you need, then you must acquire it elsewhere."~ */
  IF ~~ THEN REPLY #33871 /* ~"I'm interested in some spells."~ */ GOTO 5
  IF ~~ THEN REPLY #33872 /* ~"Show me what you have for sale."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33873 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #33874 /* ~Null node~ */
  IF ~~ THEN EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 4 // from:
  SAY #33877 /* ~You see Aalek, the merchant of magic. "Good day, cutter. It is nice to see you again. How may I serve you?"~ */
  IF ~~ THEN REPLY #33878 /* ~"Let me see your wares again."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33879 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.1 2.0
  SAY #33880 /* ~He nods and glances about the market. "Forgive me, cutter, I only sell magical items. You should talk to Cinder. His stall is over by the furnace, toward the exit."~ */
  IF ~~ THEN REPLY #33881 /* ~"Show me what you have for sale."~ */ DO ~StartStore("Alekstr",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #33882 /* ~"Thank you, farewell."~ */ EXIT
END
