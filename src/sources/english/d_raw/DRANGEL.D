// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DRANGEL.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DRANGEL~

IF ~  GlobalGT("Krystall","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #34502 /* ~"Y'wrote Rotten William's name in the dead-book in red, cutter. That means you get through Razor Angel territory free o' charge."~ */
  IF ~~ THEN REPLY #34503 /* ~"Thanks. Farewell."~ */ DO ~BitSet("0301_Status","AR0301",BIT4)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #34504 /* ~This alley-dweller greets you with exaggerated politeness and a deep bow. "Greetings, stranger. Ye've chosen a, uh, auspicious day to pass through our lands. The toll be a mere ten coins."~ */
  IF ~~ THEN REPLY #34505 /* ~"Ten coins? That's outrageous!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34506 /* ~"I just paid that to those berks over there!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34507 /* ~"Ten? All right. Here you go."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34508 /* ~"I've already paid."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34509 /* ~Bluff: "I've already paid that."~ */ GOTO 6
  IF ~~ THEN REPLY #34510 /* ~"You'll have to fight me for it."~ */ GOTO 2
  IF ~~ THEN REPLY #34511 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.5 7.0 7.5
  SAY #34512 /* ~"It's a mere ten coppers. It's our territory. I'm sure ye knew this was no place for weaklings. Ye walked into it of your own free will. Now ye pay the price, one way or another: copper or blood. What'll it be?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34513 /* ~"Coin. Here."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34514 /* ~"Blood."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34515 /* ~"Why not try to catch me?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 7.1
  SAY #34516 /* ~"Aye, and those berks ain't our allies. The Shivs be our mortal enemies. Now ye even the score with us or we'll lay y'body on the ground."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34517 /* ~"Here, then. Take the money."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34518 /* ~"You'll die first, friend."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34519 /* ~"Why not try to catch me?"~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2 2.0 3.0 6.0 7.2
  SAY #34520 /* ~"Y'have the thanks of the Razor Angels. Go in peace, traveler."~ */
  IF ~~ THEN REPLY #34521 /* ~"Thanks - berk. Farewell."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 1.3 7.3
  SAY #34522 /* ~The Razor Angel looks off into the shadows for a moment, makes a hand sign, and nods. "That ye have. Move along, then. We'll get y'toll next time ye come through."~ */
  IF ~~ THEN REPLY #34523 /* ~"I'm sure you will. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.4 7.4
  SAY #34524 /* ~The Razor Angel looks off into the shadows for a moment, makes a hand sign, and shakes his head at you. "No, ye haven't. This is the last warning ye'll get. Ten coins or the cold earth."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34525 /* ~"Here, then. Take the money."~ */ DO ~TakePartyGold(10)
~ GOTO 4
  IF ~~ THEN REPLY #34526 /* ~"Try to take them from me, berk."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34527 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("Krystall","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY #34528 /* ~"Ye've returned, I see. The price be the same as before if y'be wantin' to pass. Ten coins, my friend, and ye'll get past with all y'lovely scars."~ */
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34529 /* ~"Ten coins? That's outrageous!"~ */ GOTO 2
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34530 /* ~"I just paid that to those berks over there!"~ */ GOTO 3
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34531 /* ~"Ten? All right. Here you go."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_RA","AR0301",1)
~ GOTO 4
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34532 /* ~"I've already paid."~ */ GOTO 5
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34533 /* ~Bluff: "I've already paid that."~ */ GOTO 6
  IF ~~ THEN REPLY #34534 /* ~"You'll have to fight me for it."~ */ GOTO 2
  IF ~~ THEN REPLY #34535 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 8 // from:
  SAY #34536 /* ~"Hear that ye're doin' some work for Krystall. Good. Get it done quick, y'hear? Oh... before I go forgettin', you'll have t' pay the toll. Since ye're with us, it be half price: a mere five coins."~ */
  IF ~~ THEN REPLY #34537 /* ~"But I'm working for Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34538 /* ~"Here."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34539 /* ~"I just paid that to those berks over there!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34540 /* ~"I've already paid."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34541 /* ~Bluff: "I've already paid that."~ */ GOTO 14
  IF ~~ THEN REPLY #34542 /* ~"You'll die first, friend."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34543 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("Krystall","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34544 /* ~"Ye haven't killed Rotten William yet, have ye? Ye pay the five coins till Krystall says otherwise."~ */
  IF ~~ THEN REPLY #34545 /* ~"But I'm working for Krystall!"~ */ GOTO 10
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34546 /* ~"Here."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34547 /* ~"I just paid that to those berks over there!"~ */ GOTO 12
  IF ~  Global("Paid_RA","AR0301",1)
~ THEN REPLY #34548 /* ~"I've already paid."~ */ GOTO 13
  IF ~  Global("Paid_RA","AR0301",0)
~ THEN REPLY #34549 /* ~Bluff: "I've already paid that."~ */ GOTO 14
  IF ~~ THEN REPLY #34550 /* ~"You'll die first, friend."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
  IF ~~ THEN REPLY #34551 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0 9.0
  SAY #34552 /* ~"That y'are. So'm I. We all got mouths t'feed, so ye'll be feedin' ours. Five coins or I stretch y'out."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34553 /* ~"Here."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34554 /* ~"You'll die first, friend."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34555 /* ~"You'll have to catch me first."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.1 9.1 10.0 12.0 14.0
  SAY #34556 /* ~"Been a pleasure. Good luck with that bastard Rotten William."~ */
  IF ~~ THEN REPLY #34557 /* ~"Yeah, thanks."~ */ DO ~SetGlobal("Paid_RA","AR0301",1)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 8.2 9.2
  SAY #34558 /* ~"Aye, and ye'll have to kill 'em to get it back. But that be them and this be us. Pay up, friend."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34559 /* ~"Here."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34560 /* ~"Why not try to take it from me? I'm ready for you."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34561 /* ~"No way. I'm gone."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.3
  SAY #34562 /* ~The Razor Angel looks to the shadows for confirmation. He turns back. "Aye, my apologies. Go on, then."~ */
  IF ~~ THEN REPLY #34563 /* ~"Thanks."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.4
  SAY #34564 /* ~The Razor Angel looks to the shadows for confirmation. He turns back. "No, ye haven't. Pay, friend, or ye'll not be gettin' a chance at Rotten William."~ */
  IF ~  PartyGoldGT(4)
~ THEN REPLY #34565 /* ~"Here."~ */ DO ~TakePartyGold(5)
~ GOTO 11
  IF ~~ THEN REPLY #34566 /* ~"I'll kill him as soon as I'm done with you."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #34567 /* ~"I don't think you can catch me."~ */ DO ~SetGlobal("0301_Good_Angry","AR0301",1)
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
Enemy()
~ EXIT
END
