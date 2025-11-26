// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DCOLSRGR.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DCOLSRGR~

IF ~  Global("Sharegrave","GLOBAL",0)
!Global("Pox","GLOBAL",2)
~ THEN BEGIN 0 // from:
  SAY #18194 /* ~Tall and lanky, this pale, grim-looking man exudes authority despite his gangly and somewhat awkward frame. A good portion of his left ear is missing; what little that's left is a ragged mess of scar tissue, as if the ear was bitten off, rather than cut. His narrow, shifting eyes - almost mere slits - look clever... and dangerous.~ */
  IF ~~ THEN REPLY #18195 /* ~"Greetings..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",1)
~ GOTO 1
  IF ~~ THEN REPLY #18196 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #18197 /* ~He spits out a reply: "I don't know you, berk." He glares at you. "What do you want? Answer quick, before I call in some men to make quick work of you."~ */
  IF ~~ THEN REPLY #18198 /* ~"Who are you?"~ */ GOTO 3
  IF ~~ THEN REPLY #18199 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18200 /* ~"Nothing. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18201 /* ~"Nothing. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.2 3.4 4.3 5.2 5.3 7.3 8.2 9.2 10.6 11.5 12.1 14.4 17.1 19.1 20.2 21.1 22.4 25.3 50.1 57.1
  SAY #18202 /* ~"Then pike off, berk. You get the urge to stop by again, you just keep walking, hear? Else I'll have some of my bloods see to it that you're not walking much longer."~ */
  IF ~~ THEN REPLY #18203 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #18204 /* ~He scoffs, and looks at you incredulously. "Berk, who I am is the *second* thing you should have known before you stomped your shivved-up, corpse-looking self in here."~ */
  IF ~~ THEN REPLY #18205 /* ~"What's the first thing?"~ */ GOTO 4
  IF ~~ THEN REPLY #18206 /* ~"Calm down. I don't mean any harm."~ */ GOTO 5
  IF ~~ THEN REPLY #18207 /* ~"I'd ease up on your tone if you want to stay standing."~ */ GOTO 6
  IF ~~ THEN REPLY #18208 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18209 /* ~"Forget it, then. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18210 /* ~"My apologies, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #18211 /* ~"That I hate visitors, and I loathe strangers. You're both." He sneers and taps his finger to his temple. "Figure the rest out on your own."~ */
  IF ~~ THEN REPLY #18212 /* ~"Calm down. I don't mean any harm."~ */ GOTO 5
  IF ~~ THEN REPLY #18213 /* ~"I'd ease up on your tone if you want to stay standing."~ */ GOTO 6
  IF ~~ THEN REPLY #18214 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18215 /* ~"Farewell, then."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18216 /* ~"My apologies, then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.1 4.0
  SAY #18217 /* ~"Oh, you *don't* say! Well, that makes it all *piking* better then, don't it? Now, I'm going ask you one more time before your arse hits the street - possibly in several pieces - what do you *want?*"~ */
  IF ~~ THEN REPLY #18218 /* ~"I'd ease up on your tone if you want to stay standing."~ */ GOTO 6
  IF ~~ THEN REPLY #18219 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18220 /* ~"Nothing. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18221 /* ~"Nothing. My apologies for the intrusion. Farewell."~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from: 3.2 4.1 5.0
  SAY #18222 /* ~"Huh. Well, that's about enough of you." He looks you straight in the eye, the slightest of smiles upon his face, and yells: "Bloods! Come kill this man!"~ */
  IF ~~ THEN REPLY #18223 /* ~Meet their attack~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18224 /* ~Flee.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 1.1 3.3 4.2 5.1 50.0
  SAY #18225 /* ~He's quiet for a moment, then nods. "That so? Like what?"~ */
  IF ~~ THEN REPLY #18226 /* ~"Tell me about Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18227 /* ~"I'm looking for a man named Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18228 /* ~"I'm looking for a journal that I lost."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18229 /* ~"Never mind. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18230 /* ~"Never mind. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 9.0
  SAY #18231 /* ~He rolls his eyes, then holds up his hands as if confronted with an image of splendor. "The city of doors, where the streets are paved with gold and..." He resumes his serious manner. "...the dead. You don't look addled enough to come down here to ask me about Sigil... so what's this really all about? And no games, berk - I'm short on patience."~ */
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18232 /* ~"I'm actually looking for a man named Pharod."~ */ GOTO 10
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #18233 /* ~"I'm actually looking for a journal that I lost."~ */ GOTO 9
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18234 /* ~"Nothing else. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18235 /* ~"Nothing else. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #18236 /* ~"I don't know anything about that." He frowns, then looks hard at you. "Should I?"~ */
  IF ~~ THEN REPLY #18237 /* ~"No. Tell me about Sigil."~ */ GOTO 8
  IF ~  Global("Pharod","GLOBAL",0)
