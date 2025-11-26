// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28196 /* ~This attractive young woman is closely watching an elderly poet giving a reading.~ */
  IF ~~ THEN REPLY #28197 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #28653 /* ~Leave the woman alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28198 /* ~The woman turns to you, but the poet still holds most of her attention. She speaks in a hushed voice: "I'll trust you to keep your voice down, sir." She nods towards the poet. "Not a classic, certainly, but the old fellow *does* have potential."~ */
  IF ~~ THEN REPLY #28199 /* ~"I'm not sure, really."~ */ GOTO 2
  IF ~~ THEN REPLY #28209 /* ~"Yes, he's a poor poet."~ */ GOTO 2
  IF ~~ THEN REPLY #28654 /* ~"No, I think he's a good poet, actually."~ */ GOTO 2
  IF ~~ THEN REPLY #28655 /* ~"Never mind that... I have some questions..."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28200 /* ~The woman nods slowly, her eyes still on the poet.~ */
  IF ~~ THEN REPLY #28201 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #28208 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0
  SAY #28202 /* ~She frowns at you, speaking in a low voice: "Now is not the time, sir. Please respect the poet and keep silent... farewell."~ */
  IF ~~ THEN REPLY #28203 /* ~"Just a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #28207 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28204 /* ~She still keeps her voice down, but uses a more threatening tone: "This is neither a time nor place for questions, sir. Leave me be or I'll call the guard."~ */
  IF ~~ THEN REPLY #28205 /* ~"Fine, call them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28206 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28650 /* ~The woman nods a greeting, but indicates for you to be silent.~ */
  IF ~~ THEN REPLY #28656 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #68102 /* ~Leave.~ */ EXIT
END
