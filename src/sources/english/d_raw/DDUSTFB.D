// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTFB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTFB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2305 /* ~You see a somber, pale-faced woman in black robes. She is staring into the distance and doesn't appear to notice you.~ */
  IF ~~ THEN REPLY #2306 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2307 /* ~Leave her in peace.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2308 /* ~You see a somber, pale-faced Dustwoman in black robes. She is staring into the distance and doesn't appear to notice you.~ */
  IF ~~ THEN REPLY #2313 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2314 /* ~Leave her in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2309 /* ~She turns slowly to face you. "Yes?"~ */
  IF ~~ THEN REPLY #2315 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #2316 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2310 /* ~She folds her arms into her robes and waits.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2317 /* ~"Do you know someone named Pharod?"~ */ JOURNAL #66588 /* ~One of the Dustmen told me that if I was looking for Pharod, I should speak to someone named 'Emoric' at the Gathering Dust Bar, a bar to the south and to the west of the Mortuary Front Gate. ~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2318 /* ~"I'm looking for a lost journal. Have you seen one?"~ */ GOTO 5
  IF ~~ THEN REPLY #2319 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2311 /* ~She shakes her head.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2320 /* ~"I'm looking for a lost journal. Have you seen one?"~ */ GOTO 5
  IF ~~ THEN REPLY #2321 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2312 /* ~She shakes her head.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2322 /* ~"Do you know where I can find someone named Pharod?"~ */ JOURNAL #66588 /* ~One of the Dustmen told me that if I was looking for Pharod, I should speak to someone named 'Emoric' at the Gathering Dust Bar, a bar to the south and to the west of the Mortuary Front Gate. ~ */ GOTO 6
  IF ~~ THEN REPLY #2323 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66589 /* ~"Pharod is a Collector." The woman studies you for a moment. "If you would wish to know more of him, I am told that Initiate Emoric in the Gathering Dust Bar also seeks him. It may be that he can help you."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66591 /* ~"Where is the Gathering Dust bar?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66592 /* ~"I'm familiar with the bar you speak of. Before heading there, I had some other questions for you..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66593 /* ~"The Gathering Dust Bar? That's to the southwest of here, right? I'll head there, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66590 /* ~"As one leaves the Mortuary Front Gate, head south and west. It lies past the memorial."~ */
  IF ~~ THEN REPLY #66594 /* ~"All right. I had some other questions before I go..."~ */ GOTO 3
  IF ~~ THEN REPLY #66595 /* ~"Very well. I will seek it out, then."~ */ EXIT
END