~ THEN REPLY #18238 /* ~"No. I'm also looking for a man named Pharod."~ */ GOTO 10
  IF ~~ THEN REPLY #18239 /* ~"No. Farewell."~ */ GOTO 2
  IF ~~ THEN REPLY #18240 /* ~"No. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 7.1 8.0 9.1 57.0
  SAY #18241 /* ~The tension in the room suddenly rises. "Now, what a funny thing to be asking about. What do you want to know about old blood Pharod for?"~ */
  IF ~~ THEN REPLY #18242 /* ~"He stole something from me, and I want it back."~ */ GOTO 17
  IF ~~ THEN REPLY #18243 /* ~"He has some things of mine, and I want them back."~ */ GOTO 17
  IF ~~ THEN REPLY #18244 /* ~"He knows something I need to know."~ */ GOTO 12
  IF ~~ THEN REPLY #18245 /* ~"I just want to meet him."~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18246 /* ~"He's a friend of mine."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18247 /* ~"He's a friend of mine."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18248 /* ~"Forget I asked. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18249 /* ~"Nothing, really. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.3
  SAY #18250 /* ~"Bah! Pile of stenchkow dung if I ever heard one!" He narrows his eyes at you. "Why?"~ */
  IF ~~ THEN REPLY #18251 /* ~"He stole something from me, and I want it back."~ */ GOTO 17
  IF ~~ THEN REPLY #18252 /* ~"He has some things of mine, and I want them back."~ */ GOTO 17
  IF ~~ THEN REPLY #18253 /* ~"He knows something I need to know."~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18254 /* ~"He's a friend of mine."~ */ GOTO 13
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18255 /* ~"He's a friend of mine."~ */ GOTO 14
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18256 /* ~"Just forget I asked. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18257 /* ~"Nothing, really. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.2 14.2
  SAY #18258 /* ~"That so? Like what, eh?"~ */
  IF ~~ THEN REPLY #18259 /* ~"Like who I am."~ */ GOTO 15
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18260 /* ~"It's nothing. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18261 /* ~"It's nothing. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 10.4 11.3 14.3
  SAY #18269 /* ~"Oh?" He smirks, then smiles wickedly. "Then you can deliver this message to him for me..." Suddenly, he shouts: "Bloods! Come kill this man!"~ */
  IF ~~ THEN REPLY #18270 /* ~Meet their attack~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18271 /* ~Flee.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.5 11.4
  SAY #18272 /* ~As you are about to speak, a strange feeling wells up in the back of your skull, and you hold your tongue. There is something in Sharegrave's eyes that makes you suspect that Pharod and he are not the best of friends... not in the slightest. ~ */
  IF ~~ THEN REPLY #18273 /* ~"He stole something from me, and I want it back."~ */ GOTO 17
  IF ~~ THEN REPLY #18274 /* ~"He has some things of mine, and I want them back."~ */ GOTO 17
  IF ~~ THEN REPLY #18275 /* ~"He knows something I need to know."~ */ GOTO 12
  IF ~~ THEN REPLY #18276 /* ~"He's a friend of mine."~ */ GOTO 13
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18277 /* ~"Forget I asked. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18278 /* ~"Nothing, really. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 12.0
  SAY #18279 /* ~After an awkward silence, he speaks: "You're barmy, berk, and not safe to have around, from the looks of you. Get lost, and be quick about it."~ */
  IF ~~ THEN REPLY #18280 /* ~"But I had some more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18281 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0 23.0 26.1 32.0 34.0 46.0 48.0 54.1
  SAY #18282 /* ~"That so? Hmm. How interesting." He suddenly calls out: "Bloods! Kill this man!"~ */
  IF ~~ THEN REPLY #18283 /* ~Meet their attack.~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18284 /* ~Flee.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 10.0 10.1 11.0 11.1 14.0 14.1
  SAY #18285 /* ~The man is silent for a moment, then cracks a smile. "He steals from us all, doesn't he, whether we're living or dead?" He chuckles.~ */
  IF ~~ THEN REPLY #18286 /* ~"What do you mean?"~ */ GOTO 18
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18287 /* ~"Maybe so. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18288 /* ~"Perhaps. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #18289 /* ~"Our main source of... living... around here is the dead. You follow?"~ */
  IF ~~ THEN REPLY #18290 /* ~"Not exactly."~ */ GOTO 19
  IF ~~ THEN REPLY #18291 /* ~"You're a Collector."~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #18292 /* ~"My bloods and I make a bit of jink gathering the bodies of the dead in the Hive and selling them to the Dusties. You understand, now?"~ */
  IF ~~ THEN REPLY #18293 /* ~"You're a Collector."~ */ GOTO 20
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18294 /* ~"Yes. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18295 /* ~"I do. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #18296 /* ~"Aye, that's right." He looks at you as if he's considering something. "Now, there's only so many deaders at any one time. My bloods and I can only gather so many. If somebody else is gathering deaders, that's that much less jink that goes into our pockets."~ */
  IF ~  CheckStatGT(Protagonist,12,INT)
