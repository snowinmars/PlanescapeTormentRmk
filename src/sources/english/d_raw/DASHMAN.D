// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DASHMAN.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DASHMAN~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #3 /* Triggers after states #: 1 42 44 even though they appear after this state */
~  Global("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2133 /* ~You see a man in long black robes and a pale face. He looks to be one of the same people you saw in the Mortuary, but unlike them, this man looks confused and is glancing about. When he spots you, he raises his hand to attract your attention.~ */
  IF ~~ THEN REPLY #2180 /* ~"Greetings."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2181 /* ~Ignore the man.~ */ EXIT
END

IF WEIGHT #2 /* Triggers after states #: 42 44 even though they appear after this state */
~  GlobalGT("Know_Dustmen","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2134 /* ~You see a Dustman in long black robes and a pale face. Unlike the Dustman you saw in the Mortuary, however, this man looks confused and is glancing about, as if looking for something. When he spots you, he raises his hand to attract your attention.~ */
  IF ~~ THEN REPLY #2182 /* ~"Greetings."~ */ DO ~SetGlobal("Ashmantle","GLOBAL",1)
~ GOTO 2
  IF ~~ THEN REPLY #2183 /* ~Ignore the man.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.0 1.0
  SAY #2135 /* ~The man seems relieved that you are speaking to him. He bows slightly. "Thank you for hearing me, traveler. I am known as Ash-Mantle, one of the Dustmen sect. I was wondering if you could direct me... I don't know the area very well, and I'm looking for a certain establishment, a bar, that those of my sect frequent. Do you know of such a place?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2184 /* ~"You know, there's been talk that there's a pickpocket masquerading as a Dustman around here. Maybe you know him?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #2185 /* ~"'Sect'? Don't you mean 'faction'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2186 /* ~"'Sect'? You're a Dustman: Don't you mean 'faction'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2187 /* ~"Oh, the Dustman bar? It's by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2188 /* ~"I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #61400 /* ~"I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2189 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2190 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2191 /* ~"No, I'm sorry, I don't know where that is."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2192 /* ~Lie: "No, I'm sorry, I don't know where that is."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2193 /* ~"I can't help you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2194 /* ~"I can't help you. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 2.1 2.2 45.1 45.2
  SAY #2136 /* ~The Dustman nods. "Well, yes, *faction,* I meant faction... sect, faction, they are much the same thing, really... do you happen to know of this bar that my faction frequents?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2195 /* ~"You know, there's been talk that there's a pickpocket masquerading as a Dustman around here. Maybe you know him?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2196 /* ~"The bar you want is by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2197 /* ~"I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2198 /* ~"I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2199 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2200 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2201 /* ~"No, I'm sorry, I don't know where that is."~ */ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2202 /* ~Lie: "No, I'm sorry, I don't know where that is."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_4","GLOBALLaw",-1)
~ GOTO 5
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2203 /* ~"I can't help you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2204 /* ~"I can't help you. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.4 2.6 3.2 3.4 43.2 43.4 45.4 45.6
  SAY #2137 /* ~He sighs and holds up his hands. "I regret to say that I have no jink to spare."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2205 /* ~"Forget it, then. The bar you're looking for is by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~~ THEN REPLY #2206 /* ~"How about you answer some questions for me, and we'll call it even."~ */ GOTO 7
  IF ~~ THEN REPLY #2613 /* ~"Then I can't help you. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 2.8 2.9 2.10 2.11 3.6 3.7 3.8 3.9 4.2 6.1 7.2 8.4 9.1 10.2 11.2 12.4 13.2 14.2 15.3 16.2 18.4 43.6 43.7 45.8 45.9
  SAY #2138 /* ~The Dustman nods and gives a final bow. "Thank you for your time."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2614 /* ~"Certainly. Farewell."~ */ GOTO 22
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2615 /* ~"Certainly. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 20
  IF ~  CheckStatGT(Protagonist,9,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
~ THEN REPLY #2616 /* ~"Certainly. Farewell."~ */ DO ~TakePartyGold(5)
~ GOTO 23
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",1)
~ THEN REPLY #2617 /* ~"Certainly... Farewell."~ */ GOTO 21
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatLT(Protagonist,10,PICKPOCKET)
Global("Dustman_Pickpocket","GLOBAL",0)
Global("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #2618 /* ~"Certainly. Farewell."~ */ DO ~TakePartyGold(5)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 2.3 3.1 4.0 7.0 7.1 43.1 45.3
  SAY #2139 /* ~The Dustman smiles. "Thank you very much, traveler. I appreciate your kindness. The people of the Hive are... rarely helpful in such matters."~ */
  IF ~~ THEN REPLY #2620 /* ~"Tell me about it. Say, can I ask you some questions?"~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 8
  IF ~~ THEN REPLY #2621 /* ~"Not a problem. Farewell, Ash-Mantle."~ */ DO ~SetGlobal("Directed_Ashmantle","GLOBAL",1)
~ GOTO 5
END

IF ~~ THEN BEGIN 7 // from: 2.5 2.7 3.3 3.5 4.1 43.3 43.5 45.5 45.7
  SAY #2140 /* ~He nods. "Your request is reasonable. Tell me where I might find the Gathering Dust bar, and I will be happy to answer any of your questions."~ */
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2622 /* ~"The bar you want is by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ GOTO 6
  IF ~~ THEN REPLY #2649 /* ~Lie: "Yeah, center yourself on the Mortuary, then walk... three blocks west, I believe... and it's the first alleyway on the right."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_5","GLOBALGood",-1)
~ GOTO 6
  IF ~~ THEN REPLY #2650 /* ~"Actually, I can't seem to recall where it is right now. I'll return if I remember. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 8 // from: 6.0 9.0 10.1 11.1 12.3 13.1 14.1 15.2 16.1
  SAY #2141 /* ~"What questions do you have?"~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #2651 /* ~"I'm looking for a man named Pharod. Do you know of him?"~ */ GOTO 9
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #2652 /* ~"I'm looking for a missing journal. Do you know where I might find one?"~ */ GOTO 10
  IF ~~ THEN REPLY #2653 /* ~"Can you tell me a little about the area?"~ */ GOTO 12
  IF ~~ THEN REPLY #2654 /* ~"Can you tell me a little about the Dustmen?"~ */ GOTO 15
  IF ~~ THEN REPLY #2655 /* ~"Never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #2142 /* ~"I'm sorry, but that name is not known to me."~ */
  IF ~~ THEN REPLY #2656 /* ~"Very well. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2657 /* ~"Not a problem. Farewell, Ash-Mantle."~ */ GOTO 5
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #2143 /* ~"I do not know where you might find such a thing. I mourn its loss."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2658 /* ~"Really? I thought Dustmen didn't value possessions."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 11
  IF ~~ THEN REPLY #2659 /* ~"I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2660 /* ~"Thanks for the concern. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #2144 /* ~The man shrugs slightly. "I am not without sympathy for your loss. There are many things of value in one's life."~ */
  IF ~~ THEN REPLY #2662 /* ~"You have... *unusual* views for a Dustman."~ */ GOTO 14
  IF ~~ THEN REPLY #2663 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2664 /* ~"Thanks for the information. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 12 // from: 8.2
  SAY #2145 /* ~"This area... well, there is a market to the northwest, I believe. And some government office to the southwest..." He thinks for a moment. "The Vermin Control Office, I think."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #2665 /* ~"I thought you didn't know the area very well."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #2666 /* ~"You seem to know *this* area very well."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~  Global("Dustman_Pickpocket","GLOBAL",0)
CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #2667 /* ~"You seem to know *this* area very well."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 13
  IF ~~ THEN REPLY #2668 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2669 /* ~"Thanks for the information. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1 12.2
  SAY #2146 /* ~He shrugs. "The Hive is a large place. I know some areas, but not others."~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #2670 /* ~"It seems odd that a Dustman wouldn't know where the Gathering Dust bar is - it's right next to the Mortuary."~ */ GOTO 14
  IF ~~ THEN REPLY #2671 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2672 /* ~"Thanks for the information. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 14 // from: 11.0 13.0 15.0
  SAY #2147 /* ~The man blinks. "Well... I am not a common Dustman."~ */
  IF ~~ THEN REPLY #2673 /* ~"I'm gathering that. Who are you?"~ */ GOTO 16
  IF ~~ THEN REPLY #2680 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2681 /* ~"Thanks for the information. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 15 // from: 8.3
  SAY #2148 /* ~He pauses for a moment... then nods. "It would be my pleasure. We... the Dustmen... recognize this life for what it is: an opportunity to experience our passions before the next life. We sift through the dust of our past lives for meaning before the next."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2682 /* ~"Uh... that is an *unusual* view for a Dustman."~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 14
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2683 /* ~"That's no Dustman cant I've ever heard. Who are you?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 16
  IF ~~ THEN REPLY #2684 /* ~"I see. I had some other questions..."~ */ GOTO 8
  IF ~~ THEN REPLY #2685 /* ~"Thanks for the information. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 16 // from: 14.0 15.1
  SAY #2149 /* ~The man nods, a little uncomfortably. "Why, I am Ash-Mantle, one of the ninth circle."~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #2686 /* ~"Ninth Circle? There is no such thing."~ */ GOTO 17
  IF ~~ THEN REPLY #2687 /* ~"I... see. I had some other questions..." ~ */ GOTO 8
  IF ~~ THEN REPLY #2688 /* ~"Very well, then. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #2150 /* ~He suddenly tenses up. "I don't have time to debate the practices and rankings of the Dustman sect with you. So if you'll excuse me..."~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2689 /* ~Grab his hand.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2690 /* ~Grab his hand.~ */ GOTO 26
  IF ~~ THEN REPLY #2691 /* ~"Who are you really?"~ */ GOTO 27
  IF ~~ THEN REPLY #2692 /* ~"Never mind then. Sorry to give offense."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 2.0 3.0 20.2 21.2 22.2 23.2 24.2 43.0 45.0
  SAY #2151 /* ~The man looks at you innocently, but you see him tense up. "I'm sorry?"~ */
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2693 /* ~Grab his hand.~ */ GOTO 25
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2694 /* ~Grab his hand.~ */ GOTO 26
  IF ~~ THEN REPLY #2695 /* ~"You're no Dustman. You're a pickpocket."~ */ GOTO 27
  IF ~~ THEN REPLY #2696 /* ~"I'm sorry, too. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2697 /* ~"Nothing, never mind. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 19 // from: 29.8 29.9 30.2 30.3 32.3 32.4 33.3 33.4 35.2 35.3 36.3 36.4 40.3 40.4 41.2 41.3
  SAY #2153 /* ~He nods. "Agreed. We'll never cross paths again. I'll find another peel... er, job, elsewhere."~ */
  IF ~~ THEN REPLY #2698 /* ~"Very well. Now go."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 5.1
  SAY #2154 /* ~You are about to turn away, when you suddenly have a feeling that something is amiss. Suspicious, you glance at Ash-Mantle again, just in time to see him tucking something into his sleeves... it looks like something of yours.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2699 /* ~Grab his hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2700 /* ~Grab his hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2723 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2724 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2726 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2727 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2728 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2729 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 5.3
  SAY #2155 /* ~You would have missed it if you were not suspicious already, but during one of his low bows, you see Ash-Mantle's hand dart out to your purse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2730 /* ~Grab his hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2731 /* ~Grab his hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2732 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2733 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2735 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2736 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2737 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2738 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 5.0
  SAY #2156 /* ~You would have missed it if you hadn't been warned about a Dustman pickpocket, but during one of his low bows, you see Ash-Mantle's hand dart out to your purse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2739 /* ~Grab his hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2740 /* ~Grab his hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2741 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2742 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2744 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2746 /* ~Allow Ash-Mantle to pick your pocket, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2747 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2748 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 5.2
  SAY #2157 /* ~Maybe it is your own pick-pocketing skill that causes you to be on your guard, but as you turn to leave, you instinctively check your purse... and notice Ash-Mantle removing his hand from it. He doesn't seem to know you saw him, however.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2749 /* ~Grab his hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2750 /* ~Grab his hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2751 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,13,WIS)
CheckStatGT(Protagonist,12,INT)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2752 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,750)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,1)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,12,WIS)
CheckStatLT(Protagonist,16,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2754 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1000)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,3)
TakePartyGold(5)
~ GOTO 24
  IF ~  CheckStatGT(Protagonist,15,WIS)
