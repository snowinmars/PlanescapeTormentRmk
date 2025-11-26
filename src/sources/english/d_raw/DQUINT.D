// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DQUINT.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DQUINT~

IF ~  Global("Quint_Item","GLOBAL",3)
~ THEN BEGIN 0 // from:
  SAY #2833 /* ~"Heh. My thanks. You want what?"~ */
  IF ~~ THEN REPLY #2834 /* ~"I want to talk trades."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19039 /* ~"I had some questions for you."~ */ GOTO 1
  IF ~~ THEN REPLY #19040 /* ~"Nothing. Farewell, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1 2.1 3.5 4.1 6.1 7.1 8.1 9.0
  SAY #19041 /* ~"What you want to know?"~ */
  IF ~~ THEN REPLY #19042 /* ~"Tell me about yourself again."~ */ GOTO 2
  IF ~~ THEN REPLY #19043 /* ~"Tell me about some of the other people here."~ */ GOTO 3
  IF ~~ THEN REPLY #19044 /* ~"Tell me about this place."~ */ GOTO 9
  IF ~~ THEN REPLY #19045 /* ~"Nothing. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #19046 /* ~"Quint. Sell and buy. Get it all. You want?"~ */
  IF ~~ THEN REPLY #19047 /* ~"Let's talk trades."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19048 /* ~"Not yet. Answer some other questions for me."~ */ GOTO 1
  IF ~~ THEN REPLY #19049 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.1 4.0 6.0 7.0 8.0
  SAY #19050 /* ~"Like who?"~ */
  IF ~~ THEN REPLY #19051 /* ~"Pharod."~ */ GOTO 4
  IF ~  NearbyDialog("DAnnah")
~ THEN REPLY #19052 /* ~"Annah."~ */ GOTO 5
  IF ~  !NearbyDialog("DAnnah")
GlobalGT("Know_Annah","GLOBAL",0)
~ THEN REPLY #19053 /* ~"Annah."~ */ GOTO 6
  IF ~  GlobalGT("Marta","GLOBAL",0)
~ THEN REPLY #19054 /* ~"Marta."~ */ GOTO 7
  IF ~  GlobalGT("Know_Ojo","GLOBAL",0)
~ THEN REPLY #19055 /* ~"Ojo."~ */ GOTO 8
  IF ~~ THEN REPLY #19056 /* ~"Forget it. I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #19057 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #19058 /* ~"Old Stutter-crutch, heh? He set up this place, he lord of the lane, he set me up, we deal, heh?"~ */
  IF ~~ THEN REPLY #19059 /* ~"All right. Tell me about some of the others here."~ */ GOTO 3
  IF ~~ THEN REPLY #19060 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #19061 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #19062 /* ~His jowls quiver a little as he glances at Annah. "Pretty girl, nice girl, sharp girl, heh? She a tough one." He holds up his hands to show he means no offense.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 6 // from: 3.2
  SAY #19063 /* ~"Pharod's prize; she does dangerous jobs, heh? Clever one. Sharp tongue." He rubs his head as if remembering some previous wound. "Stay away, heh?"~ */
  IF ~~ THEN REPLY #19064 /* ~"All right. Tell me about some of the others here."~ */ GOTO 3
  IF ~~ THEN REPLY #19065 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #19066 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 3.3
  SAY #19067 /* ~"Heh. Marta one to steer clear of. Barmy seamstress. She picks all the teeth and corpse thread and bits outta the bodies, gives it to me, I peddle the crap up above for other stuff."~ */
  IF ~~ THEN REPLY #19068 /* ~"All right. Tell me about some of the others here."~ */ GOTO 3
  IF ~~ THEN REPLY #19069 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #19070 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 3.4
  SAY #19071 /* ~"Touched. Good for not much, heh?"~ */
  IF ~~ THEN REPLY #19072 /* ~"All right. Tell me about some of the others here."~ */ GOTO 3
  IF ~~ THEN REPLY #19073 /* ~"I had some other questions..."~ */ GOTO 1
  IF ~~ THEN REPLY #19074 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 1.2
  SAY #19075 /* ~"This, heh? The village. The dabus pave it over one day, long ago, forget about it. Collectors dig it out while looking for jink in the rag mountains... me, I stumble across while dealing with the Collectors." He wiggles his eyebrows. "Good place to make some jink, heh? Dead's good for business."~ */
  IF ~~ THEN REPLY #19076 /* ~"I see. I had some other questions for you..."~ */ GOTO 1
  IF ~~ THEN REPLY #19077 /* ~"Yes. Farewell."~ */ EXIT