~ THEN REPLY #18297 /* ~"Pharod is taking bodies, too?"~ */ GOTO 21
  IF ~~ THEN REPLY #18298 /* ~"So..."~ */ JOURNAL #17089 /* ~A man in Ragpicker's Square told me that Pharod has somehow unearthed what seems to be a never-ending supply of corpses. He's upset, seeing as how collecting dead bodies is his business, as well, and wants to know just how Pharod's doing it.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18299 /* ~"That's all I wanted to hear. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18300 /* ~"I see. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #18301 /* ~"Aye."~ */
  IF ~~ THEN REPLY #18302 /* ~"So..."~ */ JOURNAL #17089 /* ~A man in Ragpicker's Square told me that Pharod has somehow unearthed what seems to be a never-ending supply of corpses. He's upset, seeing as how collecting dead bodies is his business, as well, and wants to know just how Pharod's doing it.~ */ GOTO 22
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18303 /* ~"Interesting. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18304 /* ~"I see. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1 21.0
  SAY #18305 /* ~"The rub is that he's found a *mother-lode* of them. Now, I haven't heard of any massacres in Sigil." He frowns, tapping at his chin. "So I'm quite interested in knowing where all the deaders are coming from."~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18306 /* ~"I already know, actually."~ */ GOTO 52
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18307 /* ~"I could find out for you, if you'd like."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Sharegrave_1","GLOBALGood",1)
~ GOTO 24
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #18308 /* ~"I could find out for you... for a price."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Sharegrave_1","GLOBALGood",-1)
~ GOTO 25
  IF ~~ THEN REPLY #18309 /* ~"Odd. Never mind that, though. I had some other questions..."~ */ GOTO 23
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18310 /* ~"Maybe you'll find out one day. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18311 /* ~"Good luck finding answers. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.3
  SAY #18312 /* ~He sneers, suddenly angered at your response. "That's enough of you, then. Out with you, before I call my bloods to show you the way."~ */
  IF ~~ THEN REPLY #18313 /* ~"But I had some more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18314 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #18315 /* ~"Oh, aye? And how would you do that?"~ */
  IF ~~ THEN REPLY #18316 /* ~"All I need to do is find him. Let me worry about the rest."~ */ JOURNAL #18449 /* ~I have agreed to help a man in Ragpicker's Square find out more about Pharod's seemingly endless supply of corpses; he has offered to pay me for the information. He also told me that, to find Pharod, I would need to follow the platforms over the square north and west to a gate. The gate should lead to his 'bolt-hole.'~ */ GOTO 49
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #18317 /* ~He looks at you for a moment, tugging on the remains of his left earlobe. "All right... name your price, and we'll deal."~ */
  IF ~~ THEN REPLY #18318 /* ~"Three hundred copper coins."~ */ GOTO 26
  IF ~~ THEN REPLY #18319 /* ~"Two hundred copper coins."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ JOURNAL #18450 /* ~I met a man in Ragpicker's Square who, for discovering how and from where Pharod is collecting so many corpses, will pay me a reward.~ */ GOTO 27
  IF ~~ THEN REPLY #18320 /* ~"One hundred copper coins."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~I met a man in Ragpicker's Square who, for discovering how and from where Pharod is collecting so many corpses, will pay me a reward.~ */ GOTO 28
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18321 /* ~"Never mind. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18322 /* ~"We'll do this another time. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #18323 /* ~He scoffs. "I don't needs to know that bad." "Get out of here, before I call my bloods to show you the way."~ */
  IF ~~ THEN REPLY #18324 /* ~"Wait! One hundred coppers coins, then."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ JOURNAL #18450 /* ~I met a man in Ragpicker's Square who, for discovering how and from where Pharod is collecting so many corpses, will pay me a reward.~ */ GOTO 27
  IF ~~ THEN REPLY #18325 /* ~"But I had some more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18326 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 25.1 26.0
  SAY #18327 /* ~He thinks for a moment before finally nodding. "All right. Deal. Come back here with the dark of it, and jink will change hands. You need to know where old Pharod is?"~ */
  IF ~~ THEN REPLY #18328 /* ~"Yes."~ */ GOTO 29
  IF ~~ THEN REPLY #18329 /* ~"No."~ */ GOTO 30
