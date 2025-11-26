// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DYI'MINN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DYI'MINN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~  GlobalGT("Kill_Githyanki_KAPUTZ","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #44367 /* ~This feral, yellow-skinned man looks you over for a moment. His eyes widen, and he whips out his sword. "Dog! Githzerai-loving dog!" He lunges at you!~ */
  IF ~~ THEN REPLY #44368 /* ~Attack.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44369 /* ~Flee.~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 1 // from:
  SAY #44372 /* ~The man has rough, leathery skin with a pale yellow cast and gaunt features. His face is angular, his nose is small and highly placed, and his ears taper to points. A tracery of tattoos and scars cover his body. He is dressed in strange, gaudy leathers that look more ornamental than combat-ready. His eyes are like two small black stones and they track you as you approach. "You are the human seeking memories," he says, flatly. "I can help you."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44375 /* ~"You're a githyanki, aren't you?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44378 /* ~"Who and what are you?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44380 /* ~"Greetings, sword-ringer."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44385 /* ~"How do you know this?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44388 /* ~"What help can you offer?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44390 /* ~"I'm not interested, thanks. Farewell."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF WEIGHT #3 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",0)
~ THEN BEGIN 2 // from:
  SAY #44391 /* ~The man has rough, leathery skin with a pale yellow cast and gaunt features. His face is angular, his nose is small and highly placed, and his ears taper to points. A tracery of tattoos and scars cover his body. He is dressed in strange, gaudy leathers that look more ornamental than combat-ready. His eyes are like two small black stones and they track you as you approach. "You are the human seeking memories," he says, flatly. "I can help you."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"You're a githyanki, aren't you?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Who and what are you?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Greetings, sword-ringer."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"How do you know this?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"What help can you offer?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 7
  IF ~~ THEN REPLY #44402 /* ~"I'm not interested, thanks. Farewell."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 1.0 2.0 21.0 22.0
  SAY #44404 /* ~"I have the pleasure to be of that people." His voice is flat. "Do you wish my aid in recovering your memories?"~ */
  IF ~~ THEN REPLY #44405 /* ~"Who and what are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #44406 /* ~"Hmm. Not today, thanks."~ */ GOTO 8
END

IF ~~ THEN BEGIN 4 // from: 1.1 2.1 3.0 6.0 21.1 22.1
  SAY #44407 /* ~"I am Yi'minn. I am a githyanki angler. My people are the undisputed masters of the Astral Plane, where the gods go to die and the memories of the dead float like leaves in a pool. My duty is in retrieving the memory cores of the dead and gleaning them for information. I can locate your memories. You have only to pay the price."~ */
  IF ~~ THEN REPLY #44408 /* ~"What price would that be?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44410 /* ~"Not interested, thanks. Farewell."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 1.2 2.2 21.2 22.2
  SAY #44413 /* ~His face tightens momentarily, and his muscles tense as his hand flies involuntarily to his sword hilt. "You have addressed me in the speech of the githzerai dogs. Was this ignorance or insult?"~ */
  IF ~~ THEN REPLY #44416 /* ~"Ignorance."~ */ GOTO 12
  IF ~~ THEN REPLY #44417 /* ~"Insult."~ */ GOTO 11
  IF ~~ THEN REPLY #44419 /* ~"You're not a githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44422 /* ~"It was neither."~ */ GOTO 19
END

