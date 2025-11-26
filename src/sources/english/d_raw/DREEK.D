// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DREEK.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DREEK~

IF ~  Global("Reekwind","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #9338 /* ~This man is looking at you with a strange, bug-eyed stare. His eyes are *huge*... so huge they look ready to pop out of his sockets and roll across the cobblestones. He nods eagerly as you approach, bobbing his head like a bird... and as you near him, you suddenly notice the smell of urine and feces surrounding him.~ */
  IF ~~ THEN REPLY #9339 /* ~"Greetings."~ */ GOTO 1
  IF ~~ THEN REPLY #11329 /* ~Leave the ragged man in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #9340 /* ~The man sniffles, wiping his nose on his sleeve, then opens his mouth to reveal blackened, rotted gums. "Stories-for-coin, sirrah?" His breath reeks; it smells like this man has been keeping rotten meat stored inside his mouth. "Stories-for-coin?"~ */
  IF ~~ THEN REPLY #9341 /* ~"Who are you?"~ */ GOTO 2
  IF ~~ THEN REPLY #11330 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 15.0
  SAY #11276 /* ~The man snorts, thick with phlegm. "Names, names... who you are, who you are..." His head does a slight twitch every time he repeats himself. "Names... dangerous, dangerous." He glances at the ground and stirs the dirt with his foot.~ */
  IF ~~ THEN REPLY #11331 /* ~"Dangerous?"~ */ DO ~SetGlobal("Reekwind","GLOBAL",1)
~ GOTO 3
  IF ~~ THEN REPLY #11332 /* ~"Never mind. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #11277 /* ~"Knowing a name or bein' stuck with one, both's a mess of trouble." He looks back up at you. "My name's a given name, not one asked for. Reekwind." Once again you become conscious of his reeking breath and the smell of urine and feces that surrounds him. "A given name, a given name."~ */
  IF ~~ THEN REPLY #11333 /* ~"An... appropriate name."~ */ GOTO 4
  IF ~~ THEN REPLY #11334 /* ~"Heh. The name fits you well."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Reekwind_1","GLOBALGood",-1)
~ GOTO 4
  IF ~~ THEN REPLY #11335 /* ~"Is that your real name?"~ */ GOTO 4
  IF ~~ THEN REPLY #11336 /* ~"I... see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0 3.1 3.2
  SAY #11278 /* ~"Not my true name, true name." Reekwind mumbles on, his head twitching every time he says *name.* "A true name's a dangerous thing, gives others power." He stares at you with his huge eyes and wags his finger. "Keep your name secret, keep it close, never let it out."~ */
  IF ~~ THEN REPLY #11337 /* ~"What do you mean?"~ */ GOTO 5
  IF ~~ THEN REPLY #11338 /* ~"I... see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #11279 /* ~"Names are like smells... things can track you with them." Reekwind coughs, his eyes almost popping out of his skull as he does so. His cough seems to loosen his bowels, for he breaks wind loudly, as if to accentuate his point. "If someone knows a true name, it gives them power." He licks his lips. "The power to *hurt.*"~ */
  IF ~~ THEN REPLY #11339 /* ~"I don't know my true name."~ */ JOURNAL #61613 /* ~I met a diseased storyteller in the Hive, a foul-smelling man by the name of "Reekwind." When I spoke to him, he warned me of the danger of names, saying that when you carry a name, that it somehow allows you to be tracked, seen... hunted. For some reason, that thought chilled me. Is that *why* I'm nameless? ~ */ GOTO 6
  IF ~~ THEN REPLY #11340 /* ~"I... see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #11280 /* ~Reekwind's eyes widen; seeing his eyeballs bulge even larger makes you uneasy. "Then you are blessed, blessed. Remain nameless, and you shall be as a spirit on the planes, untraceable, untrackable, unseen, undiscovered." He smacks his gums wetly. "A name chosen, a name given... it allows others to find you and hurt you."~ */
  IF ~~ THEN REPLY #11341 /* ~"Have you been hurt?"~ */ GOTO 7
  IF ~~ THEN REPLY #11342 /* ~"I... see. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0 15.1
  SAY #11281 /* ~Reekwind gives a twitching nod, then scratches himself. "Let my name slip once, once, only once, only once." His eyes film over as if the memory is painful, then glances at you uneasily. "Tell you the story I can, I will, but three coppers must I see." His face splits into a smile as he says the word *coppers,* and his reeking breath hits you like a hammer.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11343 /* ~"Very well. Here's three copper."~ */ DO ~TakePartyGold(3)
~ GOTO 8
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11344 /* ~Lie: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11345 /* ~Truth: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11346 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.0 17.0 17.3
  SAY #11282 /* ~Reekwind gets into a stance, looks left, looks right, then faces you. His face clenches, then with a grunt, he breaks wind again. The smell nearly levels you, but he takes no notice. "Cursed, I! Walked the wards in splendor..." He stands up stiffly, nose high in the air. He saunters back and forth, nodding to invisible passersby. ~ */
  IF ~~ THEN REPLY #11347 /* ~Listen.~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
~ JOURNAL #63974 /* ~Reekwind told me he wasn't always the smelly wreck he's become - apparently, he crossed paths with someone who didn't take kindly to him, and he was cursed as a result. Apparently, because the curse-thrower knew Reekwind's real name, he was able to make the curse stick, and Reekwind has been suffering ever since. Judging from Reekwind's description, the curse-thrower was some fat, balding man who had the look of a "pumpkin" about him... which presumably means he favors dressing in orange. He's probably in one of the Upper Wards where Reekwind once lived. ~ */ GOTO 9
  IF ~~ THEN REPLY #11348 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11349 /* ~"I think I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #11283 /* ~Reekwind freezes, his arms akimbo. "Crossed paths with a crossed one. Had the looking of a pumpkin, his seeds, curses!" Reekwind then thrusts his belly out so as to appear fat, slicks back his hair with his filthy palm so he looks almost bald, and begins drumming his fingers on his 'fat' belly. He then walks about, circling the spot where his 'stuffy, upper class persona' used to be. "All-a-jumble with curses, this one was." With a sneer and a careless gesture, Reekwind tosses an invisible curse at the 'stuffy persona.'~ */
  IF ~~ THEN REPLY #11364 /* ~Listen.~ */ GOTO 10
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11366 /* ~"Hold a moment... I've *met* the person who cursed you. His name is Murdersense, isn't it?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Apparently, Reekwind was cursed by Jumble Murdersense. ~ */ GOTO 11
  IF ~~ THEN REPLY #11368 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11370 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.0 11.0 12.0
  SAY #11284 /* ~"Knew my name, let it slip I had, I had, all it took, took it all!" He stiffens up again, inhaling deeply and resuming his 'upper class' persona. The persona suddenly crumples, and Reekwind breaks wind violently, then exhales, filling the air with his foul, reeking breath. "Cursed with stenches, smells, excrement! Came here to tell tales, all good for, all good for now. Now Reekwind is the name, given name, given name..."~ */
  IF ~~ THEN REPLY #11372 /* ~"I... see. I had some other questions..."~ */ GOTO 15
  IF ~  GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11375 /* ~"Hold a moment... I've *met* the person who cursed you. His name is Murdersense, isn't it?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ JOURNAL #63975 /* ~Apparently, Reekwind was cursed by Jumble Murdersense. ~ */ GOTO 11
  IF ~~ THEN REPLY #11378 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.1 15.7
  SAY #11285 /* ~At the sound of the name, Reekwind's cheeks swell, his eyes bulge, and he suddenly vomits onto the ground at his feet. His entire body shudders, his frame wracked with coughing and retching... at the end of several long minutes, he nods weakly, and makes a semi-circle over his heart.~ */
  IF ~~ THEN REPLY #11380 /* ~"What happened after you met... him?"~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 10
  IF ~~ THEN REPLY #11382 /* ~"Unfortunate tale. I had some other questions for you..."~ */ GOTO 15
  IF ~  Dead("Jumble")
~ THEN REPLY #11384 /* ~"He's dead, you know."~ */ GOTO 13
  IF ~  !Dead("Jumble")
~ THEN REPLY #11386 /* ~"I could probably get him to remove the curse, you know."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Reekwind_1","GLOBALGood",1)
~ GOTO 12
  IF ~~ THEN REPLY #11389 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 11.3
  SAY #11286 /* ~Reekwind looks hopeful for a moment, then he looks sad. "Promises, promises..." He gives a stuttering sigh, each sigh punctuated by a foul-smelling hiccup. "Try if you wish, if you wish..." ~ */
  IF ~~ THEN REPLY #11391 /* ~"What happened after you met... him?"~ */ GOTO 10
  IF ~~ THEN REPLY #11411 /* ~"I had some other questions for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #11412 /* ~"I'll go see him about it right now. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.2
  SAY #11287 /* ~Reekwind gives a stuttering sigh, each sigh punctuated by a foul-smelling hiccup. "No matter, then, no matter..."~ */
  IF ~~ THEN REPLY #11413 /* ~"I had some other questions for you..."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ GOTO 15
  IF ~~ THEN REPLY #11414 /* ~"Farewell."~ */ DO ~SetGlobal("reekwind","global",10)
EraseJournalEntry(59888)
~ EXIT
END

IF ~  OR(2)
Global("Reekwind","GLOBAL",1)
Global("reekwind","global",10)
~ THEN BEGIN 14 // from:
  SAY #11288 /* ~Reekwind spots you as you approach, bobbing his head eagerly, and staring at you with his huge eyes. As you near him, you are again struck by the smell of urine and feces that surrounds him.~ */
  IF ~~ THEN REPLY #11415 /* ~"Greetings, Reekwind. I had some questions for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #11416 /* ~Leave Reekwind in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 15 // from: 7.1 7.2 8.1 9.2 10.0 11.1 12.1 13.0 14.0 16.1 16.2 18.1 18.2 19.1 20.1 21.1 22.1 23.1 23.2 24.1 25.1 26.1 27.1 28.1 29.1 30.1 31.0 32.0 33.1 33.2 34.1 35.1 36.1 37.1 38.1 39.0 40.1 41.1 42.1 43.1 44.3 45.0 47.0
  SAY #11289 /* ~"Questions, questions..." Reekwind hunches over, regarding you warily with his huge eyes. "Answers, answers...?"~ */
  IF ~~ THEN REPLY #11417 /* ~"Who are you again?"~ */ GOTO 2
  IF ~~ THEN REPLY #11418 /* ~"What happened to you?"~ */ GOTO 7
  IF ~~ THEN REPLY #11419 /* ~"I'd like to hear a story."~ */ GOTO 16
  IF ~~ THEN REPLY #11420 /* ~"Can you tell me about this area?"~ */ GOTO 18
  IF ~  Global("Pharod","GLOBAL",0)
Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #11421 /* ~"Can you tell me where I could find someone named Pharod?"~ */ GOTO 33
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #11422 /* ~"Can you tell me about Pharod again?"~ */ GOTO 33
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #11423 /* ~"I'm missing a journal. Have you seen one?"~ */ GOTO 32
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
GlobalGT("Jumble","GLOBAL",0)
Global("Loop","AR0300",0)
~ THEN REPLY #11424 /* ~"I found that man who cursed you in the Civic Festhall. His name is Murdersense."~ */ DO ~SetGlobal("Loop","AR0300",1)
~ GOTO 11
  IF ~~ THEN REPLY #11425 /* ~"Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.2
  SAY #11290 /* ~"Tell you a story I can, I will, but three coppers must I see." His face splits into a smile, and his reeking breath hits you like a hammer.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11426 /* ~"Very well. Here's three copper."~ */ DO ~TakePartyGold(3)
~ GOTO 17
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11427 /* ~Lie: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11428 /* ~Truth: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11429 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #11291 /* ~He takes the copper, gums it, then to your surprise, he swallows it. "Best purse, best purse there is, belly, belly." He gives a reeking wheeze. "A story, a story..." He smacks his lips, scratching his dirty rags.~ */
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",0)
~ THEN REPLY #11430 /* ~Wait for him to choose a story.~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",0)
~ THEN REPLY #11431 /* ~Wait for him to choose a story.~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11432 /* ~Wait for him to choose a story.~ */ GOTO 24
  IF ~  Global("Story_Reekwind_Curse","GLOBAL",1)
~ THEN REPLY #11433 /* ~"I'd like to hear the story about how you were cursed."~ */ GOTO 8
  IF ~  Global("Story_Reekwind_Alley","GLOBAL",1)
~ THEN REPLY #11434 /* ~"I'd like to hear about what happened to the Alley of Dangerous Angles." ~ */ GOTO 19
  IF ~  Global("Story_Reekwind_Ignus","GLOBAL",1)
~ THEN REPLY #11453 /* ~"I'd like to hear Ignus' tale."~ */ GOTO 24
  IF ~  CheckStatLT(Protagonist,14,WIS)
CheckStatGT(Protagonist,13,INT)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11457 /* ~"I want to hear the story of the man who came to this city without name or memory and spoke with the cursed story-teller who warned him of the danger of names."~ */ GOTO 40
  IF ~  CheckStatGT(Protagonist,13,WIS)
Global("Story_Reekwind_Self","GLOBAL",0)
~ THEN REPLY #11459 /* ~"I want to hear the story of the man who came to this city without name or memory and spoke with the cursed story-teller who warned him of the danger of names."~ */ GOTO 40
  IF ~~ THEN REPLY #11463 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 15.3
  SAY #11292 /* ~"The Hive, the Hive... a tale I can tell, a tale I can tell, I will, but three coppers must I see." He smacks his gums together and snorts like a pig.~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11468 /* ~"Very well. Here's three copper."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 19
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11479 /* ~Lie: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11480 /* ~Truth: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11481 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1 17.4 18.0
  SAY #11293 /* ~"Spireward, spireward..." He points to his left, at the charred alley in the distance. "An Alley of *Dangerous Angles.*" He bends his limbs in a twisted parody of one of the skeletal buildings. "Not always angled, not always burned and charred, once alive, no longer."~ */
  IF ~~ THEN REPLY #11482 /* ~Listen.~ */ GOTO 20
  IF ~~ THEN REPLY #11483 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11484 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #11294 /* ~"Flames, fire!" He flings his hands up in the air, then waves them to simulate flames. "The alley burned, great smoke, ash everywhere... in the end, only *skeletons* of buildings left, bones of dead buildings, bones of dead buildings. Angles... everywhere, angles."~ */
  IF ~~ THEN REPLY #11485 /* ~Listen.~ */ JOURNAL #63976 /* ~Reekwind told me a story of the "Alley of Dangerous Angles," the alleyway near where he's set up kip. He told me it used to be a street, but a great fire raged through it one night, setting the buildings and people a-flame, leaving just the skeletal frames of the houses... and their residents. The broken timbers of the old burnt buildings are what give the Alley its name. Apparently, several groups of thugs have now taken up residence there. ~ */ GOTO 21
  IF ~~ THEN REPLY #11486 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11487 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #11295 /* ~He hunches forward, his voice a whisper. Again, the stench from his body hits you like a wave. "Dangerous, now, bad men have set up their kip there, kip there." He bows, then breaks wind in quick spurts, like a bugle blowing. "That is the tale of how a street becomes an Alley of Dangerous Angles."~ */
  IF ~~ THEN REPLY #11488 /* ~"How did the fire start?"~ */ DO ~SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
~ GOTO 22
  IF ~~ THEN REPLY #11489 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11490 /* ~"I see... Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #11296 /* ~He makes a semi-circle over his heart. "A man made it so. A beast made it so. A man whom even *fiends* admire."~ */
  IF ~~ THEN REPLY #11491 /* ~"Who?"~ */ GOTO 23
  IF ~~ THEN REPLY #11492 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11493 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #11297 /* ~"A sorcerer's tale, filled with madness, sadness, burning, yearning... a tale I can tell, a tale I can tell, I will, but three coppers must I see." He hisses, then cackles in a way that reminds you of a fire burning. "A dangerous tale, a dangerous tale."~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11494 /* ~"Very well. Here's three copper."~ */ DO ~TakePartyGold(3)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
~ GOTO 24
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11495 /* ~Lie: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11496 /* ~Truth: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11497 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.2 17.5 23.0
  SAY #11298 /* ~"A sorcerer there was, no simple hedge wizard this, but a mage of *power.*" Reekwind brings his hands together reverently, then smiles evilly. "He burned with the Art, and the Art burned him."~ */
  IF ~~ THEN REPLY #11498 /* ~Listen.~ */ GOTO 25
  IF ~~ THEN REPLY #11499 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11500 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #11299 /* ~"The name given him was Ignus, a name respected, then feared, then hated, then punished." Reekwind gives a rattling wheeze, then claws the air and hisses, apparently imitating 'Ignus.'~ */
  IF ~~ THEN REPLY #11501 /* ~Listen.~ */ DO ~SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 26
  IF ~~ THEN REPLY #11502 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11503 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #11300 /* ~"Taught by one of the last great magi Ignus was, and as an apprentice, Ignus learned much, much... and nothing at the same time." Reekwind shakes his head sadly. "In his heart, his coal-black heart, a fire blazed. It burned, it burned, and it *hungered.*" Reekwind claws at his chest, as if in pain. "As it hungered, Ignus hungered. It was his wish to see the planes *burn.*"~ */
  IF ~~ THEN REPLY #11504 /* ~Listen.~ */ GOTO 27
  IF ~~ THEN REPLY #11505 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11506 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #11301 /* ~"In the night..." Reekwind hunches down and begins to slowly stalk in the direction of the alley, a mad grin on his face. "Ignus came to the Alley that was to be the Alley of Angles, and the fire in his eyes, the fire in his heart, both he let out." Reekwind points at the Alley, then flings his arms in the air, silently screaming and laughing at the same time.~ */
  IF ~~ THEN REPLY #11507 /* ~Listen.~ */ GOTO 28
  IF ~~ THEN REPLY #11508 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11509 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #11302 /* ~"Flesh ran like wax, people like candles, and Ignus laughed, laughed..." Reekwind crumples to the ground, his body wracked with imagined pain. "An evil, an evil was done, and forgotten not, forgotten not." He stands up, then hunches over, looks left, looks right, then starts mumbling, as if secretly in a conference with someone. "Something was to be done, be done..."~ */
  IF ~~ THEN REPLY #11510 /* ~Listen.~ */ GOTO 29
  IF ~~ THEN REPLY #11511 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11512 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #11303 /* ~He stands up, stiffly, his face resolute. "A punishment was decided, all the hedge wizards, midwives, rune-tellers, copper-pinching witches, all manner of magelings... they came, all, even those with the smallest trace of the Art, to punish Ignus. Separately, they were flies..." He makes a buzzing noise between his rotten gums. "Together, dangerous, dangerous."~ */
  IF ~~ THEN REPLY #11513 /* ~Listen.~ */ GOTO 30
  IF ~~ THEN REPLY #11514 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11515 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #11304 /* ~He hums, then raises his hands... "Caught Ignus, granted his wish..." He swirls his hands, as if casting a spell. "He wished to burn, they granted it, using his own desire to fuel the casting. They made his body a door to the Plane of Fire - they intended to kill him, kill him..."~ */
  IF ~~ THEN REPLY #11516 /* ~Listen.~ */ JOURNAL #63977 /* ~Reekwind told me a story of Ignus, the mad sorcerer who was responsible for creating the Alley of Dangerous Angles. He said that Ignus was a powerful sorcerer who had been taught by one of the last of the Great Magi. Ignus burned with the Art, so much so it drove him to burning people and buildings when the urge struck him. One night, he unleashed his power on one of the streets in the Hive, burning it down and torching the residents. Whether out of revenge or justice, several minor mages in the Hive banded together and used their combined knowing of the Art to turn Ignus' body into a conduit to the Elemental Plane of Fire. They hoped the pain would kill him... it didn't. Apparently, it just caused Ignus to enter a deep sleep.~ */ GOTO 31
  IF ~~ THEN REPLY #11517 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11518 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #11305 /* ~"Failed, failed..." Reekwind breaks wind again, as if to accentuate the failure of the wizards. "Ignus lived, Ignus lived, only slept, blanket of flames, flames, turned in his sleep as he burned, never happier, never happier..." He shuts his eyes, wraps his arms around himself and turns slowly. "Burning... ever-burning..." His eyes suddenly snap open. "One day he will wake, and then, then the planes shall *burn!*"~ */
  IF ~~ THEN REPLY #11519 /* ~"An unfortunate tale. I had some other questions for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #11520 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 15.6
  SAY #11306 /* ~Reekwind breaks wind, then scratches his arms. He thinks for a moment, then shakes his head. "No journal, no journal have I seen."~ */
  IF ~~ THEN REPLY #11521 /* ~"I had some other questions for you..."~ */ GOTO 15
  IF ~~ THEN REPLY #11522 /* ~"Never mind then. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from: 15.4 15.5
  SAY #11307 /* ~Reekwind suddenly hunches over and leers at you. He walks around you for a moment, dragging his leg as if lame. "A king! A noble tale, a noble tale! A tale I can tell, but three coppers must I see..." ~ */
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11523 /* ~"Very well. Here's three copper."~ */ DO ~TakePartyGold(3)
~ GOTO 34
  IF ~  PartyGoldGT(2)
~ THEN REPLY #11544 /* ~Lie: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_1","GLOBALLaw",-1)
~ GOTO 15
  IF ~  PartyGoldLT(3)
~ THEN REPLY #11548 /* ~Truth: "I don't have that much with me. I had some questions, though..."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_1","GLOBALLaw",1)
~ GOTO 15
  IF ~~ THEN REPLY #11552 /* ~"Not today. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 33.0
  SAY #11308 /* ~Reekwind remains hunched over, staring at you. "Once a man of respect, Pharod was, a man, a man of goals, and *position.* All became nothing, nothing, turned to air." Reekwind squints, then breaks wind, filling the air with a gut-churning smell. "Turned to air... and stink."~ */
  IF ~~ THEN REPLY #11554 /* ~Listen.~ */ GOTO 35
  IF ~~ THEN REPLY #11556 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11558 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #11309 /* ~"A liar, a cheater, a man who twisted law, Pharod was." He hunches over, as if writing at a desk. He 'writes' for a moment, then suddenly stops, afraid. "Then one day, he found that he had twisted himself!"~ */
  IF ~~ THEN REPLY #11560 /* ~Listen.~ */ GOTO 36
  IF ~~ THEN REPLY #11563 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11564 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #11310 /* ~"Such a liar he had become, that when he died, he was to go to a horrible place..." Reekwind shakes his head sadly, then hunches over again and looks wildly in all directions. "Pharod would not accept it, would not, would not! He had cheated others, he would cheat his fate, too!"~ */
  IF ~~ THEN REPLY #11567 /* ~Listen.~ */ GOTO 37
  IF ~~ THEN REPLY #11569 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11572 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #11311 /* ~"He read, dug in books, and consulted seers..." Reekwind stalks back and forth, his hand over his eyes as if staring off into the distance. "...and they told him that only in trash could he find that which would let him cheat his fate." Reekwind breaks wind again, then gives a reeking cough. "Perhaps they lied..."~ */
  IF ~~ THEN REPLY #11575 /* ~Listen.~ */ DO ~SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ JOURNAL #63978 /* ~Reekwind told me the story of Pharod; apparently, Pharod was once a member of the "aristocracy" in Sigil, but he used his position to bend laws, cheat others, and even condemn innocent men. His acts were so deceitful that it damned his soul to the Lower Planes when he died - when he learned of this, he became afraid and looked for a way to dodge his fate. Apparently, he consulted several seers and was told that he would find a means of saving himself in the trash of Sigil. Pharod cast off his position of respect and became a Collector King, sending his Hiver gang to scour the Sigil streets in search of something that would set his soul free... but he knows not what it is.~ */ GOTO 38
  IF ~~ THEN REPLY #11576 /* ~"Actually, I don't have time for a story right now. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11577 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 38 // from: 37.0
  SAY #11312 /* ~Reekwind stands up stiffly, then begins to fling off imaginary clothes. With every piece of 'clothing' he throws away, he becomes more hunched. "Pharod threw away his position, his goals, and took up a new title..." Reekwind stops, then leers at you. He claws at his rags, shaking them. "And became a King of Rags! He would rule the trash, have his subjects search it all, and find that which he needed." He shakes his head. "He looks even now, even now..."~ */
  IF ~~ THEN REPLY #11578 /* ~"Uh... do you know where I could find him?"~ */ GOTO 39
  IF ~~ THEN REPLY #11579 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11581 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #11313 /* ~Reekwind shakes his head. "He lives amongst rags and trash. There, you will find him, find him..."~ */
  IF ~~ THEN REPLY #11582 /* ~"I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11584 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 40 // from: 17.6 17.7
  SAY #11314 /* ~Reekwind stops twitching and scratching for a moment, and stares at you. "That tale... that tale costs nothing, for it is worth nothing, and it is worth noting that it would be a sad tale indeed." ~ */
  IF ~~ THEN REPLY #11586 /* ~"Nevertheless, I would hear it."~ */ GOTO 41
  IF ~~ THEN REPLY #11587 /* ~"Very well. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11589 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #11315 /* ~"Where would such a tale begin...?" Reekwind grunts, then gives a reeking wheeze that makes your eyes tear up. He seems to be thinking.~ */
  IF ~~ THEN REPLY #11591 /* ~"It would begin with a man waking up in the Mortuary, believed dead, but in truth, only his memories are dead."~ */ GOTO 42
  IF ~~ THEN REPLY #11593 /* ~"Very well. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11596 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #11316 /* ~Reekwind nods, then studies you and starts scratching himself violently, as if to give himself scars. "Dead, but not dead... no memories, no memories, no name..."~ */
  IF ~~ THEN REPLY #11598 /* ~"He escapes the Mortuary, enters the Hive, and speaks to a man who let his true name slip once and has regretted it."~ */ GOTO 43
  IF ~~ THEN REPLY #11599 /* ~"Very well. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11600 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #11317 /* ~Reekwind seems hypnotized by your words. "Yes, yes, much danger in naming... perhaps..." He pauses. "Perhaps the man to whom the nameless one speaks is a warning to the danger of names." He seems to chew this over. "Perhaps he who has forgotten his name is better off...?"~ */
  IF ~~ THEN REPLY #11601 /* ~"Is he? Is it better to suffer the truth with all its consequences or is it better to remain ignorant? Which of the two men is better off?" ~ */ GOTO 44
  IF ~~ THEN REPLY #11602 /* ~"Very well. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11603 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #11318 /* ~Reekwind gives a hacking cough, then spits, the spittle green and wet, then he turns back to you. "It is your question, your tale..." He speaks slowly. "It is *you* who must answer it."~ */
  IF ~~ THEN REPLY #11604 /* ~"I want to hear your answer."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",1)
GiveExperience(Protagonist,500)
~ GOTO 45
  IF ~~ THEN REPLY #11605 /* ~"The man who knows his true name is better off, for he knows himself and is stronger person for it."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",2)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11607 /* ~"The man who has forgotten his true name is better off, for he is protected against those that would do him harm, including himself. Where a named man moves, he is followed. When a nameless one moves, his name leaves no trail."~ */ DO ~SetGlobal("Story_Reekwind_Self","GLOBAL",3)
GiveExperience(Protagonist,1000)
~ GOTO 46
  IF ~~ THEN REPLY #11610 /* ~"Never mind. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11611 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 44.0
  SAY #11319 /* ~Reekwind shakes his head. "My answer, my answer..." He coughs again, belching forth another wave of fumes. He smacks his lips, as if trying to drive the taste from his mouth. "My answer is this: They are both fools, but only one knows himself a fool."~ */
  IF ~~ THEN REPLY #11613 /* ~"Very well. I had some other questions..."~ */ GOTO 15
  IF ~~ THEN REPLY #11614 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 44.1 44.2
  SAY #11320 /* ~Reekwind mulls this over, licking his lips. He begins to nod slowly, then mumbles under his breath, as if debating with himself. Eventually, he turns back to you. "That is a tale, a tale with a moral that tells the teller's morals..." He coughs and spits another phlegmy glob onto the cobblestones. "A tale that will answer itself, in time, in time...?"~ */
  IF ~~ THEN REPLY #11615 /* ~Truth: "Perhaps. What happens will happen, and it may be that this tale has no answer."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Reekwind_2","GLOBALLaw",-2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11616 /* ~Truth: "It must have an answer, and every tale has an ending. I will refuse to accept it any other way."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Reekwind_2","GLOBALLaw",2)
GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
  IF ~~ THEN REPLY #11617 /* ~Truth: "I do not know. It is not for me to decide."~ */ DO ~GiveItemCreate("ClipCop",Protagonist,1,0,0)
~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1 46.2
  SAY #11321 /* ~Reekwind scratches himself for a moment, nodding, then reaches into the folds of his robe and flicks you a coin. "For such a tale: a clipped copper." He sneers. "No more, for the tale's not finished." ~ */
  IF ~~ THEN REPLY #11618 /* ~"A fair price. Very well, then, perhaps there are some questions you can answer for me..."~ */ GOTO 15
  IF ~~ THEN REPLY #11619 /* ~"Farewell."~ */ EXIT
END

IF ~  GlobalLT("reekwind","global",10)
GlobalGT("Reekwind","GLOBAL",1)
~ THEN BEGIN 48 // from:
  SAY #11322 /* ~You see Reekwind... his eyes have reverted to their normal size, and he is no longer assailed by the twitching spasms that you noted before. He is smiling, and he looks considerably cleaner than before. ~ */
  IF ~~ THEN REPLY #11620 /* ~"Greetings, Reekwind. I had some questions for you..."~ */ GOTO 49
  IF ~~ THEN REPLY #11621 /* ~Leave Reekwind in peace.~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #11323 /* ~He looks at you, amazed. "It... stopped. It all stopped, just like that." He snaps his fingers, then looks down at himself. "Powers above, I..." He laughs. "I feel *clean* again."~ */
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11622 /* ~"Good to hear it. Jumble didn't want to remove the curse, but I got it out of him."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  Global("Reekwind","GLOBAL",2)
~ THEN REPLY #11623 /* ~"Glad to hear you're doing well."~ */ DO ~SetGlobal("Reekwind","GLOBAL",3)
AddexperienceParty(5000)
~ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11624 /* ~"Good to hear it. Jumble didn't want to remove the curse, but I got it out of him."~ */ GOTO 50
  IF ~  GlobalGT("Reekwind","GLOBAL",2)
~ THEN REPLY #11625 /* ~"Glad to hear you're doing well."~ */ GOTO 50
END

IF ~~ THEN BEGIN 50 // from: 49.0 49.1 49.2 49.3
  SAY #11324 /* ~"I thank you, sir. I..." He looks flustered. "I have nothing to pay you with, but you are in my good graces..." He shrugs. "For whatever that is worth." He frowns, then stands straight. "I will tell the story of your kindness to all who will listen."~ */
  IF ~  Global("Reekwind","GLOBAL",3)
~ THEN REPLY #11626 /* ~"Actually, do you have any stories you haven't told me already? That could be payment enough..."~ */ DO ~SetGlobal("Reekwind","GLOBAL",4)
~ GOTO 51
  IF ~~ THEN REPLY #11627 /* ~"Thanks, Reekwind. I was happy to help."~ */ GOTO 53
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #11325 /* ~"Of course, of course!" Reekwind looks around... "Though I've had enough of telling tales for a while... do you have something I could write them in?"~ */
  IF ~~ THEN REPLY #11628 /* ~"I have a journal here."~ */ JOURNAL #63979 /* ~In exchange for helping him shed his curse, Reekwind put all the stories he knew in my journal:

The first of the stories was a tale of the "Alley of Dangerous Angles," the alleyway near where he'd set up kip. It used to be a street, but a great fire raged through it one night, setting the buildings and people a-flame, leaving just the skeletal frames of the houses... and their residents. The broken timbers of the old burnt buildings are what give the Alley its name. Apparently, several groups of thugs have now taken up residence there.

The second tale was the story of Ignus, the mad sorcerer who was responsible for creating the Alley of Dangerous Angles. Ignus was a powerful sorcerer who had been taught by one of the last of the Great Magi, and he burned with the Art, so much so it drove him to burning people and buildings when the urge struck him. One night, he unleashed his power on one of the streets in the Hive, burning it down and torching the residents. Whether out of revenge or justice, several minor mages in the Hive banded together and used their combined knowing of the Art to turn Ignus' body into a conduit to the Elemental Plane of Fire. They hoped the pain would kill him... it didn't. Apparently, it just caused Ignus to enter a deep sleep.

The third and last tale was the story of Pharod; apparently, Pharod was once a member of the "aristocracy" in Sigil, but he used his position to bend laws, cheat others, and even condemn innocent men. His acts were so deceitful that it damned his soul to the Lower Planes when he died - when he learned of this, he became afraid and looked for a way to dodge his fate. Apparently, he consulted several seers and was told that he would find a means of saving himself in the trash of Sigil. Pharod cast off his position of respect and became a King of Rags, sending his gang of Collectors to scour the Sigil streets in search of something that would set his soul free... but he knows not what it is.~ */ GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #11326 /* ~Reekwind takes the journal. "Ah..." He scribbles for a while, then hands it back to you. "There you are."~ */
  IF ~  Global("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Thanks, Reekwind."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
SetGlobal("Know_Ignus_Teacher","GLOBAL",1)
~ GOTO 53
  IF ~  GlobalGT("Know_Ignus_Teacher","GLOBAL",0)
~ THEN REPLY #11630 /* ~"Thanks, Reekwind."~ */ DO ~SetGlobal("Story_Reekwind_Curse","GLOBAL",1)
SetGlobal("Story_Reekwind_Alley","GLOBAL",1)
SetGlobal("Story_Reekwind_Ignus","GLOBAL",1)
SetGlobal("Story_Reekwind_Pharod","GLOBAL",1)
~ GOTO 53
END

IF ~~ THEN BEGIN 53 // from: 50.1 52.0 52.1
  SAY #11327 /* ~"Eh... if you would never use that name again, I... among others, would be thankful."~ */
  IF ~~ THEN REPLY #11632 /* ~"Very well. What should I call you?"~ */ GOTO 54
  IF ~~ THEN REPLY #11634 /* ~"Fair enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 53.0
  SAY #11328 /* ~"My name is-" He suddenly catches himself and smiles. "No, perhaps I shall keep that to myself this time." He nods respectfully to you. "Thank you again, good sir."~ */
  IF ~~ THEN REPLY #11636 /* ~"Farewell."~ */ EXIT
END
