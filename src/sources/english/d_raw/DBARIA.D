// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DBARIA.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DBARIA~

IF ~  Global("BariA","AR0400",0)
~ THEN BEGIN 0 // from:
  SAY #12341 /* ~Much as this creature's body is a combination of man and ram, his head is a mix of sorts, with a broad flat nose, goat-ears, and a pair of curling horns. Intricate designs are shaved into his dirty pelt, and a massive, four-flanged pole-arm hangs from his belt-harness. He doesn't seem to notice you.~ */
  IF ~~ THEN REPLY #12469 /* ~"Greetings..."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ GOTO 3
  IF ~~ THEN REPLY #12470 /* ~Leave him alone.~ */ EXIT
END

IF ~  Global("BariA","AR0400",1)
~ THEN BEGIN 1 // from:
  SAY #12342 /* ~"Ve meet again, vanderer. Zhere is somezhing you vanted from me?"~ */
  IF ~~ THEN REPLY #12471 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12472 /* ~"No, never mind. Farewell."~ */ EXIT
END

IF ~  Global("BariA","AR0400",3)
~ THEN BEGIN 2 // from:
  SAY #12383 /* ~"You! I had said nevah, *nevah* cross my pass again! Steel yourself, two-legs..."~ */
  IF ~~ THEN REPLY #12473 /* ~"But..."~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12474 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #12384 /* ~He turns to face you with startling speed, his eyes dark and suspicious of you. His voice is deep and rumbling, not quite human, and heavily accented. "Vhat do you vant, two-legs..." His hand is close to his pole-arm.~ */
  IF ~~ THEN REPLY #12475 /* ~"Only to speak with you. I had some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #12476 /* ~"If you're looking for a fight, then you've found it..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_1","GLOBALLaw",-1)
~ GOTO 6
  IF ~~ THEN REPLY #12477 /* ~"Nothing, never mind. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 7.0 8.0
  SAY #12385 /* ~He seems to calm down; his hand drops away from his weapon. He still keeps a certain distance from you, however...~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 1.0 4.0 10.0 12.2 13.2 14.1 15.2 16.2 17.1 18.1 19.5 20.1 21.2 22.0 23.0 24.0 25.2 26.1
  SAY #12386 /* ~"Vhat do you vish to ask me?"~ */
  IF ~~ THEN REPLY #12478 /* ~"Why were you so wary of me?"~ */ GOTO 15
  IF ~~ THEN REPLY #12479 /* ~"Tell me about this city."~ */ GOTO 12
  IF ~~ THEN REPLY #12480 /* ~"Tell me about the slums around us."~ */ GOTO 19
  IF ~  GlobalGT("Know_Lady","GLOBAL",0)
~ THEN REPLY #12481 /* ~"Can you tell me about the Lady of Pain?"~ */ GOTO 24
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12482 /* ~"Do you know someone named Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12483 /* ~"I'm missing a journal. Have you seen one, or do you know where I might find one?"~ */ GOTO 23
  IF ~~ THEN REPLY #12484 /* ~"Nothing, actually. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #12387 /* ~In an instant, his pole-arm is off his harness and poised to strike. "Before ve lock horns, I vould only know vhy you attack me, two-legs." His iron-shoed hooves strike bright sparks on the street as he shifts his weight back and forth.~ */
  IF ~~ THEN REPLY #12485 /* ~"I did not mean to..."~ */ GOTO 7
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12486 /* ~"Me? It's *you* who threatened *me.*"~ */ GOTO 9
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12487 /* ~"Me? It's *you* who threatened *me.*"~ */ GOTO 8
  IF ~~ THEN REPLY #12488 /* ~"You insulted me, you four-legged, goat-arsed fool!"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_BariA_1","GLOBALGood",-1)
~ GOTO 11
  IF ~~ THEN REPLY #12489 /* ~"Because I *feel* like it..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12490 /* ~Turn and walk away.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12491 /* ~Run away.~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #12388 /* ~His pole-arm lowers a bit; he gives an exasperated sigh. "Vell, zhen, perhaps ve shouldn't be so eager to spill our blood. Vhat did you vant from me?"~ */
  IF ~~ THEN REPLY #12492 /* ~"I had wanted to ask some questions..."~ */ GOTO 4
  IF ~~ THEN REPLY #12493 /* ~"I changed my mind. I'd rather spill your blood..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_2","GLOBALLaw",-1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #12390 /* ~"VHAT? No, two-legs, it vas *you* who approached *me.* I von't deny you a fight if zhat is vhat you vant, but zhere vill be no honor lost should you back down now..."~ */
  IF ~~ THEN REPLY #12494 /* ~"Very well... I had only wanted to ask a question..."~ */ GOTO 4
  IF ~~ THEN REPLY #12495 /* ~"Oh, no... it was *you,* and you'll regret it!"~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #12496 /* ~"Forget it, then. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 6.1
  SAY #12391 /* ~"VHAT?" He seems incredulous at your accusation. "No, two-legs, it vas *you* who approached *me.* I von't deny you a fight if zhat is vhat you vant, but zhere vill be no honor lost should you back down now..."~ */
  IF ~~ THEN EXTERN ~DMORTE~ 153