Global("Ash_Technique","GLOBAL",0)
~ THEN REPLY #2755 /* ~Bait Ash-Mantle into pick pocketing you again, and observe his technique.~ */ DO ~SetGlobal("Ash_Technique","GLOBAL",1)
GiveExperience(Protagonist,1250)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
TakePartyGold(5)
~ GOTO 24
  IF ~~ THEN REPLY #2756 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2760 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 20.3 20.4 20.5 21.3 21.4 21.5 22.3 22.4 22.5 23.3 23.4 23.5
  SAY #2158 /* ~Under the pretense of giving him additional directions to places in the Hive, you engage Ash-Mantle in light conversation and secretly study his movements. Ash-Mantle seems to rely primarily on his Dustman facade to disarm his victim and uses his frequent bowing motions to cover his pick-pocketing attempts. You make a mental note of his technique... just as he makes another attempt to reach into your purse.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #2761 /* ~Grab his hand.~ */ GOTO 26
  IF ~  CheckStatGT(Protagonist,12,DEX)
~ THEN REPLY #2762 /* ~Grab his hand.~ */ GOTO 25
  IF ~~ THEN REPLY #2777 /* ~"Hey! What do you think you're doing?!"~ */ GOTO 18
  IF ~~ THEN REPLY #2778 /* ~Attack him. ~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #2779 /* ~Ignore the incident, leave.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 17.0 18.0 20.1 21.1 22.1 23.1 24.1
  SAY #2159 /* ~Your hand snaps out and wraps around his wrist in a crushing grip. You see his Dustman facade crumple, and he snarls as he tries to tear away from your grip. "Unhand me, dog, or I'll call the guards!"~ */
  IF ~~ THEN REPLY #2780 /* ~"*After* you answer some questions, 'Dustman.'"~ */ GOTO 28
  IF ~~ THEN REPLY #12067 /* ~"Give me everything you have, thief, and I'll let you go."~ */ GOTO 28
  IF ~~ THEN REPLY #12068 /* ~"Guards? Go ahead and call them. I'm sure there's *plenty* around here."~ */ GOTO 28
  IF ~~ THEN REPLY #12069 /* ~Attack him.~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12070 /* ~Let him go.~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.1 18.1 20.0 21.0 22.0 23.0 24.0
  SAY #2160 /* ~Your hand snaps out, but Ash-Mantle draws back suddenly and you miss grabbing his wrist. You see his Dustman facade crumple, and with a frightened look, he runs off!~ */
  IF ~~ THEN REPLY #12071 /* ~"Dammit..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 17.2 18.2
  SAY #2161 /* ~Ash-mantle suddenly takes off running!~ */
  IF ~~ THEN REPLY #12072 /* ~"Dammit..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 25.0 25.1 25.2
  SAY #2162 /* ~"Pah." He looks more irritated than anything else. "What gave me away?"~ */
  IF ~  Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12073 /* ~"I was warned someone like you was dressing up as a Dustman and picking pockets."~ */ GOTO 29
  IF ~  GlobalGT("Ash_Suspicious","GLOBAL",0)
