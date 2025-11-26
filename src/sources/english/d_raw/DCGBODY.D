// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCGBODY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCGBODY~

IF ~  Global("Gatehead_Talk","GLOBAL",0)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 0 // from:
  SAY #47032 /* ~As you approach, the rotting heads on the gate begin to speak to you, chanting words back and forth between themselves to form coherent sentences. "Gone, gone. Lost to the betrayer, lost to the light."~ */
  IF ~~ THEN REPLY #47033 /* ~"What happened to the town?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 1
  IF ~~ THEN REPLY #47034 /* ~"What happened to you?"~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
~ GOTO 2
  IF ~~ THEN REPLY #47035 /* ~"Thanks for the update. Farewell."~ */ DO ~SetGlobal("bd_heads_talk_once","ar0800",1)
TriggerActivation("Bd_gate_heads",TRUE)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0 2.2 3.0 7.0
  SAY #47036 /* ~"Gone on the wind, swept on a tide of evil. Through the gate, gone, gone. The town, gone, lost to its own hatred. Through the gate, into the Red Prison, the prison plane... Carceri."~ */
  IF ~~ THEN REPLY #47037 /* ~"Carceri? Tell me about Carceri."~ */ GOTO 13
  IF ~~ THEN REPLY #47038 /* ~"Can't you speak normally?"~ */ GOTO 6
  IF ~~ THEN REPLY #47039 /* ~"What happened to you?"~ */ GOTO 2
  IF ~~ THEN REPLY #47040 /* ~"Do you have any idea how to get there or get it back here?"~ */ GOTO 4
  IF ~~ THEN REPLY #47041 /* ~"I have no time for this. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.2 6.0 7.1 13.1
  SAY #47042 /* ~"Betrayed, despised, framed... punished, executed, made an example of. Hung here by enemies. Lost, lost, lost."~ */
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",0)
~ THEN REPLY #47043 /* ~"Is it just me, or are there far too many talking, disembodied heads around these days?"~ */ DO ~GiveExperience(Protagonist,3000)
SetGlobal("Ghead_Exp","AR0800",1)
~ GOTO 3
  IF ~  CheckStatGT(Protagonist,20,INT)
Global("Ghead_Exp","AR0800",1)
~ THEN REPLY #47044 /* ~"Is it just me, or are there far too many talking, disembodied heads around these days?"~ */ GOTO 3
  IF ~~ THEN REPLY #47045 /* ~"Where is everyone?"~ */ GOTO 1
END

IF ~~ THEN BEGIN 3 // from: 2.0 2.1
  SAY #47046 /* ~The heads pause. They look at each other for a moment, and then look back at you. They hang shamefully from the gate.~ */
  IF ~~ THEN REPLY #47047 /* ~"All right. What happened to Curst?"~ */ GOTO 1
  IF ~~ THEN REPLY #47048 /* ~"All right. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 6.1 13.2
  SAY #47049 /* ~"Through the gate, into the prison... no return from the prison, no return. Go through the gate, go through the gate... your destiny awaits you there."~ */
  IF ~~ THEN REPLY #47050 /* ~"What do you know about my destiny?"~ */ JOURNAL #39483 /* ~The heads on the gate to Carceri have told me that the town has been lost to evil and was sucked through the gate into Carceri. They tell me my destiny lies on the other side of the gate.~ */ GOTO 5
  IF ~~ THEN REPLY #47051 /* ~"Thanks. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #47052 /* ~"The deva awaits you." The heads fall silent, and do not react to further questions.~ */
  IF ~~ THEN REPLY #47053 /* ~"Farewell, then."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.1 13.0
  SAY #47054 /* ~"Beyond the veil all is... shadowed, illuminated. Nothing translates. Nothing easy. No."~ */
  IF ~~ THEN REPLY #47055 /* ~"All right, then, what happened to you?"~ */ GOTO 2
  IF ~~ THEN REPLY #47056 /* ~"Do you have any idea how to get to the city, or to bring the city back here?"~ */ GOTO 4
  IF ~~ THEN REPLY #47057 /* ~"All right, then. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 7 // from:
  SAY #47058 /* ~The heads are silent at first, but then slowly build from a small whisper of sound into a full-fledged conversation.~ */
  IF ~~ THEN REPLY #47059 /* ~"What happened to Curst?"~ */ GOTO 1
  IF ~~ THEN REPLY #47060 /* ~"What happened to you?"~ */ GOTO 2
  IF ~~ THEN REPLY #47061 /* ~"Forget it. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",0)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 8 // from:
  SAY #47062 /* ~As you approach the gate, the rotting heads that adorn the razorvine-covered archways speak at you, their voices rushing together like a scum-choked river. "To Carceri... to the prison plane... to the land of the betrayed and the betrayers, traitors and victims. This gate... is closed... for now."~ */
  IF ~~ THEN REPLY #47063 /* ~"When will it be open again?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 10
  IF ~~ THEN REPLY #47064 /* ~"What can you tell me about Carceri?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #47065 /* ~"What happened to you?"~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
