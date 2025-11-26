// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMHEAD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMHEAD~

IF ~  Global("Mertwyn_Head","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #42384 /* ~This sturdy steel box has a thick leather handle on the top, but there's no apparent way to open the thing - it appears to be welded shut. There are a number of very narrow slits along one side, though you can't quite see into the box through them. A sickly-sweet, rotting smell wafts out from the slits. As you examine the container more closely, it shifts slightly in your hands. Something's moved inside it! There's a man's voice from within: "Ho, there... is someone there, by chance? My name's Mertwyn... anyone? Hail?"~ */
  IF ~~ THEN REPLY #42385 /* ~"Yes... greetings..."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #42386 /* ~Ignore the voice, put the item away.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #42387 /* ~"Thank the powers! Have you seen my body, perchance? It's hard to miss him... stumbles about with a silly wooden head on its shoulders... he must have worn his feet down to stubs looking for me by now!"~ */
  IF ~  Global("Mertwyn","GLOBAL",1)
~ THEN REPLY #42388 /* ~"Yes... in the Civic Festhall."~ */ GOTO 2
  IF ~  Global("Mertwyn","GLOBAL",0)
~ THEN REPLY #42389 /* ~"No... I don't think so..."~ */ GOTO 9
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #42390 /* ~"My good fortune, then! Could I persuade you to return me to him, good sir?"~ */
  IF ~~ THEN REPLY #42391 /* ~"Yes, I'll do that for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~I've agreed to return the head of Mertwyn to his body in the Civic Festhall.~ */ GOTO 3
  IF ~~ THEN REPLY #42392 /* ~"What's in it for me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42393 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0 5.0 6.0 7.0 8.0 9.0 10.0
  SAY #42394 /* ~"How splendid! I thank you kindly then, sir. If you don't mind, now, we'll hold off speaking any further until I'm with my body again."~ */
  IF ~~ THEN REPLY #42395 /* ~"But I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #42396 /* ~"All right... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 11.0
  SAY #42397 /* ~"I'm sure you do, sir, coming across a severed, speaking head locked in an iron case... but it will have to wait. Very tiresome being separated from my body, you see... my humblest apologies."~ */
  IF ~~ THEN REPLY #42398 /* ~"All right, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 9.1 10.1
  SAY #42399 /* ~"Eh... my gratitude?"~ */
  IF ~~ THEN REPLY #42400 /* ~"That'll do. I'll take you back."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~I've agreed to return the head of Mertwyn to his body in the Civic Festhall.~ */ GOTO 3
  IF ~~ THEN REPLY #42401 /* ~"I could use a little something more than that."~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #42402 /* ~"Well, between the body and myself, I'm certain we could scrounge up something to your liking, sir. Could you return me, first?"~ */
  IF ~~ THEN REPLY #42403 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~I've agreed to return the head of Mertwyn to his body in the Civic Festhall.~ */ GOTO 3
  IF ~~ THEN REPLY #42404 /* ~"Give me something now."~ */ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #42405 /* ~"Eh... well, you see, I don't really *have* anything right now. I *am* just a head in a locked iron box, you know."~ */
  IF ~~ THEN REPLY #42406 /* ~"All right... I'll do it."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~I've agreed to return the head of Mertwyn to his body in the Civic Festhall.~ */ GOTO 3
  IF ~~ THEN REPLY #42407 /* ~"Fine... then rot in your box, Mertwyn."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #42408 /* ~"Wait! Wait, good sir! Look, now; I can get you *something,* I just need to get back to my body, first!"~ */
  IF ~~ THEN REPLY #42409 /* ~"All right, I'll do it."~ */ DO ~SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42410 /* ~"We'll talk about it later. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.1
  SAY #42411 /* ~"Oh, dear. Well, that would have been a bit too much to hope for, eh? In any case, it's probably shambling about the Civic Festhall, in the northeastern corner of the Clerk's Ward. Could I, by any chance, persuade you to take me there, good sir?"~ */
  IF ~~ THEN REPLY #42412 /* ~"Yes, I'll do that for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ JOURNAL #41629 /* ~I've agreed to return the head of Mertwyn to his body in the Civic Festhall.~ */ GOTO 3
  IF ~~ THEN REPLY #42413 /* ~"What's in it for me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42414 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",1)
~ THEN BEGIN 10 // from:
  SAY #42415 /* ~Mertwyn's boxed head stirs as you lift the box. "Oh, hello again... say, any chance I could get you to return me to my body, now? I assure you, I'd be *most* grateful..."~ */
  IF ~~ THEN REPLY #42416 /* ~"Yes, I'll do that for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Mertwyn_1","GLOBALGood",1)
SetGlobal("Mertwyn_Head","GLOBAL",2)
~ GOTO 3
  IF ~~ THEN REPLY #42417 /* ~"What's in it for me?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Mertwyn_1","GLOBALGood",-1)
~ GOTO 5
  IF ~~ THEN REPLY #42418 /* ~"Perhaps later. Farewell."~ */ EXIT
END

IF ~  Global("Mertwyn_Head","GLOBAL",2)
~ THEN BEGIN 11 // from:
  SAY #42419 /* ~Mertwyn's boxed head stirs as you lift the box. "Are we there yet, good sir? Hmmm... I don't *see* my body..."~ */
  IF ~~ THEN REPLY #42420 /* ~"We're not, but I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #42421 /* ~"We're not there yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #42422 /* ~Mertwyn's voice suddenly echoes from within the steel box. "Oh! Oh! There it is! That's my body! Say there, old chum... over here..."~ */
  IF ~~ THEN EXTERN ~DMERTWYN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #42423 /* ~"Oh, come now... that's not very nice, sir. And what use have you for my head, after all?"~ */
  IF ~~ THEN REPLY #42424 /* ~Allow Mertwyn's body to take his head.~ */ DO ~AddexperienceParty(8000)
SetGlobal("Mertwyn","GLOBAL",2)
DestroyPartyItem("Mertwyn",FALSE)
GiveGoldForce(200)
~ JOURNAL #56738 /* ~I reunited Mertwyn's head with his body; the two seemed quite happy to see one another again.~ */ EXTERN ~DMERTWYN~ 8
  IF ~~ THEN REPLY #42425 /* ~"Sorry; you're staying with me a while longer. Farewell."~ */ EXIT
END