END

IF ~  GlobalGT("Quint_Item","GLOBAL",0)
GlobalLT("Quint_Item","GLOBAL",3)
~ THEN BEGIN 10 // from:
  SAY #19078 /* ~"You, heh? You have what I need?"~ */
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19079 /* ~"What was it you were looking for again?"~ */ GOTO 11
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19080 /* ~"Yes. Here it is."~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ GOTO 12
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19081 /* ~Lie: "No, not yet. I'm still looking."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_One","GLOBALLaw",-1)
~ GOTO 13
  IF ~  !PartyHasItem("PsCharm")
~ THEN REPLY #19082 /* ~"No, not yet. I'm still looking."~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #19083 /* ~"A charm, heh? A necklace with hollow teeth strung around it. Find it and it be worth your while, heh? Go on, now." He busies himself with his supplies, obviously ignoring you.~ */
  IF ~~ THEN REPLY #19084 /* ~"All right. I'm on it."~ */ EXIT
  IF ~~ THEN REPLY #66306 /* ~"Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.1 23.1 24.1
  SAY #19085 /* ~You pass the object to him, and he caresses it, looking it over carefully for nicks and scratches. "Done your part, heh? I do mine." He passes you a bag that jingles heavily with coin. "We be quits, now. You need anything, talk to Quint, heh?" He turns away from you, rapt in his acquisition.~ */
  IF ~~ THEN REPLY #19086 /* ~"Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66304 /* ~"Farewell, Quint."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.2 10.3
  SAY #19087 /* ~His porcine face sags. "Ah, old Quint's heart breaks. Come back when you found it, heh?" He turns away from you and busies himself among his items.~ */
  IF ~~ THEN REPLY #19088 /* ~"Answer some other questions for me."~ */ GOTO 14
  IF ~~ THEN REPLY #66305 /* ~"Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66307 /* ~"Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedToGT(0)
~ THEN BEGIN 14 // from: 13.0 15.2 16.5 17.1 19.1 20.1 21.1 22.0 23.2 24.0 35.1 40.0 41.1 43.1 44.1 46.3 47.2 48.0 49.1
  SAY #19089 /* ~Quint looks you over. "What you want, heh?"~ */
  IF ~  !Global("Quint_Item","GLOBAL",1)
~ THEN REPLY #19090 /* ~"Tell me about yourself again."~ */ GOTO 15
  IF ~~ THEN REPLY #19091 /* ~"What are you doing?"~ */ GOTO 46
  IF ~~ THEN REPLY #19092 /* ~"Tell me about some of the other people here."~ */ GOTO 16
  IF ~~ THEN REPLY #19093 /* ~"Tell me about this place."~ */ GOTO 22
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19094 /* ~"Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66308 /* ~"Nothing. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #19095 /* ~"Quint. Sell and buy. Get it all. You want? Or you want maybe a job for me, heh?"~ */
  IF ~~ THEN REPLY #19096 /* ~"What sort of job?"~ */ GOTO 23
  IF ~  Global("Quint_Trade","GLOBAL",0)
~ THEN REPLY #19097 /* ~"Let's talk trades."~ */ GOTO 32
  IF ~~ THEN REPLY #19098 /* ~"Not yet. Answer some other questions for me."~ */ GOTO 14
  IF ~  Global("Quint_Trade","GLOBAL",1)