END

IF ~  Global("BariA","AR0400",2)
~ THEN BEGIN 10 // from:
  SAY #12392 /* ~"Ah, you again, two-legs. Vhat now?"~ */
  IF ~~ THEN REPLY #12497 /* ~"I had some questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12498 /* ~"Nothing... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 6.3
  SAY #12393 /* ~"Very vell, you beady-haired, scar-ridden, dung-eating monkey! Should you survive zhis battle, you'd best *never* cross my pass again!" His hooves paw the cobbles as he prepares to charge.~ */
  IF ~~ THEN REPLY #12499 /* ~Defend yourself.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12500 /* ~Run away.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 5.1
  SAY #12394 /* ~He is silent for a moment, as if waiting for something more from you. "Ah... vhat about zha city?"~ */
  IF ~~ THEN REPLY #12501 /* ~"What is this place?"~ */ GOTO 13
  IF ~~ THEN REPLY #12502 /* ~"Where is it, exactly?"~ */ GOTO 14
  IF ~~ THEN REPLY #12503 /* ~"Never mind. Let me ask you something else."~ */ GOTO 5
  IF ~~ THEN REPLY #12504 /* ~"Forget I asked; it's nothing. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 14.0
  SAY #12395 /* ~"Vhy, it is a crossroads, two-legs. Zurely you know zhat all pass run through Zigil?"~ */
  IF ~~ THEN REPLY #12505 /* ~"'Pass'...? Do you mean 'paths'?"~ */ GOTO 25
  IF ~~ THEN REPLY #12506 /* ~"Yes, I see... where is Sigil, exactly?"~ */ GOTO 14
  IF ~~ THEN REPLY #12507 /* ~"Let me ask you about something else."~ */ GOTO 5
  IF ~~ THEN REPLY #12508 /* ~"That's all I needed to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 12.1 13.1 25.1
  SAY #12452 /* ~"Vhere? Hmm..." He looks up thoughtfully, tugging at his goat-beard. "...it is in zha Outlands - zha center of zha planes. But zince you can reach it from just about anywhere, Zigil's in more places zhan just zhat. You zee?"~ */
  IF ~~ THEN REPLY #12509 /* ~"I think so, yes. What *is* this place, though?"~ */ GOTO 13
  IF ~~ THEN REPLY #12510 /* ~"I do. Let me ask you about something else."~ */ GOTO 5
  IF ~~ THEN REPLY #12511 /* ~"Yes, I do. That's all I needed; farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 5.0
  SAY #12453 /* ~He seems sad for a moment. "Zhis place... a wretched, unclean place... is full of unfriendly, zometimes desperate people. Not zha best place for a visiting bariaur, two-legs." He shrugs. "I have business here, zhough, and zo here I am."~ */
  IF ~~ THEN REPLY #12512 /* ~"Visiting? You do not live here?"~ */ GOTO 16
  IF ~~ THEN REPLY #12513 /* ~"Business? What are you here for?"~ */ GOTO 17
  IF ~~ THEN REPLY #12514 /* ~"I see. I have another question for you."~ */ GOTO 5
  IF ~~ THEN REPLY #12515 /* ~"I'll let you return to your business, then; farewell."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 17.0
  SAY #12454 /* ~The bariaur shakes his head, laughing. "No, no, two-legs... no bariaur could live like zhis."~ */
  IF ~~ THEN REPLY #12516 /* ~"Where are you from?"~ */ GOTO 18
  IF ~~ THEN REPLY #12517 /* ~"What sort of business were you here for?"~ */ GOTO 17
  IF ~~ THEN REPLY #12518 /* ~"I see. I have another question for you."~ */ GOTO 5
  IF ~~ THEN REPLY #12519 /* ~"I'll let you return to your business, then; farewell."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1 16.1 18.0
  SAY #12455 /* ~"Anozher time, two-legs. If ve ever meet in a... happier place, I shall tell you all about it."~ */
  IF ~~ THEN REPLY #12520 /* ~"You had said you were visiting; you don't live here?"~ */ GOTO 16
  IF ~~ THEN REPLY #12521 /* ~"Let me ask you about something else, then..."~ */ GOTO 5
  IF ~~ THEN REPLY #12522 /* ~"Until another time, then. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0
  SAY #12456 /* ~"From zha Plains of Ysgard, two-legs. Zhey are my home." He smiles in fond recollection, as if warmed by the memory.~ */
  IF ~~ THEN REPLY #12523 /* ~"What sort of business were you here for?"~ */ GOTO 17
  IF ~~ THEN REPLY #12524 /* ~"I have another question for you..."~ */ GOTO 5
  IF ~~ THEN REPLY #12525 /* ~"That is all I needed to know. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",1)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 5.2
  SAY #12457 /* ~He looks at you curiously. "Vhat it is you vish to know about zhem, exactly?"~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12526 /* ~"I am looking for a place to enjoy myself."~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12527 /* ~"I am looking for a place to enjoy myself."~ */ GOTO 20
  IF ~~ THEN REPLY #12528 /* ~"I am looking for work."~ */ GOTO 21
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12529 /* ~"Do you know someone named Pharod?"~ */ GOTO 22
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12530 /* ~"I'm missing a journal. Have you seen one, or do you know where I might find one?"~ */ GOTO 23
  IF ~~ THEN REPLY #12531 /* ~"Nothing, actually. I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12532 /* ~"Nothing, come to think of it. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1 21.1
  SAY #12458 /* ~"I don't zhink zhere's anyzhing to enjoy here, two-legs. Perhaps you should look elsewhere, in anozher vord."~ */
  IF ~~ THEN REPLY #12533 /* ~"What if I were looking for work?"~ */ GOTO 21
  IF ~~ THEN REPLY #12534 /* ~"I had some other questions..."~ */ GOTO 5
  IF ~~ THEN REPLY #12559 /* ~"Another ward, you say? Perhaps. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 19.2 20.0
  SAY #12459 /* ~He frowns. "I doubt zhere's any honest work around here... zha only zhing in ample supply in zha Hive is trouble."~ */
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #12535 /* ~"What about someplace to enjoy myself?"~ */ EXTERN ~DMORTE~ 154
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #12536 /* ~"What about someplace to enjoy myself?"~ */ GOTO 20
  IF ~~ THEN REPLY #12557 /* ~"Perhaps you can answer me with something else, then..."~ */ GOTO 5
  IF ~~ THEN REPLY #12558 /* ~"You may be right. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.4 19.3
  SAY #12460 /* ~"I know few people here, two-legs... zhis 'Pharod' is not vun of zhem. A friend of yours?"~ */
  IF ~~ THEN REPLY #12537 /* ~"I don't know, really. Let me ask you something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #12538 /* ~"Perhaps; I'm not sure, myself. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.5 19.4
  SAY #12461 /* ~He simply shakes his head. "No, two-legs - nozhing like zhat."~ */
  IF ~~ THEN REPLY #12539 /* ~"Hmm. I have another question..."~ */ GOTO 5
  IF ~~ THEN REPLY #12540 /* ~"All right. Farewell, then."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 5.3
  SAY #12462 /* ~"Zha Lady?" He looks around, as if to see if anyone's overheard. "I only know zhat she rules zhis place - all of Zigil - and zhat zha locals feel it bad luck to speak of her."~ */
  IF ~~ THEN REPLY #12541 /* ~"I see. Answer me something else..."~ */ GOTO 5
  IF ~~ THEN REPLY #12542 /* ~"Thank you. That is all I needed to know for now; farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 13.0
  SAY #12463 /* ~He looks slightly annoyed. "Yah, zhat's vhat I said. 'Pass.'"~ */
  IF ~~ THEN REPLY #12543 /* ~"No... you did it again. 'Paths,' not 'pass.'"~ */ GOTO 26
  IF ~~ THEN REPLY #12544 /* ~"I understand. Where is Sigil, exactly?"~ */ GOTO 14
  IF ~~ THEN REPLY #12545 /* ~"I see. Let me ask you about something else."~ */ GOTO 5
  IF ~~ THEN REPLY #12546 /* ~"All right. That's all I needed to know; farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #12464 /* ~His dark eyes narrow; he begins to look suspicious as well as angry. "I zhaid vhat I zhaid. Perhaps *you* zhould try speaking *my* language, two-legs..."~ */
  IF ~~ THEN REPLY #12547 /* ~"Oh, I can; watch: Yah, yah, yah! Bork, bork, bork!"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_BariA_3","GLOBALLaw",-1)
~ GOTO 27
  IF ~~ THEN REPLY #12548 /* ~"You are right; I apologize. Let me ask you something."~ */ GOTO 5
  IF ~~ THEN REPLY #12549 /* ~"Whatever you say, four-legs. Farewell."~ */ DO ~SetGlobal("BariA","AR0400",2)
~ EXIT
  IF ~~ THEN REPLY #12550 /* ~"You're right; I apologize. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #12465 /* ~He sneers in disgust, reaching for his weapon... then calms himself. "Never cross my... PASS... again, pig-dog, or I vill kill you." He turns away from you.~ */
  IF ~~ THEN REPLY #12551 /* ~Let him stomp off.~ */ DO ~SetGlobal("BariA","AR0400",3)
~ EXIT
  IF ~~ THEN REPLY #12552 /* ~Attack him as he leaves.~ */ DO ~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
SetGlobal("BariA","AR0400",3)
~ EXIT
END