END

IF ~~ THEN BEGIN 28 // from: 25.2
  SAY #18330 /* ~"Done. Do you need to know where old Pharod is?"~ */
  IF ~~ THEN REPLY #18331 /* ~"Yes."~ */ JOURNAL #18451 /* ~A man in Ragpicker's Square told me that, to find Pharod, I would need to follow the platforms over the square north and west to a gate. The gate should lead to his 'bolt-hole.'~ */ GOTO 29
  IF ~~ THEN REPLY #18332 /* ~"No."~ */ GOTO 30
END

IF ~~ THEN BEGIN 29 // from: 27.0 28.0
  SAY #18333 /* ~"Go up on the platforms, follow them to the North and West, and you'll come to a gate that leads to Pharod's bolt-hole. Getting in and getting the information is your deal. And if anyone asks, you don't know me, and we never had this talk, hear?"~ */
  IF ~~ THEN REPLY #18334 /* ~"Who *are* you?"~ */ GOTO 31
  IF ~~ THEN REPLY #18335 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 27.1 28.1
  SAY #18336 /* ~"All right, then. If anyone asks, you don't know me, and we never had this talk, hear?"~ */
  IF ~~ THEN REPLY #18337 /* ~"Who *are* you?"~ */ GOTO 31
  IF ~~ THEN REPLY #18338 /* ~"Of course. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 29.0 30.0 49.0
  SAY #18339 /* ~"For a smart cutter, you don't listen too well."~ */
  IF ~~ THEN REPLY #18340 /* ~"Uh..."~ */ EXIT
  IF ~~ THEN REPLY #18341 /* ~Leave.~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",2)
~ THEN BEGIN 32 // from:
  SAY #18342 /* ~The man does not seem amused to see you again. "I don't want a single word from you, berk, not a one. Out, now, before I call my bloods to show you the way."~ */
  IF ~~ THEN REPLY #18343 /* ~"But I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18344 /* ~Leave.~ */ EXIT
END

IF ~  GlobalGT("Sharegrave","GLOBAL",4)
~ THEN BEGIN 33 // from:
  SAY #18345 /* ~The man nods the slightest greeting. "Have you done what I asked of you? Found out what he's up to?"~ */
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18346 /* ~"Yes. Pharod's supply of dead bodies is coming from the catacombs beneath Sigil. He makes a lot of jink selling corpses the Dustmen already buried back to them."~ */ DO ~GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~I told the man who I had agreed to uncover Pharod's operation for what he needed to know, and was paid accordingly.~ */ GOTO 35
  IF ~  GlobalGT("Know_Pharod_Bodies","GLOBAL",0)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18347 /* ~"Yes. Pharod's supply of dead bodies is coming from the catacombs beneath Sigil. He makes a lot of jink selling corpses the Dustmen already buried back to them."~ */ DO ~GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18455 /* ~I told the man who I had agreed to uncover Pharod's operation for what he needed to know, and was paid accordingly.~ */ GOTO 35
  IF ~~ THEN REPLY #18348 /* ~Lie: "Pharod's simply lucky in finding dead bodies. That's it."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Sharegrave_1","GLOBALLaw",-1)
