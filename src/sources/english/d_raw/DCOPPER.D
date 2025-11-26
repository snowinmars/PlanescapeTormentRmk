// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOPPER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOPPER~

IF ~  Global("Coppereyes","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2474 /* ~Before you is a tall, silent figure. He could easily pass for a statue - although the deep furrows in his face and brow make you wonder if the sculptor was a little too eager in defining the face with the chisel. He looks well over fifty years old... but exactly how much over fifty, it's hard to tell. As he slowly turns to look at you, you catch the dull sheen of copper in his eyes.~ */
  IF ~~ THEN REPLY #2475 /* ~"Greetings."~ */ DO ~SetGlobal("Coppereyes","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #2476 /* ~Leave the man in peace.~ */ EXIT
END

IF ~  Global("Coppereyes","GLOBAL",1)
~ THEN BEGIN 1 // from: 0.0
  SAY #2477 /* ~Old Copper-Eyes stares at you. His eyes are difficult to make out past the black well of his eye sockets, but they look to have a coppery sheen about them.~ */
  IF ~  Global("Know_Contract","GLOBAL",1)
Global("Coppereyes_Contract","GLOBAL",0)
~ THEN REPLY #2478 /* ~"I'm looking to sign one of the Dead Contracts."~ */ GOTO 2
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2479 /* ~"I want to undo that Dead Contract I signed with you."~ */ GOTO 13
  IF ~  GlobalGT("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2480 /* ~"Give me back that Dead Contract I signed, or I'll take it from you by force."~ */ GOTO 7
  IF ~~ THEN REPLY #12003 /* ~"I have some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #12004 /* ~"My error... I thought you were someone else. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 10.0
  SAY #2481 /* ~Copper-Eyes makes the barest of nods, and slowly reaches into his Dustman robes with both hands. With his left hand, he pulls forth a small bag of human skin. With his right hand, he draws forth a piece of parchment folded around a finger bone pen. The bag and the parchment are slowly laid on the table in front of you.~ */
  IF ~~ THEN REPLY #2482 /* ~Pick up the parchment and examine it.~ */ GOTO 3
  IF ~~ THEN REPLY #2484 /* ~Sign the parchment.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2485 /* ~Examine the bag.~ */ GOTO 8
  IF ~~ THEN REPLY #2486 /* ~Take the bag.~ */ GOTO 9
  IF ~~ THEN REPLY #2493 /* ~"I've changed my mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 3 // from: 2.0 3.3 8.0 9.0
  SAY #2487 /* ~It's a contract that entitles the Dustmen to take possession of the signer's body after he has passed beyond the Eternal Boundary. The signer, in exchange, receives a monetary sum from the Dustmen, agreed upon at the time of signing. You assume the sum in the bag is the amount you will receive for signing the contract.~ */
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatLT(Protagonist,50,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2488 /* ~Switch the parchment with the other contract, then sign it.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
DestroyItemObject("FalseCon",Protagonist,FALSE)
~ GOTO 5
  IF ~  CheckStatGT(Protagonist,13,DEX)
PartyHasItem("FalseCon")
~ THEN REPLY #2489 /* ~Switch the parchment with the other contract, then sign it.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,14,DEX)
CheckStatGT(Protagonist,49,PICKPOCKET)
PartyHasItem("FalseCon")
~ THEN REPLY #2490 /* ~Switch the parchment with the other contract, then sign it.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",3)
DestroyItemObject("FalseCon",Protagonist,FALSE)
GiveItemCreate("CopperCo",Protagonist,1,0,0)
~ GOTO 4
  IF ~~ THEN REPLY #2491 /* ~Examine the parchment.~ */ GOTO 3
  IF ~~ THEN REPLY #2492 /* ~Sign the parchment.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2494 /* ~Examine the bag.~ */ GOTO 8
  IF ~~ THEN REPLY #2495 /* ~Take the bag.~ */ GOTO 9
  IF ~~ THEN REPLY #12008 /* ~"I've changed my mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.2
  SAY #2496 /* ~Copper-Eyes makes no indication that he has noticed the switch. As you finish signing, Copper-Eyes nods at the bag to his left. As you reach for the bag and count out the hundred coppers, the contract parchment vanishes from the table and into the folds of his robe.~ */
  IF ~~ THEN REPLY #2498 /* ~"I had some questions..."~ */ GOTO 10
  IF ~~ THEN REPLY #2499 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #2497 /* ~Copper-Eyes makes no indication that he has noticed the switch. As you finish signing, Copper-Eyes nods at the bag to his left. He leaves the contract parchment on the table, as if asking you to examine it again... and you notice, to your horror, that your sleight-of-hand was unsuccessful. The Dustmen now own your body after death.~ */
  IF ~~ THEN REPLY #2500 /* ~"Uh... wait a minute... could I see that contract again?"~ */ GOTO 6
  IF ~~ THEN REPLY #2501 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #2502 /* ~The parchment vanishes into the folds of Copper-Eyes' robe. He nods at the bag.~ */
  IF ~~ THEN REPLY #2503 /* ~"Give me that contract or I'll kill you!"~ */ GOTO 7
  IF ~~ THEN REPLY #2504 /* ~Take the bag and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 6.0 13.0
  SAY #2505 /* ~Copper-Eyes does not react, but suddenly the room goes black...~ */
  IF ~~ THEN REPLY #2506 /* ~"What th-?!"~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2 3.5 8.2 9.2
  SAY #2507 /* ~The bag is full of coppers. There looks to be about a hundred in there.~ */
  IF ~~ THEN REPLY #2508 /* ~Pick up the parchment and examine it.~ */ GOTO 3
  IF ~~ THEN REPLY #2509 /* ~Sign the parchment.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2510 /* ~Examine the bag again.~ */ GOTO 8
  IF ~~ THEN REPLY #2511 /* ~Take the bag.~ */ GOTO 9
  IF ~~ THEN REPLY #2512 /* ~"I've changed my mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 9 // from: 2.3 3.6 8.3 9.3
  SAY #2513 /* ~As you reach for the bag, it vanishes from the table. When you blink again, it has returned. Copper-Eyes is still staring at you.~ */
  IF ~~ THEN REPLY #2514 /* ~Pick up the parchment and examine it.~ */ GOTO 3
  IF ~~ THEN REPLY #2515 /* ~Sign the parchment.~ */ DO ~GivePartyGold(100)
SetGlobal("Coppereyes_Contract","GLOBAL",2)
~ GOTO 11
  IF ~~ THEN REPLY #2516 /* ~Examine the bag.~ */ GOTO 8
  IF ~~ THEN REPLY #2517 /* ~Reach for the bag again.~ */ GOTO 9
  IF ~~ THEN REPLY #2518 /* ~"I've changed my mind. Farewell."~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 1.3 4.0 11.0
  SAY #2519 /* ~Copper-Eyes says nothing. ~ */
  IF ~  Global("Coppereyes_Contract","GLOBAL",1)
~ THEN REPLY #2522 /* ~"I've come to sign the Dead Contract."~ */ GOTO 2
  IF ~~ THEN REPLY #2523 /* ~"Uh... never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 2.1 3.4 8.1 9.1
  SAY #2520 /* ~As you finish signing, Copper-Eyes nods at the bag to his left. As he does, the contract parchment vanishes from the table and into the folds of his robe.~ */
  IF ~~ THEN REPLY #2521 /* ~"I had some questions I wanted to ask..."~ */ GOTO 10
  IF ~~ THEN REPLY #2526 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 2.4 3.7 8.4 9.4
  SAY #2524 /* ~Copper-Eyes says nothing, simply reaches for the bag and the parchment and draws them into the folds of his robe.~ */
  IF ~~ THEN REPLY #2525 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 1.1
  SAY #12005 /* ~Copper-Eyes says nothing.~ */
  IF ~~ THEN REPLY #12006 /* ~"This is your last chance. Give the contract back to me, or you'll regret it."~ */ GOTO 7
  IF ~~ THEN REPLY #12007 /* ~"Uh... never mind. Farewell."~ */ EXIT
END
