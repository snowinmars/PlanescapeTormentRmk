// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCRSSMTH.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCRSSMTH~

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #3168 /* ~This sour-looking, burly man glares at you as you interrupt his work. He seems a little slow, but earnest - not as poisonous as the others in this town. "Aye? What d'yeh want?"~ */
  IF ~~ THEN REPLY #3169 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #61319 /* ~"What is this place?"~ */ GOTO 7
  IF ~~ THEN REPLY #61320 /* ~"Have you heard anything about a deva in Curst?"~ */ GOTO 8
  IF ~~ THEN REPLY #61321 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  GlobalLT("Mediate","GLOBAL",3)
NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from:
  SAY #61322 /* ~The smith looks at you irritably. "What d'yeh want now?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61344 /* ~"I've come from your brother about a question of debts between you two..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61345 /* ~"I've heard there's some trouble between you and your brother. I'd like to help."~ */ GOTO 9
  IF ~~ THEN REPLY #61347 /* ~"Have you heard anything about a deva in Curst?"~ */ GOTO 8
  IF ~~ THEN REPLY #61348 /* ~"I'd like to buy something."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61349 /* ~"Nothing, thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0
  SAY #61323 /* ~"I'm Crumplepunch Malako, the town's smith. Yeh want somethin'?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61350 /* ~"I've come from your brother about a question of debts between you two..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61351 /* ~"I've heard there's some trouble between you and your brother. I'd like to help."~ */ GOTO 9
  IF ~~ THEN REPLY #61352 /* ~"I'd like to look at your wares."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61353 /* ~"No thanks. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",2)
GlobalLT("Mediate","GLOBAL",5)
~ THEN BEGIN 3 // from:
  SAY #61324 /* ~"Well? What's yer progress on this matter?"~ */
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
!PartyHasItem("CrumLeg")
~ THEN REPLY #61354 /* ~"Your brother has agreed to allow me to mediate. I'll need your copy of the legacy to determine your inheritance."~ */ DO ~GiveItem("CrumLeg",Protagonist)
SetGlobal("Mediate","GLOBAL",5)
~ GOTO 4
  IF ~  Global("Negotiate_Kester","GLOBAL",1)
PartyHasItem("CrumLeg")
~ THEN REPLY #61355 /* ~"Your brother has also agreed to allow me to mediate."~ */ DO ~SetGlobal("Mediate","GLOBAL",5)
~ GOTO 5
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
Global("Negotiate_Kester","GLOBAL",1)
~ THEN REPLY #61356 /* ~"I've decided you should have all the money. It's only fair, you being the older brother and all."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~~ THEN REPLY #61357 /* ~"It's coming along. I need to see your wares..."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61358 /* ~"It's coming along. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #61325 /* ~"Well... all right. I guess yeh got t' study it up and make sure it's the up'n'up." He passes you a crumpled wad of paper. "Jest let one of us know."~ */
  IF ~~ THEN REPLY #61359 /* ~"Thanks. I'll let you know when I make a decision."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #61326 /* ~"Good. Then go off and make up yer mind. Let one of us know when yeh've made a decision."~ */
  IF ~~ THEN REPLY #61360 /* ~"I will. Farewell."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",5)
~ THEN BEGIN 6 // from:
  SAY #61327 /* ~"Have yeh made up yer mind yet?"~ */
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61361 /* ~"I've decided in favor of your brother. After reading the legacies, it's clear to me that he should get the entire inheritance."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",6)
AddexperienceParty(131250)
~ GOTO 12
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61362 /* ~"I've decided that you should own the distillery and get your father's money. It's clear that you're in the right."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",7)
AddexperienceParty(131250)
~ GOTO 13
  IF ~  PartyHasItem("KestLeg")
PartyHasItem("CrumLeg")
~ THEN REPLY #61363 /* ~"The two of you should split the money from the two businesses down the middle. It's clear that your father wanted it this way."~ */ DO ~TakePartyItemNum("KestLeg",1)
TakePartyItemNum("CrumLeg",1)
SetGlobal("Mediate","GLOBAL",8)
AddexperienceParty(150000)
~ GOTO 14
  IF ~~ THEN REPLY #61364 /* ~"Neither of you deserves this inheritance. I'll pass your legacies off to someone who will use the money properly. Farewell."~ */ DO ~SetGlobal("Mediate","GLOBAL",9)
