// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DLENNY.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DLENNY~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #36484 /* ~You see a feral-looking young man in shoddy clothes. His eyes dart about as he scans his surroundings. He notices your approach and begins eyeing you warily.~ */
  IF ~~ THEN REPLY #36525 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #36526 /* ~Ignore the man.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #36485 /* ~He looks you up and down, then glances about. Returning his attention to you, he gives you a wicked grin. "You'd best have a good reason for disturbing Lenny, berk."~ */
  IF ~~ THEN REPLY #36527 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36528 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 32.0
  SAY #36486 /* ~He laughs at you. "I ain't no tout. If you've got questions, go find one." His smile broadens. "You'd best push off before I have to bleed you."~ */
  IF ~~ THEN REPLY #36529 /* ~"I just need to ask you a few questions..."~ */ GOTO 3
  IF ~  Global("Know_Lenny","GLOBAL",1)
~ THEN REPLY #36530 /* ~"What if I told you Byron Pikit sent me?"~ */ GOTO 4
  IF ~~ THEN REPLY #36531 /* ~"Never mind, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #36487 /* ~He stops smiling and frowns at you. "No, I don't answer questions, berk. I told you to go find a tout, now get." He glares at you.~ */
  IF ~~ THEN REPLY #36532 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1
  SAY #36488 /* ~He stops smiling and examines you for a while. His eyes linger on your scars, and he swallows slightly. After a moment, a frown settles on his face and he appears to be nervous. "Pikit... sent you? Why?"~ */
  IF ~~ THEN REPLY #36533 /* ~"He said you could answer some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36534 /* ~"Never mind, it's not important. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 6.2 7.1 8.0 28.2 29.1 30.1 31.0
  SAY #36489 /* ~He frowns. "What questions..." You notice he looks rather tense.~ */
  IF ~  Global("Morte_Stolen","GLOBAL",1)
!Global("AR0508_Visited","GLOBAL",1)
~ THEN REPLY #36535 /* ~"I've had a skull stolen from me and I want it back. Do you know who would do such a thing?"~ */ JOURNAL #66540 /* ~Lenny, the thief, says that someone named Lothar is probably responsible for Morte being stolen. I'll have to pay this Lothar a visit.~ */ GOTO 6
  IF ~  Global("Stolen_Papers","GLOBAL",1)
~ THEN REPLY #36536 /* ~"I want to ask you about the papers you stole from Trist."~ */ GOTO 9
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36537 /* ~"I'm interested in learning the thieving art. Can you teach me?"~ */ GOTO 27
  IF ~~ THEN REPLY #36538 /* ~"What can you tell me about this ward?"~ */ GOTO 28
  IF ~~ THEN REPLY #36539 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #36490 /* ~He hesitates for a moment and then relaxes slightly. You get the impression that he expected you to ask about something else. He smiles at you. "Stolen skull, huh? Well that'd be the work of Lothar's boys, not me."~ */
  IF ~  !Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36540 /* ~"Who is Lothar?"~ */ DO ~SetGlobal("Know_Lothar","GLOBAL",1)
~ GOTO 7
  IF ~  Global("Know_Lothar","GLOBAL",1)
~ THEN REPLY #36541 /* ~"I've heard of Lothar, I just need to find him."~ */ GOTO 8
  IF ~~ THEN REPLY #36542 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36543 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #36491 /* ~He smiles evilly. "Master of the Bones is what they call him, and that's what he is. He is the highest of the high priests of some major power, I don't know who." He laughs. "He sets his kip up in a place called the Bones of the Night."~ */
  IF ~~ THEN REPLY #36544 /* ~"Where is this place?"~ */ JOURNAL #66541 /* ~Lenny says that Lothar can be found in a wrecked building south of the siege tower. I'll go ask him about Morte being stolen.~ */ GOTO 8
  IF ~~ THEN REPLY #36545 /* ~"I see. I have other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36546 /* ~"Thank you, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.1 7.0
  SAY #36492 /* ~He frowns. "Now I don't know that I want to be the one to answer that question..." He glares at you for a while, then shrugs. "Ruined building just south of the siege tower, you can't miss it." He smiles evilly again.~ */
  IF ~~ THEN REPLY #36547 /* ~"I have some more questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36548 /* ~"All right, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #36493 /* ~He swallows hard and stares at you. You notice his muscles tense and it looks like he is ready to run. He puts one hand on his hip in a nonchalant manner but you can tell he is wound tight as a spring. "I don't know what you're talking about, berk. You'd best be off."~ */
  IF ~~ THEN REPLY #36549 /* ~Smile wickedly: "You know what I'm talking about, Lenny. Byron had you steal some papers from Trist. I'm here to collect them."~ */ GOTO 10
  IF ~~ THEN REPLY #36550 /* ~Truth: "Give me the papers you stole from Trist or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Lenny_1","GLOBALGood",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36551 /* ~Bluff: "Give me the papers you stole from Trist or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Lenny_1","GLOBALLaw",-1)