IF ~~ THEN BEGIN 6 // from: 1.3 2.3 21.3 22.3
  SAY #44425 /* ~"You have the look of one such. In my profession, we see many of your kind."~ */
  IF ~~ THEN REPLY #44432 /* ~"Who and what are you?"~ */ GOTO 4
  IF ~~ THEN REPLY #44434 /* ~"Leave me alone. I'm not interested in your quackery."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 1.4 2.4 21.4 22.4
  SAY #44437 /* ~"Am I not a githyanki? Do we not dwell on the fields of the Astral? I am an angler of memories that disappear. I know how to attract memories. I know how to catch them." He pauses and leans forward, conspiratorially. "I know how to *restore* them. All you need do is pay the price."~ */
  IF ~~ THEN REPLY #44439 /* ~"What price is that?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 9
  IF ~~ THEN REPLY #44441 /* ~"What can you tell me of the Astral Plane?"~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 20
  IF ~~ THEN REPLY #44445 /* ~"I'm not interested. Farewell."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 1.5 2.5 3.1 4.1 6.1 7.2 9.1 10.1 16.1 18.1 20.1
  SAY #44447 /* ~"Remember my offer, human. Should you desire your memories, you can find me here. Remember my words."~ */
  IF ~~ THEN REPLY #44450 /* ~"I'll do that. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 4.0 7.0 16.0 18.0 20.0 21.5 22.5 23.0
  SAY #44455 /* ~"It is a matter of a mere few coins. The price is negotiable. I ask for one hundred. You will determine the value of the memories I find and pay accordingly."~ */
  IF ~~ THEN REPLY #44457 /* ~"Sounds good. What do I have to do?"~ */ GOTO 10
  IF ~~ THEN REPLY #44458 /* ~"Perhaps later. Farewell."~ */ GOTO 8
END

IF ~~ THEN BEGIN 10 // from: 9.0 23.1
  SAY #44459 /* ~"If I am to bait my hook for your memories, I will need some of the memories you currently possess. I also require a place of concentration and quiet. If you will follow me, we will journey to one such place and I will make you whole once again. We go alone, with no companions."~ */
  IF ~~ THEN REPLY #44460 /* ~"Agreed. Let's go."~ */ DO ~SetGlobal("Yiminn_Trap","AR0500",1)
StartCutSceneMode()
StartCutSceneEx("Yiminn",FALSE)
~ EXIT
  IF ~~ THEN REPLY #44461 /* ~"Perhaps not right now."~ */ GOTO 8
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #44462 /* ~"I smell your trap, githyanki dog. Your *illithid* masters should have kept you in chains."~ */ DO ~AddexperienceParty(1000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 5.1 10.2 12.3 13.2 19.1 25.2 26.1 27.0
  SAY #44463 /* ~Without a word, and as smooth as silk, the angler draws his weapon and leaps to attack you!~ */
  IF ~~ THEN REPLY #44464 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44465 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.0 19.0
  SAY #44466 /* ~"You may beg forgiveness now." He stands stock-still, his eyes flickering across your body.~ */
  IF ~~ THEN REPLY #44467 /* ~"You have my apologies."~ */ GOTO 18
  IF ~~ THEN REPLY #44468 /* ~"Beg? To you?"~ */ GOTO 13
  IF ~~ THEN REPLY #44469 /* ~"What, you don't like being called a githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44470 /* ~"Unthinkable."~ */ GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #44471 /* ~"Yes." He shows his teeth. "You have uttered a nearly-unforgivable insult. You may beg forgiveness."~ */
  IF ~~ THEN REPLY #44472 /* ~"You have my apologies."~ */ GOTO 18
  IF ~~ THEN REPLY #44473 /* ~"What, you don't like being called a githzerai?"~ */ GOTO 14
  IF ~~ THEN REPLY #44474 /* ~"Unthinkable."~ */ GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 5.2 12.2 13.1
  SAY #44475 /* ~"I am a *githyanki.* I have nothing to do with the githzerai dogs. Can the same be said of you?"~ */
  IF ~~ THEN REPLY #44476 /* ~Truth: "I've known some githzerai. Nice people."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #44477 /* ~Lie: "I've known some githzerai. Nice people."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44478 /* ~Truth: "No, the githzerai are less than nothing to me."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",0)
~ THEN REPLY #44479 /* ~Lie: "No, the githzerai are less than nothing to me."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 16
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44480 /* ~Truth: "No, the githzerai are less than nothing to me."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALLawful_Yiminn_1","GLOBALLaw",1)
~ GOTO 17
  IF ~  Global("Yiminn_zerai","AR0500",1)
~ THEN REPLY #44481 /* ~Lie: "No, the githzerai are less than nothing to me."~ */ DO ~SetGlobal("Met_Githyanki","GLOBAL",1)
IncrementGlobalOnceEx("GLOBALChaotic_Yiminn_1","GLOBALLaw",-1)
~ GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 17.0
  SAY #44483 /* ~"So your sympathies lie with the githzerai dogs? So shall your corpse!" He draws his blade and attacks!~ */
  IF ~~ THEN REPLY #44484 /* ~Fight.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44488 /* ~Flee.~ */ DO ~Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 14.3
  SAY #44490 /* ~"No matter, then. It is as dust. Let us speak of other matters. You have memories that require retrieval. I can retrieve them. We need only decide on a price."~ */
  IF ~~ THEN REPLY #44491 /* ~"What price is that?"~ */ GOTO 9
  IF ~~ THEN REPLY #44492 /* ~"I'm not interested right now."~ */ GOTO 8
