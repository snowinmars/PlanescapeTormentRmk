// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DNODD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DNODD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 1 38 even though they appear after this state */
~  NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY #2810 /* ~As you approach the hooded, brown-robed man, you notice that he's mumbling to himself softly, and occasionally nodding.~ */
  IF ~~ THEN REPLY #22473 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #22475 /* ~Leave him be.~ */ DO ~SetNumTimesTalkedTo(0)
~ EXIT
END

IF WEIGHT #1 /* Triggers after states #: 38 even though they appear after this state */
~  NumTimesTalkedToGT(0)
~ THEN BEGIN 1 // from: 0.0
  SAY #21938 /* ~"Someone comes ta speaks ta Nodd, speaks ta Nodd, aye..." He suddenly breaks into a fit of hacking coughs, then nods to himself.~ */
  IF ~  Global("Nodd_Quest","GLOBAL",4)
~ THEN REPLY #22477 /* ~"I spoke to your sister, Amarysse..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22489 /* ~"I spoke to your sister, Amarysse..."~ */ GOTO 28
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22490 /* ~"I spoke to your sister, Amarysse..."~ */ GOTO 29
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22491 /* ~"I spoke to your sister, Amarysse..."~ */ GOTO 29
  IF ~~ THEN REPLY #22492 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #22493 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #22494 /* ~"I had some questions..."~ */ GOTO 7
  IF ~~ THEN REPLY #22495 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.4 6.0
  SAY #21939 /* ~"Nothin'. 'Cept lookin' fer deaders. Nothin' else." He sniffs, then gives another hacking cough. He mumbles for a moment, then speaks again. "Nothin' else. Need th' jink. Jink-jink."~ */
  IF ~~ THEN REPLY #22496 /* ~"Deaders?"~ */ GOTO 3
  IF ~~ THEN REPLY #22497 /* ~"Why are you looking for corpses?"~ */ GOTO 4
  IF ~~ THEN REPLY #22498 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #22499 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22500 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22501 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #21940 /* ~The man nods. "Dead-ers. Ken sell 'em ta th' Dusties."~ */
  IF ~~ THEN REPLY #22502 /* ~"You can sell the corpses?"~ */ GOTO 4
  IF ~~ THEN REPLY #22503 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #22504 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22505 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22506 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.0
  SAY #21941 /* ~He starts nodding without really looking at you. "Haul 'em ta th' black place, th' Mort-u-ary." He tilts his head back and forth, then nods again. "There, th' Dusties, they haggles and gives jink - they takes th' deader in, they do, aye, an' Nodd don't talks ta 'em till th' next body." He sniffs, wiping at his nose with the back of his hand.~ */
  IF ~~ THEN REPLY #22507 /* ~"Why do they pay for the corpses?"~ */ GOTO 5
  IF ~~ THEN REPLY #22508 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #22509 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22510 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22511 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #21942 /* ~He shrugs. "No matterr, no matterr." He smiles, then nods sagely. "Jink fer me, jink-jink."~ */
  IF ~~ THEN REPLY #22512 /* ~"What is this place?"~ */ GOTO 6
  IF ~~ THEN REPLY #22514 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22515 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22516 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 1.5 2.2 3.1 4.1 5.0
  SAY #21950 /* ~He frowns and licks his lips. "Ragpicker's Square, th' square, trash everywhere, aye, everywhere." He coughs.~ */
  IF ~~ THEN REPLY #22517 /* ~"What are you doing?"~ */ GOTO 2
  IF ~~ THEN REPLY #22518 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22519 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22520 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.6 2.3 3.2 4.2 5.1 6.1
  SAY #21952 /* ~He nods. "What?" He sniffs, then squints at you. "Jink." He taps his head, points at you, then points at his hand. "Ye wants t'know sumfin - jink. Aye, jink-jink."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #22521 /* ~Hand him a couple coins.~ */ DO ~TakePartyGold(2)
~ GOTO 8
  IF ~  PartyGoldGT(4)
~ THEN REPLY #22522 /* ~Throw him five coppers.~ */ DO ~TakePartyGold(5)
~ GOTO 8
  IF ~  PartyGoldGT(9)
