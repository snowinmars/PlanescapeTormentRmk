// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DGAOHA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DGAOHA~

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
Global("Gaoha","GLOBAL",0)
!GlobalTimerNotExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 0 // from:
  SAY #9356 /* ~You see a thin, yellow-skinned humanoid covered with a variety of dazzling tattoos. His eyebrows have been accented with black charcoal lines, and his teeth are filed to points. He sees you and waves you over, rattling his dice in his hand.~ */
  IF ~  !NearbyDialog("DDakkon")
~ THEN REPLY #9357 /* ~"Greetings..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 1
  IF ~  NearbyDialog("DDakkon")
~ THEN REPLY #34023 /* ~"Greetings..."~ */ DO ~SetGlobal("Gaoha","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #34024 /* ~Ignore him.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #34025 /* ~He displays a feral, shark-toothed grin; his eyes are like shiny black orbs. His voice is low and raspy: "Gaoha greets you, as well... you have come to play a game, yes?"~ */
  IF ~~ THEN REPLY #34026 /* ~"No, but I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #34027 /* ~"Yes, I'll play."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34028 /* ~"No... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #34029 /* ~He is about to speak when his eyes - shiny and black, like orbs of jet - fall upon Dak'kon. The two of them stare silently at one another for a moment before the tattooed githzerai's gaze returns to you. His voice is low and raspy: "Gaoha greets you. You have... come to play a game? Yes?"~ */
  IF ~~ THEN REPLY #34030 /* ~"No, but I had some questions..."~ */ GOTO 3
  IF ~~ THEN REPLY #34031 /* ~"Yes, I'll play."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~~ THEN REPLY #34032 /* ~"No... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 9.0
  SAY #34033 /* ~Gaoha's smiles fades in an instant; he shakes his head. "No interest in questions, have I. Only the game... the turning of the die, the glint of coin won or lost, yes?" He shakes the bone dice in his palm. "You... have no interest in these things?"~ */
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #34034 /* ~"All right... I'll play."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #34035 /* ~"All right... I'll play."~ */ GOTO 8
  IF ~~ THEN REPLY #34036 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 9.1
  SAY #34037 /* ~Gaoha reaches into his tunic and pulls out a coin. "This coin? Your coin." He places it at your feet, and pulls out another. "This coin? Gaoha's." He places it at his own feet, then holds up two dice between his thumb and index finger. "The dice... we both roll one, yes?"~ */
  IF ~~ THEN REPLY #34038 /* ~"Go on..."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #34039 /* ~"You roll higher, both coins..." He snatches the coins up from the ground and proffers them to you. "...yours. Gaoha roll higher?" He quickly tucks the coppers back into his tunic. "Mine. Neither rolls higher? The coin stays for another roll. So: How much coin will lie at your feet?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #34040 /* ~"One copper common."~ */ DO ~TakePartyGold(1)
~ GOTO 6
  IF ~  PartyGoldGT(0)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60404 /* ~"One copper common."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60405 /* ~"Five copper commons."~ */ DO ~TakePartyGold(5)
~ GOTO 6
  IF ~  PartyGoldGT(4)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60406 /* ~"Five copper commons."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60407 /* ~"Ten copper commons."~ */ DO ~TakePartyGold(10)
~ GOTO 6
  IF ~  PartyGoldGT(9)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60408 /* ~"Ten copper commons."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60409 /* ~"Twenty-five copper commons."~ */ DO ~TakePartyGold(25)
~ GOTO 6
  IF ~  PartyGoldGT(24)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60410 /* ~"Twenty-five copper commons."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60411 /* ~"Fifty copper commons."~ */ DO ~TakePartyGold(50)
~ GOTO 6
  IF ~  PartyGoldGT(49)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60412 /* ~"Fifty copper commons."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",0)
~ THEN REPLY #60413 /* ~"One hundred copper commons."~ */ DO ~TakePartyGold(100)
~ GOTO 6
  IF ~  PartyGoldGT(99)
Global("Roll_1","GLOBAL",1)
~ THEN REPLY #60414 /* ~"One hundred copper commons."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60415 /* ~"None; I don't wish to play right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0 5.2 5.4 5.6 5.8 5.10
  SAY #60416 /* ~You both roll the dice until Gaoha rolls higher; he snatches up your coins, tucking them into his tunic. He seems to hesitate for a moment, then speaks. "Again, yes?"~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60417 /* ~"Wait - is something wrong?"~ */ GOTO 7
  IF ~~ THEN REPLY #60418 /* ~"Yes, again."~ */ GOTO 8
  IF ~~ THEN REPLY #60419 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 10.0 11.0
  SAY #60420 /* ~Gaoha regards you closely for a moment, then nods. "Never do I indulge in Hashma's folly - never do I *cheat,* human. But I see fortune, read it, *know* it in the face of a man. However, you... in you I see nothing. I *know* nothing. You... have no luck? No fortune, neither good nor ill? Or you make your own, perhaps. I do not know." He places his dice back into his tunic. "We might play later, perhaps, but no more this moment."~ */
  IF ~~ THEN REPLY #60421 /* ~"All right... farewell."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 6.1 9.2
  SAY #60422 /* ~"And how much coin will lie at your feet?"~ */
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60423 /* ~"One copper common."~ */ DO ~TakePartyGold(1)
~ GOTO 10
  IF ~  PartyGoldGT(0)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60424 /* ~"One copper common."~ */ DO ~GiveGoldForce(1)