~ GOTO 12
  IF ~~ THEN REPLY #47066 /* ~"Thanks. Farewell, then."~ */ DO ~SetGlobal("Gatehead_Talk","GLOBAL",1)
SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~  Global("Gatehead_Talk","GLOBAL",1)
!Global("Current_Area","GLOBAL",800)
~ THEN BEGIN 9 // from:
  SAY #47067 /* ~"The gate... still closed. No passage."~ */
  IF ~~ THEN REPLY #47068 /* ~"When will it be open again?"~ */ GOTO 10
  IF ~~ THEN REPLY #47069 /* ~"What can you tell me about Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47070 /* ~"What happened to you?"~ */ GOTO 12
  IF ~~ THEN REPLY #47072 /* ~"Thanks. Farewell, then."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0 11.0 12.0
  SAY #47075 /* ~"When the plague of illness passes. When the sickness has died. When the death has gone."~ */
  IF ~~ THEN REPLY #47076 /* ~"What can you tell me about Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47077 /* ~"What happened to you?"~ */ GOTO 12
  IF ~~ THEN REPLY #47078 /* ~"Thanks. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.1
  SAY #47080 /* ~"The prison plane... chaos, evil... worlds within worlds, orbs within orbs, strung out like malign pearls in the skies... the Red Prison, doom of titans and gods alike."~ */
  IF ~~ THEN REPLY #47082 /* ~"When will the gate be open?"~ */ GOTO 10
  IF ~~ THEN REPLY #47083 /* ~"What happened to you?"~ */ GOTO 12
  IF ~~ THEN REPLY #47084 /* ~"Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2 10.1 11.1
  SAY #47085 /* ~"Betrayed, despised, framed... punished, executed, made an example of. Hung here by enemies. Lost, lost, lost."~ */
  IF ~~ THEN REPLY #47086 /* ~"When will the gate be open?"~ */ GOTO 10
  IF ~~ THEN REPLY #47087 /* ~"What can you tell me about Carceri?"~ */ GOTO 11
  IF ~~ THEN REPLY #47088 /* ~"Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.0
  SAY #47089 /* ~"The prison plane... chaos, evil... worlds within worlds, orbs within orbs, strung out like malign pearls in the skies... the Red Prison, doom of titans and gods alike."~ */
  IF ~~ THEN REPLY #47090 /* ~"Can't you speak normally?"~ */ GOTO 6
  IF ~~ THEN REPLY #47091 /* ~"What happened to you?"~ */ GOTO 2
  IF ~~ THEN REPLY #47092 /* ~"Do you have any idea how to get there or get it back here?"~ */ GOTO 4
  IF ~~ THEN REPLY #47093 /* ~"I have no time for this. Farewell."~ */ DO ~SetPortalCursor("to0900",PORTAL_CURSOR_VISIBLE,TRUE)
SetPortalCursor("to0900",PORTAL_ENABLED,TRUE)
~ EXIT
END