END

IF ~~ THEN BEGIN 17 // from: 14.4 14.5
  SAY #44493 /* ~His grin does not relax, nor does the tension evaporate from his body. "You say they are nothing to you, yet you addressed me in their greeting. What is the truth?"~ */
  IF ~~ THEN REPLY #44494 /* ~"You caught me. They're not bad people."~ */ GOTO 15
  IF ~~ THEN REPLY #44495 /* ~"They are nothing. I admitted my ignorance, admitted I misspoke, and apologize. Better?"~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 12.0 13.0 17.1
  SAY #44496 /* ~"That is good. The githzerai have blood like water, and their seed is weak. Let us speak of other matters: You have memories, and I can retrieve them. We need but agree on a price."~ */
  IF ~~ THEN REPLY #44497 /* ~"What is that price?"~ */ GOTO 9
  IF ~~ THEN REPLY #44498 /* ~"Let me get back to you on that."~ */ GOTO 8
END

IF ~~ THEN BEGIN 19 // from: 5.3
  SAY #44499 /* ~"It must be one or the other - calculated or ignorant. Which?"~ */
  IF ~~ THEN REPLY #44500 /* ~"It came from ignorance."~ */ GOTO 12
  IF ~~ THEN REPLY #44501 /* ~"It came from insult."~ */ GOTO 11
END

IF ~~ THEN BEGIN 20 // from: 7.1
  SAY #44502 /* ~"It is a no-place, a place between places, where mind is all that matters. It is the home of my people. When people die, their souls flee to the Outer Planes. As they pass through the Astral Plane, their memories are stripped from them and left to bob in the Silver Sea. I know my way around this sea. I can help retrieve your lost memories. All that remains is for us to agree upon a price."~ */
  IF ~~ THEN REPLY #44503 /* ~"What price is that?"~ */ GOTO 9
  IF ~~ THEN REPLY #44505 /* ~"Let me get back to you on that."~ */ GOTO 8
END

IF WEIGHT #4 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Anazi_Help","GLOBAL",1)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 21 // from:
  SAY #44504 /* ~"You seek your memories, do you not, human? I can retrieve them for you. Your lost look grows ever greater. You have but a small price to pay for peace of mind."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"You're a githyanki, aren't you?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Who and what are you?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Greetings, sword-ringer."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"How do you know this?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"What help can you offer?"~ */ GOTO 7
  IF ~~ THEN REPLY #44506 /* ~"What's the price?"~ */ GOTO 9
  IF ~~ THEN REPLY #44507 /* ~"Tell me more of your people."~ */ GOTO 23
  IF ~~ THEN REPLY #44508 /* ~"Not today, thanks. Farewell."~ */ GOTO 24
END

IF WEIGHT #5 /* Triggers after states #: 39 even though they appear after this state */
~  GlobalGT("Githzerai","GLOBAL",4)
Global("Anazi_Help","GLOBAL",0)
!NearbyDialog("DDakkon")
Global("Know_Yiminn","AR0500",1)
~ THEN BEGIN 22 // from:
  SAY #44509 /* ~"You seek your memories, do you not, human? I can retrieve them for you. Your lost look grows ever greater. You have but a small price to pay for peace of mind."~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44392 /* ~"You're a githyanki, aren't you?"~ */ GOTO 3
  IF ~  Global("Know_Githyanki","GLOBAL",0)
~ THEN REPLY #44393 /* ~"Who and what are you?"~ */ GOTO 4
  IF ~  GlobalGT("Know_Githzerai_Speak","GLOBAL",0)
