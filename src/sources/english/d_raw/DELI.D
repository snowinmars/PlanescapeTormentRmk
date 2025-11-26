// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DELI.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DELI~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedTo(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #31866 /* ~This narrow-eyed, sharp-faced man is scanning his surroundings with a look of vague disinterest, pausing occasionally to look down and pick at his fingernails. Despite being clothed in silk and velvet finery, he manages to look unsavory and more than a little dangerous.~ */
  IF ~~ THEN REPLY #31937 /* ~"Greetings..."~ */ GOTO 1
  IF ~~ THEN REPLY #31938 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #2911 /* ~The man looks your way. His eyes are dark slits, like narrow stab-wounds beneath his brow. His voice is low and gruff despite his slender build. "Pike off."~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31939 /* ~"Not just yet. Are you Eli Havelock?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31940 /* ~"Not yet. I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #31941 /* ~"I'd watch that mouth of yours, if I were you."~ */ GOTO 3
  IF ~~ THEN REPLY #31942 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.1 21.1
  SAY #31868 /* ~"You think I wander the Ward looking for strangers to spill dark for? Now pike off."~ */
  IF ~  CheckStatGT(Protagonist,8,CHR)
~ THEN REPLY #31943 /* ~"Why *are* you here, then? To be surly with passersby?"~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 4
  IF ~  CheckStatLT(Protagonist,9,CHR)
~ THEN REPLY #31944 /* ~"Why *are* you here, then? To be surly with passersby?"~ */ GOTO 3
  IF ~~ THEN REPLY #31945 /* ~"I'd watch that mouth of yours, if I were you."~ */ GOTO 3
  IF ~~ THEN REPLY #31946 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.2 2.1 2.2
  SAY #31870 /* ~He makes a point of ignoring you.~ */
  IF ~~ THEN REPLY #31947 /* ~Grab him, shake him up a bit for some answers.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #31948 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #31871 /* ~"Heh." He stands quietly for a moment, then breaks a crooked smile. "That's good, that." He considers you for a moment. "I'm a tutor at the Civic Festhall. Name's Havelock - Eli Havelock. As a veteran scout, I teach the art of subterfuge."~ */
  IF ~~ THEN REPLY #31949 /* ~"You mean thievery?"~ */ GOTO 5
  IF ~~ THEN REPLY #31950 /* ~"Could you train me?"~ */ GOTO 6
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #65427 /* ~"You're the Festhall thieves' tutor? Listen... Qui-Sai won't train me as a warrior. He says I could just steal an opponent's weapon, leaving them defenseless. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #65428 /* ~"You're the Festhall thieves' tutor? Listen... Qui-Sai won't train me as a warrior... he says I could hide from enemies, thereby becoming invulnerable. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31951 /* ~"I do. Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0 20.2
  SAY #28796 /* ~His lip curls up in a disgusted sneer. "*Thieves* and *thievery* it always is! Five tours I spent as a reconnaissance operative in the War of Lies. Scout is my title... *scout.* I teach the ways of stealth and spy-craft, not common thievery."~ */
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31952 /* ~"My apologies; I meant no offense. Could you train me?"~ */ GOTO 6
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31953 /* ~"Could you train me anyway?"~ */ GOTO 11
  IF ~~ THEN REPLY #31954 /* ~"I see. Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.1 5.0 22.3
  SAY #31872 /* ~Eli frowns sourly. "I don't know. I've had enough of teaching petty pick-pockets and curious Sensates for the time being." Almost to himself, he mumbles: "Not sure why I agreed to do it in the first place."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #31955 /* ~"Perhaps because by teaching others you make them aware of your own skill."~ */ GOTO 7
  IF ~~ THEN REPLY #31956 /* ~"What could I do to convince you otherwise?"~ */ GOTO 12
  IF ~~ THEN REPLY #31957 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #31873 /* ~"Hmm..."~ */
  IF ~~ THEN REPLY #31958 /* ~"At the same time, you defend the nobility of your skills by assuring them that you're no common thief, but a scout and spy, a master of subterfuge."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #31883 /* ~Eli nods, mulling over what you've said. "Aye... there's no denying it. It's sort of sorry, though, when you look at it that way."~ */
  IF ~~ THEN REPLY #31959 /* ~"I don't think so. Those of your trade are often misunderstood, thrust unfairly into the same category as footpads and brigands. There's nothing wrong with dispelling false notions."~ */ GOTO 10
  IF ~~ THEN REPLY #31960 /* ~"You're right; it's pathetic."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #31884 /* ~His eyebrows shoot up in surprise for a brief moment, then furrow angrily. "Looking for trouble, eh? Go play in the Lady's shadow, berk - pike off!"~ */
  IF ~~ THEN REPLY #31961 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #31885 /* ~"Heh! Right again, you are." He gives you a friendly punch to your shoulder. "Thanks, blood." He suddenly looks off into the distance. "Well... enough wasting time out here. I'm heading back to the Festhall. If you still want to train, that's where you'll find me."~ */
  IF ~~ THEN REPLY #31962 /* ~"Perhaps I'll see you there, Eli. Farewell."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 5.1
  SAY #31886 /* ~"Nay... I've had enough of teaching petty pick-pockets and would-be robbers for the time being."~ */
  IF ~~ THEN REPLY #31963 /* ~"What could I do to convince you otherwise?"~ */ GOTO 12
  IF ~~ THEN REPLY #31964 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 6.1 11.0
  SAY #31887 /* ~He purses his lips and looks skywards. "Hrmm... many things, I suppose." He looks you straight in the eye. "I'll keep it simple for you, though: jink. You want the training, it'll cost you. I'll pinch the Lady's bottom before I train another berk for free!"~ */
  IF ~~ THEN REPLY #31965 /* ~"How much?"~ */ GOTO 13
  IF ~~ THEN REPLY #31966 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31888 /* ~Eli shrugs. "Hells, I don't know. Five hundred commons ought to be reasonable... I *am* a veteran scout, you know... five tours in the War of Lies, I served! That's a lot of experience to share..."~ */
  IF ~~ THEN REPLY #31971 /* ~"Deal."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #31972 /* ~"How about three hundred?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #31973 /* ~"How about three hundred?"~ */ GOTO 14
  IF ~~ THEN REPLY #31975 /* ~"How about two hundred?"~ */ GOTO 15
  IF ~~ THEN REPLY #31978 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.2 15.1
  SAY #31889 /* ~He shakes his head. "No. Five's what I want, five's what you'll pay."~ */
  IF ~~ THEN REPLY #31979 /* ~"Deal, then."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 17
  IF ~~ THEN REPLY #31980 /* ~"Forget it, then. Farewell."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 13.3
  SAY #31890 /* ~He rolls his eyes. "You barmy, berk? Hells no! Five's my price; no more, no less."~ */
  IF ~  CheckStatGT(Protagonist,15,CHR)
