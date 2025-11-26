// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKILNN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKILNN~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #42075 /* ~This man's face closely resembles Pestle Kilnn's, though without the crawling skin and constant, subtle mutations. "Greetin's, again... da name's Kilnn. Need ye somethin'?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42076 /* ~"I was hoping to get some healing concoctions."~ */ GOTO 2
  IF ~~ THEN REPLY #42077 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #42078 /* ~"I wanted to buy something..."~ */ GOTO 4
  IF ~~ THEN REPLY #42079 /* ~"Just passing by, actually. Farewell, Kilnn."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #42080 /* ~You see Kilnn, the alchemist's assistant. "Greetin's, again... need ye somethin'?"~ */
  IF ~  Global("Pestle_Kilnn","AR0612",2)
~ THEN REPLY #42081 /* ~"I was hoping to get some healing concoctions."~ */ GOTO 2
  IF ~~ THEN REPLY #42082 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #42083 /* ~"I wanted to buy something..."~ */ GOTO 4
  IF ~~ THEN REPLY #42084 /* ~"Just passing by, actually. Farewell, Kilnn."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #42085 /* ~"Did ya talk ta Pestle, yet? He's da one dat'll handle it for ya."~ */
  IF ~~ THEN REPLY #42086 /* ~"I'll go speak with him, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.1 1.1
  SAY #42087 /* ~"I work in da stock-room all day, I do... I'm no good ta ask yer questions of."~ */
  IF ~  Global("Dream","GLOBAL",1)
Global("PK_Scraping","AR0612",0)
~ THEN REPLY #42088 /* ~"The old engineer in the Foundry tells me I need to get a sample of my blood and skin for his machine to work. I need you to do that for me."~ */ GOTO 4
  IF ~~ THEN REPLY #42089 /* ~"Could I buy something, then?"~ */ GOTO 4
  IF ~~ THEN REPLY #42090 /* ~"In that case, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.2 1.2 3.0 3.1
  SAY #42091 /* ~"Ye'll have ta talk ta Pestle about dat, ya will. He handles all dat sort a' stuff."~ */
  IF ~~ THEN REPLY #42092 /* ~"I'll go speak with him, then. Farewell."~ */ EXIT
END