~ THEN REPLY #44394 /* ~"Greetings, sword-ringer."~ */ DO ~SetGlobal("Yiminn_zerai","AR0500",1)
~ GOTO 5
  IF ~~ THEN REPLY #44398 /* ~"How do you know this?"~ */ GOTO 6
  IF ~~ THEN REPLY #44401 /* ~"What help can you offer?"~ */ GOTO 7
  IF ~~ THEN REPLY #44510 /* ~"What's the price?"~ */ GOTO 9
  IF ~~ THEN REPLY #44511 /* ~"Tell me more of your people."~ */ GOTO 23
  IF ~~ THEN REPLY #44512 /* ~"Not today, thanks. Farewell."~ */ GOTO 24
END

IF ~~ THEN BEGIN 23 // from: 21.6 22.6
  SAY #44513 /* ~"The answer may be contained in your lost memories. Let us begin, and you shall learn."~ */
  IF ~~ THEN REPLY #44514 /* ~"What's the price?"~ */ GOTO 9
  IF ~~ THEN REPLY #44515 /* ~"What's involved in this?"~ */ GOTO 10
  IF ~~ THEN REPLY #44516 /* ~"I don't think I'm interested yet."~ */ GOTO 24
END

IF ~~ THEN BEGIN 24 // from: 21.7 22.7 23.2
  SAY #44517 /* ~"When you change your mind - and you will, human, you will - return here."~ */
  IF ~~ THEN REPLY #44518 /* ~"Sure. Farewell."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",0)
!NearbyDialog("DDakkon")
~ THEN BEGIN 25 // from:
  SAY #44519 /* ~The man has rough, leathery skin with a pale yellow cast and gaunt features. His face is angular, his nose is small and highly placed, and his ears taper to points. A tracery of tattoos and scars cover his body. He is dressed in strange, gaudy leathers that look more ornamental than combat-ready. His eyes are like two small black stones and they track you as you approach. As you open your mouth, he holds up a hand: "I will not hear you, human. Do not speak to one of the People."~ */
  IF ~~ THEN REPLY #44520 /* ~"What are you talking about?"~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~~ THEN REPLY #44521 /* ~"I just have a few questions..."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44522 /* ~"Your 'People' are dogs who never should have slipped the leash of their *illithid* masters."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44523 /* ~"I merely had some questions for one of the honored githyanki."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ GOTO 28
  IF ~~ THEN REPLY #44524 /* ~"Fine, then."~ */ DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 39 even though they appear after this state */
~  Global("Know_Yiminn","AR0500",1)
!NearbyDialog("DDakkon")
~ THEN BEGIN 26 // from:
  SAY #44525 /* ~"I told you to speak to me no more. Are all humans as slow as you?"~ */
  IF ~~ THEN REPLY #44526 /* ~"I just want some questions answered..."~ */ GOTO 27
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44527 /* ~"Your 'People' are dogs who never should have slipped the leash of their *illithid* masters."~ */ GOTO 11
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44528 /* ~"I merely had some questions for one of the honored githyanki."~ */ GOTO 28
  IF ~~ THEN REPLY #44529 /* ~"Forget it, then."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.0 25.1 26.0
  SAY #44530 /* ~He gazes at you flatly. His mouth presses into a thin line. ~ */
  IF ~  Global("Know_Githyanki","GLOBAL",1)
~ THEN REPLY #44531 /* ~"Your 'People' are dogs who never should have slipped the leash of their *illithid* masters."~ */ GOTO 11
  IF ~~ THEN REPLY #44532 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.3 26.2
  SAY #44533 /* ~He pauses for a moment, and his eyes lock onto yours. "I bow to your honor, yet my knowledge would be as water to you."~ */
  IF ~~ THEN REPLY #44534 /* ~"Can you tell me about yourself?"~ */ GOTO 29
  IF ~~ THEN REPLY #44535 /* ~"Can you tell me about your people?"~ */ GOTO 30
  IF ~~ THEN REPLY #44536 /* ~"Can you tell me about the githzerai?"~ */ GOTO 31
  IF ~~ THEN REPLY #44537 /* ~"Very well, then. Farewell."~ */ GOTO 34
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #44538 /* ~"I am Yi'minn, an angler. I fish for the memories of the dead trapped in the Astral Plane."~ */
  IF ~~ THEN REPLY #44539 /* ~"Can you find my memories?"~ */ GOTO 32
  IF ~~ THEN REPLY #44540 /* ~"What can you tell me of the Astral Plane?"~ */ GOTO 33
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #44541 /* ~"If you honor our people, how is it you know nothing of them?" ~ */
  IF ~~ THEN REPLY #44542 /* ~"I want to know more than I already do."~ */ GOTO 38
  IF ~~ THEN REPLY #44543 /* ~"I just wanted to get you to talk to me."~ */ GOTO 38