~ THEN REPLY #31981 /* ~"All right, how about three hundred?"~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",2)
~ GOTO 17
  IF ~  CheckStatLT(Protagonist,16,CHR)
~ THEN REPLY #31982 /* ~"All right, how about three hundred?"~ */ GOTO 14
  IF ~~ THEN REPLY #31983 /* ~"Forget it, then. Farewell."~ */ DO ~SetGlobal("CW_Thief_Train","AR0600",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.4 14.1 15.2 17.1 23.1
  SAY #31891 /* ~"If you return, you know the price: five hundred copper commons. Farewell, cutter."~ */
  IF ~~ THEN REPLY #31984 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 13.0 13.1 14.0 15.0
  SAY #31892 /* ~"A done deal, then." The two of you shake hands. "Do you have it now?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #31985 /* ~"Yes... here it is."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #31986 /* ~"No... not right now."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #31987 /* ~"Yes... here it is."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #31988 /* ~"No... not right now."~ */ GOTO 19
  IF ~~ THEN REPLY #31989 /* ~"I actually don't want to train just yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.2 23.0 23.2
  SAY #31893 /* ~He takes the rolls of copper coins you hand him and hides them away in his tunic. "I'll meet you in the Civic Festhall, where I'll train you. Farewell until then, cutter."~ */
  IF ~~ THEN REPLY #31990 /* ~"I'll see you there, Eli. Farewell."~ */ DO ~SetGlobal("Eli","GLOBAL",3)