~ THEN REPLY #22523 /* ~Dump ten coppers into his palms.~ */ DO ~TakePartyGold(10)
~ GOTO 8
  IF ~~ THEN REPLY #22524 /* ~"You'll get nothing, and you'll answer my questions."~ */ GOTO 15
  IF ~~ THEN REPLY #22525 /* ~"Never mind, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 7.1 7.2
  SAY #21953 /* ~"Jink fer Nodd, jink-jink." He mumbles for a moment, hiding the copper coins away in the folds of his robes. "Ask, Nodd tries ta answer, aye." He coughs for a bit, spitting something off to the side.~ */
  IF ~~ THEN REPLY #22526 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22527 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22528 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22529 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22530 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22531 /* ~"Never mind. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22532 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 10.1 11.1 12.0 13.0 14.0 15.0 16.0
  SAY #21955 /* ~"Me. Me?" He seems unsure for a moment, then nods assent. "Me. Scoops up dead-errrs, take ta Dusties... Dusties pay, jink fer dead, dead ta their right place. Dead happy. Dusties happy. Nodd happy, aye, with Nodd's shiny jink."~ */
  IF ~~ THEN REPLY #22533 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22534 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22535 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22536 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22537 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22538 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1 9.0 11.2 12.1 13.1 14.1 15.1
  SAY #21957 /* ~He points to ground, nodding. "Th' square, Ragpicker's Square, trash everywhere, aye, Sharegrave's square." He mumbles to himself for a moment.~ */
  IF ~~ THEN REPLY #22539 /* ~"Tell me about Sharegrave."~ */ GOTO 16
  IF ~~ THEN REPLY #22540 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22579 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22581 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22582 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22584 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22586 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 8.2 9.1 10.2 13.2 14.2 15.2 16.1
  SAY #22381 /* ~He looks frightened and starts to shake his head. "Pharod, Pharod, Pharod..." He scratches at his head. "What? What 'bout him?" He frowns, then shakes his head, as if he is not sure he should be speaking to you.~ */
  IF ~~ THEN REPLY #22588 /* ~"Do you know where I can find him?"~ */ GOTO 12
  IF ~~ THEN REPLY #22589 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22590 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22592 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22593 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22594 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22595 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #22384 /* ~He shakes his head, then mumbles. He glances quickly at you, then begins to murmur again to himself. It sounds like he's uttering a prayer against evil. "Nuh-nuh-not *here.* In Square..." He frowns, as if unsure how to explain it. "...but not in th' Square." He shakes his head again, then coughs.~ */
  IF ~~ THEN REPLY #22596 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22597 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22598 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22599 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22600 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22601 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 8.3 9.2 10.3 11.3 12.2 14.3 15.3 16.2
  SAY #22387 /* ~"No, no, no." He shakes his head vigorously. "No jur-nell." He sniffs, wiping his nose with his sleeve.~ */
  IF ~~ THEN REPLY #22602 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22603 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22604 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22605 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22606 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22607 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.4 9.3 10.4 11.4 12.3 13.3 15.4 16.3
  SAY #22389 /* ~"Mid-wife... cures n' charms, she... help with th' wee ones, nice." He wrinkles his nose. "Her place - up on th' plat-forms - smell bad."~ */
  IF ~~ THEN REPLY #22608 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22609 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22610 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22611 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22612 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22613 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.3
  SAY #22392 /* ~He starts shaking his head, then mumbles to himself. He appears frightened, unsure of what to do.~ */
  IF ~~ THEN REPLY #22614 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~~ THEN REPLY #22615 /* ~"Tell me about this area."~ */ GOTO 10
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22616 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22617 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22618 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22619 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22620 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 10.0
  SAY #22394 /* ~"Sharegrave's shadow long, falls over Nodd, it does, aye. Nodd gives some a' his jink ta Sharegrave, Sharegrave tell others in his shadow: 'watches out fer Nodd,' aye." He sniffs, nodding slowly.~ */
  IF ~~ THEN REPLY #22621 /* ~"Tell me about Collectors."~ */ GOTO 9
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #22622 /* ~"Do you know of a man named Pharod?"~ */ GOTO 11
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #22623 /* ~"I'm looking for a journal that I've lost."~ */ GOTO 13
  IF ~  GlobalGT("Mebbeth","GLOBAL",0)