END

IF ~~ THEN BEGIN 31 // from: 28.2
  SAY #44544 /* ~"They are our cast-off leavings. They beg for mercy. Their blood is thin as water and their minds equally so." He bares his teeth. "It is my duty and my pleasure to harry them and their quislings to a painful doom."~ */
  IF ~~ THEN REPLY #44545 /* ~"Nice. Can you answer some more questions for me?"~ */ JOURNAL #38976 /* ~I have discovered a rivalry between the githyanki and the githzerai. Apparently, they used to be the same race, but split millennia ago, and now their hatred for each other knows no bounds.~ */ GOTO 35
  IF ~~ THEN REPLY #44546 /* ~"Farewell, then."~ */ JOURNAL #38976 /* ~I have discovered a rivalry between the githyanki and the githzerai. Apparently, they used to be the same race, but split millennia ago, and now their hatred for each other knows no bounds.~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #44556 /* ~"I can... for a price."~ */
  IF ~~ THEN REPLY #44558 /* ~"What is that price?"~ */ GOTO 36
  IF ~~ THEN REPLY #44559 /* ~"I'll pay anything."~ */ GOTO 36
  IF ~~ THEN REPLY #44560 /* ~"Can we make a trade for something else?"~ */ GOTO 36
  IF ~~ THEN REPLY #44561 /* ~"Forget it. Answer some other questions for me."~ */ GOTO 35
  IF ~~ THEN REPLY #44562 /* ~"Forget it. Farewell."~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 29.1
  SAY #44563 /* ~"It is a no-place, a place between places, where mind is all that matters. It is the home of my people. When people die, their souls flee to the Outer Planes. As they pass through the Astral Plane, their memories are stripped from them and left to drift in the Silver Sea."~ */
  IF ~~ THEN REPLY #44564 /* ~"I see. Can you answer more questions for me?"~ */ GOTO 35
  IF ~~ THEN REPLY #44565 /* ~"Thanks. Farewell."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 28.3 31.1 32.4 33.1 35.0
  SAY #44566 /* ~"I have answered your questions once. Do not come to me again."~ */
  IF ~~ THEN REPLY #44567 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 31.0 32.3 33.0 36.1 36.2
  SAY #44568 /* ~"I will give you no more answers. You have given your honor, and I have repaid you in kind."~ */
  IF ~~ THEN REPLY #44569 /* ~"If that's the way it has to be, farewell."~ */ GOTO 34
END

IF ~~ THEN BEGIN 36 // from: 32.0 32.1 32.2
  SAY #44570 /* ~"My price is two hundred coins - nothing else shall suffice in this time."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44571 /* ~"Here. Take this money."~ */ DO ~TakePartyGold(200)
~ GOTO 37
  IF ~~ THEN REPLY #44572 /* ~"That's a little steep. Perhaps you could answer more questions for me..."~ */ GOTO 35
  IF ~~ THEN REPLY #44573 /* ~"Forget it. Farewell."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #44574 /* ~The githyanki pockets your coins. "Return here in a week's time, and I shall have a memory for you. Do not be late."~ */
  IF ~~ THEN REPLY #44577 /* ~"Very well. Farewell."~ */ DO ~EscapeArea()
DestroySelf()
~ JOURNAL #39452 /* ~I have just made a bargain with Yi'minn, the githyanki angler, to retrieve memories for me from the Astral Plane. He said I should meet him again in the Lower Ward in a week's time.~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 30.0 30.1
  SAY #44579 /* ~"Do you think your shallow deception casts a veil over my eyes? Go. I have paid your honor with answers, and I will speak to you no more."~ */
  IF ~~ THEN REPLY #44580 /* ~"Very well. Farewell."~ */ EXIT
END