~ THEN REPLY #19099 /* ~"Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #66309 /* ~"No. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 14.2 17.0 19.0 20.0 21.0
  SAY #19100 /* ~"Like who?"~ */
  IF ~~ THEN REPLY #19101 /* ~"Pharod."~ */ GOTO 17
  IF ~  NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19102 /* ~"Annah."~ */ GOTO 18
  IF ~  !NearbyDialog("DAnnah")
Global("Annah","GLOBAL",1)
~ THEN REPLY #19103 /* ~"Annah."~ */ GOTO 19
  IF ~  Global("Know_Marta_Work","GLOBAL",1)
~ THEN REPLY #19104 /* ~"Marta."~ */ GOTO 20
  IF ~  Global("Know_Ojo","GLOBAL",1)
~ THEN REPLY #19105 /* ~"Ojo."~ */ GOTO 21
  IF ~~ THEN REPLY #19106 /* ~"Forget it. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19107 /* ~"Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 46.1
  SAY #19108 /* ~"Old Stutter-crutch, heh? He set up this place, he lord of the lane, he set me up, we deal, heh?"~ */
  IF ~~ THEN REPLY #19109 /* ~"All right. Tell me about some of the others here."~ */ GOTO 16
  IF ~~ THEN REPLY #19110 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19111 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.1
  SAY #19112 /* ~His jowls quiver a little as he glances at Annah. "Pretty girl, nice girl, sharp girl, heh? She a tough one." He holds up his hands to show he means no offense.~ */
  IF ~~ THEN EXTERN ~DANNAH~ 110
END

IF ~~ THEN BEGIN 19 // from: 16.2
  SAY #19113 /* ~"Pharod's prize; she does dangerous jobs, heh? Clever one. Sharp tongue." He rubs his head as if remembering some previous wound. "Stay away, heh?"~ */
  IF ~~ THEN REPLY #19114 /* ~"All right. Tell me about some of the others here."~ */ GOTO 16
  IF ~~ THEN REPLY #19115 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19116 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 16.3 46.0
  SAY #19117 /* ~"Heh. Marta one to steer clear of. Barmy seamstress. She picks all the teeth and corpse thread and bits outta the bodies, gives it to me, I peddle the crap up above for other stuff."~ */
  IF ~~ THEN REPLY #19118 /* ~"All right. Tell me about some of the others here."~ */ GOTO 16
  IF ~~ THEN REPLY #19119 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19120 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 16.4
  SAY #19121 /* ~"Touched. Good for not much, heh?"~ */
  IF ~~ THEN REPLY #19122 /* ~"All right. Tell me about some of the others here."~ */ GOTO 16
  IF ~~ THEN REPLY #19123 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19124 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 14.3
  SAY #19125 /* ~"This, heh? The village. The dabus pave it over one day, long ago, forget about it. Collectors dig it out while looking for jink in the rag mountains... me, I stumble across while dealing with the Collectors." He wiggles his eyebrows. "Good place to make some jink, heh? Dead's good for business."~ */
  IF ~~ THEN REPLY #19126 /* ~"I see. I had some other questions for you..."~ */ GOTO 14
  IF ~~ THEN REPLY #19127 /* ~"Yes. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 15.0
  SAY #19128 /* ~"Gris? Heh... Gris the Vulture, called him. Left a fortnight ago this past few peaks. Nobody seen him or hear him since. Catacombs probably got him, lots of things in dark places down there, heh... not fortunate that Gris be in the dead-book... good Collector, heh. Black heart. Got sharp nose for new crypts. Also got something of mine. Find him and get it back and you get paid, heh? Give you jink and deal on junk, heh?"~ */
  IF ~~ THEN REPLY #19129 /* ~"It's a deal."~ */ DO ~SetGlobal("Quint_Item","GLOBAL",1)
~ JOURNAL #66300 /* ~Quint the Corpse-Peddler has asked me to retrieve an item from a Collector named Gris who disappeared into the catacombs some time ago.~ */ GOTO 24
  IF ~  PartyHasItem("PSCharm")
