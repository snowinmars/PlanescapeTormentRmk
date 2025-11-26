// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DKESTER.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DKESTER~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  CreatureInArea("AR3016")
GlobalGT("Mob_Dead","AR3016",2)
~ THEN BEGIN 0 // from:
  SAY #58985 /* ~"My thanks for your help. I'll work on organizing my friends..." He pauses. "Such as they are. Go on, now."~ */
  IF ~~ THEN REPLY #58986 /* ~"Good luck. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedTo(0)
~ THEN BEGIN 1 // from:
  SAY #58987 /* ~You see a lean man, with deeply tanned skin and piercing green eyes. "Welcome to the Malako Brothers Distillery!" he cries, as if he could think of no one he'd rather see than you. "What can I do for you today?"~ */
  IF ~~ THEN REPLY #58988 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #58989 /* ~"What is this place?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58990 /* ~"I understand you're having a little trouble with your brother. I'd like to help."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58991 /* ~"Have you heard anything about a deva in this town?"~ */ GOTO 4
  IF ~~ THEN REPLY #58992 /* ~"I'd like to buy something."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #58993 /* ~"Your brother sent me. He says he wants a negotiation about the inheritance between you and your father."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #66569 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 9.0
  SAY #58994 /* ~"I am Kester Malako, proprietor and half-owner of the Malako Brothers Distillery. Can I sell you something?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58995 /* ~"Half-owner?"~ */ GOTO 5
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #58996 /* ~"Who's the other brother?"~ */ GOTO 6
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #58997 /* ~"Not right now, thanks. I understand you're having a little trouble with your brother."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #58998 /* ~"Have you heard anything about a deva in this town?"~ */ GOTO 4
  IF ~~ THEN REPLY #58999 /* ~"Let's see what you have."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59000 /* ~"Your brother sent me. He says he wants a negotiation about the inheritance between you."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68289 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 9.1
  SAY #59001 /* ~He looks at you closely. "It's a distillery. We sell all sorts of things here, from drink to other mixtures, like charms and such. Would you like to buy something?"~ */
  IF ~~ THEN REPLY #59008 /* ~"Yes."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59009 /* ~"Not right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.3 2.3 9.3
  SAY #59010 /* ~"What, in Curst?" He laughs good-naturedly. "Friend, if you've been in Curst long enough, you already know there's no deva here. Try Fortitude or one of the other towns on the other side of the Great Ring. Now, do you want to buy something?"~ */
  IF ~~ THEN REPLY #59011 /* ~"Yes."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59012 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.0
  SAY #59013 /* ~"Yes, indeed. My brother also owns a part interest here, though I don't know that I'd call it an 'interest,' seeing as he spends so much time caring about it. Listen, do you want to buy something?"~ */
  IF ~  !Global("Mediate","GLOBAL",3)
!Global("Mediate","GLOBAL",1)
~ THEN REPLY #59014 /* ~"What can you tell me about your brother?"~ */ GOTO 6
  IF ~~ THEN REPLY #59015 /* ~"Yes. What do you have?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59016 /* ~"Your brother sent me. He says he wants a negotiation about the inheritance between you."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68290 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.1 5.0
  SAY #59017 /* ~His face darkens. "His name is Crumplepunch. He's the blacksmith here in town. He's doing his best to make sure my business doesn't succeed, and... why am I telling you this? You're a total stranger."~ */
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59018 /* ~"I'd like to help."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59019 /* ~"I don't know. What do you have for sale?"~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59020 /* ~"I don't know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.2 2.2 6.0 9.2
  SAY #59021 /* ~"You would, eh? All right. Take a look at this. This is my copy of the legacy our father left for us. Here: You can clearly see that the money that's supposed to come to us should build up this distillery, not just get split between the two of us. Yet my foolish brother insists that we just take the money instead of building toward the future. Get his copy of the legacy, or talk some sense into him, and I'll see you're rewarded."~ */
  IF ~~ THEN REPLY #59022 /* ~"I'll need your copy of the legacy to look over."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ JOURNAL #59024 /* ~I've agreed to help Kester the Distiller in his struggle with his brother Crumplepunch the smith over how divide up their inheritance.~ */ GOTO 8
  IF ~  False()
~ THEN REPLY #59023 /* ~"All right. I'll be back. Farewell."~ */ JOURNAL #59024 /* ~I've agreed to help Kester the Distiller in his struggle with his brother Crumplepunch the smith over how divide up their inheritance.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 14.0
  SAY #59025 /* ~He looks at you suspiciously, and then relents. "If it'll get it done faster and better for me, then all right. Here." He passes it over to you.~ */
  IF ~~ THEN REPLY #59026 /* ~"Great. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalLT("Mediate","GLOBAL",4)
NumTimesTalkedToGT(0)
~ THEN BEGIN 9 // from:
  SAY #59027 /* ~"Welcome back to Malako Brothers! What can I do for you today?"~ */
  IF ~~ THEN REPLY #59028 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #59029 /* ~"What is this place?"~ */ GOTO 3
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #59030 /* ~"I understand you're having a little trouble with your brother. I'd like to help."~ */ DO ~SetGlobal("Mediate","GLOBAL",2)
~ GOTO 7
  IF ~~ THEN REPLY #59031 /* ~"Have you heard anything about a deva in this town?"~ */ GOTO 4
  IF ~~ THEN REPLY #59032 /* ~"I'd like to buy something."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59033 /* ~"Your brother sent me. He says he wants a negotiation about the inheritance between you and your father."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #68291 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",4)