IF WEIGHT #1 ~  Global("Yiminn_Trap","AR0500",1)
~ THEN BEGIN 39 // from:
  SAY #44583 /* ~The githyanki's mood has turned into something much more ugly than its previous arrogance. "Now, human, drop your painted shield and tell us what you have said and done for the githzerai dogs within Sigil's walls."~ */
  IF ~~ THEN REPLY #44586 /* ~"Weren't we going to go look for my memories?"~ */ GOTO 40
  IF ~~ THEN REPLY #44588 /* ~"I will not tell you."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44590 /* ~"I merely relieved a githzerai woman's pain."~ */ GOTO 42
  IF ~~ THEN REPLY #44594 /* ~"I merely asked some questions."~ */ GOTO 43
  IF ~~ THEN REPLY #44596 /* ~"I told them lies to confuse them."~ */ GOTO 44
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #44598 /* ~"The only way you shall travel to the Astral Plane is in chains, human. You have one more chance to tell me what you have said and done for the githzerai within Sigil's walls."~ */
  IF ~~ THEN REPLY #44601 /* ~"I will not tell you."~ */ GOTO 41
  IF ~  Global("Anazi_Help","GLOBAL",1)
~ THEN REPLY #44603 /* ~"I merely relieved a githzerai woman's pain."~ */ GOTO 42
  IF ~~ THEN REPLY #44605 /* ~"I merely asked some questions."~ */ GOTO 42
  IF ~~ THEN REPLY #44606 /* ~"I told them lies to confuse them."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.0
  SAY #44607 /* ~"Then you shall die." He draws his weapon to attack!~ */
  IF ~~ THEN REPLY #44608 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44610 /* ~Let them kill you.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 42 // from: 39.2 40.1 40.2
  SAY #44611 /* ~"You lie like a githzerai dog, human. You are their quisling and their leech. We will do you a favor by killing you." He draws his weapon.~ */
  IF ~~ THEN REPLY #44612 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44613 /* ~Let them kill you.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 39.3 40.3
  SAY #44614 /* ~"You did not. We were watching, listening. Your words and your heart betray you, human. Prepare to die."~ */
  IF ~~ THEN REPLY #44615 /* ~Fight.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
Attack(Protagonist)
~ EXIT
  IF ~~ THEN REPLY #44616 /* ~Let them kill you.~ */ DO ~SetAnimState(Protagonist,ANIM_MIMEDIE)
SetAnimState(Myself,ANIM_MIMEATTACK1)
~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 39.4 41.1 42.1 43.1
  SAY #44617 /* ~Yi'minn's blade slashes across your throat and you fall to the ground bleeding. They stand over you and begin to speak again. "Did he truly know nothing, Al-midil?"~ */
  IF ~~ THEN DO ~IncrementGlobal("Death","GLOBAL",1)
~ EXTERN ~DALMIDIL~ 0
END

IF ~~ THEN BEGIN 45 // from:
  SAY #44618 /* ~"If you believe our knowledge is sufficient, then we shall go. Gather our warriors and let us join our war party in Limbo."~ */
  IF ~~ THEN DO ~FadeToColor([20.0],0)
Wait(3)
StartCutSceneMode()
StartCutSceneEx("0500cut4",FALSE)
~ EXIT
END

IF WEIGHT #8 ~  NearbyDialog("DDakkon")
~ THEN BEGIN 46 // from:
  SAY #44619 /* ~The man has rough, leathery skin with a pale yellow cast and gaunt features. His face is angular, his nose is small and highly placed, and his ears taper to points. A tracery of tattoos and scars cover his body. He is dressed in strange, gaudy leathers that look more ornamental than combat-ready. His eyes are like two small black stones and they track you as you approach. Before you reach him, Dak'kon pauses.~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 149
END

IF ~~ THEN BEGIN 47 // from:
  SAY #44620 /* ~The githyanki has been watching your approach, and seems to ignore you entirely. "Dak'kon-who-wails-on-the-walls-of-Shra'kt'lor... an unexpected surprise." He draws his weapon.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 154
END