IncrementGlobalOnceEx("GLOBALEvil_Mediate_1","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #61365 /* ~"Not yet. I'd like to take a look at your wares, though."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61366 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 0.1
  SAY #61328 /* ~"It's a smithy, yeh dolt. D'yeh want somethin' or no?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61367 /* ~"I've come from your brother about a question of debts between you two..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61368 /* ~"I've heard there's some trouble between you and your brother. I'd like to help."~ */ GOTO 9
  IF ~~ THEN REPLY #61369 /* ~"I'd like to take a look at your wares."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61370 /* ~"Have you heard anything about a deva in Curst?"~ */ GOTO 8
  IF ~~ THEN REPLY #61371 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 0.2 1.2 7.3
  SAY #61329 /* ~"A wha'? Deva? Ain't that one o' them angel things? No, we ain't got one here." He pauses. "D'yeh want somethin' of me?"~ */
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #61372 /* ~"I've come from your brother about a question of debts between you two..."~ */ GOTO 9
  IF ~  Global("Mediate","GLOBAL",1)
~ THEN REPLY #61373 /* ~"I've heard there's some trouble between you and your brother. I'd like to help."~ */ GOTO 9
  IF ~~ THEN REPLY #61374 /* ~"I'd like to take a look at your wares."~ */ DO ~StartStore("Crumple1",Protagonist)
~ EXIT
  IF ~  False()
~ THEN REPLY #61375 /* ~"I've heard there's some trouble between you and your brother. I'd like to help."~ */ EXIT
  IF ~~ THEN REPLY #67886 /* ~"Thanks for your time. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.0 1.1 2.0 2.1 7.0 7.1 8.0 8.1
  SAY #61330 /* ~"Oh, yeh have, have yeh? Is my business with my book-learned brother the whole town's gossip, then? Is my younger brother spreadin' stories against me? Am I t' be slandered jest 'cause I ain't educated? The planes be against me!" He shakes his fist at the sky.~ */
  IF ~  !Global("Mediate","GLOBAL",2)
~ THEN REPLY #61376 /* ~"I'm actually interested in clearing the matter up."~ */ DO ~SetGlobal("Mediate","GLOBAL",3)
~ GOTO 10
  IF ~  Global("Mediate","GLOBAL",2)
~ THEN REPLY #66570 /* ~"I'm actually interested in clearing the matter up."~ */ DO ~SetGlobal("Mediate","GLOBAL",4)
~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1
  SAY #61331 /* ~He looks at you shrewdly. "Here's the story, then: Our father was a barmy ol' bastard, but a wealthy one. He left us his smithy and his distillery when he died... but now my brother's tryin' t' cut me out of the distillery, which always made more coin, and I'm tryin' to get it back. I got a legacy to prove it, but I ain't so smart with this stuff and I don't trust anyone in this town t'help me. Yeh help me, I'll give yeh some jink, and I'll live by yer decision."~ */
  IF ~  !PartyHasItem("CrumLeg")
~ THEN REPLY #61377 /* ~"All right. I'll need your legacy to look it over."~ */ DO ~GiveItem("CrumLeg",Protagonist)
~ JOURNAL #61381 /* ~I have agreed to help the blacksmith in his struggle with his brother, the distiller, over their father's inheritance.~ */ GOTO 11
  IF ~  False()
~ THEN REPLY #61378 /* ~"All right. I'll figure something out."~ */ JOURNAL #61381 /* ~I have agreed to help the blacksmith in his struggle with his brother, the distiller, over their father's inheritance.~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #61332 /* ~"Well... all right. I guess yeh got t' study it up and make sure it's on the up'n'up." He passes you a crumpled wad of paper.~ */
  IF ~~ THEN REPLY #61379 /* ~"Thanks. I'll let you know what happens."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.0
  SAY #61333 /* ~"He gets ALL of it?" His head sinks. "I'll have t' work doubly hard, then. Damn yeh, stranger, and yer cheatin' ways. Yeh need metal work, yeh come back here... but yer prices are goin' to be higher than any in town."~ */
  IF ~~ THEN REPLY #61380 /* ~"I'll remember that."~ */ JOURNAL #61384 /* ~I have decided the inheritance issue in favor of the distiller. ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 3.2 6.1
  SAY #61334 /* ~"All of it?" A light dawns in his eyes. "All of it?" He dances a little jig, and shakes your hand. "Yeh need quality smith work, friend, yeh come back here anytime! Right now, I'm thinkin' it's time t'get bubbed!"~ */
  IF ~~ THEN REPLY #61382 /* ~"Farewell, then."~ */ JOURNAL #61383 /* ~I have decided the inheritance issue in favor of the blacksmith. He's going to give me bargains on his work, he says.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 6.2
  SAY #61335 /* ~"Yeh mean split the proceeds from both businesses, aye? In that case, I'm in favor of it. Yeh done me a good turn, friend. Yeh ever need quality metal work done, yeh come here."~ */
  IF ~~ THEN REPLY #61385 /* ~"I will. Farewell."~ */ JOURNAL #61386 /* ~I have decided the inheritance issue by deciding the two should split the proceeds. ~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 6.3
  SAY #61336 /* ~"WHAT? Yeh rotten, lousy, thievin' bastard! Get out of my smithy! OUT!"~ */
  IF ~~ THEN REPLY #61387 /* ~"Farewell."~ */ JOURNAL #61388 /* ~I have decided the inheritance issue in favor of neither of them. Neither of them deserve their money.~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",7)
~ THEN BEGIN 16 // from:
  SAY #61337 /* ~"Yeh've come back, eh? Yeh need some work done?"~ */
  IF ~~ THEN REPLY #61389 /* ~"Let's see what you've got..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61390 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",8)
~ THEN BEGIN 17 // from:
  SAY #61338 /* ~"Yeh've come, eh, fair-trader? Let's see if I can give yeh a fair trade in return."~ */
  IF ~~ THEN REPLY #61391 /* ~"Let's see what you've got..."~ */ DO ~StartStore("Crumple2",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61392 /* ~"No, thanks. Farewell."~ */ EXIT
END

IF ~  Global("Mediate","GLOBAL",6)
~ THEN BEGIN 18 // from:
  SAY #61339 /* ~"Come back to gaze on a man yeh've ruined, eh? What d'yeh want?"~ */
  IF ~~ THEN REPLY #61342 /* ~"Let's see what you've got."~ */ DO ~StartStore("Crumple3",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #61343 /* ~"Nothing. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Mediate","GLOBAL",8)
~ THEN BEGIN 19 // from:
  SAY #61340 /* ~"Get out of my shop, yeh lousy cross-trader. Yeh'll do no business here this day."~ */
  IF ~~ THEN REPLY #61341 /* ~"Fine. Farewell."~ */ EXIT
END