~ GOTO 45
  IF ~~ THEN REPLY #18349 /* ~"Not yet."~ */ GOTO 34
END

IF ~~ THEN BEGIN 34 // from: 33.3 49.1
  SAY #18350 /* ~"Go find out what I need to know... and I don't want to see you back here until you do. Go, before I call my bloods to show you the way."~ */
  IF ~~ THEN REPLY #18351 /* ~"But I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18352 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 33.0 33.1 53.0 55.0
  SAY #18353 /* ~His eyes widen in surprise, and he begins to shout: "How in Baator did he get down there?! That piking bastard!"~ */
  IF ~~ THEN REPLY #18354 /* ~"His 'bolt-hole' is actually a cavern complex that leads to a small city block buried beneath Ragpicker's Square. From there, there is a gate that leads down into the catacombs."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 36
  IF ~  Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18355 /* ~"If you want to know how, that'll be extra."~ */ GOTO 39
  IF ~  Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18356 /* ~"If you want to know how, that'll be extra."~ */ GOTO 40
END

IF ~~ THEN BEGIN 36 // from: 35.0 39.0 40.0 41.0 42.0
  SAY #18357 /* ~"I can't believe that bastard's luck."~ */
  IF ~  Dead("Pharod")
~ THEN REPLY #18358 /* ~"Actually, I think his luck ran out. He's dead."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 37
  IF ~  !Dead("Pharod")
~ THEN REPLY #18359 /* ~"Now that his secret's out, how much longer can it last?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ GOTO 44
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #18360 /* ~"What?!" The news slowly sinks in. "Oh, the Lady has blessed me today! Aye, she has! Here's your jink, cutter. Enjoy it."~ */
  IF ~~ THEN REPLY #18361 /* ~"Thanks. I had some questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #18362 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0 44.0
  SAY #18363 /* ~"Eh? What? Sorry, cutter - no time for you, now. Mayhap another time. Please be on your way, if you would; I've got plans to make."~ */
  IF ~~ THEN REPLY #18364 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 35.1
  SAY #18365 /* ~"All right, half what I'm paying you on top of what I'm giving you already: three hundred coppers in all. Deal?"~ */
  IF ~~ THEN REPLY #18366 /* ~"Deal. His 'bolt-hole' is actually a cavern complex that leads to a small city block buried beneath Ragpicker's Square. From there, there is a gate that leads down into the catacombs."~ */ DO ~GivePartyGold(100)
~ JOURNAL #18458 /* ~In telling him how to reach the catacombs beneath Sigil, I managed to wheedle another fifty percent out of the man who paid me for information on Pharod's supply of corpses.~ */ GOTO 36
  IF ~~ THEN REPLY #18367 /* ~"Double it and it's a deal."~ */ GOTO 41
  IF ~~ THEN REPLY #18368 /* ~"No deal. Forget it."~ */ GOTO 43
END

IF ~~ THEN BEGIN 40 // from: 35.2
  SAY #18369 /* ~"All right, half what I'm paying you on top of what I'm giving you already: one hundred and fifty coppers in all. Deal?"~ */
  IF ~~ THEN REPLY #18370 /* ~"Deal. His 'bolt-hole' is actually a cavern complex that leads to a small city block buried beneath Ragpicker's Square. From there, there is a gate that leads down into the catacombs."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~In telling him how to reach the catacombs beneath Sigil, I managed to wheedle another fifty percent out of the man who paid me for information on Pharod's supply of corpses.~ */ GOTO 36
  IF ~~ THEN REPLY #18371 /* ~"Double it and it's a deal."~ */ GOTO 42
  IF ~~ THEN REPLY #18372 /* ~"No deal. Forget it."~ */ GOTO 43
END

IF ~~ THEN BEGIN 41 // from: 39.1
  SAY #18373 /* ~"Half's what I'll pay, no more. I want you to think *very* carefully about your next words, berk."~ */
  IF ~~ THEN REPLY #18374 /* ~"Deal. His 'bolt-hole' is actually a cavern complex that leads to a small city block buried beneath Ragpicker's Square. From there, there is a gate that leads down into the catacombs."~ */ DO ~GivePartyGold(100)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~In telling him how to reach the catacombs beneath Sigil, I managed to wheedle another fifty percent out of the man who paid me for information on Pharod's supply of corpses.~ */ GOTO 36
  IF ~~ THEN REPLY #18375 /* ~"No deal. Forget it."~ */ GOTO 43
