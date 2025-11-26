// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DSHIV.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DSHIV~

IF ~  GlobalGT("RW","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #3796 /* ~"So y'got rid o' that harridan Krystall, eh? Y'think that means you don't have to pay? It's too bad ye're right. Go on through."~ */
  IF ~~ THEN REPLY #3797 /* ~"Thanks. Farewell."~ */ DO ~BitSet("0301_Status","AR0301",BIT3)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #3798 /* ~"Greetings, stranger. Looks like you're in Darkalley Shiv territory now. Looks like you've got a purse that could use some lightening. You better pray it's got enough."~ */
  IF ~~ THEN REPLY #3799 /* ~"I need to talk to your leader."~ */ GOTO 2
  IF ~~ THEN REPLY #3800 /* ~"How much do you need?"~ */ GOTO 3
  IF ~~ THEN REPLY #34436 /* ~"I'd like to see you try taking it with holes in your skin."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34437 /* ~"I already paid this time through."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34438 /* ~Bluff: "I already paid this time through."~ */ GOTO 8
  IF ~~ THEN REPLY #34439 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #34440 /* ~"Rotten William? Aye, I'll let you in to talk to him as soon as you let me take a look inside that purse."~ */
  IF ~~ THEN REPLY #34441 /* ~"No way. You'll bleed first."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34442 /* ~"How much do you need?"~ */ GOTO 3
  IF ~~ THEN REPLY #34443 /* ~"No. It's not that important."~ */ GOTO 4
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.1 9.1
  SAY #34444 /* ~"It ain't much," he says magnanimously. "A mere ten pieces of jink will get you through."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34445 /* ~"It's a deal."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 5
  IF ~~ THEN REPLY #34446 /* ~"No way."~ */ GOTO 6
END

IF ~~ THEN BEGIN 4 // from: 2.2
  SAY #34447 /* ~"Then you'll find it ain't that important when you start bleeding."~ */
  IF ~~ THEN REPLY #34448 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34449 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.0
  SAY #34450 /* ~He takes your money, pockets it, and says, "Get outta here now."~ */
  IF ~~ THEN REPLY #34451 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #34452 /* ~"Then you won't make it out of here alive." He draws his knife and attacks!~ */
  IF ~~ THEN REPLY #34453 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34454 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.3 9.3 10.5 11.5 14.4
  SAY #34455 /* ~He looks off into the shadows, makes a hand motion, and looks back at you. "Fine. Go on through. Berk."~ */
  IF ~~ THEN REPLY #34456 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 1.4 9.4 10.6 11.6 14.5
  SAY #34457 /* ~He looks off into the shadows, makes a hand motion, and looks back at you. "No, you didn't. You're gonna die."~ */
  IF ~~ THEN REPLY #34458 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34459 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("RW","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY #34460 /* ~"What, you again? Don't you ever get tired of payin' us that jink? Guess not, since you're here. Ten pieces and you can come back another day."~ */
  IF ~~ THEN REPLY #34461 /* ~"I need to talk to your leader."~ */ GOTO 2
  IF ~~ THEN REPLY #34462 /* ~"How much do you need?"~ */ GOTO 3
  IF ~~ THEN REPLY #34463 /* ~"I'd like to see you try taking it with holes in your skin."~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34464 /* ~"I already paid this time through."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34465 /* ~Bluff: "I already paid this time through."~ */ GOTO 8
  IF ~~ THEN REPLY #34466 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~  NumTimesTalkedTo(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 10 // from:
  SAY #34467 /* ~"I heard Rotten William's sent you out killin', eh? Till you get it done, there's a price on that. Ten pieces o' jink."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34468 /* ~"All right. Here you go."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34469 /* ~"I don't have that much."~ */ GOTO 13
  IF ~~ THEN REPLY #34470 /* ~"But I'm working for Rotten William!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34471 /* ~"You don't really need to collect that."~ */ GOTO 15
  IF ~~ THEN REPLY #34472 /* ~"You'll take it if you can pry from my dead body."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34473 /* ~"I already paid this time through."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34474 /* ~Bluff: "I already paid this time through."~ */ GOTO 8
END

IF ~  NumTimesTalkedToGT(0)
GlobalGT("RW","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY #34475 /* ~"Ain't you done killin' for Rotten William yet? You'll have to pay for that sort o' delay. Ten pieces o' jink and you can go on your merry way."~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34476 /* ~"All right. Here you go."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34477 /* ~"I don't have that much."~ */ GOTO 13
  IF ~~ THEN REPLY #34478 /* ~"But I'm working for Rotten William!"~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34479 /* ~"You don't really need to collect that."~ */ GOTO 15
  IF ~~ THEN REPLY #34480 /* ~"You'll take it if you can pry from my dead body."~ */ GOTO 16
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34481 /* ~"I already paid this time through."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34482 /* ~Bluff: "I already paid this time through."~ */ GOTO 8
END

IF ~~ THEN BEGIN 12 // from: 10.0 11.0 14.0
  SAY #34483 /* ~"A pleasure. See me personally when you come back, aye?" He tips a wink at you.~ */
  IF ~~ THEN REPLY #34484 /* ~"Funny. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.1 11.1 14.1
  SAY #34485 /* ~"That's a pity. Rotten William'll be real unhappy to hear that you slipped on a knife." He draws his weapon and moves in to attack.~ */
  IF ~~ THEN REPLY #34486 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34487 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.2 11.2
  SAY #34488 /* ~"So'm I. What do you say? Pay and stay, or bleed?"~ */
  IF ~  PartyGoldGT(9)
~ THEN REPLY #34489 /* ~"I'll pay."~ */ DO ~TakePartyGold(10)
SetGlobal("Paid_DAS","AR0301",1)
~ GOTO 12
  IF ~~ THEN REPLY #34490 /* ~"I don't have that much."~ */ GOTO 13
  IF ~~ THEN REPLY #34491 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34492 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~  Global("Paid_DAS","AR0301",1)
~ THEN REPLY #34493 /* ~"I already paid this time through."~ */ GOTO 7
  IF ~  Global("Paid_DAS","AR0301",0)
~ THEN REPLY #34494 /* ~Bluff: "I already paid this time through."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #34495 /* ~"You don't really need to collect that."~ */ GOTO 15
  IF ~~ THEN REPLY #34496 /* ~"You'll take it if you can pry from my dead body."~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 10.3 11.3 14.6
  SAY #34497 /* ~He looks you over carefully and considers your words. "This time," he says, "I'll let it ride. Get out of here."~ */
  IF ~~ THEN REPLY #34498 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.4 11.4 14.7
  SAY #34499 /* ~"You have no idea how much I wanted to hear that." He draws his knife and attacks.~ */
  IF ~~ THEN REPLY #34500 /* ~Fight.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #34501 /* ~Flee.~ */ DO ~SetGlobal("0301_Bad_Angry","AR0301",1)
Enemy()
Attack(Protagonist)
~ EXIT
END