AddexperienceParty(12000)
StartCutSceneMode()
StartCutSceneEx("0600cut1",FALSE)
~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.3 23.3
  SAY #31894 /* ~"If you return, you know the price: three hundred copper commons. Farewell, cutter."~ */
  IF ~~ THEN REPLY #31991 /* ~"Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 1.0 21.0
  SAY #31895 /* ~He smirks. "Yes, that's me..."~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31992 /* ~"Qui-Sai won't train me as a warrior... he says I could just steal an opponent's weapon, leaving them defenseless. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #31993 /* ~"Qui-Sai still won't train me as a warrior... he says I could hide from enemies, thereby becoming invulnerable. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~~ THEN REPLY #31994 /* ~"Could you train me as a thief?"~ */ GOTO 5
  IF ~~ THEN REPLY #31995 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF WEIGHT #3 /* Triggers after states #: 51 50 even though they appear after this state */
~  NumTimesTalkedToGT(0)
GlobalLT("Eli","GLOBAL",2)
~ THEN BEGIN 21 // from:
  SAY #31896 /* ~This narrow-eyed, sharp-faced man is scanning his surroundings with a look of vague disinterest. He spots your approach and turns to you. "Still poking around here?" He frowns. "What do you want?"~ */
  IF ~  Global("Eli","GLOBAL",1)
~ THEN REPLY #31996 /* ~"I'm wondering if you're Eli Havelock."~ */ DO ~SetGlobal("Eli","GLOBAL",2)
~ GOTO 20
  IF ~~ THEN REPLY #31997 /* ~"I had some questions..."~ */ GOTO 2
  IF ~~ THEN REPLY #31998 /* ~"Nothing. Farewell."~ */ EXIT
END

IF WEIGHT #4 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",2)
~ THEN BEGIN 22 // from:
  SAY #31899 /* ~Eli sees your approach, but his expression is impossible to read. You wonder if he can even really see you through his narrow black eyes. "Hmm?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #31999 /* ~"Qui-Sai won't train me as a warrior... he says I could just steal an opponent's weapon, leaving them defenseless. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32000 /* ~"Qui-Sai still won't train me as a warrior... he says I could hide from enemies, thereby becoming invulnerable. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... could you train me?"~ */ GOTO 23
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32001 /* ~"Eli... could you train me?"~ */ GOTO 6
  IF ~~ THEN REPLY #32002 /* ~"Just passing by. Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.2
  SAY #31903 /* ~"Do you have the jink?"~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldGT(499)
~ THEN REPLY #32003 /* ~"All five hundred commons... here it is."~ */ DO ~TakePartyGold(500)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",1)
PartyGoldLT(500)
~ THEN REPLY #32004 /* ~"No... not right now."~ */ GOTO 16
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldGT(299)
~ THEN REPLY #32005 /* ~"All three hundred commons... here it is."~ */ DO ~TakePartyGold(300)
~ GOTO 18
  IF ~  Global("CW_Thief_Train","AR0600",2)
PartyGoldLT(300)
~ THEN REPLY #32006 /* ~"No... not right now."~ */ GOTO 19
  IF ~~ THEN REPLY #32007 /* ~"I actually don't want to train just yet. Farewell."~ */ EXIT
END

IF WEIGHT #5 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",3)
~ THEN BEGIN 24 // from:
  SAY #31904 /* ~"I'm off to the scout's training chamber in the Civic Festhall, cutter. If you want to chat or train, you'll meet me there. Farewell."~ */
  IF ~~ THEN REPLY #32008 /* ~"Farewell, Eli."~ */ EXIT
END

