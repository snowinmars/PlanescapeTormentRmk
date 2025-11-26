// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DMALMANR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DMALMANR~

IF ~  Global("Malmaner","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #27976 /* ~This thin, sharp-faced man rushes towards you, calling for your attention. "Ah, sir, sir! But a moment of your time! Were you, perchance, here to visit the tailor?"~ */
  IF ~~ THEN REPLY #28027 /* ~"I wa-"~ */ GOTO 1
  IF ~~ THEN REPLY #28028 /* ~Ignore him, keep on walking.~ */ GOTO 5
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #27977 /* ~The man breaks in: "I ask, sir, because I seem to have, ah, offended the man. I had commissioned the hot-blooded fool to make me a costume, but he's thrown me out of his shop and will not speak with me now."~ */
  IF ~~ THEN REPLY #28029 /* ~"So, wha-"~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #27978 /* ~The man suddenly balls his fists and shakes them at the sky. "What have I done to deserve such treatment? Nothing, I say! I was a *patron!* It is his duty to *serve* me, that churlish buffoon!"~ */
  IF ~~ THEN REPLY #28030 /* ~"What did you want from me?"~ */ GOTO 4
  IF ~~ THEN REPLY #28031 /* ~"I don't have time for this. Farewell."~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 4.0 5.0
  SAY #27979 /* ~"Could I beg of you to enter the place and fetch my costume for me, sir? I've a masquerade to go to, and have not the time to commission another tailor."~ */
  IF ~~ THEN REPLY #28032 /* ~"Yes. I'll go get it now."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~I agreed to fetch Malmaner's masquerade costume from Goncalves the tailor.~ */ GOTO 6
  IF ~~ THEN REPLY #28033 /* ~"I'll do it, but not for free."~ */ GOTO 8
  IF ~~ THEN REPLY #28034 /* ~"Why don't you just fetch it yourself?"~ */ GOTO 7
  IF ~~ THEN REPLY #28035 /* ~"No, I don't have time for this. Farewell."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 2.0
  SAY #27980 /* ~"Eh?" He focuses on you again. "Oh! Yes, you..."~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 5 // from: 0.1 2.1
  SAY #27981 /* ~"Wait, wait, please!"~ */
  IF ~~ THEN REPLY #28050 /* ~Hear him out.~ */ GOTO 3
  IF ~~ THEN REPLY #28051 /* ~Leave.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.0 7.0 8.0 16.0
  SAY #27982 /* ~"Oh, most excellent, sir! 'Tis this very building, right here..." He points to the long, low structure just north of him. "I thank you, sir!"~ */
  IF ~~ THEN REPLY #28052 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.2
  SAY #27983 /* ~He sneers, rolling his eyes. "That porcine lout! I somehow 'offended' the puffy, pomp-filled jackanapes! He's forbidden me to enter his store, and refuses to have words with me. Imagine!"~ */
  IF ~~ THEN REPLY #28053 /* ~"I'll go get it now."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~I agreed to fetch Malmaner's masquerade costume from Goncalves the tailor.~ */ GOTO 6
  IF ~~ THEN REPLY #28054 /* ~"I'll get your costume, but not for free."~ */ GOTO 8
  IF ~~ THEN REPLY #28055 /* ~"I don't have time for this. Farewell."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.1 7.1 16.1
  SAY #27984 /* ~"You'll *what?* For the powers' sake, man, you're just fetching a *costume!* It won't take but a moment of your time! I certainly don't think such a meager act is worth a wage, sir!"~ */
  IF ~~ THEN REPLY #28056 /* ~"Fine. I'll go get it, then."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~I agreed to fetch Malmaner's masquerade costume from Goncalves the tailor.~ */ GOTO 6
  IF ~~ THEN REPLY #28057 /* ~"Then it's not worth my time. Farewell."~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.1
  SAY #27985 /* ~"Wait..." He sighs loudly. "Ten copper commons, then, for an errand that will take mere minutes, if that. Will that suit you... 'sir'?"~ */
  IF ~~ THEN REPLY #28058 /* ~"Yes. Give me the money and I'll fetch you the costume."~ */ DO ~GivePartyGold(10)
~ GOTO 10
  IF ~~ THEN REPLY #28059 /* ~"I don't like your tone, 'sir.' I'm beginning to see why the tailor found you so distasteful. Farewell."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
  IF ~~ THEN REPLY #28060 /* ~"Forget it. Farewell."~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #27986 /* ~He hands you the coins, muttering all the while. "'Tis the long building, just there..." He points to a long, low structure. "...north and east of the gate to the Lower Ward. Please make haste."~ */
  IF ~~ THEN REPLY #28061 /* ~"I'll go get it. Farewell."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~I agreed to fetch Malmaner's masquerade costume from Goncalves the tailor.~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28062 /* ~"Make haste? Where to? Oh, and thanks for the free coin. Farewell... 'sir.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 11
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28063 /* ~"Make haste? Where to? Oh, and thanks for the free coin. Farewell... 'sir.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #27987 /* ~He calls after you: "You... you scar-ridden waste of flesh! You puckered, mangy-haired sack of filth! Get back here, you wretched breeder of disease! No one does this to Malmaner! Get back this instant before I call the guard!"~ */
  IF ~~ THEN REPLY #28064 /* ~"Fine, here... take your money back."~ */ DO ~TakePartyGold(10)
~ GOTO 13
  IF ~~ THEN REPLY #28065 /* ~Throw the ten copper coins at him.~ */ DO ~TakePartyGold(10)
~ GOTO 14
  IF ~~ THEN REPLY #28066 /* ~Ignore him, walk away.~ */ GOTO 15
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #27988 /* ~He calls after you: "You... you scar-ridden waste of flesh! You puckered, mangy-haired sack of filth! Get back here, you wretched breeder of disease! No one does this to Malmaner! Get back this instant before I call the guard!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 273
END

IF ~~ THEN BEGIN 13 // from: 11.0 21.0 21.2 21.4 21.6
  SAY #27989 /* ~"Hmph!" He snatches the coins from your hand and, shoving them into his purse, stomps off.~ */
  IF ~~ THEN REPLY #28067 /* ~Leave.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 11.1 21.1 21.3 21.5 21.7
  SAY #27990 /* ~The man stares at you in shock. "You... impudent..."~ */
  IF ~~ THEN REPLY #28068 /* ~"Silence yourself, before your tongue gets you killed."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_2","GLOBALGood",-1)
~ GOTO 15
  IF ~~ THEN REPLY #28069 /* ~Ignore him, walk away.~ */ DO ~SetGlobal("Malmaner","GLOBAL",1)
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.2 14.0 21.8
  SAY #27991 /* ~"I'll show you! Guards! Guards!"~ */
  IF ~~ THEN REPLY #28070 /* ~Attack him.~ */ DO ~SetGlobal("MK_Counter","GLOBAL",1000)
SetGlobal("Call_MK","GLOBAL",1)
ForceAttack(Protagonist,Myself)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
  IF ~~ THEN REPLY #28072 /* ~Try and leave before anyone arrives.~ */ DO ~IncrementGlobal("MK_Counter","GLOBAL",1)
SetGlobal("Call_MK","GLOBAL",1)
Enemy()
RunAwayFromEx(Protagonist,TWO_AI_SECONDS,FALSE)
~ EXIT
END

IF ~  Global("Malmaner","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #27992 /* ~"Well, well, Sigil's kindest citizen..." The man's voice is rife with bitter sarcasm. "I thank you *so* much for your aid, sir. Oh... wait... you didn't help me at all, did you? Hmph."~ */
  IF ~~ THEN REPLY #28073 /* ~"I've changed my mind. I'll go get your costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",2)
~ JOURNAL #27452 /* ~I agreed to fetch Malmaner's masquerade costume from Goncalves the tailor.~ */ GOTO 6
  IF ~~ THEN REPLY #28075 /* ~"Look... I'll get your costume, but not for free."~ */ GOTO 8
  IF ~~ THEN REPLY #28076 /* ~"Farewell."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",2)
~ THEN BEGIN 17 // from:
  SAY #27993 /* ~The man looks at you expectantly. "Well? Well? Did you get the costume from Goncalves?"~ */
  IF ~~ THEN REPLY #28077 /* ~"No, not yet."~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0 19.4 32.2 33.2 38.0 39.2
  SAY #27994 /* ~"Well then get to it, man! I've a masquerade to go to!"~ */
  IF ~~ THEN REPLY #28078 /* ~"I'll return when I have it. Farewell."~ */ EXIT
END

IF ~  Global("Malmaner","GLOBAL",3)
!PartyHasItem("Costume1")
~ THEN BEGIN 19 // from:
  SAY #27995 /* ~The man looks at you expectantly. "Well? Well? Did you get the costume from Goncalves?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28079 /* ~"No, not yet. He says you owe him thirty copper for the work."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28083 /* ~Lie: "No, not yet. He says you owe him, uh, fifty copper for the work."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28084 /* ~"No, not yet... but how about these actual Dustman's robes?"~ */ GOTO 32
  IF ~  !PartyHasItem("Costume1")
PartyHasItem("DustRobe")
~ THEN REPLY #28085 /* ~Lie: "Uh... yes. Here's the Dustman robe. I mean costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_2","GLOBALLaw",-1)
~ GOTO 33
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28086 /* ~"No, not yet."~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 23.2 27.0 32.0 33.0
  SAY #27996 /* ~"*WHAT?!* Hmph! Fine, fine... take this money and get me that damnable costume already!" He tosses you thirty copper commons.~ */
  IF ~~ THEN REPLY #28087 /* ~"I'll return when I have it. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28088 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28089 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 21 // from: 20.1 24.1 40.1 42.1
  SAY #27997 /* ~He calls after you: "You... you scar-ridden waste of flesh! You puckered, mangy-haired sack of filth! Get back here, you filthy breeder of disease! No one does this to Malmaner! Get back this instant before I call the guard!"~ */
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28090 /* ~"Fine, here... take your money back."~ */ DO ~TakePartyGold(30)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
!Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28091 /* ~Throw the thirty copper coins at him.~ */ DO ~TakePartyGold(30)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28092 /* ~"Fine, here... take your money back."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",3)
Global("Chaotic_Malmaner_1","GLOBAL",1)
~ THEN REPLY #28093 /* ~Throw the fifty copper coins at him.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28094 /* ~"Fine, here... take your money back."~ */ DO ~TakePartyGold(50)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
!Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28095 /* ~Throw the fifty copper coins at him.~ */ DO ~TakePartyGold(50)
~ GOTO 14
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28096 /* ~"Fine, here... take your money back."~ */ DO ~TakePartyGold(80)
~ GOTO 13
  IF ~  Global("Malmaner","GLOBAL",5)
Global("Chaotic_Malmaner_1","GLOBAL",3)
~ THEN REPLY #28097 /* ~Throw the eighty copper coins at him.~ */ DO ~TakePartyGold(80)
~ GOTO 14
  IF ~~ THEN REPLY #28098 /* ~Ignore him, walk away.~ */ GOTO 15
END

IF ~~ THEN BEGIN 22 // from: 20.2 24.2 40.2 42.2
  SAY #27998 /* ~He calls after you: "You... you scar-ridden waste of flesh! You puckered, mangy-haired sack of filth! Get back here, you wretched breeder of disease! No one does this to Malmaner! Get back this instant before I call the guard!"~ */
  IF ~~ THEN EXTERN ~DMORTE~ 274
END

IF ~~ THEN BEGIN 23 // from: 19.1 32.1 33.1
  SAY #27999 /* ~The man looks flabbergasted. "Impossible! Ridiculous! We had agreed to a price of thirty coppers when I had it commissioned!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28099 /* ~Lie: "He was upset, Malmaner. You had offended him, and so he raised the price."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 24
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28100 /* ~Lie: "Well, uh, he was upset, and raised the price."~ */ GOTO 27
  IF ~~ THEN REPLY #28101 /* ~"Pardon, I misspoke. It was only thirty coppers."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #28000 /* ~He peers suspiciously at you, then relents: "Fine! Take it, here. Just get me that damnable costume already!" He tosses you fifty copper commons.~ */
  IF ~~ THEN REPLY #28102 /* ~"I'll return when I have it. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28103 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28104 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~  Global("Malmaner","GLOBAL",3)
PartyHasItem("Costume1")
~ THEN BEGIN 25 // from:
  SAY #28001 /* ~The man looks at you expectantly. "Well? Well? Did you get the costume from Goncalves?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28105 /* ~"Yes, here it is. It cost me thirty commons."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~I got Malmaner's masquerade costume from Goncalves the tailor, and returned it to him.~ */ GOTO 26
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28106 /* ~Lie: "Yes, here it is. It cost me fifty commons."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 28
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28107 /* ~"Yes, here it is."~ */ DO ~TakePartyItemNum("Costume1",1)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~I got Malmaner's masquerade costume from Goncalves the tailor, and returned it to him.~ */ GOTO 31
END

IF ~~ THEN BEGIN 26 // from: 25.0 28.2 30.0
  SAY #28002 /* ~"Fine, fine! Take it, here." He tosses you thirty copper commons. "Now I've to be off..."~ */
  IF ~~ THEN REPLY #28108 /* ~"Wait... Goncalves said many people were already going to this masquerade as Dustmen."~ */ GOTO 34
  IF ~~ THEN REPLY #28109 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 23.1
  SAY #28003 /* ~He peers suspiciously at you, lips pursed.~ */
  IF ~~ THEN REPLY #28110 /* ~"Pardon, I misspoke. It was only thirty coppers."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 28 // from: 25.1
  SAY #28004 /* ~The man looks flabbergasted. "Impossible! Ridiculous! We had agreed to a price of thirty coppers when I had it commissioned!"~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28111 /* ~Lie: "He was upset, Malmaner. You had offended him, and so he raised the price."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(50)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~I got Malmaner's masquerade costume from Goncalves the tailor, and returned it to him.~ */ GOTO 29
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28112 /* ~Lie: "Well, uh, he was upset, and raised the price."~ */ GOTO 30
  IF ~~ THEN REPLY #28113 /* ~"Pardon, I misspoke. It was only thirty coppers."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ JOURNAL #27453 /* ~I got Malmaner's masquerade costume from Goncalves the tailor, and returned it to him.~ */ GOTO 26
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #28005 /* ~He peers suspiciously at you, then relents: "Fine! Take it, here!" He tosses you fifty copper commons. "Now I've to be off..."~ */
  IF ~~ THEN REPLY #28114 /* ~"Wait... Goncalves said many people were already going to this masquerade as Dustmen."~ */ GOTO 34
  IF ~~ THEN REPLY #28115 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 30 // from: 28.1
  SAY #28006 /* ~He peers suspiciously at you, lips pursed.~ */
  IF ~~ THEN REPLY #28116 /* ~"Pardon, I misspoke. It was only thirty coppers."~ */ DO ~TakePartyItemNum("Costume1",1)
GivePartyGold(30)
AddexperienceParty(8000)
SetGlobal("Malmaner","GLOBAL",7)
~ GOTO 26
END

IF ~~ THEN BEGIN 31 // from: 25.2
  SAY #28008 /* ~"At last!" He snatches the costume from your grasp. "Now, I've to be off..."~ */
  IF ~~ THEN REPLY #28117 /* ~"Wait... Goncalves said many people were already going to this masquerade as Dustmen."~ */ GOTO 34
  IF ~~ THEN REPLY #28118 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 19.2
  SAY #28009 /* ~He draws back in disgust. "Ugh! How foul... look at them! Filthy, moth-eaten things... and such coarse material! I'd never suffer myself to wear such rubbish."~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28119 /* ~"Well, he says you owe him thirty copper for the real costume."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28120 /* ~Lie: "Well, he says you owe him, uh, fifty copper for the real costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28121 /* ~"Well, I haven't gotten the actual costume yet."~ */ GOTO 18
END

IF ~~ THEN BEGIN 33 // from: 19.3
  SAY #28010 /* ~He draws back in disgust. "Ugh! How foul... look at them! Filthy, moth-eaten things... and such coarse material! I'd never suffer myself to wear such rubbish." He looks at you suspiciously. "Just what *are* these, sir?"~ */
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28122 /* ~"Nothing, never mind. He says you owe him thirty copper for the real costume."~ */ DO ~GivePartyGold(30)
SetGlobal("CW_Mal_Cash","AR0600",1)
~ GOTO 20
  IF ~  Global("CW_Mal_Cash","AR0600",0)
~ THEN REPLY #28123 /* ~Lie: "Nothing, never mind. He says you owe him, uh, fifty copper for the real costume."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 23
  IF ~  Global("CW_Mal_Cash","AR0600",1)
~ THEN REPLY #28124 /* ~"Never mind. I haven't gotten the actual costume yet."~ */ GOTO 18
END

IF ~~ THEN BEGIN 34 // from: 26.0 29.0 31.0
  SAY #28007 /* ~"Did he? Blast! I would hate to arrive in such a *common* costume... hmmm..."~ */
  IF ~~ THEN REPLY #28125 /* ~"I could go see if he has another ready."~ */ GOTO 36
  IF ~~ THEN REPLY #28126 /* ~"I could try and get another one for you... but it'll cost you."~ */ GOTO 37
  IF ~~ THEN REPLY #28127 /* ~"Too bad. Farewell."~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.2 36.2 37.1
  SAY #28011 /* ~"Hmph!" He stomps off, mumbling sourly.~ */
  IF ~~ THEN REPLY #28128 /* ~Leave.~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.0
  SAY #28012 /* ~"Not a bad idea, not bad at all! Quickly, see if that portly nincompoop has another, would you?"~ */
  IF ~~ THEN REPLY #28129 /* ~"I'll return with another costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
IncrementGlobalOnceEx("GLOBALGood_Malmaner_1","GLOBALGood",1)
~ JOURNAL #27454 /* ~I agreed to get a second costume for Malmaner from Goncalves the tailor.~ */ EXIT
  IF ~~ THEN REPLY #28130 /* ~"I will... but it will cost you."~ */ GOTO 37
  IF ~~ THEN REPLY #28131 /* ~"Never mind, forget I offered. Farewell."~ */ GOTO 35
END

IF ~~ THEN BEGIN 37 // from: 34.1 36.1
  SAY #28013 /* ~He rolls his eyes, sneering at you. "I should have figured! Here, you *mercenary.* This will be enough, I trust?" He hands you twenty copper commons.~ */
  IF ~~ THEN REPLY #28132 /* ~"That'll do. I'll return with another costume."~ */ DO ~SetGlobal("Malmaner","GLOBAL",4)
GivePartyGold(20)
~ JOURNAL #27454 /* ~I agreed to get a second costume for Malmaner from Goncalves the tailor.~ */ EXIT
  IF ~~ THEN REPLY #28133 /* ~"Actually, forget I offered. Farewell."~ */ GOTO 35
END

IF ~  Global("Malmaner","GLOBAL",4)
~ THEN BEGIN 38 // from:
  SAY #28014 /* ~The man looks at you expectantly. "Well? Well? Did you get another costume from him?"~ */
  IF ~~ THEN REPLY #28134 /* ~"No, not yet."~ */ GOTO 18
END

IF ~  Global("Malmaner","GLOBAL",5)
!PartyHasItem("Costume2")
~ THEN BEGIN 39 // from:
  SAY #28015 /* ~The man looks at you expectantly. "Well? Well? Did you get another costume from him?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28135 /* ~"No, not yet. He has another, but wants fifty coppers for it."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28136 /* ~Lie: "No, not yet. He has another, but wants, uh, eighty coppers for it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_3","GLOBALLaw",-1)
~ GOTO 41
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28137 /* ~"No, not yet."~ */ GOTO 18
END

IF ~~ THEN BEGIN 40 // from: 39.0 41.2 43.0
  SAY #28016 /* ~He pulls at his hair, crying out: "Oh, how the powers so love to abuse poor, noble Malmaner! Damn this masquerade, and damn that loathsome tailor thrice-over!" He tosses you fifty copper commons. "Go!"~ */
  IF ~~ THEN REPLY #28138 /* ~"I'll return when I have it. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28139 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28140 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #28017 /* ~"That's... that's... inconceivable! Wholly preposterous! Who does he think he is?!" He suddenly frowns. "Come to think of it, that *does* sound a bit steep, even for Goncalves." He eyes you suspiciously.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28141 /* ~Lie: "You're not well-liked by the man, Malmaner. You're paying for your harsh words to him, earlier."~ */ DO ~GivePartyGold(80)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 42
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28142 /* ~Lie: "Well, uh, you did really upset him."~ */ GOTO 43
  IF ~~ THEN REPLY #28143 /* ~"Pardon, I misspoke. It was only fifty coppers."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #28018 /* ~He peers suspiciously at you, then relents: "Very well! Take it, take it. Just get me that other costume, and quickly!" He tosses you eighty copper commons.~ */
  IF ~~ THEN REPLY #28144 /* ~"I'll return when I have it. Farewell."~ */ EXIT
  IF ~  !NearbyDialog("DMorte")
~ THEN REPLY #28145 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 21
  IF ~  NearbyDialog("DMorte")
~ THEN REPLY #28146 /* ~"Hmmm... what costume? Oh, and thanks for the copper... farewell."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Malmaner_1","GLOBALGood",-1)
~ GOTO 22
END

IF ~~ THEN BEGIN 43 // from: 41.1
  SAY #28019 /* ~He peers suspiciously at you, lips pursed. You're certain he doesn't believe a word you're saying.~ */
  IF ~~ THEN REPLY #28147 /* ~"Pardon, I misspoke. It was only fifty coppers."~ */ DO ~GivePartyGold(50)
SetGlobal("CW_Mal_Cash","AR0600",2)
~ GOTO 40
END

IF ~~ THEN BEGIN 44 // from:
  SAY #28020 /* ~Null node.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("Malmaner","GLOBAL",5)
PartyHasItem("Costume2")
~ THEN BEGIN 45 // from:
  SAY #28021 /* ~The man looks at you expectantly. "Well? Well? Did you get the costume from Goncalves?"~ */
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28148 /* ~"Yes, here it is. It cost me fifty commons."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~I got a second costume for Malmaner from Goncalves the tailor, and gave it to him.~ */ GOTO 46
  IF ~  GlobalLT("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28149 /* ~Lie: "Yes, here it is. It cost me eighty commons."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Malmaner_1","GLOBALLaw",-1)
~ GOTO 48
  IF ~  Global("CW_Mal_Cash","AR0600",2)
~ THEN REPLY #28150 /* ~"Yes, here it is."~ */ DO ~TakePartyItemNum("Costume2",1)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~I got a second costume for Malmaner from Goncalves the tailor, and gave it to him.~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 48.2 49.0
  SAY #28022 /* ~He makes a disgusted noise, snatches the costume from you, and shoves fifty coins into your hands. "Now I've to be off..."~ */
  IF ~~ THEN REPLY #28151 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.2
  SAY #28023 /* ~"'Tis about time!" He snatches the costume from your grasp. "Now, I've to be off..."~ */
  IF ~~ THEN REPLY #28152 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1
  SAY #28024 /* ~"That's... that's... inconceivable! Wholly preposterous! Who does he think he is?!" He suddenly frowns. "Come to think of it, that *does* sound a bit steep, even for Goncalves." He eyes you suspiciously.~ */
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #28153 /* ~Lie: "You're not well-liked by the man, Malmaner. You're paying for your harsh words to him, earlier."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(80)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~I got a second costume for Malmaner from Goncalves the tailor, and gave it to him.~ */ GOTO 50
  IF ~  CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #28154 /* ~Lie: "Well, uh, you did really upset him."~ */ GOTO 49
  IF ~~ THEN REPLY #28155 /* ~"Pardon, I misspoke. It was only fifty coppers."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ JOURNAL #27455 /* ~I got a second costume for Malmaner from Goncalves the tailor, and gave it to him.~ */ GOTO 46
END

IF ~~ THEN BEGIN 49 // from: 48.1
  SAY #28025 /* ~He peers suspiciously at you, lips pursed.~ */
  IF ~~ THEN REPLY #28156 /* ~"Pardon, I misspoke. It was only fifty coppers."~ */ DO ~TakePartyItemNum("Costume2",1)
GivePartyGold(50)
AddexperienceParty(6000)
SetGlobal("Malmaner","GLOBAL",6)
~ GOTO 46
END

IF ~~ THEN BEGIN 50 // from: 48.0
  SAY #28026 /* ~He peers suspiciously at you, then relents. He makes a disgusted noise, snatches the costume from you, and shoves eighty coins into your hands. "Now I've to be off..."~ */
  IF ~~ THEN REPLY #28157 /* ~"Farewell."~ */ DO ~EscapeArea()
~ EXIT
END
