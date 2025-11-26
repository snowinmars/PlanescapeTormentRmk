// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DROBERTA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DROBERTA~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",0)
~ THEN BEGIN 0 // from:
  SAY #58513 /* ~You see a well-dressed, middle-aged woman. She has a scowl on her face and appears to be looking for someone or something.~ */
  IF ~~ THEN REPLY #58514 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #58515 /* ~Ignore her.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #58516 /* ~She stops and stares at you for a moment before answering. "Who are you and what do you want of me?"~ */
  IF ~~ THEN REPLY #58517 /* ~Lie: "I'm Adahn and I have some questions..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Roberta_1","GLOBALLAW",-1)
IncrementGlobal("Adahn","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #58518 /* ~"I don't remember my name."~ */ GOTO 17
  IF ~~ THEN REPLY #58519 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 19.0
  SAY #58520 /* ~She offers you her hand. "Good day to you, cutter. I am Roberta."~ */
  IF ~~ THEN REPLY #58521 /* ~Taking her hand and bowing: "Well met, Lady Roberta."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ GOTO 3
  IF ~~ THEN REPLY #58522 /* ~"Never mind. Farewell."~ */ DO ~SetGlobal("Roberta","AR0700",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #58523 /* ~"I believe you had some questions for me?"~ */
  IF ~~ THEN REPLY #58524 /* ~"Yes, Lady."~ */ GOTO 4
  IF ~~ THEN REPLY #58525 /* ~"Never mind, Lady. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 5.0 6.1 7.1 8.1 9.1 12.0 13.0 14.0 15.1 16.0 20.3 21.1
  SAY #58526 /* ~"I am at your service. Please ask them."~ */
  IF ~~ THEN REPLY #58527 /* ~"I'm looking for a deva. I've been told he's in Curst."~ */ GOTO 5
  IF ~  Global("Snuff_Carl","GLOBAL",0)
~ THEN REPLY #58528 /* ~"You seem upset. Is something amiss?"~ */ GOTO 6
  IF ~~ THEN REPLY #58529 /* ~"Anything of interest happening here?"~ */ GOTO 13
  IF ~~ THEN REPLY #58530 /* ~"Can you tell me about Curst?"~ */ GOTO 14
  IF ~~ THEN REPLY #58531 /* ~"Who's in charge here?"~ */ GOTO 15
  IF ~~ THEN REPLY #58532 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #58533 /* ~She pauses to think. "I have heard that rumor as well. Unfortunately, I am unable to help you. I do not know the whereabouts of such a creature. You should inquire at the administration office in the town square."~ */
  IF ~~ THEN REPLY #58534 /* ~"I see. I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58536 /* ~"I thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1
  SAY #58538 /* ~She frowns. "Yes... my husband, Carl Parfidor, is not where he told me he would be. This is not the first time that he has lied to me about his whereabouts and I am beginning to think that he..." She pauses for a moment. "I am beginning to think he is with another woman. A harlot."~ */
  IF ~~ THEN REPLY #58539 /* ~"Why would you think that?"~ */ GOTO 7
  IF ~~ THEN REPLY #58541 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58544 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #58545 /* ~She sighs. "He was quite a ladies' man before we wed, especially among that type of woman, and I've heard rumors..." She looks angry. "If I find the rumors to be true then I have a surprise for him."~ */
  IF ~~ THEN REPLY #58546 /* ~"A surprise?"~ */ GOTO 8
  IF ~~ THEN REPLY #58548 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58550 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #58552 /* ~"Yes." She lifts her skirt, exposing her inner thigh. You see a sheathed dagger strapped to her leg. She draws the blade and gives you a wicked smile. "I think finding this protruding from his back would constitute a surprise. Do you not agree?" She puts the blade away.~ */
  IF ~~ THEN REPLY #58555 /* ~"So, you intend to kill him?"~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",1)
~ JOURNAL #58565 /* ~A woman named Roberta Parfidor wants her husband, Carl, dead. It seems he has a taste for other women and Roberta doesn't like it. Interesting.~ */ GOTO 9
  IF ~~ THEN REPLY #58558 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58561 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #58570 /* ~Her smile slowly fades as she considers her words. Finally she sighs and sheaths her blade. "I would if I could... but no, I am being a fool. Carl and I are no longer... intimate. I could never get close enough to deliver such a blow." She looks away for a moment. "Only one of his *women* could..." ~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58582 /* ~"I know a harlot named Kiri who needs money. Maybe she could get close enough to do the deed..."~ */ GOTO 10
  IF ~~ THEN REPLY #58583 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58584 /* ~"I must be going, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 21.0
  SAY #58585 /* ~She stares at you for a moment. "I see..." She glances about then leans in to whisper to you. "Would you be willing to approach her and offer her... employment? I'll pay you five hundred coin apiece upon completion of the deed."~ */
  IF ~~ THEN REPLY #58586 /* ~"That's not a lot of jink."~ */ GOTO 11
  IF ~~ THEN REPLY #58587 /* ~"I don't think so. Farewell."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~I refused to help Roberta Parfidor kill her husband, Carl.~ */ EXIT
  IF ~~ THEN REPLY #58588 /* ~"I can use the jink. I'll talk to Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~I agreed to help Roberta Parfidor kill her husband, Carl. I need to talk to the harlot, Kiri, and see if she will take the job.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #58591 /* ~She frowns. "Hmmm. That may be the case but it is what I am willing to pay. The two of you can be five hundred coins richer... or not. The choice is yours."~ */
  IF ~~ THEN REPLY #58592 /* ~"I'll pass. Farewell."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ JOURNAL #58589 /* ~I refused to help Roberta Parfidor kill her husband, Carl.~ */ EXIT
  IF ~~ THEN REPLY #58593 /* ~"I can use the jink. I'll talk to Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
IncrementGlobalOnceEx("GLOBALEvil_Roberta_1","GLOBALGood",-1)
~ JOURNAL #58590 /* ~I agreed to help Roberta Parfidor kill her husband, Carl. I need to talk to the harlot, Kiri, and see if she will take the job.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.1 22.1
  SAY #58594 /* ~She smiles. "Excellent. If she agrees, have her do the deed at her convenience but do not dawdle. Upon completion, you may contact me and I will see to your payment."~ */
  IF ~~ THEN REPLY #58595 /* ~"I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58596 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 4.2
  SAY #58597 /* ~She thinks for a moment. "I have heard that a young woman recently disappeared. The daughter of some barkeep. I know nothing of the details. Other than that, I can think of nothing out of the ordinary."~ */
  IF ~~ THEN REPLY #58598 /* ~"I see. I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58599 /* ~"I thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 4.3
  SAY #58600 /* ~She smiles at you and laughs. "Curst is a dung heap, and we are the excrement that fills it." She shrugs. "Nothing more need be said on this subject."~ */
  IF ~~ THEN REPLY #58601 /* ~"I see. I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58602 /* ~"I thank you. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 4.4
  SAY #58603 /* ~"Tovus Giljaf. He can be found at the administration office in the town square."~ */
  IF ~~ THEN REPLY #58604 /* ~"What can you tell me about Tovus?"~ */ GOTO 16
  IF ~~ THEN REPLY #58605 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58606 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #58607 /* ~"Tovus can be a rather... intense individual." She pauses to think. "I know little about him, other than the fact that he is a githzerai and a wizard."~ */
  IF ~~ THEN REPLY #58608 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58609 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 1.1
  SAY #58610 /* ~She looks at you with mild surprise. "Really. Are you, by chance, a petitioner? I understand that they often lose their memories."~ */
  IF ~~ THEN REPLY #58611 /* ~"What's a petitioner?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #58612 /* ~She pauses to think for a moment. "Petitioners... are those who have died and had their bodies reform on the plane that most closely reflects their beliefs in life. They usually have no knowledge of their previous existence. Perhaps this is the case with you."~ */
  IF ~~ THEN REPLY #58613 /* ~"Possibly... This rebirth. How many times can this happen?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #58614 /* ~"Well... I am not an expert in these affairs, but it is my understanding that it happens but once. Upon death the spirit then returns to the plane itself. Unless, of course, you have traveled to another plane. If that is the case then upon death you obtain oblivion." ~ */
  IF ~~ THEN REPLY #58615 /* ~"I see. In any case, I have no name to give you."~ */ GOTO 2
  IF ~~ THEN REPLY #58616 /* ~"I thank you. I must take my leave of you now. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 24 26 27 even though they appear after this state */
~  Global("Roberta","AR0700",1)
~ THEN BEGIN 20 // from:
  SAY #58617 /* ~You see Roberta. She smiles at your approach. "Good day to you, cutter. How may I serve you?"~ */
  IF ~  Global("Snuff_Carl","GLOBAL",1)
~ THEN REPLY #58618 /* ~"Do you still want your husband... dealt with?"~ */ GOTO 21
  IF ~  Global("Snuff_Carl","GLOBAL",2)
~ THEN REPLY #58619 /* ~"Do you still want your husband... dealt with?"~ */ GOTO 22
  IF ~  Global("Snuff_Carl","GLOBAL",3)
~ THEN REPLY #58620 /* ~"Do you still want your husband... dealt with?"~ */ GOTO 23
  IF ~~ THEN REPLY #58621 /* ~"I have some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58622 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #58623 /* ~She smiles at you. "Yes, I certainly do. Why do you ask?"~ */
  IF ~  GlobalGT("Know_Kiri","GLOBAL",0)
~ THEN REPLY #58624 /* ~"I know a harlot named Kiri who needs money. Maybe she could get close enough to do the deed..."~ */ GOTO 10
  IF ~~ THEN REPLY #58625 /* ~"Just curious. I have some other questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #58626 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #58627 /* ~She frowns at you. "Yes, I certainly do. However, you refused my offer of five hundred coin apiece for you and your accomplice. Does this mean you have reconsidered my offer?"~ */
  IF ~~ THEN REPLY #58628 /* ~"No, not really. Farewell."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",2)
~ EXIT
  IF ~~ THEN REPLY #58629 /* ~"I can use the jink. I'll talk to Kiri."~ */ DO ~SetGlobal("Snuff_Carl","GLOBAL",3)
~ GOTO 12
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #58637 /* ~She frowns at you. "Yes, I certainly do. You accepted the contract already, has the deed been done?"~ */
  IF ~~ THEN REPLY #58638 /* ~"No, not yet. I'm working on it. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 26 27 even though they appear after this state */
~  !Dead("BDKIRI")
Global("Carl_Snuffed","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY #58639 /* ~You see Roberta. She looks quite happy for once. She glances about, examining her surroundings carefully. "Hello. I can only assume that you've come for your money?" She smiles at you.~ */
  IF ~~ THEN REPLY #58640 /* ~"Yes, the job you hired me to do has been completed."~ */ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #58641 /* ~She glances about again before answering. "Very well. Here is the coin I promised you." A momentary look of concern crosses her face. "Uh... your friend did a... *thorough* job on Carl. My compliments to the both of you." She hands you a heavy purse. "Here is your share; I've paid Kiri already."~ */
  IF ~~ THEN REPLY #58642 /* ~"Thank you. It's been a pleasure doing business with you."~ */ DO ~GivePartyGold(500)
AddexperienceParty(2000)
SetGlobal("Carl_Snuffed","GLOBAL",2)
SetGlobal("Snuff_Carl","GLOBAL",4)
~ GOTO 32
END

IF WEIGHT #1 /* Triggers after states #: 27 even though they appear after this state */
~  Global("Carl_Snuffed","GLOBAL",2)
~ THEN BEGIN 26 // from:
  SAY #58643 /* ~You see Roberta. "Hello again, cutter. Can I help you?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58644 /* ~"Yes, I would like to see Tovus Giljaf. Do you think you could arrange it?"~ */ GOTO 33
  IF ~~ THEN REPLY #4773 /* ~"No, that's it. So long."~ */ EXIT
END

IF WEIGHT #0 ~  Global("Roberta_Betrayed","GLOBAL",1)
~ THEN BEGIN 27 // from:
  SAY #58645 /* ~You see Roberta. When she notices you a look of rage overcomes her. "You! You maggot infested dung heap! Look what has become of me because of you!" Her face is so red you think she may burst.~ */
  IF ~~ THEN REPLY #58646 /* ~"Because of me? I'm not the one who plotted the death of my spouse."~ */ GOTO 28
  IF ~~ THEN REPLY #58647 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #58648 /* ~Her eyes narrow to slits and she practically spits her words at you. "You betrayed my trust! Carl gloated over your treachery before he sent me here! You spawn of a harlot!"~ */
  IF ~~ THEN REPLY #58649 /* ~"Speaking of harlots, did Kiri make it down here as well?"~ */ GOTO 29
  IF ~~ THEN REPLY #58650 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #58651 /* ~She screams at you. "Arrrrrrhhh! You know the answer, lover of goats! You wish to torture me more with this play of innocence!" ~ */
  IF ~~ THEN REPLY #58652 /* ~"Pretend I don't and tell me what happened to her."~ */ GOTO 30
  IF ~~ THEN REPLY #58653 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #58654 /* ~"The treacherous wench. She set herself up as Carl's mistress and avoided prison!"~ */
  IF ~~ THEN REPLY #58655 /* ~"Smart girl... Well, I must be going now. Farewell."~ */ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #58656 /* ~She glares at you, her eyes dripping hatred. "Yes... walk away, but know this. I will not be in this pit forever, and I will not forget you or the harlot!"~ */
  IF ~~ THEN REPLY #58657 /* ~Ignore her and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 25.0
  SAY #58658 /* ~She gives you a slight bow. "Is there anything else I can do for you?"~ */
  IF ~  Global("See_Tovus","GLOBAL",1)
~ THEN REPLY #58659 /* ~"Yes, I would like to see Tovus Giljaf. Do you think you could arrange it?"~ */ GOTO 33
  IF ~~ THEN REPLY #58660 /* ~"No, I don't think so. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 26.0 32.0
  SAY #58661 /* ~She smiles at you. "Tovus... I'm sorry, cutter. He's very busy these days and I've not been able to contact him myself."~ */
  IF ~~ THEN REPLY #58662 /* ~"Thank you. Farewell."~ */ EXIT
END
