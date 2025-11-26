// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCWACTM.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCWACTM~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #28177 /* ~This gentleman is closely watching a pair of performing actors.~ */
  IF ~~ THEN REPLY #28178 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #28193 /* ~Leave the man alone.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #28179 /* ~The man turns to you, but the actors still hold most of his attention. He speaks in a hushed voice: "Yes, greetings. So, what do you think? The one on the right is not bad, but his partner could use some more training, no?"~ */
  IF ~~ THEN REPLY #28180 /* ~"I'm not sure, really."~ */ GOTO 2
  IF ~~ THEN REPLY #28190 /* ~"Yes, he's a poor actor."~ */ GOTO 2
  IF ~~ THEN REPLY #28191 /* ~"No, I think he's a good actor, actually."~ */ GOTO 2
  IF ~~ THEN REPLY #28192 /* ~"Never mind that... I have some questions..."~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #28181 /* ~"Hmmm." The man returns to watching the actors intently.~ */
  IF ~~ THEN REPLY #28182 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #28189 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.3 2.0 5.0
  SAY #28183 /* ~He frowns at you, speaking in a low voice: "Not now; I'm watching their performance. Farewell, sir."~ */
  IF ~~ THEN REPLY #28184 /* ~"Just a few questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #28188 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #28185 /* ~He still keeps his voice down, but uses a more threatening tone: "No. Leave me be, sir, lest you force me to have you taken away by the guards."~ */
  IF ~~ THEN REPLY #28186 /* ~"Fine, call them."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Audience_1","GLOBALLaw",-1)
IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #28187 /* ~Leave.~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 5 // from:
  SAY #28194 /* ~The man nods a greeting, but indicates for you to be silent.~ */
  IF ~~ THEN REPLY #28195 /* ~"I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #68101 /* ~Leave.~ */ EXIT
END