END

IF ~~ THEN BEGIN 42 // from: 40.1
  SAY #18376 /* ~"Half's what I'll pay, no more. I want you to think *very* carefully about your next words, berk."~ */
  IF ~~ THEN REPLY #18377 /* ~"Deal. His 'bolt-hole' is actually a cavern complex that leads to a small city block buried beneath Ragpicker's Square. From there, there is a gate that leads down into the catacombs."~ */ DO ~GivePartyGold(50)
SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
~ JOURNAL #18458 /* ~In telling him how to reach the catacombs beneath Sigil, I managed to wheedle another fifty percent out of the man who paid me for information on Pharod's supply of corpses.~ */ GOTO 36
  IF ~~ THEN REPLY #18378 /* ~"No deal. Forget it."~ */ GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 39.2 40.2 41.1 42.1
  SAY #18379 /* ~"That's it; I've had enough of you." He suddenly calls out: "Bloods! Get in here and kill this man!"~ */
  IF ~~ THEN REPLY #18380 /* ~Meet their attack~ */ DO ~Enemy()
ForceAttack(Protagonist,Myself)
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
  IF ~~ THEN REPLY #18381 /* ~Flee.~ */ DO ~Enemy()
SetGlobal("Sharegrave","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 44 // from: 36.1
  SAY #18382 /* ~"Hmm. Heh! Heh-heh, heh!" Soon, the man is laughing merrily. "You're right, you are! Here's your jink, cutter. Enjoy it."~ */
  IF ~~ THEN REPLY #18383 /* ~"Thanks. I had some questions..."~ */ GOTO 38
  IF ~~ THEN REPLY #18384 /* ~"Thanks. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 33.2
  SAY #18385 /* ~"I don't believe you. Where would they all come from?"~ */
  IF ~~ THEN REPLY #18386 /* ~"I don't know."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18387 /* ~"From another plane?"~ */ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0 47.0
  SAY #18388 /* ~"Get out of here, Useless, and don't come back. You and I are done dealing. Pike off before I call my bloods in to throw down on you."~ */
  IF ~~ THEN REPLY #18389 /* ~"But I had some questions..."~ */ JOURNAL #18462 /* ~I tried to lie to the man who paid me for information on Pharod's supply of corpses. He was furious, and will no longer speak with me.~ */ GOTO 16
  IF ~~ THEN REPLY #18390 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ JOURNAL #18462 /* ~I tried to lie to the man who paid me for information on Pharod's supply of corpses. He was furious, and will no longer speak with me.~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #18391 /* ~He thinks about it, tugging at what's left of his earlobe. "Mayhap... but how? What plane?"~ */
  IF ~~ THEN REPLY #18392 /* ~"I don't know."~ */ GOTO 46
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",5)
~ THEN REPLY #18393 /* ~"From the killing fields of the Gray Waste, perhaps?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~I lied to the man who paid me for information on Pharod's supply of corpses. He was suspicious, but paid me just the same... I have a feeling I'm no longer welcome in his presence, however.~ */ GOTO 48
  IF ~  CheckStatGT(Protagonist,15,INT)
Global("Sharegrave","GLOBAL",6)
~ THEN REPLY #18394 /* ~"From the killing fields of the Gray Waste, perhaps?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18465 /* ~I lied to the man who paid me for information on Pharod's supply of corpses. He was suspicious, but paid me just the same... I have a feeling I'm no longer welcome in his presence, however.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from: 47.1 47.2
  SAY #18395 /* ~"Hmm." He looks at you doubtfully. "Here's your jink, berk. Now get out of here before I get bothered and send my bloods after you."~ */
  IF ~~ THEN REPLY #18396 /* ~"But I had some questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18397 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 24.0
  SAY #18398 /* ~"Hmm. Heh. You got it; I'll even give you one hundred copper commons for your trouble. Go up on the platforms, follow them to the North and West, and you'll come to a gate that leads to Pharod's bolt-hole. Getting in and getting the information is your deal. And if anyone asks, you don't know me, and we never had this talk, hear?"~ */
  IF ~~ THEN REPLY #18399 /* ~"Who *are* you?"~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 31
  IF ~~ THEN REPLY #18400 /* ~"Of course. I had some questions..."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 34
  IF ~~ THEN REPLY #18401 /* ~"Of course. Farewell."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",1)
~ THEN BEGIN 50 // from:
  SAY #18402 /* ~He seems moderately surprised at your arrival. "Huh! Didn't expect to see you again, berk. What do you want of me?"~ */
  IF ~~ THEN REPLY #18403 /* ~"I had some questions..."~ */ GOTO 7
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18404 /* ~"Nothing. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18405 /* ~"Nothing. My apologies for the intrusion... farewell."~ */ EXIT
END

IF ~  Global("Sharegrave","GLOBAL",4)
~ THEN BEGIN 51 // from:
  SAY #18406 /* ~He seems moderately surprised to see you again. "Sorry, cutter - no time for you, now. Mayhap another time. Please be on your way, if you would; I've got plans to make."~ */
  IF ~~ THEN REPLY #18407 /* ~Leave.~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 22.0
  SAY #18408 /* ~"One hundred coins for the chant, then. Deal?"~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18409 /* ~"Triple it and it's a deal."~ */ GOTO 54
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18410 /* ~"Double it and it's a deal."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",5)
~ GOTO 53
  IF ~~ THEN REPLY #18411 /* ~"Deal."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
END

IF ~~ THEN BEGIN 53 // from: 52.1
  SAY #18412 /* ~"Done; two hundred copper commons. Well?"~ */
  IF ~~ THEN REPLY #18413 /* ~"Pharod's supply of dead bodies is coming from the catacombs beneath Sigil. He makes a lot of jink selling corpses the Dustmen already buried back to them."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(200)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~A man in Ragpicker's square paid me for information on Pharod's seemingly endless supply of corpses.~ */ GOTO 35
END

IF ~~ THEN BEGIN 54 // from: 52.0
  SAY #18414 /* ~He scoffs. "I don't need to know that bad. Get out of here, before I call my bloods to show you the way."~ */
  IF ~~ THEN REPLY #18415 /* ~"Wait! One hundred coppers coins, then."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",6)
~ GOTO 55
  IF ~~ THEN REPLY #18416 /* ~"But I had some more questions..."~ */ GOTO 16
  IF ~~ THEN REPLY #18417 /* ~Leave.~ */ DO ~SetGlobal("Sharegrave","GLOBAL",2)
~ EXIT
END

IF ~~ THEN BEGIN 55 // from: 52.2 54.0
  SAY #18418 /* ~"All right; one hundred coppers it is. Well?"~ */
  IF ~~ THEN REPLY #18419 /* ~"Pharod's supply of dead bodies is coming from the catacombs beneath Sigil. He makes a lot of jink selling corpses the Dustmen already buried back to them."~ */ DO ~SetGlobal("Sharegrave","GLOBAL",4)
SetGlobal("Shite","GLOBAL",1)
GivePartyGold(100)
AddexperienceParty(750)
~ JOURNAL #18468 /* ~A man in Ragpicker's square paid me for information on Pharod's seemingly endless supply of corpses.~ */ GOTO 35
END

IF ~  Global("Sharegrave","GLOBAL",0)
Global("Pox","GLOBAL",2)
~ THEN BEGIN 56 // from:
  SAY #18420 /* ~Tall and lanky, this pale, grim-looking man exudes authority despite his gangly and somewhat awkward frame. A good portion of his left ear is missing; what little that's left is a ragged mess of scar tissue, as if the ear was bitten, rather than cut, off. His narrow, shifting eyes - almost mere slits - look clever... and dangerous.~ */
  IF ~~ THEN REPLY #18421 /* ~"Would you be Sharegrave?"~ */ GOTO 57
  IF ~~ THEN REPLY #18422 /* ~Leave the man be.~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0
  SAY #18423 /* ~He spits out a reply: "I don't know you, berk." He glares at you. "Who are you to be asking about some 'Sharegrave' cutter?"~ */
  IF ~~ THEN REPLY #18424 /* ~"A man called Pox referred me to Sharegrave. I was told he might know the location of someone named Pharod."~ */ GOTO 10
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18425 /* ~"Forget I asked. Farewell."~ */ GOTO 2
  IF ~  CheckStatGT(Protagonist,10,CHR)
~ THEN REPLY #18426 /* ~"No one. My apologies for the intrusion; farewell."~ */ EXIT
END