~ THEN REPLY #19130 /* ~Show him the charm you found by Marta's house: "Oh, this thing?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint the Corpse-Peddler has asked me to retrieve an item from a Collector named Gris who disappeared into the catacombs some time ago. I showed him the charm I found near Marta's place, and he agreed that that was his.~ */ GOTO 12
  IF ~~ THEN REPLY #19131 /* ~"I'll think about it. Answer me some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #66301 /* ~"I'll think about it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #19132 /* ~He snorts, appearing almost happy. "It's a poison charm, necklace of hollow teeth. Probably find it wherever Gris is. Let me know, heh?"~ */
  IF ~~ THEN REPLY #19133 /* ~"Sure thing. I've got a few more questions..."~ */ GOTO 14
  IF ~  PartyHasItem("PsCharm")
~ THEN REPLY #19134 /* ~Show him the charm you found by Marta's house: "Oh, this thing?"~ */ DO ~TakePartyItemNum("PsCharm",1)
AddexperienceParty(7500)
SetGlobal("Quint_Item","GLOBAL",3)
GivePartyGold(250)
~ JOURNAL #66302 /* ~Quint the Corpse-Peddler has asked me to retrieve an item from a Collector named Gris who disappeared into the catacombs some time ago. I showed him the charm I found near Marta's place, and he agreed that that was his.~ */ GOTO 12
  IF ~~ THEN REPLY #66303 /* ~"I will. Farewell."~ */ EXIT
END

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 25 // from:
  SAY #19135 /* ~You see a short, fat-faced man who is covered in filth and grime. He smells bad and his teeth are rotten. He wheezes as he looks you up and down, and says, "I'm Quint. You new?"~ */
  IF ~~ THEN REPLY #19136 /* ~"Who wants to know?"~ */ GOTO 26
  IF ~~ THEN REPLY #19137 /* ~"Yes."~ */ GOTO 29
  IF ~~ THEN REPLY #19138 /* ~"No, I've been here a while."~ */ GOTO 42
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #19139 /* ~"Me, heh? You new?"~ */
  IF ~~ THEN REPLY #19140 /* ~"Yes."~ */ GOTO 29
  IF ~~ THEN REPLY #19141 /* ~"No."~ */ GOTO 42
  IF ~~ THEN REPLY #19142 /* ~"None of your concern."~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.2
  SAY #19143 /* ~"My concern. You new?"~ */
  IF ~~ THEN REPLY #19144 /* ~"Yes."~ */ GOTO 29
  IF ~~ THEN REPLY #19145 /* ~"No."~ */ GOTO 42
  IF ~~ THEN REPLY #19146 /* ~"Piss off, will you?"~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.2
  SAY #19147 /* ~"Heh, and same to you! Get out!"~ */
  IF ~~ THEN REPLY #19148 /* ~"Whatever."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 25.1 26.0 27.0
  SAY #19149 /* ~He looks at you suspiciously. "You selling or trading? Heh?"~ */
  IF ~~ THEN REPLY #19150 /* ~"Yes."~ */ GOTO 30
  IF ~~ THEN REPLY #19151 /* ~"Selling."~ */ GOTO 30
  IF ~~ THEN REPLY #19152 /* ~"Trading."~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0 29.1 29.2
  SAY #19153 /* ~His eyes narrow even further. "Dealing, heh? With me? Or everybody, berk? Which? Heh?"~ */
  IF ~~ THEN REPLY #19154 /* ~"With you."~ */ GOTO 31
  IF ~~ THEN REPLY #19155 /* ~"With everyone."~ */ GOTO 39
  IF ~~ THEN REPLY #19156 /* ~"With anyone I want to, berk."~ */ GOTO 39
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #19157 /* ~"Jest me? Me? Heh?"~ */
  IF ~~ THEN REPLY #19158 /* ~"Yes, just with you."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19159 /* ~"No, with everyone."~ */ GOTO 39
