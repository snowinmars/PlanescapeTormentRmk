// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTF.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTF~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28158 /* ~This attractive young woman is closely watching a pair of performing actors.~ */
  IF ~~ THEN REPLY #28164 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #28165 /* ~Leave the woman alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28159 /* ~The woman turns to you, but the actors still hold most of her attention. She speaks in a hushed voice: "Well met, sir. Have you been watching long? The one on the left is not bad, but his partner could use some more training, no?"~ */
  IF ~~ THEN REPLY #28166 /* ~"I'm not sure, really."~ */ GOTO 2
  IF ~~ THEN REPLY #28167 /* ~"Yes, he's a poor actor."~ */ GOTO 2
  IF ~~ THEN REPLY #28168 /* ~"No, I think he's a good actor, actually."~ */ GOTO 2
  IF ~~ THEN REPLY #28169 /* ~"Never mind that... I have some questions..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28160 /* ~The woman only nods in reply, and returns to watching the actors intently.~ */
  IF ~~ THEN REPLY #28170 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #28171 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28161 /* ~She frowns at you, speaking in a low voice: "Please, sir, be more courteous: I'm enjoying the performance. Farewell."~ */
  IF ~~ THEN REPLY #28172 /* ~"Just a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #28173 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28162 /* ~She still keeps her voice down, but uses a more threatening tone: "I ask that you silence yourself, sir, or leave this place, lest you force me to call the guards."~ */
  IF ~~ THEN REPLY #28174 /* ~"Fine, call them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28175 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28163 /* ~The woman nods a greeting, but indicates for you to be silent.~ */
  IF ~~ THEN REPLY #28176 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #68100 /* ~Leave.~ */ EXIT
END