~ THEN REPLY #12074 /* ~"Your ignorance on some of the common Dustman philosophies. You should do some research before trying to run a con on someone smarter than you. Now I had some questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12075 /* ~"Your skill in picking pockets needs work. Now, I had some questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12076 /* ~"I'll let you figure it out. Now, I had some questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12077 /* ~"You won't live long enough to find out. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0 28.1 28.2 28.3 30.0 32.1 33.0 35.0 36.1 41.0
  SAY #2163 /* ~"What's your questions then?"~ */
  IF ~~ THEN REPLY #12078 /* ~"What are you doing in that Dustman get-up?"~ */ GOTO 30
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #12079 /* ~"I'm looking for someone named 'Pharod.' You know him?"~ */ GOTO 36
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #12080 /* ~"I'm looking for a journal."~ */ GOTO 35
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12081 /* ~Truth: "Give me everything you have, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",0)
~ THEN REPLY #12082 /* ~Bluff: "Give me everything you have, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 31
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12083 /* ~Truth: "Now... give me *everything* you have, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
~ GOTO 33
  IF ~  Global("Shake_Ash","GLOBAL",1)
~ THEN REPLY #12084 /* ~Bluff: "Now... give me *everything* you have, or I'll kill you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
~ GOTO 33
  IF ~~ THEN REPLY #12085 /* ~"My question is how many seconds it'll take for me to kill you... prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12086 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12087 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #2164 /* ~He shrugs. "Nobody suspects a Dustman." He gives a hollow chuckle. "Can make a nice bit of jink before anyone catches on to the peel."~ */
  IF ~~ THEN REPLY #12088 /* ~"Interesting. I had some other questions..."~ */ GOTO 29
  IF ~~ THEN REPLY #12089 /* ~"That's all I wanted to know. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12090 /* ~"I see. Look, Ash-Mantle, here's how it's going to be - I don't want to ever see you around again, or I'll gut you. Now get."~ */ GOTO 19
  IF ~~ THEN REPLY #12091 /* ~"Yeah, pretty smart. Look, I don't want to ever see you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 31 // from: 29.3 29.4
  SAY #2165 /* ~The man's eyes narrow. "I have nothing on me. You were my first mark of the day."~ */
  IF ~~ THEN REPLY #12092 /* ~Bluff: "Now you're not just playing dumb, you're *being* dumb. Give me what you have, or the Collectors will be scraping a new body off the street."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_1","GLOBALLaw",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