END

IF ~~ THEN BEGIN 32 // from: 15.1 31.0 36.2 37.0
  SAY #19160 /* ~"That so, heh? Let's deal, heh?"~ */
  IF ~~ THEN REPLY #19161 /* ~"All right."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19162 /* ~"Anything you're interested in?"~ */ GOTO 33
  IF ~~ THEN REPLY #19163 /* ~"What do you usually trade for?"~ */ GOTO 36
  IF ~~ THEN REPLY #19164 /* ~"Actually, I'm not interested. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #19165 /* ~"Anything interesting, heh?" He smiles. "You were looking for something?"~ */
  IF ~~ THEN REPLY #19166 /* ~"Let's see what you've got."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #19167 /* ~"A journal."~ */ GOTO 34
  IF ~~ THEN REPLY #19168 /* ~"No. Forget it. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.1
  SAY #19169 /* ~"Journal, heh? Gold leaf, maybe?"~ */
  IF ~~ THEN REPLY #19170 /* ~"I don't know."~ */ GOTO 35
  IF ~~ THEN REPLY #19171 /* ~"Let's just talk other trades."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #19172 /* ~"Nor me." He shrugs.~ */
  IF ~~ THEN REPLY #19173 /* ~"Let's talk trades, then."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19174 /* ~"All right. Then answer some questions for me."~ */ GOTO 14
  IF ~~ THEN REPLY #19175 /* ~"Farewell, then."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 32.2
  SAY #19176 /* ~"Stitch-thread, teeth, parts here and there from the dearly departed, heh? Lots of corpse fishing to be done in the catacombs below, bring back a few pieces from the deaders, urns, some jink, some lil' knick-knacks... that's my deal, berk. Them living here - they go down dere, those Collectors, get some stuff, get some bodies, bring 'em back to Pharod, show him, he takes his cut, then he deals with me."~ */
  IF ~~ THEN REPLY #19177 /* ~"What does Pharod do with the bodies?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ GOTO 37
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #19178 /* ~"What if I dealt directly with you?"~ */ GOTO 38
  IF ~~ THEN REPLY #19179 /* ~"I want to trade with you."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 32
  IF ~~ THEN REPLY #19180 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #19181 /* ~"His deal." He smiles. "Sells the deaders back to the Dusties, heh? Dusties bury them again, we dig 'em up again, heh? Heh!" He gives a roaring snort that might be a laugh.~ */
  IF ~~ THEN REPLY #19182 /* ~"I see. I might be interested in trades."~ */ GOTO 32
  IF ~~ THEN REPLY #19183 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #19184 /* ~"Now I couldn't have no part of that, heh? May be that ol' Quint's a little tired of gettin' Pharod's leavings and dealing in corpse bits when I could have few urns and deader treasures direct, heh? If you were to tell me it came from Pharod, though, I couldn't know no better, could I, heh? I'd jest presume that it was all above the board, heh?"~ */
  IF ~~ THEN REPLY #19185 /* ~"Let's trade, then."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19186 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 30.1 30.2 31.1
  SAY #19187 /* ~His face turns bright red. "Pike off, berk! Get! Get! This kip's mine! I got first-claims. You got no claim! I'll have Pharod gut you like a fish!"~ */
  IF ~~ THEN REPLY #19188 /* ~Lie: "Pharod said I could trade here."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaos_Quint_Two","GLOBALLaw",-1)
SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 40
  IF ~~ THEN REPLY #19189 /* ~"Simmer down. I'll just trade with you."~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #19190 /* ~"I'll murder 'im! He says, 'Quint, you my blood, you got run of the place,' and he goes off and gives a piece to a scabby sod like yerself. Lame-legged bastard! Heh!"~ */
  IF ~~ THEN REPLY #19191 /* ~"Those are the breaks, huh? I have some questions for you..."~ */ GOTO 14
  IF ~~ THEN REPLY #19192 /* ~"So you want to trade or not?"~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19193 /* ~"He's a real cross-trader. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #19194 /* ~Some of the color leaves his face. "All right. Heh." He wipes sweat from his brow. "You want to trade, heh?"~ */
  IF ~~ THEN REPLY #19195 /* ~"Yes. Let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19196 /* ~"Actually, I had some questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19197 /* ~"Not yet. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 25.2 26.1 27.1
  SAY #19198 /* ~"Yeah? First time I sees you, berk." He snorts. "I been here a while. First claim rights, you know? Heh?"~ */
  IF ~~ THEN REPLY #19199 /* ~"Yeah, well, I've been here a long time. You must not have been looking hard enough then."~ */ GOTO 43
  IF ~~ THEN REPLY #19200 /* ~"What?"~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #19201 /* ~"You looking for trouble, berk, I got Pharod's word on my side... you? You got nothing but scars."~ */
  IF ~~ THEN REPLY #19202 /* ~"You want to fight, or you want to trade?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19203 /* ~"Whatever. Just answer some questions for me, big man."~ */ GOTO 14
  IF ~~ THEN REPLY #19204 /* ~"I've got nothing to say to you."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 42.1
  SAY #19205 /* ~"You ear-blind or jest stupid? I said first-claim rights here, berk. I deal, you don't... or you deal with me only. Heh?"~ */
  IF ~~ THEN REPLY #19206 /* ~"You want to fight, or you want to trade?"~ */ DO ~SetGlobal("Quint_Trade","GLOBAL",1)
~ GOTO 45
  IF ~~ THEN REPLY #19207 /* ~"Whatever. Just answer some questions for me, big man."~ */ GOTO 14
  IF ~~ THEN REPLY #19208 /* ~"I've got nothing to say to you."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 43.0 44.0
  SAY #19209 /* ~"I'll trade, heh? I'm a trader, not a fighter." He snorts.~ */
  IF ~~ THEN REPLY #19210 /* ~"Then let's trade."~ */ DO ~StartStore("Quint",Protagonist)
~ EXIT
  IF ~~ THEN REPLY #19211 /* ~"Answer me some questions, first..."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 14.1
  SAY #19212 /* ~"Waiting for Marta and Pharod to give me the goods."~ */
  IF ~~ THEN REPLY #19213 /* ~"Marta?"~ */ GOTO 20
  IF ~~ THEN REPLY #19214 /* ~"Pharod?"~ */ GOTO 17
  IF ~~ THEN REPLY #19215 /* ~"What goods?"~ */ GOTO 47
  IF ~~ THEN REPLY #19216 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19217 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.2
  SAY #19218 /* ~"The leftovers from the gravediggin' in the catacombs."~ */
  IF ~~ THEN REPLY #19219 /* ~"What leftovers?"~ */ GOTO 48
  IF ~~ THEN REPLY #19220 /* ~"The catacombs?"~ */ GOTO 49
  IF ~~ THEN REPLY #19221 /* ~"I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19222 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 47.0 49.0
  SAY #19223 /* ~"Teeth, corpse thread, bits they dig outta the body, some coin they find in the bandages, heh. Folks pay more'n you'd think, heh?"~ */
  IF ~~ THEN REPLY #19224 /* ~"I see. I had some other questions for you..."~ */ GOTO 14
  IF ~~ THEN REPLY #19225 /* ~"I see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #19226 /* ~"Under village. Lots of new bodies and old crypts in this area, 'cause nobody could get to them before, heh? This village, this village... not many know about this village. Fewer know about the easy hop to catacombs and all them deaders below..." He smacks his lips greedily. "Virgin territory, heh?"~ */
  IF ~~ THEN REPLY #19227 /* ~"Sure. Tell me about the leftovers..."~ */ GOTO 48
  IF ~~ THEN REPLY #19228 /* ~"Sure. I had some other questions..."~ */ GOTO 14
  IF ~~ THEN REPLY #19229 /* ~"Sure. Farewell."~ */ EXIT
END