IF ~~ THEN BEGIN 48 // from:
  SAY #44621 /* ~As you turn away, the githyanki, who has been watching you all this time, calls out to you. "Do you turn your back on me, Dak'kon-who-wails-on-the-walls-of-Shra'kt'lor? You will face me with steel bared or I shall see that you wear the sigil of cowardice upon your back." He draws his weapon.~ */
  IF ~~ THEN DO ~SetGlobal("Know_Yiminn","AR0500",1)
~ EXTERN ~DDAKKON~ 155
END

IF ~~ THEN BEGIN 49 // from: 50.1 51.1 52.2
  SAY #44622 /* ~The githyanki and Dak'kon begin to trade blows immediately.~ */
  IF ~~ THEN REPLY #44623 /* ~Attack the githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44624 /* ~Leave them to fight.~ */ DO ~ForceAttack("Dakkon",Myself)
Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #44625 /* ~When Dak'kon nods, the githyanki lets out a harsh bark of laughter. "You are this human's lodebeast, dog. First a traitor, and then a slave."~ */
  IF ~~ THEN REPLY #44626 /* ~"I'll have your silence as well, or I'll take your tongue."~ */ GOTO 51
  IF ~~ THEN REPLY #44627 /* ~"Dak'kon, kill him."~ */ GOTO 49
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #44628 /* ~The githyanki bows, and smirks at Dak'kon. "No more need be said for the present, then. I shall carry word of your slave's plight to my people. They shall relish it." ~ */
  IF ~~ THEN REPLY #44629 /* ~"Enough of this talk. I'm looking for memories."~ */ GOTO 52
  IF ~~ THEN REPLY #44630 /* ~"Enough. Dak'kon, kill him."~ */ GOTO 49
  IF ~~ THEN REPLY #44631 /* ~"Enough. Farewell."~ */ GOTO 55
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #44632 /* ~"Memories? I find memories, floating in the Astral Plane. I should be happy to retrieve one for you... for a price."~ */
  IF ~~ THEN REPLY #44633 /* ~"What price is that?"~ */ GOTO 53
  IF ~~ THEN REPLY #44634 /* ~"Forget it. We're leaving."~ */ GOTO 55
  IF ~~ THEN REPLY #44635 /* ~"Dak'kon, kill him."~ */ GOTO 49
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #44636 /* ~"My price is two hundred coins - nothing else shall suffice in this time."~ */
  IF ~  PartyGoldGT(199)
~ THEN REPLY #44637 /* ~"Here. Take this money."~ */ DO ~TakePartyGold(200)
~ GOTO 56
  IF ~~ THEN REPLY #44638 /* ~"I'm afraid I don't have enough money. I guess we'll be leaving."~ */ GOTO 55
  IF ~~ THEN REPLY #44639 /* ~"Forget it. We're leaving."~ */ GOTO 55
END

IF ~~ THEN BEGIN 54 // from:
  SAY #44640 /* ~"The entire multiverse is our battlefield, dog. There are no sanctuaries. There is no peace. You shall die." The githyanki attacks!~ */
  IF ~~ THEN REPLY #44641 /* ~Attack the githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44642 /* ~Let them fight.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 51.2 52.1 53.1 53.2
  SAY #44643 /* ~"Leaving? No. Not without the heart of the traitor of Shra'kt'lor." The githyanki attacks!~ */
  IF ~~ THEN REPLY #44644 /* ~Attack the githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44645 /* ~Let them fight.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END

IF ~~ THEN BEGIN 56 // from: 53.0
  SAY #44646 /* ~"Come with me, then, and leave your dogsbody behind."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 157
END

IF ~~ THEN BEGIN 57 // from:
  SAY #44647 /* ~"And you shall have the substance of one when I am finished with you."~ */
  IF ~~ THEN EXTERN ~DDAKKON~ 158
END

IF ~~ THEN BEGIN 58 // from:
  SAY #44648 /* ~"We shall see about that, githzerai dog!" The githyanki attacks Dak'kon furiously.~ */
  IF ~~ THEN REPLY #44649 /* ~Attack the githyanki.~ */ DO ~ForceAttack(Protagonist,Myself)
Enemy()
Attack("Dakkon")
~ EXIT
  IF ~~ THEN REPLY #44650 /* ~Let them fight.~ */ DO ~Enemy()
Attack("Dakkon")
~ EXIT
END