~ THEN REPLY #22624 /* ~"Tell me about Mebbeth."~ */ GOTO 14
  IF ~  Global("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22625 /* ~"That's all I wished to know. Farewell."~ */ GOTO 17
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",0)
~ THEN REPLY #22626 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.4 3.3 4.3 5.2 6.2 8.5 9.4 10.5 11.5 12.4 13.4 14.4 15.5 16.4
  SAY #22396 /* ~"Eh... eh..." He shakes his head, coughs, then resumes his nodding. "Ye'd ask a' Nodd, aye, Nodd'd ask a' ye... question fer ye, aye..."~ */
  IF ~~ THEN REPLY #22627 /* ~"Go ahead, ask your question."~ */ GOTO 18
  IF ~~ THEN REPLY #22628 /* ~Ignore him, turn and leave.~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #22398 /* ~"Nodd has a sister, aye, Amarysse. Ah-mahr-eece... lives in th' Hive, away from here, away from th' Square. So long, long ago Nodd was separated from his sister, taken away..."~ */
  IF ~  CheckStatGT(Protagonist,14,INT)
~ THEN REPLY #22629 /* ~"You've been separated from her and you'd like me to find her?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~A Collector named Nodd asked me to find his sister, Amarysse, and speak to her for him. He describes her as an attractive young woman living somewhere in the Hive.~ */ GOTO 19
  IF ~~ THEN REPLY #22630 /* ~"So your question is...?"~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",1)
~ JOURNAL #22281 /* ~A Collector named Nodd asked me to find his sister, Amarysse, and speak to her for him. He describes her as an attractive young woman living somewhere in the Hive.~ */ GOTO 19
  IF ~~ THEN REPLY #22631 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0 18.1
  SAY #22415 /* ~"Ye don't know her?" He shakes his head sadly for a moment, chewing his lower lip. "If ye sees her, if ye does, tell her Nodd, her brother, worries about her, aye, he does, he worries."~ */
  IF ~~ THEN REPLY #22637 /* ~"Why don't you go find her?"~ */ GOTO 20
  IF ~~ THEN REPLY #22638 /* ~"All right. I'll do that for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22639 /* ~"I'll find her... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22640 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #22417 /* ~"NO!" Nodd covers his head with his arms, mumbling to himself. "Nodd... Nodd can't speaks right no more, he can't, nay, an' he smells a' corpses an' th' dirt a' the Square, Ragpicker's Square... NO!" The outburst sends him into a fit of hacking coughs.~ */
  IF ~~ THEN REPLY #22641 /* ~"What happened to you, Nodd?"~ */ GOTO 21
  IF ~~ THEN REPLY #22642 /* ~"All right. I'll find her for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22643 /* ~"I'll find her... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22644 /* ~"I'll consider it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #22421 /* ~Nodd sniffs, looking at the ground quietly. Finally, he begins nodding to himself, speaking softly: "Nodd was young, aye, he was, an' started hearin' voices, tellin' Nodd 'do this! do that!' Bad things, bad, like chewin' on Nodd's fingers..." He holds his hands to his face, and you can see old bite-scars beneath the caked-on filth.~ */
  IF ~~ THEN REPLY #22645 /* ~"Go on..."~ */ GOTO 23
  IF ~~ THEN REPLY #22647 /* ~"All right. I'll find your sister for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22648 /* ~"I'll find your sister... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22649 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 23.0
  SAY #22425 /* ~"Dunno, dunno. Bad place, bad!" He shakes his head violently, clutching at his temples, before resuming his usual nodding.~ */
  IF ~~ THEN REPLY #22650 /* ~"Go on with your story..."~ */ GOTO 24
  IF ~~ THEN REPLY #22669 /* ~"All right. I'll find your sister for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22671 /* ~"I'll find your sister... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22674 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.0
  SAY #22427 /* ~"So Nodd's parents takes him aways, they does, puts him in a dark place, a Winged Tower, where they pokes needles an' hooks in Nodd's head... voices stop, aye, they do, but Nodd can't think right, can't talks right. Nodd escapes the place, he does, wakes up in th' Hive, aye."~ */
  IF ~~ THEN REPLY #22675 /* ~"Where is this winged tower?"~ */ GOTO 22
  IF ~~ THEN REPLY #22676 /* ~"Go on with your story..."~ */ GOTO 24
  IF ~~ THEN REPLY #22677 /* ~"All right. I'll find your sister for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22678 /* ~"I'll find your sister... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22679 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 23.1
  SAY #22431 /* ~"Nodd wakes up, there's Collectors, aye, Collectors pokin' at Nodd, sayin' 'Look! Not a deader, deader he's not! Takes him back, takes him!' An' they takes Nodds back, they does, back ta th' Square. So long... years, long years ago."~ */
  IF ~~ THEN REPLY #22680 /* ~"All right. I'll find your sister for you."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
IncrementGlobalOnceEx("GLOBALGood_Nodd_1","GLOBALGood",1)
~ GOTO 25
  IF ~~ THEN REPLY #22681 /* ~"I'll find your sister... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_1","GLOBALGood",-1)
~ GOTO 26
  IF ~~ THEN REPLY #22682 /* ~"Interesting. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 19.1 20.1 21.1 22.1 23.2 24.0 26.1
  SAY #22433 /* ~"Nodd thanks ye, he does, Nodd thanks ye. Amarysse was pretty, so pretty, lives in th' Hive, now. Fair skinned, she was, hair like jet, an' always in blue, blue... she was always in blue..."~ */
  IF ~~ THEN REPLY #22683 /* ~"Farewell, Nodd."~ */ JOURNAL #22636 /* ~I've agreed to help Nodd find his sister, Amarysse. He said she was fair-skinned with black hair, and always wore blue.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 19.2 20.2 21.2 22.2 23.3 24.1
  SAY #22435 /* ~He shakes his head, coughing. "Nodd has nothing, nothing, so little ta gives..."~ */
  IF ~~ THEN REPLY #22684 /* ~"Anything will suffice."~ */ GOTO 27
  IF ~~ THEN REPLY #22685 /* ~"I'll do it for nothing, then."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",2)
~ GOTO 25
  IF ~~ THEN REPLY #22686 /* ~"Forget it, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #22437 /* ~Nodd looks up at you, sadly. "Nodd'll give ye whatever he's got, he will, aye. Whatever Nodd's got, when ye talks ta her. Proves ta Nodd ye talked ta Amarysse, Nodd's sister, aye." He sniffs, then coughs. "Fair skinned, she was, hair like jet, an' always in blue, blue... she was always in blue..."~ */
  IF ~~ THEN REPLY #22687 /* ~"It's a deal. I'll return once I've spoken to her. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",3)
~ JOURNAL #22635 /* ~I've agreed to help Nodd find his sister, Amarysse... for a price. He said she was fair-skinned with black hair, and always wore blue.~ */ EXIT
  IF ~~ THEN REPLY #22688 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 1.0 1.1
  SAY #22441 /* ~"Ye did? Nodd's so happy, he is! How's Nodd's sister? Tell him of Amarysse, tell Nodd, please!" His excitement sets off a long series of hacking coughs. When he can finally speak again, he asks: "Is Nodd's sister still pretty, so pretty?"~ */
  IF ~~ THEN REPLY #22689 /* ~"Yes, she is. She's a... prostitute... now, in the Hive. She is doing well, and is worried for you."~ */ GOTO 31
  IF ~~ THEN REPLY #22690 /* ~Lie: "Yes, she is. She's a... servant... now, at a tavern in the Hive. She is doing well, and is worried for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22691 /* ~Lie: "Yes, I did. She's a whore, and one so foul I doubt I'd be with her even free of charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 1.2 1.3
  SAY #22444 /* ~"Proof! Proof! Proves ta Nodd..."~ */
  IF ~~ THEN REPLY #22692 /* ~"She told me you were once called Thodus."~ */ DO ~GiveGoldForce(11)
~ GOTO 32
END

IF ~~ THEN BEGIN 30 // from: 28.2 32.4 33.2 34.2
  SAY #22446 /* ~"Aiiieee!" He leaps to attack you.~ */
  IF ~~ THEN REPLY #22693 /* ~"Whoops..."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ JOURNAL #22634 /* ~I lied to Nodd that his sister was a foul whore, and he went mad and attacked me.~ */ EXIT
  IF ~~ THEN REPLY #63621 /* ~Meet his attack.~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",9)
Enemy()
Attack(Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 28.0 28.1 32.2 32.3 33.0 33.1 34.0 34.1
  SAY #22448 /* ~"Nodd's so pleased ta know, ta know his sister is all right!" He looks as if he's going to cry for a moment, then swallows hard. "Anythin' more, anythin' more she said fer Nodd ta hears?"~ */
  IF ~  GlobalLT("Nodd_Quest","GLOBAL",6)
~ THEN REPLY #22695 /* ~"Only that she said she would visit you, as soon as she found the time."~ */ JOURNAL #22710 /* ~I spoke to Nodd's sister, Amarysse, and returned to tell him. He was overjoyed to hear of her.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldGT(99)
~ THEN REPLY #22696 /* ~"Yes, she wanted you to have these copper commons. She will also visit you, as soon as she can find the time."~ */ DO ~TakePartyGold(100)
~ JOURNAL #22709 /* ~I spoke to Nodd's sister, Amarysse, and returned to tell him. He was overjoyed to hear of her, and also to receive the copper she requested I deliver to him.~ */ GOTO 36
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22697 /* ~Lie: "Only that she said she would visit you, as soon as she found the time."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_4","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_4","GLOBALLaw",-3)
~ JOURNAL #22708 /* ~I spoke to Nodd's sister, Amarysse, and returned to tell him. He was overjoyed to hear of her, but I broke my vow to Amarysse and lied about the copper I had sworn to deliver to him.~ */ GOTO 35
  IF ~  GlobalGT("Nodd_Quest","GLOBAL",5)
PartyGoldLT(100)
~ THEN REPLY #22698 /* ~"Yes. She gave me some money to give you but... it is gone. My apologies. She will visit you, as soon as she can find the time."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Nodd_3","GLOBALLaw",-1)
~ JOURNAL #22707 /* ~I spoke to Nodd's sister, Amarysse, and returned to tell him. He was overjoyed to hear of her, but I didn't have the copper I had sworn to deliver to him. He forgave me, however, and I feel better having told him about it.~ */ GOTO 37
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #22450 /* ~"Ye did? Nodd's so happy, he is!" He reaches beneath his robes and pulls out a greasy wad of rags. He unwraps them and hands their contents - eleven copper commons - to you. "All Nodd has, that is. How's Nodd's sister? Tell him of Amarysse, tell Nodd, please!" His excitement sets off a long series of hacking coughs. When he can finally speak again, he asks: "Is Nodd's sister still pretty, so pretty?"~ */
  IF ~~ THEN REPLY #22711 /* ~"Are you *sure* that's all you've got, Nodd?"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_3","GLOBALGood",-1)
~ GOTO 33
  IF ~~ THEN REPLY #22712 /* ~"I can't take this money, Nodd - here. Have it back."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_3","GLOBALGood",1)
TakePartyGold(11)
~ GOTO 34
  IF ~~ THEN REPLY #22713 /* ~"Yes, she is. She's a... prostitute... now, in the Hive. She is doing well, and is worried for you."~ */ GOTO 31
  IF ~~ THEN REPLY #22714 /* ~Lie: "Yes, she is. She's a... servant... now, at a tavern in the Hive. She is doing well, and is worried for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22715 /* ~Lie: "Yes, I did. She's a whore, and one so foul I doubt I'd be with her even free of charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #22452 /* ~He nods vigorously. "Aye, aye, all Nodd's got! Looks where he lives, poor Nodd... looks..." He gestures helplessly around him, mumbling to himself.~ */
  IF ~~ THEN REPLY #22716 /* ~"Very well. She's still pretty, and she's a... prostitute... now, in the Hive. She is doing well, and is worried for you."~ */ GOTO 31
  IF ~~ THEN REPLY #22717 /* ~Lie: "Very well. She's still pretty, and she's a... servant... now, at a tavern in the Hive. She is doing well, and is worried for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22718 /* ~Lie: "Very well. She's a whore, and one so foul I doubt I'd be with her even free of charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 34 // from: 32.1
  SAY #22456 /* ~He stops nodding for a moment, surprised, and takes the coins back. "Nodd thanks ye, he does. Aye, thanks ye..."~ */
  IF ~~ THEN REPLY #22719 /* ~"Of course. Your sister's still pretty, and she's a... prostitute... now, in the Hive. She is doing well, and is worried for you."~ */ GOTO 31
  IF ~~ THEN REPLY #22720 /* ~Lie: "Of course. Your sister's still pretty, and she's a... servant... now, at a tavern in the Hive. She is doing well, and is worried for you."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Nodd_2","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~~ THEN REPLY #22721 /* ~Lie: "Of course. Your sister's a whore, and one so foul I doubt I'd be with her even free of charge."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Nodd_2","GLOBALGood",-2)
IncrementGlobalOnceEx("GLOBALChaotic_Nodd_2","GLOBALLaw",-1)
~ GOTO 30
END

IF ~~ THEN BEGIN 35 // from: 31.0 31.2
  SAY #22458 /* ~Beneath the dirt-brown hood, Nodd's eyes gleam with joy. "Such wonderful news, it is, good, wonderful news, aye! Nodd thanks ye, and thanks ye again, and thanks ye a thousand times more, aye!"~ */
  IF ~~ THEN REPLY #22722 /* ~"Glad I could help. Farewell, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22723 /* ~"Don't bother thanking me - it was a paid job, even if poorly so, and not a favor. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22724 /* ~"Don't bother thanking me - it was a paid job, even if poorly so, and not a favor. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #22461 /* ~Nodd's head stops nodding abruptly and his jaw drops as you hand him the one hundred coins. Beneath the dirt-brown hood, his eyes gleam with joy. "Such wonderful news, it is, good, wonderful news, aye! Nodd thanks ye, and thanks ye again, and thanks ye a thousand times more, aye!"~ */
  IF ~~ THEN REPLY #22725 /* ~"Glad I could help. Farewell, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",5)
~ THEN REPLY #22726 /* ~"Don't bother thanking me - it was a paid job, even if poorly so, and not a favor. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
  IF ~  Global("Nodd_Quest","GLOBAL",7)
~ THEN REPLY #22727 /* ~"Don't bother thanking me - it was a paid job, even if poorly so, and not a favor. Farewell."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 31.3
  SAY #22463 /* ~For a moment, Nodd hangs his head, mumbling softly. Finally, he looks you in the eye: "Nodd forgives, he does, aye, it's good that ye told Nodd about it, it is, shows Nodd ye tries ta be a good person, but can't, like Nodd... like Nodd. Nodd thanks ye fer the good news just the same, aye."~ */
  IF ~~ THEN REPLY #22728 /* ~"Farewell, Nodd."~ */ DO ~SetGlobal("Nodd_Quest","GLOBAL",8)
AddexperienceParty(750)
~ EXIT
END

IF WEIGHT #0 ~  NumTimesTalkedToGT(0)
Global("Nodd_Quest","GLOBAL",8)
~ THEN BEGIN 38 // from:
  SAY #22466 /* ~You see Nodd walking about, nodding and mumbling away to himself.~ */
  IF ~~ THEN REPLY #22729 /* ~"Greetings, Nodd."~ */ GOTO 39
  IF ~~ THEN REPLY #22730 /* ~Leave him be.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #22470 /* ~"Aye, there's the man who helped Nodd find his sister, aye, pretty Amarysse. Nodd thanks ye, once more."~ */
  IF ~~ THEN REPLY #22731 /* ~"Farewell, Nodd."~ */ EXIT
END