IF WEIGHT #6 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",4)
~ THEN BEGIN 25 // from:
  SAY #31906 /* ~"Huzzah, look who's arrived!" Eli shoots you a wicked smile. "Welcome to my stomping grounds, cutter. Ready to train?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32009 /* ~"Not now. Qui-Sai won't train me as a warrior... he says I could just steal an opponent's weapon, leaving them defenseless. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32010 /* ~"Not now. Qui-Sai still won't train me as a warrior... he says I could hide from enemies, thereby becoming invulnerable. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #32011 /* ~"Yes, I am."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #32012 /* ~"Yes, I am."~ */ GOTO 26
  IF ~~ THEN REPLY #32013 /* ~"No, not right now, Eli. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.3 49.3
  SAY #31907 /* ~"Right, right. Here... let's see you take this from my hand, cutter." He extends his arm; a single copper coin lies in his palm.~ */
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32014 /* ~Snatch the coin.~ */ DO ~GiveGoldForce(1)
SetGlobal("Eli","GLOBAL",4)
~ GOTO 27
  IF ~  CheckStatGT(Protagonist,8,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32015 /* ~Grab the coin.~ */ DO ~SetGlobal("Eli","GLOBAL",4)
~ GOTO 28
  IF ~  CheckStatLT(Protagonist,9,DEX)
~ THEN REPLY #32016 /* ~Grab at the coin.~ */ GOTO 29
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #31908 /* ~Your hand lashes out, snatching the coin from his palm with such speed that you're as shocked as Eli. "Powers that be! You're faster than you look to be, cutter..."~ */
  IF ~~ THEN REPLY #32017 /* ~"Thanks."~ */ GOTO 40
END

IF ~~ THEN BEGIN 28 // from: 26.1
  SAY #31909 /* ~You flick your hand out... but Eli's too fast. "Good enough though, cutter. We'll continue."~ */
  IF ~~ THEN REPLY #32018 /* ~"All right..."~ */ GOTO 40
END

IF ~~ THEN BEGIN 29 // from: 26.2
  SAY #31910 /* ~You make a laughable attempt at grabbing Eli's coin. He frowns, shaking his head sadly.~ */
  IF ~  Global("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32019 /* ~"What?"~ */ GOTO 30
  IF ~  GlobalGT("CW_Thief_Train","AR0600",0)
~ THEN REPLY #32020 /* ~"What?"~ */ GOTO 31
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #31911 /* ~"Sorry cutter... I hate to tell you this, but you're just too slow to make it in this line of work. Best of luck with whatever else you try and do, though... farewell."~ */
  IF ~~ THEN REPLY #32021 /* ~"I... see. Farewell then, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
~ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.1
  SAY #31912 /* ~"Sorry cutter... I hate to tell you this, but you're just too slow to make it in this line of work. Look - I wouldn't feel right taking your jink, so here... take it back. Best of luck with whatever else you try and do... farewell."~ */
  IF ~  Global("CW_Thief_Train","AR0600",1)
~ THEN REPLY #32022 /* ~"I... see. Farewell then, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(500)
~ EXIT
  IF ~  Global("CW_Thief_Train","AR0600",2)
~ THEN REPLY #32023 /* ~"I... see. Farewell then, Eli."~ */ DO ~SetGlobal("Eli","GLOBAL",5)
GivePartyGold(300)
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 40.0
  SAY #31913 /* ~"We're ready to begin, cutter. I'll be teaching you the six basic arts of subterfuge: how to move stealthily, using shadows to conceal yourself, the picking of locks and pockets, the detection and removal of traps, and how to ambush a foe, striking at their back from within hiding."~ */
  IF ~~ THEN REPLY #32024 /* ~"Go on..."~ */ GOTO 33
  IF ~~ THEN REPLY #32025 /* ~"I think I understand the basics, Eli. Let's get to training."~ */ GOTO 39
END

IF ~~ THEN BEGIN 33 // from: 32.0
  SAY #31914 /* ~"The ability to move silently, hidden within shadows, is of great value. Many foes can be avoided altogether simply by remaining out of their sight. Also, attacking a foe from hiding gives a scout a great advantage, as I will speak of later. But remember, cutter: a scout cannot go into hiding if a foe already has them in their eyes."~ */
  IF ~~ THEN REPLY #32026 /* ~"Go on..."~ */ GOTO 34
  IF ~~ THEN REPLY #32027 /* ~"I think I understand the basics, Eli. Let's get to training."~ */ GOTO 39
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #31915 /* ~"Often a scout will find that a locked portal bars their way, or items or documents vital to their mission have been hidden away in locked containers. The ability to pick locks comes in handy at such times. It is always advised to check such locks for traps, however, which I will speak of later."~ */
  IF ~~ THEN REPLY #32028 /* ~"Go on..."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #31916 /* ~"Sometimes, a foe will have some item or document on their person that's vital to a scout's mission. It's times like this that a scout must resort to picking their pockets, creeping up close and stealing the item right off of them. A scout must always be ready to fight or flee, though, should they fail in their attempt."~ */
  IF ~~ THEN REPLY #32029 /* ~"Go on..."~ */ GOTO 36
  IF ~~ THEN REPLY #32030 /* ~"I think I understand the basics, Eli. Let's get to training."~ */ GOTO 39
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #31917 /* ~"Often times a scout will find their foes have trapped areas or containers which need to be crossed or opened. Such traps are invariable well hidden; a scout must approach the area or item cautiously and use their skills to search for anything suspicious. Be patient... sometimes it will take a few moments to spot a trap."~ */
  IF ~~ THEN REPLY #32031 /* ~"Go on..."~ */ GOTO 37
  IF ~~ THEN REPLY #32032 /* ~"I think I understand the basics, Eli. Let's get to training."~ */ GOTO 39
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #31918 /* ~"Should a scout *find* such a trap, they must choose to either circumvent or attempt to disarm it. They must utmost care when trying to dismantle a trap, however, as there is always a chance it'll be set off by their meddling."~ */
  IF ~~ THEN REPLY #32033 /* ~"Go on..."~ */ GOTO 38
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #31919 /* ~"The last thing I shall teach you is the scout's final gambit... the strike from behind. Should a scout encounter and attack a foe while still in hiding, their first blow will be more accurate and can strike *hard.* As a scout becomes more experienced, they become increasingly deadly when striking from the shadows. Remember, though... once a scout attacks from hiding, they are revealed to their foes."~ */
  IF ~~ THEN REPLY #32034 /* ~"All right, Eli. Let's get to training."~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 32.1 33.1 35.1 36.1 38.0
  SAY #31920 /* ~Eli nods. "All right, cutter... first off, you've got to relax. You're too tense. You're going to have to let your instinct take over at times, trust your hunches..."

And so your training as a thief begins.~ */
  IF ~  CheckStatLT(Protagonist,13,DEX)
~ THEN REPLY #32035 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,2500)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~I trained to become a thief under a man named Eli Havelock, the thieves' - or 'scouts',' as he prefers - tutor in the Civic Festhall.~ */ GOTO 41
  IF ~  CheckStatGT(Protagonist,12,DEX)
CheckStatLT(Protagonist,16,DEX)
~ THEN REPLY #32036 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3125)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~I trained to become a thief under a man named Eli Havelock, the thieves' - or 'scouts',' as he prefers - tutor in the Civic Festhall.~ */ GOTO 42
  IF ~  CheckStatGT(Protagonist,15,DEX)
CheckStatLT(Protagonist,18,DEX)
~ THEN REPLY #32037 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3438)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~I trained to become a thief under a man named Eli Havelock, the thieves' - or 'scouts',' as he prefers - tutor in the Civic Festhall.~ */ GOTO 43
  IF ~  CheckStatGT(Protagonist,17,DEX)
~ THEN REPLY #32038 /* ~Learn all you can.~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
SetGlobal("Thief_Training","GLOBAL",1)
GiveExperience(Protagonist,3750)
PermanentStatChange(Protagonist,STEALTH,RAISE,17)
PermanentStatChange(Protagonist,TRAPS,RAISE,13)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,22)
PermanentStatChange(Protagonist,LOCKPICKING,RAISE,18)
~ JOURNAL #39473 /* ~I trained to become a thief under a man named Eli Havelock, the thieves' - or 'scouts',' as he prefers - tutor in the Civic Festhall.~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 27.0 28.0
  SAY #31921 /* ~Eli nods. "Now, you understand that you've got to drop your current profession, right? Are you prepared to do this?"~ */
  IF ~~ THEN REPLY #32039 /* ~"Yes, I am."~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 32
  IF ~~ THEN REPLY #32040 /* ~"No, I'd best not. Perhaps another time... farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.0
  SAY #31922 /* ~After a long period of training, Eli nods at you in satisfaction. "I must say, cutter - never have I run across a faster learner. I'd almost say you've done this all before!"~ */
  IF ~~ THEN REPLY #32041 /* ~"Perhaps I have, Eli, and simply forgot. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 39.1
  SAY #31923 /* ~After a long period of training, Eli nods at you in satisfaction. "I must say, cutter - never have I run across a faster learner. I'd almost say you've done this all before!" As Eli speaks, you come to realize that you *have* done this before... that at one time you possessed all these skills, and the training has reawakened them.~ */
  IF ~~ THEN REPLY #32042 /* ~"Perhaps I have, Eli, and simply forgot. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 39.2 39.3
  SAY #31924 /* ~After a long period of training, Eli nods at you in satisfaction. "I must say, cutter - never have I run across a faster learner. I'd almost say you've done this all before!" As Eli speaks, you come to realize that you *have* done this before... that at one time you possessed all these skills.~ */
  IF ~~ THEN REPLY #32043 /* ~"Perhaps I have, Eli, and simply forgot. Thanks, and farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from:
  SAY #31925 /* ~As faded memories of lurking in darkened hallways and avoiding deadly traps drift into focus, you manage to recall enough to 'learn' more than Eli has taught you.~ */
  IF ~~ THEN REPLY #32044 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 25.2 49.2
  SAY #31926 /* ~"I've little to teach if you've already been trained, cutter. If you've strayed from the scout's path, though, I can always show you the way again."~ */
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32045 /* ~"I'd like to take up the ways of subterfuge again, Eli."~ */ GOTO 46
  IF ~~ THEN REPLY #32046 /* ~"I understand. Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #31927 /* ~"Now, you understand that you've got to drop your current profession, right? Are you prepared to do this?"~ */
  IF ~  Class(Protagonist,FIGHTER)
~ THEN REPLY #32047 /* ~"Yes; I no longer wish to be a warrior."~ */ GOTO 47
  IF ~  Class(Protagonist,MAGE)
~ THEN REPLY #32048 /* ~"Yes; I no longer wish to be a mage."~ */ GOTO 47
  IF ~~ THEN REPLY #32049 /* ~"Actually, not just now. Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #31928 /* ~"Good, good! Let's get to training, then... bring your neglected skills back up to snuff!"~ */
  IF ~~ THEN REPLY #32050 /* ~Train to become a Thief once more.~ */ DO ~FadeToColor([20.0],0)
Wait(2)
FadeFromColor([20.0],0)
SetNamelessClass(THIEF)
~ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #31929 /* ~"You're a fast learner, cutter, that I must say." He peers at you curiously through the dark slits of his eyes, then shakes his head. "Well, that's it, then - you're all set."~ */
  IF ~~ THEN REPLY #32051 /* ~"Thanks, Eli. Farewell."~ */ EXIT
END

IF WEIGHT #7 /* Triggers after states #: 51 50 even though they appear after this state */
~  Global("Eli","GLOBAL",5)
~ THEN BEGIN 49 // from:
  SAY #31930 /* ~Eli pauses to nod at you. "'Lo there, cutter. Something you needed?"~ */
  IF ~  Global("CW_Qui_Question","GLOBAL",1)
Global("CW_Eli_Ans","GLOBAL",0)
~ THEN REPLY #32052 /* ~"Qui-Sai won't train me as a warrior... he says I could just steal an opponent's weapon, leaving them defenseless. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",1)
AddexperienceParty(250)
~ GOTO 54
  IF ~  Global("CW_Qui_Question","GLOBAL",2)
GlobalLT("CW_Eli_Ans","GLOBAL",2)
~ THEN REPLY #32053 /* ~"Qui-Sai still won't train me as a warrior... he says I could hide from enemies, thereby becoming invulnerable. What do you think?"~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
AddexperienceParty(250)
~ GOTO 55
  IF ~  GlobalGT("Thief_Training","GLOBAL",0)
~ THEN REPLY #64675 /* ~"Yes... I wanted to try and train with you again."~ */ GOTO 45
  IF ~  Global("Thief_Training","GLOBAL",0)
~ THEN REPLY #64676 /* ~"Yes... I wanted to try and train with you again."~ */ GOTO 26
  IF ~~ THEN REPLY #32054 /* ~"No... just passing by. Farewell, Eli."~ */ EXIT
END

IF WEIGHT #0 ~  Global("CW_PP_Eli","GLOBAL",1)
!Global("Eli","GLOBAL",4)
~ THEN BEGIN 50 // from:
  SAY #31931 /* ~The man thrusts his finger at you. "Watch yourself, berk... most bloods would kill you or call the hardheads for that. Now pike off before I reconsider and draw steel."~ */
  IF ~~ THEN REPLY #32055 /* ~"Go ahead, draw your sword: I'll sheathe it in your skull."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
Enemy()
ForceAttack(Protagonist,Myself)
~ EXIT
  IF ~~ THEN REPLY #32056 /* ~Leave.~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ EXIT
END

IF WEIGHT #1 ~  Global("CW_PP_Eli","GLOBAL",1)
Global("Eli","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #31932 /* ~Eli laughs bitterly, shaking his head. "Not a bad try, cutter... not bad at all."~ */
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",0)
~ THEN REPLY #32057 /* ~"Uh... thanks."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
SetGlobal("CW_PP_Training","AR0601",1)
PermanentStatChange(Protagonist,PICKPOCKET,RAISE,5)
~ GOTO 52
  IF ~  !Class(Protagonist,THIEF)
~ THEN REPLY #32058 /* ~"Uh... thanks."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
  IF ~  Class(Protagonist,THIEF)
Global("CW_PP_Training","AR0601",1)
~ THEN REPLY #32059 /* ~"Uh... thanks."~ */ DO ~SetGlobal("CW_PP_Eli","GLOBAL",0)
~ GOTO 53
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #26793 /* ~"Your hands must move faster. In and out of the pockets quickly... or you're sure to get scragged."~ */
  IF ~~ THEN REPLY #32060 /* ~"Thanks, Eli. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 51.1 51.2
  SAY #31934 /* ~"Yes, yes... now lay off, before your poking and prodding starts to annoy me."~ */
  IF ~~ THEN REPLY #32061 /* ~"Farewell, Eli."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 4.2 20.0 22.0 25.0 49.0
  SAY #31935 /* ~He shakes his head. "Not true, cutter. Even I'd have to admit that the battle must still be fought. To rely on theft alone is a mistake."~ */
  IF ~~ THEN REPLY #32062 /* ~"Thanks, Eli. Farewell."~ */ DO ~SetGlobal("CW_Eli_Ans","GLOBAL",2)
~ JOURNAL #66575 /* ~Qui-Sai had refused to train me as a warrior, claiming that a thief could always steal an opponent's weapons and thus avoid a battle. However, I spoke to Eli Havelock, thieves' tutor of the Civic Festhall, and he explained that the battle must still be fought, and to rely on such thievery is a mistake. He then further explained that stealth and hiding will not get you out of every battle, especially as some foes can't even be hidden from. This should provide a good counterpoint to Qui-Sai's argument.~ */ GOTO 56
END

IF ~~ THEN BEGIN 55 // from: 4.3 20.1 22.1 25.1 49.1
  SAY #31936 /* ~He shakes his head. "No scout, not even myself, has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */
  IF ~~ THEN REPLY #32063 /* ~"Thanks, Eli. Farewell."~ */ JOURNAL #66576 /* ~Qui-Sai had refused to train me as a warrior, claiming that a thief could always hide from a foe and thus become effectively invulnerable. However, I spoke to Eli Havelock, thieves' tutor of the Civic Festhall, and he explained that stealth and hiding will not get you out of every battle, especially as some foes can't even be hidden from. This should provide a good counterpoint to Qui-Sai's argument.~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 54.0
  SAY #65166 /* ~"Wait: if Qui-Sai's doing what I think he's doing, he won't let you off with just that. If he needles you about hiding and the like, tell him that no scout - not even myself - has mastered stealth to such a degree. And some foes can't be hidden from; your scent or very thoughts will give you away."~ */
  IF ~~ THEN REPLY #65167 /* ~"Got it. Thanks again, and farewell."~ */ EXIT
END
