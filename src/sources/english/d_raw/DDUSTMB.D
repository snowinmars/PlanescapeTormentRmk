// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DDUSTMB.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DDUSTMB~

IF ~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2324 /* ~You see a somber, pale-faced man in black robes. He doesn't appear to notice you.~ */
  IF ~~ THEN REPLY #2330 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2331 /* ~Leave him in peace.~ */ EXIT
END

IF ~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2325 /* ~You see a somber, pale-faced Dustman in black robes. He doesn't appear to notice you.~ */
  IF ~~ THEN REPLY #2332 /* ~"Greetings."~ */ GOTO 2
  IF ~~ THEN REPLY #2333 /* ~Leave him in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2326 /* ~He turns slowly to face you. "Yes?"~ */
  IF ~~ THEN REPLY #2334 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #2335 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 6.1 7.0
  SAY #2327 /* ~He folds his arms into his robes and waits.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2336 /* ~"Do you know where I can find someone named Pharod?"~ */ JOURNAL #66588 /* ~One of the Dustmen told me that if I was looking for Pharod, I should speak to someone named 'Emoric' at the Gathering Dust Bar, a bar to the south and to the west of the Mortuary Front Gate. ~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2337 /* ~"I'm looking for a lost journal. Have you seen one?"~ */ GOTO 5
  IF ~~ THEN REPLY #2338 /* ~"Nothing, never mind."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #2328 /* ~He shakes his head.~ */
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2339 /* ~"I'm looking for a lost journal. Have you seen one?"~ */ GOTO 5
  IF ~~ THEN REPLY #2340 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #2329 /* ~He shakes his head.~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2341 /* ~"Do you know where I can find someone named Pharod?"~ */ JOURNAL #66588 /* ~One of the Dustmen told me that if I was looking for Pharod, I should speak to someone named 'Emoric' at the Gathering Dust Bar, a bar to the south and to the west of the Mortuary Front Gate. ~ */ GOTO 6
  IF ~~ THEN REPLY #2342 /* ~"Thanks anyway. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 5.0
  SAY #66581 /* ~"Pharod is a Collector." The man studies you for a moment. "If you would wish to know more of him, I am told that Initiate Emoric in the Gathering Dust Bar also seeks him. It may be that he can help you."~ */
  IF ~  Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66582 /* ~"Where is the Gathering Dust bar?"~ */ GOTO 7
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66586 /* ~"I'm familiar with the bar you speak of. Before heading there, I had some other questions for you..."~ */ GOTO 3
  IF ~  GlobalGT("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #66583 /* ~"The Gathering Dust Bar? That's to the southwest of here, right? I'll head there, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #66584 /* ~"As one leaves the Mortuary Front Gate, head south and west. It lies past the memorial."~ */
  IF ~~ THEN REPLY #66585 /* ~"All right. I had some other questions before I go..."~ */ GOTO 3
  IF ~~ THEN REPLY #66587 /* ~"Very well. I will seek it out, then."~ */ EXIT
END
