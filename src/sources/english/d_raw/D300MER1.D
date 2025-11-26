// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : D300MER1.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~D300MER1~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #17240 /* ~This dour-faced old fellow appears to be selling various hand weapons. "Ah - c'mon over, then! Come ta see my blades, have yeh?"~ */
  IF ~~ THEN REPLY #17302 /* ~"Yes, I have."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17303 /* ~"No, but I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17304 /* ~"No, I was just passing by. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #17244 /* ~"Well met again, cutter. Come ta buy some a' the finest steel in Sigil, have yeh?"~ */
  IF ~~ THEN REPLY #17305 /* ~"Yes, I have."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17306 /* ~"No, but I had some questions."~ */ GOTO 2
  IF ~~ THEN REPLY #17309 /* ~"No, I was just passing by. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1 1.1
  SAY #17246 /* ~"I've got a job ta do, sir..." He suddenly turns his head and coughs into his hand. "Excuse me. As I was sayin', I can't well stop sellin' just ta speak with yeh."~ */
  IF ~~ THEN REPLY #17311 /* ~"Are you sick?"~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Merch1_1","GLOBALGood",1)
~ GOTO 9
  IF ~~ THEN REPLY #17316 /* ~"Show me your wares, then."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17317 /* ~"I'll pay you for your time, then."~ */ GOTO 3
  IF ~~ THEN REPLY #17318 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.2
  SAY #17254 /* ~The old merchant takes a moment to look around. Once he's certain there aren't any potential customers in the immediate area, he holds his hand out to you.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #17319 /* ~Drop three coins into his hand.~ */ DO ~TakePartyGold(3)
~ GOTO 4
  IF ~~ THEN REPLY #17353 /* ~"Never mind. Let me see your wares."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17355 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17256 /* ~He nods and tucks the three copper coins beneath his clothes. "What did yeh want ta ask then, cutter?"~ */
  IF ~~ THEN REPLY #17357 /* ~"Tell me about this area."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17359 /* ~"I'm looking for a man named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17361 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~~ THEN REPLY #17362 /* ~"Forget it. Let me see your wares."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17363 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.1 7.1 8.1 9.0
  SAY #17263 /* ~"This? Just another marketplace in the Hive, worst ward in our blessed city a' Sigil." He smiles bitterly, then shrugs. "As long as yeh watch yer back and get somewhere safe by dark, it's not too bad a place - as slums go."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17364 /* ~"I'm looking for a man named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17365 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~~ THEN REPLY #17366 /* ~"Let me see your wares."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17367 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 7.2 8.2 9.1
  SAY #17265 /* ~"Hmm. Nay, don't know the name. Sorry, cutter."~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17368 /* ~"That wasn't much help..."~ */ GOTO 8
  IF ~~ THEN REPLY #17215 /* ~"Tell me about this area."~ */ GOTO 5
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17217 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~~ THEN REPLY #17218 /* ~"Forget it. Let me see your wares."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17220 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2 5.1 6.2 8.3 9.2
  SAY #17267 /* ~"Haven't seen one lately, sorry. If yeh need a new journal, perhaps one a' the other merchants here has one for sale." He shrugs.~ */
  IF ~  !Global("Good_Merch1_1","GLOBAL",1)
~ THEN REPLY #17221 /* ~"That wasn't much help..."~ */ GOTO 8
  IF ~~ THEN REPLY #17222 /* ~"Tell me about this area."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17223 /* ~"I'm looking for a man named Pharod."~ */ GOTO 6
  IF ~~ THEN REPLY #17268 /* ~"Forget it. Let me see your wares."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17310 /* ~"Nothing, never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.0 7.0
  SAY #17272 /* ~The old merchant chuckles lightly, then coughs into his hand. "Yeh were payin' me for me time, not me answers, cutter. I woulda' helped if I could have, truly. Would yeh like ta see me goods, now?"~ */
  IF ~~ THEN REPLY #17324 /* ~"Yes."~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17332 /* ~"Not right now. Tell me about this area."~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17356 /* ~"No, but I'm looking for a man named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17358 /* ~"No, not now. I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~~ THEN REPLY #17360 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 2.0
  SAY #17275 /* ~"Ho ho! Nay, cutter, just old. I thank yeh for the concern, though." He smiles at you.~ */
  IF ~~ THEN REPLY #17369 /* ~"Can you tell me about this area?"~ */ GOTO 5
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #17370 /* ~"I'm looking for a man named Pharod."~ */ GOTO 6
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17371 /* ~"I'm looking for a journal I've lost."~ */ GOTO 7
  IF ~~ THEN REPLY #17372 /* ~"May I see your wares?"~ */ DO ~StartStore("MerchMo",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #17373 /* ~"Take care. Farewell."~ */ EXIT
END