~ THEN BEGIN 10 // from:
  SAY #59034 /* ~"What do you want?"~ */
  IF ~~ THEN REPLY #59035 /* ~"I'd like to buy something."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~  Global("Mediate","GLOBAL",4)
!PartyHasItem("KestLeg")
~ THEN REPLY #59036 /* ~"I got your brother to agree to a binding negotiation. Will you?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
GiveItem("KestLeg",Protagonist)
~ GOTO 11
  IF ~  Global("Mediate","GLOBAL",4)
PartyHasItem("KestLeg")
~ THEN REPLY #59037 /* ~"I got your brother to agree to a binding negotiation. Will you?"~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 12
  IF ~  Global("Mediate","GLOBAL",3)
~ THEN REPLY #59038 /* ~"Your brother offered me some money to settle the dispute you're having his way."~ */ DO ~SetGlobal("Negotiate_Kester","GLOBAL",1)
~ GOTO 14
  IF ~~ THEN REPLY #59032 /* ~"I'd like to buy something."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #68291 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #59041 /* ~"Well, I... damn! Yes. Here. Here's my copy of the legacy. Look them over and tell one of us how you've decided."~ */
  IF ~~ THEN REPLY #59042 /* ~"I'll be back. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #59043 /* ~"Well, I... damn! All right. Look over our legacies and tell one of us how you've decided."~ */
  IF ~~ THEN REPLY #59044 /* ~"I'll be back. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 13 // from:
  SAY #59045 /* ~"Have you reached a verdict yet?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59046 /* ~"I've decided in favor of you. After reading the legacy, it's clear to me that you should get the entire inheritance."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
GivePartyGold(1000)
AddexperienceParty(131250)
~ GOTO 15
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59047 /* ~"I've decided that your brother should get all the money. It's clear that he's in the right."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ JOURNAL #59006 /* ~I resolved the dispute between the distiller and the blacksmith in favor of the blacksmith. The distiller was not pleased.~ */ GOTO 16
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59048 /* ~"The two of you should split the money down the middle. It's clear that your father wanted it this way."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
GivePartyGold(500)
~ GOTO 17
  IF ~~ THEN REPLY #59049 /* ~"Neither of you deserves the money. I'll pass your legacies off to someone who will use the money properly. Farewell."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ JOURNAL #59005 /* ~I resolved the dispute between the distiller and the blacksmith by swindling them both. They weren't pleased.~ */ GOTO 16
  IF ~~ THEN REPLY #59050 /* ~"Not yet. I'd like to take a look at your wares, though."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59051 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 1.5 2.5 5.2 9.5 10.3
  SAY #59052 /* ~"Oh, he did, did he? Well, I'll make sure your reward is more handsome if you decide my way... tell you what: You get his legacy from him, study it, and convince him that you'll arbitrate it. You'll get a nice reward, too. How's that sound?"~ */
  IF ~~ THEN REPLY #59022 /* ~"I'll need your copy of the legacy to look over."~ */ DO ~GiveItem("KestLeg",Protagonist)
~ GOTO 8
  IF ~  False()
~ THEN REPLY #59054 /* ~"That sounds like a deal. I'll go talk to him. Farewell."~ */ EXIT
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #59055 /* ~"I think I'm going with him on this one. He should get all the inheritance."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.0
  SAY #59056 /* ~"HA! Ha ha ha ha! I knew it!" He presses a bag of coins into your hands. "You have my thanks, friend, and you can come on back anytime! If you'll excuse me, I think it's time for a drink!"~ */
  IF ~~ THEN REPLY #59057 /* ~"Sure thing. Farewell."~ */ JOURNAL #59004 /* ~I resolved the dispute between the distiller and the blacksmith in favor of the distiller. In payment, I received a bag of coin.~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.1 13.3 14.2
  SAY #59058 /* ~His face turns bright red, and he screams, "WHAT? YOU LOUSY CROSS-TRADING THIEF! GET OUT OF MY STORE! OUT!"~ */
  IF ~~ THEN REPLY #59059 /* ~"All right, all right, I'm leaving."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.2
  SAY #59060 /* ~He splutters, "But... but... that's just... but..." He sighs. "All right. I accepted your word on this. Just don't expect any good treatment from me on this. Get out of my shop." He tosses you a bag of coin, a sour expression on his face. "I promised you this, and you'll have it. Take it."~ */
  IF ~~ THEN REPLY #59061 /* ~"Thanks. Farewell."~ */ JOURNAL #61386 /* ~I have decided the inheritance issue by deciding the two should split the proceeds. ~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 20 even though they appear after this state */
~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #59062 /* ~"Welcome back! What can I do for you?" His mood is positively ebullient.~ */
  IF ~~ THEN REPLY #59063 /* ~"I'd just like to take a look at your wares."~ */ DO ~StartStore("Kester",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #59064 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 20 even though they appear after this state */
~  GlobalGT("Mediate","GLOBAL",6)
~ THEN BEGIN 19 // from:
  SAY #59066 /* ~"Get out of my store before I call the guards. Now."~ */
  IF ~~ THEN REPLY #59067 /* ~"All right. I'm leaving."~ */ EXIT
END

IF WEIGHT #1 ~  CreatureInArea("AR3016")
GlobalLT("Mob_Dead","AR3016",3)
~ THEN BEGIN 20 // from:
  SAY #67918 /* ~"Help me! Stop them!"~ */
  IF ~~ THEN REPLY #67919 /* ~"I'll see what I can do..."~ */ EXIT
END