~ GOTO 10
  IF ~~ THEN REPLY #36552 /* ~"I've had enough of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 9.1 9.2
  SAY #36494 /* ~He swallows hard and the corner of one eye starts to twitch. He glances at the scars that cover your body, then tries to meet your gaze - but cannot. "Collect them... I... I destroyed the papers after I nicked them, just like Byron told me to." He finally meets your gaze.~ */
  IF ~  CheckStatGT(Protagonist,11,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36553 /* ~"Really? Then why are you so nervous, Lenny? Let me guess: Byron thinks you destroyed the papers but maybe you didn't. Maybe you kept them. A little blackmail material, perhaps?"~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
!Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #36554 /* ~"Then why are you so nervous, Lenny? I think you're lying."~ */ DO ~AddexperienceParty(1000)
SetGlobal("Lenny_Gave_Exp","GLOBAL",1)
~ GOTO 11
  IF ~  CheckStatGT(Protagonist,11,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67296 /* ~"Really? Then why are you so nervous, Lenny? Let me guess: Byron thinks you destroyed the papers but maybe you didn't. Maybe you kept them. A little blackmail material, perhaps?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,12,INT)
Global("Lenny_Gave_Exp","GLOBAL",1)
~ THEN REPLY #67297 /* ~"Then why are you so nervous, Lenny? I think you're lying."~ */ GOTO 11
  IF ~~ THEN REPLY #67298 /* ~"I must be going now, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1 10.2 10.3
  SAY #36495 /* ~He stares at you for just a moment, then suddenly turns to run.~ */
  IF ~  CheckStatGT(Protagonist,11,DEX)
~ THEN REPLY #36556 /* ~Grab him before he gets away.~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,12,DEX)
~ THEN REPLY #36557 /* ~Grab him before he gets away.~ */ GOTO 13
  IF ~~ THEN REPLY #36558 /* ~Let him go.~ */ DO ~RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #36496 /* ~Just as he starts to run you leap forward and grab him by the arm. He struggles for a moment but cannot match your strength. Finally he goes limp in your grasp. "All right, I didn't destroy them! I'll give them to you, just let me go." You loosen your grip.~ */
  IF ~~ THEN REPLY #36559 /* ~"Hand them over, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36560 /* ~"Why did you keep them, Lenny? Blackmail, I assume."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36561 /* ~"So you did keep them. Why?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #36497 /* ~Just as he starts to run you leap forward to grab him. He deftly steps out of your reach and begins to side step you. Seeing your quarry about to escape you make another, more desperate lunge at him. You fail to grab him but you do manage to bump into him hard, knocking him off balance. Your efforts foil his escape. "All right, I didn't destroy them! I'll give them to you, just let me go."~ */
  IF ~~ THEN REPLY #36562 /* ~"Hand them over, Lenny."~ */ GOTO 14
  IF ~  CheckStatGT(Protagonist,11,INT)
~ THEN REPLY #36563 /* ~"Why did you keep them, Lenny? Blackmail, I assume."~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,12,INT)
~ THEN REPLY #36564 /* ~"So you did keep them. Why?"~ */ GOTO 20
END

IF ~~ THEN BEGIN 14 // from: 12.0 13.0
  SAY #36498 /* ~He sighs. "I... I don't have them with me." You frown at him and see fear grow on his face. "I swear it! I don't have them! I put them in storage!" He continues to stare at you, breathing hard.~ */
  IF ~~ THEN REPLY #36565 /* ~"Then let's go get them."~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #36499 /* ~He shakes his head sadly. "We can't, they're in the warehouse and they're not open for business right now. Rumor has it there's some sort of management change going on... but I don't know if that's true. In any case, I can't get the papers." He looks at you sheepishly.~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36566 /* ~"I've taken care of that little matter, we can get the papers."~ */ GOTO 16
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36567 /* ~"I'll look into this and get the papers myself then."~ */ GOTO 16
  IF ~~ THEN REPLY #36568 /* ~"I've had enough of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 15.1 21.1
  SAY #36500 /* ~He shrugs. "Fine. I guess that snake Pikit wins again..." He looks at you defiantly.~ */
  IF ~~ THEN REPLY #36569 /* ~"Let's just go get the papers, Lenny."~ */ GOTO 17
  IF ~~ THEN REPLY #36570 /* ~"Actually, Trist wins this one, Lenny."~ */ GOTO 26
END

IF ~~ THEN BEGIN 17 // from: 16.0 26.0
  SAY #36501 /* ~"Go to the warehouse and tell the clerk *I'm here for a loan* and he'll give you the papers. Later, berk." He suddenly bolts and runs away.~ */
  IF ~~ THEN REPLY #36571 /* ~Leave.~ */ DO ~AddexperienceParty(2000)
SetGlobal("Stolen_Papers","GLOBAL",3)
RunAwayFromEx(Protagonist,TEN_AI_SECONDS,FALSE)
~ JOURNAL #36021 /* ~Lenny is keeping Trist's loan documents in the warehouse. I can get them from the clerk.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 12.1 13.1
  SAY #36502 /* ~He snorts and gives you a defiant look. "I kept them so I could turn stag on your boss Pikit and keep Trist off the block!" He shakes his head. "Blackmail my arse..."~ */
  IF ~~ THEN REPLY #36572 /* ~"Turn stag?"~ */ GOTO 19
  IF ~~ THEN REPLY #36573 /* ~"Why turn stag on him?"~ */ GOTO 21
  IF ~~ THEN REPLY #36574 /* ~"By the way, Pikit is not my boss."~ */ GOTO 22
END

IF ~~ THEN BEGIN 19 // from: 18.0 20.0
  SAY #36503 /* ~"Yes, turn stag." He looks at you for a moment until he realizes you don't know what he means. "It means I was going to turn him in, betray him to the Harmonium."~ */
  IF ~~ THEN REPLY #36575 /* ~"Why turn stag on him?"~ */ GOTO 21
  IF ~~ THEN REPLY #36576 /* ~"By the way, Pikit is not my boss."~ */ GOTO 22
END

IF ~~ THEN BEGIN 20 // from: 12.2 13.2
  SAY #36504 /* ~He snorts and gives you a defiant look. "I kept them so I could turn stag on your boss Pikit and keep Trist off the block!"~ */
  IF ~~ THEN REPLY #36577 /* ~"Turn stag?"~ */ GOTO 19
  IF ~~ THEN REPLY #36578 /* ~"Why turn stag on him?"~ */ GOTO 21
  IF ~~ THEN REPLY #36579 /* ~"By the way, Pikit is not my boss."~ */ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 18.1 19.0 20.1
  SAY #36505 /* ~He looks at you with some pride. "I may be a thief, but I do have some standards. I won't kill some poor sod, and I won't do what Pikit did to Trist and her husband." He shakes his head and looks away. "I told your boss that what he was doing was wrong, and he laughed at me."~ */
  IF ~~ THEN REPLY #36580 /* ~"By the way, Pikit is not my boss."~ */ GOTO 22
  IF ~~ THEN REPLY #36581 /* ~"Let's go get the papers, Lenny."~ */ GOTO 16
END

IF ~~ THEN BEGIN 22 // from: 18.2 19.1 20.2 21.0 26.1
  SAY #36506 /* ~He stares at you in disbelief. "You serious? I thought... but you said..." He watches you closely for a moment and then laughs. "You gave me the peel so I'd spill the chant to you!" He shakes his head and looks at you with respect. "Good job, cutter."~ */
  IF ~~ THEN REPLY #36582 /* ~"Let's go get the papers, Lenny."~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #36507 /* ~He shakes his head sadly. "We can't, they're in the warehouse and they're not open for business right now. Rumor has it there's some sort of management change going on... but I don't know if that's true. In any case, I can't get the papers." He looks at you sheepishly. "That's why I haven't helped Trist myself, cutter. I can't get the sodding papers."~ */
  IF ~  Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36583 /* ~"I've taken care of that little matter, we can get the papers."~ */ GOTO 24
  IF ~  !Global("Warehouse_Clear","GLOBAL",4)
~ THEN REPLY #36584 /* ~"I'll look into this and get the papers myself then."~ */ GOTO 24
  IF ~~ THEN REPLY #36585 /* ~"I've had enough of this. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0 23.1 35.1 36.0
  SAY #36508 /* ~He smiles at you. "Go to the warehouse and tell the clerk *I'm here for a loan* and he'll give you Trist's papers. If you then tell him *I gave Pikit the laugh* he'll give you a bonus..."~ */
  IF ~~ THEN REPLY #36586 /* ~"What bonus?"~ */ DO ~AddexperienceParty(4000)
SetGlobal("Stolen_Papers","GLOBAL",3)
SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #36509 /* ~He laughs. "Evidence, cutter. It'll take Pikit off the streets for a long, long time if you give it to the right person..." He thinks for a moment. "If there's someone in the Harmonium you think you can trust, give it to them."~ */
  IF ~  Dead("Byron")
~ THEN REPLY #36587 /* ~"He's off the streets, Lenny. Byron is dead."~ */ GOTO 41
  IF ~~ THEN REPLY #39445 /* ~"All right. Farewell."~ */ JOURNAL #36022 /* ~Lenny is keeping evidence of Byron Pikit's illegal activities in the warehouse. He suggested I take the evidence to someone in the Harmonium that I can trust. I can get the evidence if I talk to the clerk.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 16.1
  SAY #36510 /* ~He frowns. "What do you mean?"~ */
  IF ~~ THEN REPLY #36588 /* ~"None of your business."~ */ GOTO 17
  IF ~~ THEN REPLY #36589 /* ~"I'm not working for Pikit, Lenny."~ */ DO ~AddexperienceParty(1000)
~ GOTO 22
END

IF ~~ THEN BEGIN 27 // from: 5.2 33.1 34.1 38.1 40.1
  SAY #36511 /* ~"You sure you want to give up your current profession and become a thief?"~ */
  IF ~~ THEN REPLY #36590 /* ~"Yes..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 42
  IF ~~ THEN REPLY #52390 /* ~"No, let me think about it for a while. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 5.3
  SAY #36512 /* ~He looks around then shrugs. "This is the Lower Ward, home of the common people. Life here isn't as desperate as it is in the Hive, but not as good as it is in the Clerk's Ward." He looks around again. "Other than that, there's not much to be said."~ */
  IF ~~ THEN REPLY #36591 /* ~"What can you tell me about the Hive?"~ */ GOTO 29
  IF ~~ THEN REPLY #36592 /* ~"What can you tell me about the Clerk's Ward?"~ */ GOTO 30
  IF ~~ THEN REPLY #36593 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36594 /* ~"Thank you, I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 30.0
  SAY #36513 /* ~He shakes his head and smiles. "I guess you would call it the slums of Sigil. Lots of poor sods there with no place to go other than the dead-book." He pauses. "Nothing else to say about it."~ */
  IF ~~ THEN REPLY #36595 /* ~"What can you tell me about the Clerk's Ward?"~ */ GOTO 30
  IF ~~ THEN REPLY #36596 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36597 /* ~"Thank you, I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1 29.0
  SAY #36514 /* ~He smiles. "The name says it all, berk. Clerks, clerks, and more clerks. If you want to push some papers around, or have papers pushed at you, it's the place to go." He shrugs. "Nothing else to say about it."~ */
  IF ~~ THEN REPLY #36598 /* ~"What can you tell me about the Hive?"~ */ GOTO 29
  IF ~~ THEN REPLY #36599 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36600 /* ~"Thank you, I must be going now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #36515 /* ~He smiles then barks out a laugh. "Most folks believe Sigil to be the center of the multiverse. Personally, I think it's the arse-end and the sods that live here are the dung it excretes." He continues to smile at you.~ */
  IF ~~ THEN REPLY #36601 /* ~"I have some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #36602 /* ~"Thank you, I must be going now. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 33 38 40 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 32 // from:
  SAY #36516 /* ~You see Lenny. He gives you a mock smile at your approach. "Well hello again, berk. To what do I owe this pleasure?"~ */
  IF ~~ THEN REPLY #36603 /* ~"I have some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #36604 /* ~"I must be going now. Farewell."~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 38 40 even though they appear after this state */
~  Global("Stolen_Papers","GLOBAL",2)
~ THEN BEGIN 33 // from:
  SAY #36517 /* ~You see Lenny. He looks less than happy at seeing you. "What do you want, berk?"~ */
  IF ~~ THEN REPLY #36605 /* ~"I have some questions..."~ */ GOTO 34
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36606 /* ~"I would like to learn the thieving art. Can you teach me?"~ */ GOTO 27
  IF ~~ THEN REPLY #36607 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #36518 /* ~He frowns. "No more questions, no more answers. Go back to your boss, Pikit, and tell him to leave me be." He glares at you.~ */
  IF ~~ THEN REPLY #36608 /* ~"Pikit is not my boss."~ */ GOTO 35
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36609 /* ~"I'm interested in learning the thieving art. Can you teach me?"~ */ GOTO 27
  IF ~~ THEN REPLY #36610 /* ~"Fine, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #36519 /* ~He stares at you in disbelief. "You serious? I thought... but earlier you said..." He watches you closely for a moment and then laughs. "You gave me the peel so I'd spill the chant to you!" He shakes his head and looks at you with respect. "Good job, cutter." He pauses. "How would you like to give Pikit the laugh?"~ */
  IF ~~ THEN REPLY #36611 /* ~"Give him the laugh?"~ */ GOTO 36
  IF ~~ THEN REPLY #36612 /* ~"Yes, I would like that."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36613 /* ~"No, I don't really care now that I've got what I came for."~ */ GOTO 37
  IF ~~ THEN REPLY #36614 /* ~"I don't think so, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #36520 /* ~He smiles. "Yes, give him the laugh... Take him off the streets, put him away, that sort of thing." ~ */
  IF ~~ THEN REPLY #36615 /* ~"Yes, I would like that."~ */ DO ~SetGlobal("Evidence_Papers","GLOBAL",3)
~ GOTO 24
  IF ~~ THEN REPLY #36616 /* ~"No, I don't really care now that I've got what I came for."~ */ GOTO 37
  IF ~~ THEN REPLY #36617 /* ~"I don't think so, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 35.2 36.1
  SAY #36521 /* ~He shrugs. "Well, that says it all then. Farewell, berk."~ */
  IF ~~ THEN REPLY #36618 /* ~"Farewell."~ */ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 40 even though they appear after this state */
~  GlobalGT("Evidence_Papers","GLOBAL",2)
~ THEN BEGIN 38 // from:
  SAY #36522 /* ~You see Lenny. He smiles at your approach. "Hello, cutter. What can I do for you?"~ */
  IF ~~ THEN REPLY #36619 /* ~"I have some questions..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36620 /* ~"I'm interested in learning the thieving art. Can you teach me?"~ */ GOTO 27
  IF ~~ THEN REPLY #36621 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0 40.0
  SAY #36523 /* ~"I've told you everything I know, cutter. I don't have any more answers for you."~ */
  IF ~~ THEN REPLY #36622 /* ~"Fine, farewell."~ */ EXIT
END

IF WEIGHT #0 ~  GlobalGT("Byron_Arrested","GLOBAL",0)
~ THEN BEGIN 40 // from:
  SAY #36524 /* ~You see Lenny. He smiles at your approach. "Hello, cutter. I heard about Byron and I couldn't be happier." He grins. "What can I do for you?"~ */
  IF ~~ THEN REPLY #36623 /* ~"I have some questions..."~ */ GOTO 39
  IF ~  
!Class(Protagonist,THIEF)
~ THEN REPLY #36624 /* ~"I'm interested in learning the thieving art. Can you teach me?"~ */ GOTO 27
  IF ~~ THEN REPLY #36625 /* ~"Nothing, farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 25.0
  SAY #39446 /* ~He hesitates then smiles wickedly. "Really? How wonderful... it couldn't have happened to a nicer person."~ */
  IF ~~ THEN REPLY #39447 /* ~"Farewell, Lenny."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 27.0
  SAY #52391 /* ~"Show me what you know and I'll give you some pointers." He watches you carefully as you demonstrate what you know. At several points he stops you and shows you ways to improve upon your skills. Within a few hours' time you think you feel comfortable with your abilities as a thief.~ */
  IF ~  Global("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Thank you, Lenny."~ */ DO ~SetGlobal("Thief_Training","GLOBAL",3)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ GOTO 43
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
HasItem("Zpunch",Myself)
~ THEN REPLY #52392 /* ~"Thank you, Lenny."~ */ GOTO 43
  IF ~  !HasItem("Zpunch",Myself)
~ THEN REPLY #64222 /* ~"Thank you. I must be going."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0 42.1
  SAY #64223 /* ~Lenny smiles at you and nods his head in thought. "Here, cutter. Take these as well. A gift from Lenny, to help you out in your new profession... I'm not going to be needing them anymore." He hands you a pair of punch daggers.~ */
  IF ~~ THEN REPLY #64224 /* ~"Thank you, Lenny. Farewell."~ */ DO ~GiveItem("Zpunch",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #64783 /* ~"Show me what you know and I'll give you some pointers." He watches you carefully as you demonstrate what you know. At several points he stops you and shows you ways to improve upon your skills. Within a few hours' time you think you feel comfortable with your abilities as a thief.~ */
  IF ~~ THEN REPLY #64784 /* ~"Thank you. I must be going."~ */ EXIT
END
