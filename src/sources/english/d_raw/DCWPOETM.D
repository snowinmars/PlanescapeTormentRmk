// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWPOETM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWPOETM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28210 /* ~This gentleman is closely watching an elderly poet giving a reading.~ */
  IF ~~ THEN REPLY #28211 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #28212 /* ~Leave the man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28213 /* ~The man turns to you, but the poet still holds most of his attention. He speaks in a hushed voice: "And greetings to you." He pauses for a moment, then whispers: "Not the greatest poetry I've ever heard, but certainly not awful, eh?"~ */
  IF ~~ THEN REPLY #28214 /* ~"I'm not sure, really."~ */ GOTO 2
  IF ~~ THEN REPLY #28215 /* ~"Yes, he's a poor poet."~ */ GOTO 2
  IF ~~ THEN REPLY #28216 /* ~"No, I think he's a good poet, actually."~ */ GOTO 2
  IF ~~ THEN REPLY #28217 /* ~"Never mind that... I have some questions..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28218 /* ~"Hmmm." The man nods and continues to watch the old poet.~ */
  IF ~~ THEN REPLY #28219 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #28220 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28221 /* ~He frowns at you, speaking in a low voice: "No, sir, not now. I'm listening to the man's poetry. Farewell, sir."~ */
  IF ~~ THEN REPLY #28222 /* ~"Just a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #28223 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28224 /* ~He still keeps his voice down, but uses a more threatening tone: "Be silent or leave, sir, before I am forced to summon the guards."~ */
  IF ~~ THEN REPLY #28225 /* ~"Fine, call them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28226 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28227 /* ~The man nods a greeting, but indicates for you to be silent.~ */
  IF ~~ THEN REPLY #28228 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #68103 /* ~Leave.~ */ EXIT
END