GiveGoldForce(50)
~ GOTO 32
  IF ~~ THEN REPLY #12093 /* ~Truth: "Now you're not just playing dumb, you're *being* dumb. Give me what you have, or the Collectors will be scraping a new body off the street."~ */ DO ~GiveGoldForce(50)
IncrementGlobalOnceEx("GLOBALEvil_Ash_6","GLOBALGood",-1)
SetGlobal("Shake_Ash","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #12094 /* ~"Wrong answer. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12095 /* ~"Oh, yeah? Well, let me shake you down and see if that's true."~ */ GOTO 34
END

IF ~~ THEN BEGIN 32 // from: 31.0 31.1
  SAY #2166 /* ~He grunts, gauges you for his chances of taking you, thinks better of it, then touches the lining of his robe. With a sharp jerk, he tears a part of the robe and pulls forth a small bit of copper stashed there. He hands it over. You don't think you would have found it if he hadn't revealed it.~ */
  IF ~~ THEN REPLY #12096 /* ~"That it? You better have something else for me, Ash-Mantle, or you and death are going to be close friends in a moment."~ */ GOTO 33
  IF ~~ THEN REPLY #12097 /* ~"All right then. Now I had some questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12098 /* ~"That's all I wanted. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12099 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12100 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 33 // from: 29.5 29.6 32.0
  SAY #2167 /* ~He bares his teeth. "I have nothing else."~ */
  IF ~~ THEN REPLY #12101 /* ~"All right then. Now I had some questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12102 /* ~"Oh, yeah? Well, let me shake you down and see if that's true."~ */ GOTO 34
  IF ~~ THEN REPLY #12103 /* ~"Wrong answer. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12104 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12105 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 34 // from: 31.3 33.1
  SAY #2168 /* ~As you are about to search him, a dagger suddenly slides from his sleeve into his free hand. With a snarl, he attacks you!~ */
  IF ~~ THEN REPLY #12106 /* ~"All right then..."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)
~ EXIT
END

IF ~~ THEN BEGIN 35 // from: 29.2
  SAY #2169 /* ~The man frowns. "So? You think I seen something like that? I only deal in jink, berk."~ */
  IF ~~ THEN REPLY #12107 /* ~"All right then, I have some other questions for you..."~ */ GOTO 29
  IF ~~ THEN REPLY #12108 /* ~"That's all I wanted to know. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12109 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12110 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 36 // from: 29.1
  SAY #2170 /* ~"What about him?"~ */
  IF ~~ THEN REPLY #12111 /* ~"Who is he?"~ */ GOTO 37
  IF ~~ THEN REPLY #12112 /* ~"Never mind. I had some other questions..."~ */ GOTO 29
  IF ~~ THEN REPLY #12113 /* ~"Forget it. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12114 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12115 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #2171 /* ~"Will you let me go if I tell you?"~ */
  IF ~~ THEN REPLY #12116 /* ~"No."~ */ GOTO 38
  IF ~~ THEN REPLY #12117 /* ~Vow: "You have my word that I will let you go... if you answer my question."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12118 /* ~Truth: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12119 /* ~Lie: "Yes."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_3","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12120 /* ~Truth: "I'll let you *live* if you tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 38
  IF ~~ THEN REPLY #12121 /* ~Bluff: "I'll let you *live* if you tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0 37.4 37.5
  SAY #2172 /* ~He spits on the ground. "Then I have little ta say on the matter."~ */
  IF ~~ THEN REPLY #12122 /* ~Vow: "Very well. You have my word that I will let you go... if you answer my question."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",2)
~ GOTO 39
  IF ~~ THEN REPLY #12123 /* ~Truth: "Okay, I'll let you go."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Ash_1","GLOBALLaw",1)
~ GOTO 39
  IF ~~ THEN REPLY #12124 /* ~Lie: "Okay, I'll let you go."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_4","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12125 /* ~Truth: "I'll let you *live* if you tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_8","GLOBALGood",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12126 /* ~Bluff: "I'll let you *live* if you tell me."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_5","GLOBALLaw",-1)
~ GOTO 39
  IF ~~ THEN REPLY #12127 /* ~"Wrong answer. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 39 // from: 37.1 37.2 37.3 38.0 38.1 38.2 38.3 38.4
  SAY #2173 /* ~"Pharod's a Collector boss. Has a lot of boys in his shadow and, chant is, they've got a tidy operation all set up. Don't know much else about it. I'd be careful if I was tangling with him."~ */
  IF ~~ THEN REPLY #12128 /* ~"Where can I find him?"~ */ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #2174 /* ~"He's got his kip in Ragpicker's Square... it's this huge batch of rags and garbage north and west of here. Head through the north gate, then keep heading north until you hit it. The chant is that Pharod's hiding out in the trash mountains somewhere, maybe buried beneath 'em. Who knows? Now, you gonna let me go?"~ */
  IF ~  Global("Lawful_Ash_1","GLOBAL",0)
~ THEN REPLY #12129 /* ~"No. I had some other questions for you..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_2","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("Lawful_Ash_1","GLOBAL",1)
~ THEN REPLY #12130 /* ~"No. I had some other questions for you..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Ash_6","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Ash_9","GLOBALGood",-1)
~ GOTO 41
  IF ~~ THEN REPLY #12131 /* ~"That was all I needed to know. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12132 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12133 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF ~~ THEN BEGIN 41 // from: 40.0 40.1
  SAY #2175 /* ~He looks furious. "You *said* you'd let me go."~ */
  IF ~~ THEN REPLY #12134 /* ~"And *you* said you were a Dustman. Now for my questions..."~ */ GOTO 29
  IF ~~ THEN REPLY #12135 /* ~"Yes, I said a lot of things, and now I am tired of speaking to you. Prepare to die."~ */ DO ~SetGlobal("Remove_Ash","GLOBAL",1)
Enemy()
RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
  IF ~~ THEN REPLY #12136 /* ~"Get out of here. I see you around again, I'll gut you."~ */ GOTO 19
  IF ~~ THEN REPLY #12137 /* ~"Now leave. I don't want to ever even *hear* of you pulling this little con anywhere in Sigil again. Understand?"~ */ GOTO 19
END

IF WEIGHT #1 /* Triggers after states #: 44 even though they appear after this state */
~  GlobalGT("Ashmantle","GLOBAL",0)
~ THEN BEGIN 42 // from:
  SAY #2176 /* ~You see Ash-Mantle again... he still looks lost and is mumbling as he looks at the buildings.~ */
  IF ~  Global("Directed_Ashmantle","GLOBAL",0)
~ THEN REPLY #12138 /* ~"Greetings."~ */ GOTO 45
  IF ~  Global("Directed_Ashmantle","GLOBAL",1)
~ THEN REPLY #12139 /* ~"Greetings."~ */ GOTO 43
  IF ~~ THEN REPLY #12140 /* ~Pass him by.~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.1
  SAY #2177 /* ~"I'm afraid I've forgotten your directions, sir. Could I prevail upon you to direct me again?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12141 /* ~"You know, there's been talk that there's a pickpocket masquerading as a Dustman around here. Maybe you know him?"~ */ GOTO 18
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12142 /* ~"Oh, the Dustman bar? It's by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12143 /* ~"I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12144 /* ~"I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12145 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12146 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12147 /* ~"I can't help you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12148 /* ~"I can't help you. Farewell."~ */ GOTO 5
END

IF WEIGHT #0 ~  Global("Remove_Ash","GLOBAL",1)
~ THEN BEGIN 44 // from:
  SAY #2178 /* ~"I'm leaving! Now let me be!"~ */
  IF ~~ THEN REPLY #12149 /* ~"I suggest you make haste."~ */ DO ~RunAwayFromEx([PC],SIX_AI_HOUR,TRUE)
~ EXIT
END

IF ~~ THEN BEGIN 45 // from: 42.0
  SAY #2179 /* ~"I know you were not able to help me before, sir. Perhaps this time you might know where this bar my sect frequents is?"~ */
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
Global("Dustman_Pickpocket","GLOBAL",1)
~ THEN REPLY #12150 /* ~"You know, there's been talk that there's a pickpocket masquerading as a Dustman around here. Maybe you know him?"~ */ GOTO 18
  IF ~  Global("Know_Factions","GLOBAL",1)
GlobalLT("Know_Dustmen","GLOBAL",2)
~ THEN REPLY #12151 /* ~"'Sect'? Don't you mean 'faction'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  GlobalGT("Know_Dustmen","GLOBAL",1)
~ THEN REPLY #12152 /* ~"'Sect'? You're a Dustman: Don't you mean 'faction'?"~ */ DO ~SetGlobal("Ash_Suspicious","GLOBAL",1)
~ GOTO 3
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12153 /* ~"Oh, the Dustman bar? It's by the Mortuary. Orient yourself by the Mortuary front gate, then walk directly southwest. You can't miss it."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Ash_1","GLOBALGood",1)
~ GOTO 6
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12154 /* ~"I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_1","GLOBALGood",-1)
~ GOTO 4
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12155 /* ~"I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ GOTO 7
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12156 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 4
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12157 /* ~Lie: "Er... yeah, I've heard of it. I'd be willing to help you... if you'll answer some questions for me."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_2","GLOBALGood",-1)
IncrementGlobalOnceEx("GLOBALChaotic_Ash_3","GLOBALLaw",-1)
~ GOTO 7
  IF ~  OR(2)
!Global("Know_Dustman_Bar","GLOBAL",0)
!Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12158 /* ~"I can't help you. Farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Ash_7","GLOBALGood",-1)
~ GOTO 5
  IF ~  Global("Know_Dustman_Bar","GLOBAL",0)
Global("AR0205_Visited","GLOBAL",0)
~ THEN REPLY #12159 /* ~"I can't help you. Farewell."~ */ GOTO 5
END