~ GOTO 11
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60425 /* ~"Five copper commons."~ */ DO ~TakePartyGold(5)
~ GOTO 10
  IF ~  PartyGoldGT(4)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60426 /* ~"Five copper commons."~ */ DO ~GiveGoldForce(5)
~ GOTO 11
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60427 /* ~"Ten copper commons."~ */ DO ~TakePartyGold(10)
~ GOTO 10
  IF ~  PartyGoldGT(9)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60428 /* ~"Ten copper commons."~ */ DO ~GiveGoldForce(10)
~ GOTO 11
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60429 /* ~"Twenty-five copper commons."~ */ DO ~TakePartyGold(25)
~ GOTO 10
  IF ~  PartyGoldGT(24)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60430 /* ~"Twenty-five copper commons."~ */ DO ~GiveGoldForce(25)
~ GOTO 11
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60431 /* ~"Fifty copper commons."~ */ DO ~TakePartyGold(50)
~ GOTO 10
  IF ~  PartyGoldGT(49)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60432 /* ~"Fifty copper commons."~ */ DO ~GiveGoldForce(50)
~ GOTO 11
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",0)
~ THEN REPLY #60433 /* ~"One hundred copper commons."~ */ DO ~TakePartyGold(100)
~ GOTO 10
  IF ~  PartyGoldGT(99)
Global("Roll_2","GLOBAL",1)
~ THEN REPLY #60434 /* ~"One hundred copper commons."~ */ DO ~GiveGoldForce(100)
~ GOTO 11
  IF ~~ THEN REPLY #60435 /* ~"Actually, none. Farewell."~ */ EXIT
END

IF ~  StuffGlobalRandom("Roll_1","GLOBAL",1)
StuffGlobalRandom("Roll_2","GLOBAL",1)
GlobalGT("Gaoha","GLOBAL",0)
GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 9 // from:
  SAY #60436 /* ~Gaoha flashes you his disturbing, sharp-toothed grin and rattles a pair of bone dice in hands. "You have returned to play a game, yes?"~ */
  IF ~~ THEN REPLY #60437 /* ~"No, but I had some questions..."~ */ GOTO 3
  IF ~  GlobalLT("Gaoha","GLOBAL",2)
~ THEN REPLY #60438 /* ~"Yes, I'll play."~ */ DO ~SetGlobal("Gaoha","GLOBAL",2)
~ GOTO 4
  IF ~  GlobalGT("Gaoha","GLOBAL",1)
~ THEN REPLY #60439 /* ~"Yes, I'll play."~ */ GOTO 8
  IF ~~ THEN REPLY #60440 /* ~"No... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 8.2 8.4 8.6 8.8 8.10
  SAY #60441 /* ~You both roll the dice until Gaoha rolls higher; he snatches up your coins, frowning at them for a moment before hiding them away in his tunic. "It is enough, for now. But perhaps we shall play again later, you and I."~ */
  IF ~~ THEN REPLY #60442 /* ~"Why? What's wrong?"~ */ GOTO 7
  IF ~~ THEN REPLY #60443 /* ~"All right. Farewell."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1 5.3 5.5 5.7 5.9 5.11 8.1 8.3 8.5 8.7 8.9 8.11
  SAY #60444 /* ~You both roll the dice until you roll higher; you pick up the coins and put them away. Gaoha nods, frowning. "It is enough, for now. But perhaps we shall play again later, you and I."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #60445 /* ~"Wait - is something wrong?"~ */ GOTO 7
  IF ~~ THEN REPLY #60446 /* ~"All right. Farewell."~ */ DO ~SetGlobalTimer("No_Gamble","GLOBAL",4500)
~ EXIT
END

IF ~  !GlobalTimerExpired("No_Gamble","GLOBAL")
~ THEN BEGIN 12 // from:
  SAY #60447 /* ~Gaoha flashes you his disturbing, sharp-toothed grin. "Eager to play you are, yes? But you return too soon. Return later, and we might play again."~ */
  IF ~~ THEN REPLY #60448 /* ~"Farewell, then."~ */ EXIT
END
