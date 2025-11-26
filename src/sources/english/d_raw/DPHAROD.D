// creator  : D:\Games\NearInfinity-exp\app\NearInfinity.jar (v2.4-20250611)
// game     : D:\Games\Steam\steamapps\common\Project P
// resource : DPHAROD.DLG
// source   : data\DLGFiles.bif
// dialog   : lang\en_US\dialog.tlk
// dialogF  : (none)

BEGIN ~DPHAROD~

IF ~  Global("Pharod","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY #2841 /* ~Before you is an elderly man leaning heavily upon a crutch; his left leg is twisted, as if he tried to walk two directions at once and paid the price. His maggoty-colored skin is bunched heavily upon his skull and is flecked with liver spots. He is mumbling and smacking his lips as his eyes make a circuit of the room.~ */
  IF ~~ THEN REPLY #17912 /* ~"Greetings."~ */ DO ~SetGlobal("Pharod","GLOBAL",1)
~ JOURNAL #17915 /* ~I *finally* found Pharod in a buried village beneath Ragpicker's Square. Unfortunately, the place doesn't smell any better than the Hive... at least Pharod might have some information for me.~ */ GOTO 3
  IF ~~ THEN REPLY #17913 /* ~Ignore the man, explore the room.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY #2842 /* ~You see Pharod. He is making his rounds of the room with his eyes, mumbling to himself and licking his lips. His pasty skin stands out, even in the flickering torchlight.~ */
  IF ~~ THEN REPLY #17916 /* ~"Greetings."~ */ GOTO 3
  IF ~~ THEN REPLY #17917 /* ~Ignore Pharod, explore the room.~ */ EXIT
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
GlobalGT("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 2 // from:
  SAY #2843 /* ~"Ah, corpse..." Pharod turns as you approach, his crutch *clacking* on the cobbles of the Court. "Welcome, welcome..."~ */
  IF ~~ THEN REPLY #17918 /* ~"I had some questions for you, Pharod."~ */ GOTO 17
  IF ~~ THEN REPLY #17919 /* ~"I don't have time to talk, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0 1.0
  SAY #17834 /* ~"Aha!" The man's eyes light up as he hears your voice. "Tisn't my steady crop of jink come to Pharod's waiting arms again! Greetings, corpse." He smiles a wicked grin. "Have you come to ask Pharod for another jaunt into the Mortuary walls?"~ */
  IF ~~ THEN REPLY #17920 /* ~"Pharod, I've come for information. I've been told that you know something about me."~ */ GOTO 4
  IF ~~ THEN REPLY #17921 /* ~"No, I'm here to ask you some questions that only you can answer."~ */ GOTO 6
  IF ~~ THEN REPLY #17922 /* ~"Yes, Pharod, I've returned. Are the arrangements all in order?"~ */ GOTO 9
  IF ~~ THEN REPLY #17923 /* ~"I don't have time to talk with you, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #17835 /* ~"Know somethin' 'bout you...?" The light in Pharod's eyes dims. He studies you, mumbling slightly as his eyes flicker up and down your frame. "Corpse...? No? Yes?" His eyes meet yours. "Ah! No..." ~ */
  IF ~~ THEN REPLY #17924 /* ~"Pharod? What is it?"~ */ GOTO 7
  IF ~~ THEN REPLY #17925 /* ~"Look closely... do you know who I am?"~ */ GOTO 7
  IF ~~ THEN REPLY #17926 /* ~"I don't have time to talk with you, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 9.0 9.2 9.4
  SAY #17836 /* ~Something in your tone, perhaps the slightest uncertain vocalized pause, betrays you... whatever it is makes Pharod pause, for the light in his eyes dims, and he studies you. "Corpse...? No? Yes?" His eyes meet yours. "Ah! No..."~ */
  IF ~~ THEN REPLY #17927 /* ~"Pharod...?"~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 3.1 5.0
  SAY #17837 /* ~He studies you, mumbling slightly as his eyes flicker up and down your frame. "Tisn't a mummer's fair, corpse. No time for games, no time for Pharod to play the wheel... who are you? What are you asking such questions for?"~ */
  IF ~~ THEN REPLY #17928 /* ~Truth: "I have forgotten myself, and I was told to seek you out. That you would know something of me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17929 /* ~"I need answers, Pharod. I was told you could provide them."~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 4.0 4.1
  SAY #17838 /* ~Pharod's studying you with a dead-even gaze. "Tisn't a mummer's fair, corpse. No time for games, no time for Pharod to play the wheel... what are you asking such questions for?"~ */
  IF ~~ THEN REPLY #17930 /* ~Truth: "I have forgotten myself, and I was told to seek you out. That you would know something of me."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_1","GLOBALLaw",1)
~ GOTO 8
  IF ~~ THEN REPLY #17931 /* ~"I need answers, Pharod. I was told you could provide them."~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 6.0 6.1 7.0 7.1
  SAY #17839 /* ~"Eh..." Pharod licks his lips; they make a rasping sound, like dry parchment on sand. "Now who told you such a thing, corpse?"~ */
  IF ~~ THEN REPLY #17932 /* ~Truth: "Well, no one *told* me, exactly. There were these tattoos on my back... they told me to seek you out, if I ever forgot myself."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_2","GLOBALLaw",1)
~ GOTO 14
  IF ~~ THEN REPLY #17933 /* ~"Who needed to tell me such a thing? Are you not Pharod?"~ */ GOTO 14
END

IF ~~ THEN BEGIN 9 // from: 3.2
  SAY #17840 /* ~"Sound as stone, they are... my Collectors've done as you asked, to the word." He leans heavily against the crutch, causing it to creak dangerously. "Eh... not so much luck to be had with the bauble, however. Did you perchance know *where* it is below? Would be such a help, it would..."~ */
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17934 /* ~"Indulge me, Pharod... what did I ask your Collectors to do again?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17935 /* ~"Indulge me, Pharod... what did I ask your Collectors to do again?"~ */ GOTO 11
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17936 /* ~"No... tell me, what were you saying about a 'jaunt to the Mortuary'?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17937 /* ~"No... tell me, what were you saying about a 'jaunt to the Mortuary'?"~ */ GOTO 12
  IF ~  CheckStatLT(Protagonist,13,CHR)
~ THEN REPLY #17938 /* ~"Bauble?"~ */ GOTO 5
  IF ~  CheckStatGT(Protagonist,12,CHR)
~ THEN REPLY #17939 /* ~"Bauble?"~ */ GOTO 10
  IF ~~ THEN REPLY #17940 /* ~"Never mind, Pharod. I must take my leave." ~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.5 11.1 12.1 13.1
  SAY #17841 /* ~"The *sphere,* corpse, the sphere! Have you..." Pharod's voice is desperate, pleading, like a beggar - then he stops and composes himself. "No matter, I'll find it... no matter."~ */
  IF ~~ THEN REPLY #17941 /* ~"Indulge me, Pharod... what did I ask your Collectors to do again?"~ */ GOTO 11
  IF ~~ THEN REPLY #17942 /* ~"What were you saying before about a 'jaunt to the Mortuary'?"~ */ GOTO 12
  IF ~~ THEN REPLY #17943 /* ~"Never mind, Pharod. I must take my leave." ~ */ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0 12.0 13.0
  SAY #17842 /* ~Pharod raps his crutch against the flagstones, and he rocks back on his heels. "Just what you said-" He licks his lips. "Be sure to keep you safe if they find you, make sure you get shipped to the Mortuary, all that rot." He looks at you - almost worried. "Why? Someone turn stag on my word? Dump you somewhere you not meaning to be?"~ */
  IF ~~ THEN REPLY #17944 /* ~"No, but answer me this: How was I to get out of the Mortuary once I was left there?"~ */ GOTO 13
  IF ~~ THEN REPLY #17945 /* ~"No... what was that bauble you mentioned?"~ */ GOTO 10
  IF ~~ THEN REPLY #17946 /* ~"Never mind, Pharod. I must take my leave." ~ */ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.3 10.1
  SAY #17843 /* ~"Ah... yes?" Pharod nods. "The Mortuary. Dusties n' all." His voice drops, and his fingers twitch nervously on his crutch. "Are we square, corpse? Something the matter?"~ */
  IF ~~ THEN REPLY #17947 /* ~"Indulge me, Pharod... what did I ask your Collectors to do again?"~ */ GOTO 11
  IF ~~ THEN REPLY #17948 /* ~"What was that bauble you mentioned?"~ */ GOTO 10
  IF ~~ THEN REPLY #17949 /* ~"Never mind, Pharod. I must take my leave." ~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.0
  SAY #17844 /* ~Pharod chuckles softly, then scratches himself. "Ah, corpse, you said naught about getting you *out* of that hole... you were so pig-eager to get in, it seemed to me you'd made arrangements for giving the Dusties the laugh once we slipped you in. Hope we were square on that score."~ */
  IF ~~ THEN REPLY #17950 /* ~"Indulge me, Pharod... what did I ask your Collectors to do again?"~ */ GOTO 11
  IF ~~ THEN REPLY #17951 /* ~"What was that bauble you mentioned?"~ */ GOTO 10
  IF ~~ THEN REPLY #17952 /* ~"Never mind, Pharod. I must take my leave." ~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 8.0 8.1
  SAY #17845 /* ~"Ah... so little said, so much told..." Pharod falls silent, and suddenly, you have a feeling that Pharod is dissecting you, like a corpse on a Mortuary slab. "I know much you would know. Much, yes. Much, indeed..." Pharod smiles slowly, the folds of flesh on his face peeling back like a curtain.~ */
  IF ~~ THEN REPLY #17953 /* ~"What do you know of me?"~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #17846 /* ~Pharod licks his lips, then settles himself upon his crutch like a vulture. "No, no... not free, the question you ask." His pasty-white hands tap the edge of his crutch. "Much I can tell you, but the telling has a cost."~ */
  IF ~~ THEN REPLY #17954 /* ~"Go on, Pharod..."~ */ GOTO 34
END

IF ~  GlobalGT("Pharod","GLOBAL",0)
Global("Pharod_Quest","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY #17847 /* ~"Ah, corpse..." Pharod turns as you approach, his crutch *clacking* on the cobbles of the Court. He licks his lips and smiles expectantly. "Have you brought me what I asked for?"~ */
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17955 /* ~"The bronze sphere? Here it is."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(15000)
~ GOTO 54
  IF ~~ THEN REPLY #17956 /* ~"I had some questions first..."~ */ GOTO 17
  IF ~  !PartyHasItem("Bsphere")
~ THEN REPLY #17957 /* ~"Not yet. I will return when I have it."~ */ EXIT
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #17958 /* ~"I'm... still searching for it. I'll return when I have it."~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 2.0 16.1 18.1 19.0 20.1 21.1 22.3 23.1 24.1 25.0 26.1 27.1 28.1 29.2 30.1 31.0 44.0 45.3 46.2 47.1 48.1 49.1 50.1 51.1 52.1 53.0 54.1 55.1 56.3 57.2 58.1 59.2 60.1 61.2 62.4 63.2 64.2 65.3 66.1 67.1 68.1 69.1 71.2 73.1 74.1 76.1 79.0 80.0 85.1 86.2 87.0
  SAY #17848 /* ~"Then ask!" Pharod smacks his crutch on the cobbles, as if passing sentence. "Come, come, corpse, time's short and so's my patience."~ */
  IF ~~ THEN REPLY #17959 /* ~"When you greeted me, you said something about taking me 'on a jaunt to the Mortuary.' What did you mean?"~ */ GOTO 18
  IF ~~ THEN REPLY #17960 /* ~"What is this place?"~ */ GOTO 20
  IF ~  Global("Journal","GLOBAL",0)
~ THEN REPLY #17961 /* ~"When I awoke in the Mortuary, I was missing a journal. Do you know where it is?"~ */ GOTO 79
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #17962 /* ~"I once heard a tale of a man named Pharod. A king of rags."~ */ GOTO 26
  IF ~  Global("Know_Pharod_Bodies","GLOBAL",0)
~ THEN REPLY #17963 /* ~"I heard you have found a wealth of bodies, Pharod. Where do they come from?"~ */ GOTO 45
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17964 /* ~"I'll ask again since I brought you what you asked for: What do you know about me?"~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17965 /* ~"One more time: Did you take anything from my body when you found it?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #17966 /* ~"Where did Annah find my body again?"~ */ GOTO 74
  IF ~~ THEN REPLY #17967 /* ~"No questions - farewell, Pharod."~ */ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #17849 /* ~"You tell me, corpse - perhaps the Dusties that live there are more to yer likin' than some sweet-bosomed wench?" Pharod taps his crutch on the floor, the clacking echoing throughout the court. "Most forgiving of the Dusties, to let you stride in and outta there as you please, considerin' you don't have the decency to stay in the dead-book."~ */
  IF ~~ THEN REPLY #17968 /* ~"I wanted to get into the Mortuary? But why?"~ */ JOURNAL #17971 /* ~Pharod said that I wanted to get *back* in the Mortuary for some reason... why? Was I looking for something there?~ */ GOTO 19
  IF ~~ THEN REPLY #17969 /* ~"I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #17970 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #17850 /* ~Pharod scoffs. "Corpse, you were so bent to git in there, now you spill that you don't even know why's you wanted in there in the first place? Sometimes it's a wonder why the planes turn..."~ */
  IF ~~ THEN REPLY #17972 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #17973 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1
  SAY #17851 /* ~Pharod's eyes roll in his sockets, scanning across the ceiling, walls and then the floor. "This here's Ill-Wind Court - not a name of my choosing, thank you kindly - and the kip outside this Court is the Buried Village, corpse."~ */
  IF ~~ THEN REPLY #17974 /* ~"What is the Buried Village?"~ */ GOTO 21
  IF ~~ THEN REPLY #17975 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #17976 /* ~"I've heard enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #17852 /* ~"Well, now, there's a story..." Pharod licks his lips again, then shrugs. "But to tell true, the story bores me. The short of it? It's a piece of the Hive that got bricked over one day, a piece-o-Sigil got penned in the dead-book."~ */
  IF ~~ THEN REPLY #17977 /* ~"What do you mean?"~ */ GOTO 22
  IF ~~ THEN REPLY #17978 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #17979 /* ~"That's all I wanted to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #17853 /* ~"Y'know them floating goat-heads that serve the Lady, them dabuses? Well, no matter if you do or not - they go all 'round fixing, breaking, burying, building all the time. D'you follow?"~ */
  IF ~  Global("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17980 /* ~"Dabuses?"~ */ DO ~SetGlobal("Know_Dabus","GLOBAL",1)
~ GOTO 23
  IF ~  GlobalGT("Know_Dabus","GLOBAL",0)
~ THEN REPLY #17981 /* ~"Dabuses?"~ */ GOTO 23
  IF ~~ THEN REPLY #17982 /* ~"Yes, go on."~ */ GOTO 24
  IF ~~ THEN REPLY #17983 /* ~"Forget it. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #17984 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1
  SAY #17854 /* ~"Them goat-heads? C'mon, have yer senses left you?! Them floaters with the hammers and yammer on in symbols? The ones that do the Lady's will?" Pharod taps his crutch on the flagstones, making a sharp rapping noise. "Come now, don't play the jester with Pharod now, time's short, and so's my patience."~ */
  IF ~~ THEN REPLY #17985 /* ~"All right, go on."~ */ GOTO 24
  IF ~~ THEN REPLY #17986 /* ~"Forget it. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #17987 /* ~"Never mind. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.2 23.0
  SAY #17855 /* ~"Well, as the chant goes... and a dusty chant it is too, being so old... them dabuses just damn well bricked over a section of the Hive one day and all bodies just forgot 'bout it. Dump a lot a trash onnit, and soon, nobody even knows it's here." Pharod smiles. "Wicked, no? A piece of Sigil all-forgotten?"~ */
  IF ~~ THEN REPLY #17988 /* ~"How did you find it?"~ */ GOTO 25
  IF ~~ THEN REPLY #17989 /* ~"I see. I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #17990 /* ~"That is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0
  SAY #17856 /* ~Pharod *tsks.* "I still have my eyes, corpse, and I still have my ears, and when you have enough sense to tie the two together, then finding the dark of any matter is not as hard as some make it out to be." Pharod rubs his filthy cloak. "Now, was there somethin' else you wanted to pick my brain-box 'bout? You didn't come just to hear 'bout this raghole, did you?"~ */
  IF ~~ THEN REPLY #17991 /* ~"I did have some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #17992 /* ~"No, that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 17.3
  SAY #17857 /* ~Pharod's left eye widens, though you can't tell whether he's doing it, or whether the folds of skin are just peeling back. "That so? Sigil be a berg of tales, it is, but any tale involving Pharod can't be one these ears wouldn't want to hear." He looks at you with mock suspicion, then grins. "Become a tale-teller have you, corpse?"~ */
  IF ~~ THEN REPLY #17993 /* ~"The tale is a strange one. It tells of a man of position and wealth who had everything, then discovered he had nothing."~ */ GOTO 27
  IF ~~ THEN REPLY #17994 /* ~"No, I have not. I did have some other questions for you."~ */ GOTO 17
  IF ~~ THEN REPLY #17995 /* ~"No, that is all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #17858 /* ~Pharod's grin freezes on his face, and his eyes take on a strange, fiery gleam. "Are you certain you wish to tell this tale, corpse? May be you won't like how it ends, eh?"~ */
  IF ~~ THEN REPLY #17996 /* ~"The man was such a liar, a cheat, that he twisted himself into a corner. He discovered that when death would come for him, it would take him to a terrible place."~ */ GOTO 28
  IF ~~ THEN REPLY #17997 /* ~"Then I have questions for you instead..."~ */ GOTO 17
  IF ~~ THEN REPLY #17998 /* ~"Then I shall say no more. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 28 // from: 27.0
  SAY #17859 /* ~Pharod's grin dies, and he licks his lips. He looks... frightened.~ */
  IF ~~ THEN REPLY #17999 /* ~"He was determined to avoid such a fate, so he desperately looked for a way out of it. He would cheat fate as he had cheated others."~ */ GOTO 29
  IF ~~ THEN REPLY #18000 /* ~"The tale ends there. I have some questions for you, instead..."~ */ GOTO 17
  IF ~~ THEN REPLY #18001 /* ~"I have said enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #17860 /* ~Pharod's face twists, as if he had swallowed something unpleasant.~ */
  IF ~  GlobalLT("Pharod","GLOBAL",3)
~ THEN REPLY #18002 /* ~"He found an answer... or he found a place to look for the answer. He was told to search the trash of Sigil for that which would let him escape his fate. Now, Pharod... perhaps you can tell me how the story ends."~ */ GOTO 32
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18003 /* ~"He found an answer... or he found a place to look for the answer. He was told to search the trash of Sigil for that which would let him escape his fate. Is that what the sphere is, Pharod? Something that'll let you give fate the laugh?"~ */ GOTO 30
  IF ~~ THEN REPLY #18004 /* ~"The tale ends there. I have some questions for you, instead..."~ */ GOTO 17
  IF ~~ THEN REPLY #18005 /* ~"I have said enough. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 30 // from: 29.1
  SAY #17861 /* ~Pharod stares at you, his fingers tapping on his crutch. "We'll see, the two of us, won't we, corpse?" He sneers. "And what will let *you* give fate the laugh, eh? No bauble, no trinket for you, such a shame."~ */
  IF ~~ THEN REPLY #18006 /* ~"You don't know what the sphere is, do you?"~ */ GOTO 31
  IF ~~ THEN REPLY #18007 /* ~"I'll find out. I have some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #18008 /* ~"We'll see, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #17862 /* ~Pharod hisses at you. "Finding it is enough, corpse. The rest will come with the having."~ */
  IF ~~ THEN REPLY #18009 /* ~"Very well. I have some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #18010 /* ~"We'll see, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 29.0
  SAY #17863 /* ~Pharod's face breaks into a snarl. "It has NO ending! Not for I!" You watch as blood fills his features. "Now a tale do I have for YOU, corpse!"~ */
  IF ~~ THEN REPLY #18011 /* ~"Very w-"~ */ GOTO 33
  IF ~~ THEN REPLY #18012 /* ~"I don't w-"~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.0 32.1
  SAY #17864 /* ~Pharod's finger lashes out at you, bent like a herder's crook. "A corpse comes to Pharod's Court, ripe with stench and promises, claiming he would FIND that which Pharod needed, but what does he bring? *Nothing!* Promises broken, corpse! Do you deny it?! Say that you do, for it means that you've lied to me, and I will *die* because of it!"~ */
  IF ~  Global("Pharod_Quest","GLOBAL",1)
~ THEN REPLY #18013 /* ~"I am searching for it, Pharod. When I find it, I will bring it. No promises have been broken."~ */ GOTO 80
  IF ~  PartyHasItem("Bsphere")
~ THEN REPLY #18014 /* ~"Do you mean the bronze sphere? Calm yourself... here it is."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",2)
TakePartyItemNum("Bsphere",1)
AddexperienceParty(4000)
~ GOTO 54
END

IF ~~ THEN BEGIN 34 // from: 15.0
  SAY #17865 /* ~Pharod taps the flagstones with his crutch and sneers. "This village is not all that lies buried beneath Ragpicker's Square."~ */
  IF ~~ THEN REPLY #18041 /* ~"Yes...?"~ */ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #17866 /* ~"Chambers, vaults, corridors... filled with the dead, all a-sleep in their coffins. Somewhere in those halls, somewhere there, lies something miss-placed. Something mine."~ */
  IF ~  CheckStatGT(Protagonist,12,WIS)
~ THEN REPLY #18042 /* ~"What is it?"~ */ GOTO 36
  IF ~  CheckStatLT(Protagonist,13,WIS)
~ THEN REPLY #18043 /* ~"What is it?"~ */ GOTO 37
END

IF ~~ THEN BEGIN 36 // from: 35.0
  SAY #17867 /* ~"A small thing, a trinket, such a trifle..." As Pharod speaks, his words start echoing, as if two people were speaking... you know you've heard them before... from your own lips.~ */
  IF ~~ THEN REPLY #18044 /* ~"...it's a sphere. Made of bronze. Ugly. Feels like an egg to the touch, and it smells of rotten custard. Am I right?"~ */ GOTO 38
  IF ~~ THEN REPLY #18045 /* ~Remain silent and listen.~ */ GOTO 37
END

IF ~~ THEN BEGIN 37 // from: 35.1 36.1
  SAY #17868 /* ~"A small thing, a trinket, such a trifle..." Pharod turns away, as if embarrassed, but his voice sharpens, like a knife. "A sphere. Bronze. Ugly. Feels like an egg but tisn't, has the stink of custard 'bout it. Fetch it for me - such a small favor - then a favor will I do for you, corpse."~ */
  IF ~~ THEN REPLY #18046 /* ~"Do you know where this sphere is?"~ */ GOTO 40
  IF ~~ THEN REPLY #18047 /* ~"Why don't you get one of your Collectors to search for it?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #17869 /* ~Pharod falls deathly silent for a moment, then nods. "Yes... how much do you hide from me, corpse?" He chuckles. "Did you return to see if I remember what it is I want?"~ */
  IF ~~ THEN REPLY #18048 /* ~"Do you know where this sphere is?"~ */ GOTO 40
  IF ~~ THEN REPLY #18049 /* ~"Why don't you get one of your Collectors to search for it?"~ */ GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 37.1 38.1 40.0
  SAY #17870 /* ~"Because the corridors need no more dead from this village." Pharod *tsks.* "Strong, fast, clever... these are qualities my villagers do not have. They go below - they do not return." Pharod glances at you. "Perhaps the dead will welcome their own, hmmm? That is what *I* think, corpse."~ */
  IF ~~ THEN REPLY #18050 /* ~"Do you know where this sphere is?"~ */ GOTO 40
  IF ~~ THEN REPLY #18051 /* ~"Very well... I'll do it. But I want to know what I'm buying with this trinket."~ */ GOTO 41
END

IF ~~ THEN BEGIN 40 // from: 37.0 38.0 39.0
  SAY #17871 /* ~"Ah..." Pharod's sigh is like shifting sand. "And why do you suppose I ask you to look for it, corpse? I do not know *where* it is. I know it is buried deep, far deeper than any villager has ever gone." Pharod *tsks.* "It may be in the catacombs where the waters run deep, deep..."~ */
  IF ~~ THEN REPLY #18052 /* ~"Why don't you get one of your Collectors to search for it?"~ */ GOTO 39
  IF ~~ THEN REPLY #18053 /* ~"Very well... I'll do it. But I want to know what I'm buying with this trinket."~ */ GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 39.1 40.1
  SAY #17872 /* ~"There's a lot of knowing rattlin' around in my brain-box, corpse." He holds up a withered finger. "One of them is this bit of wisdom: everyone *wants* something, whether they know it or not. There is much I know about you... much that you would *want* to know..."~ */
  IF ~~ THEN REPLY #18054 /* ~"I doubt you can tell me anything of value, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18055 /* ~"Very well, I will see about finding this sphere for you... in exchange for what you know."~ */ GOTO 44
  IF ~~ THEN REPLY #18056 /* ~Truth: "Maybe you should tell me what you know, Pharod, or I'll pen your name in the dead-book with your blood."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18057 /* ~Bluff: "Maybe you should tell me what you know, Pharod, or I'll pen your name in the dead-book with your blood."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.2 41.3 43.0 43.1
  SAY #17873 /* ~Pharod's next words are delivered as if he has had a chance to memorize them. "Then what I know will die with me, corpse... it'll become as ash should I die. Nothing, nothing for you..."~ */
  IF ~~ THEN REPLY #18058 /* ~"I doubt you can tell me anything of value, Pharod."~ */ GOTO 43
  IF ~~ THEN REPLY #18059 /* ~"Very well, I will see about finding this sphere for you... in exchange for what you know."~ */ GOTO 44
END

IF ~~ THEN BEGIN 43 // from: 41.0 42.0
  SAY #17874 /* ~"I've learned another priceless bit of wisdom... for you, I give it for free: A man is often *wrong* about a great many things, and a dead man is one who has been wrong one too many times." Pharod licks his lips. "Much do I have to tell you that one would consider of value." ~ */
  IF ~~ THEN REPLY #18060 /* ~Truth: "Maybe you should tell me what you know, Pharod, or I'll pen your name in the dead-book with your blood."~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_1","GLOBALGood",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18061 /* ~Bluff: "Maybe you should tell me what you know, Pharod, or I'll pen your name in the dead-book with your blood."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_1","GLOBALLaw",-1)
~ GOTO 42
  IF ~~ THEN REPLY #18062 /* ~"Very well, I will see about finding this sphere for you... in exchange for what you know."~ */ GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 41.1 42.1 43.2
  SAY #17875 /* ~"Very well, a deal struck, a deal made..." Pharod *cracks* his crutch sharply against the flagstones. "A sphere for a peek inside my brain-box. Now, corpse - there is no time to waste. Go to the gate at the south and east and tell those slumbering fools to open it for you - make haste, make haste."~ */
  IF ~~ THEN REPLY #18063 /* ~"Hold a moment... I had some other questions for you before I leave..."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~I agreed to descend into the catacombs for Pharod and bring him back a bronze sphere. He thinks the sphere is located in the deepest part of the catacombs... where the water has drowned out the passageways. The entrance to the first part of the catacombs is in the southeast portion of the village, past the gate... Pharod said to mention my task to the guards, who will open the gates and allow me by.~ */ GOTO 17
  IF ~~ THEN REPLY #18064 /* ~"Very well. I will go to the gate now and enter the catacombs."~ */ DO ~SetGlobal("Pharod_Quest","GLOBAL",1)
~ JOURNAL #18065 /* ~I agreed to descend into the catacombs for Pharod and bring him back a bronze sphere. He thinks the sphere is located in the deepest part of the catacombs... where the water has drowned out the passageways. The entrance to the first part of the catacombs is in the southeast portion of the village, past the gate... Pharod said to mention my task to the guards, who will open the gates and allow me by.~ */ EXIT
END

IF ~~ THEN BEGIN 45 // from: 17.4
  SAY #17876 /* ~"Does a mage tell the secrets of his craft? So it is with the Collector..." Pharod frowns, studying you. "Perhaps I will tell you... but you must promise that it is for your ears only."~ */
  IF ~  CheckStatGT(Protagonist,13,CHR)
~ THEN REPLY #18066 /* ~"Are you comparing yourself to a *mage,* Pharod? I think you're insulting the craft."~ */ GOTO 46
  IF ~~ THEN REPLY #18067 /* ~Vow: "What I hear is for my ears only."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_3","GLOBALLaw",1)
~ JOURNAL #18071 /* ~I promised Pharod I wouldn't say where he was getting the bodies from.~ */ GOTO 48
  IF ~~ THEN REPLY #18068 /* ~Lie: "What I hear is for my ears only."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_2","GLOBALLaw",-1)
~ JOURNAL #18072 /* ~I lied and 'swore' I wouldn't tell anyone where Pharod was getting the bodies from. The old ghoul actually believed me... I think he was dying to tell someone how clever he was.~ */ GOTO 48
  IF ~~ THEN REPLY #18069 /* ~"I don't care to know that much. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18070 /* ~"Forget it. I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #17877 /* ~Pharod flushes, and he taps his crutch against the ground. "Collecting is as much a skill as any petty mageling can hold a copper to."~ */
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",0)
~ THEN REPLY #18073 /* ~"Pharod, finding a bunch of dead bodies and selling them can hardly compare to the study of magic."~ */ DO ~AddexperienceParty(500)
SetGlobal("Pharod_Extortion_Bodies","GLOBAL",1)
~ GOTO 47
  IF ~  Global("Pharod_Extortion_Bodies","GLOBAL",1)
~ THEN REPLY #18074 /* ~"Like I said before, Pharod: Finding a bunch of dead bodies and selling them can hardly compare to the study of magic."~ */ GOTO 47
  IF ~~ THEN REPLY #18075 /* ~"I don't want to argue this with you. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18076 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 47 // from: 46.0 46.1
  SAY #17878 /* ~"Was it not skill that found this place?!" Pharod's voice rises to a bellow, and his fingers tighten around his crutch. "It took sense to find this place, it did, and it took sense to make the most of it!"~ */
  IF ~~ THEN REPLY #18077 /* ~"The Buried Village? Come on, what's the secret of that?"~ */ JOURNAL #18080 /* ~I tricked Pharod into telling me where he gets his bodies without having to give my word not to say anything. I don't think he even noticed... more fool him.~ */ GOTO 48
  IF ~~ THEN REPLY #18078 /* ~"I don't want to argue this with you. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18079 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 48 // from: 45.1 45.2 47.0
  SAY #17879 /* ~"Very well..." Pharod taps the flagstones with his crutch and sneers. "This village is not all that lies buried beneath Ragpicker's Square."~ */
  IF ~~ THEN REPLY #18081 /* ~"Go on..."~ */ GOTO 49
  IF ~~ THEN REPLY #18082 /* ~"I don't care to know that much. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18083 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 49 // from: 48.0
  SAY #17880 /* ~"Chambers, vaults, corridors..." Pharod gives the faintest of smiles, and his eyes gleam like gold. "Places, black as pitch, filled with weeping stones and the precious dead, all a-sleep in their coffins. Sleeping..."~ */
  IF ~~ THEN REPLY #18084 /* ~"Where do all these dead come from?"~ */ GOTO 50
  IF ~~ THEN REPLY #18085 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18086 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 50 // from: 49.0
  SAY #17881 /* ~Pharod affixes you with a lopsided stare. "Corpse, corpse... everything dies. Life is so short, but death lasts for so very, very long. Many people, many deaths..." His stare travels past you. "Such a waste for their deaths to be useless in a Dustie's arms, eh?"~ */
  IF ~~ THEN REPLY #18087 /* ~"What do you mean?"~ */ DO ~SetGlobal("Know_Pharod_Bodies","GLOBAL",1)
~ JOURNAL #18090 /* ~Found out where that old ghoul Pharod is getting his wealth of dead bodies from: he has found a stretch of catacombs, buried beneath the Buried Village. The Dustmen have interred a number of bodies there, so Pharod digs them up, sells them back to the Dustmen, waits for the Dustmen to bury them again, then digs them up again. A non-stop source of jink... ghoulish, but effective.~ */ GOTO 51
  IF ~~ THEN REPLY #18088 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18089 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #17882 /* ~Pharod smiles, greedily. "Not all the dead that goes to the Mortuary gate is fed to the furnace, corpse. The Dusties bury some of the dead in the city's bowels. Under the village... so near, so close... is such a place. I would have been a fool not to see opportunities..."~ */
  IF ~~ THEN REPLY #18091 /* ~"So you rob the catacombs of the dead the Dustmen placed there, sell them back to the Dustmen and they bury them again?"~ */ GOTO 52
  IF ~~ THEN REPLY #18092 /* ~"Never mind. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18093 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #17883 /* ~Pharod nods, then chuckles lightly - the sound is like shifting sand. "These catacombs are as deep as a Dustie's pockets."~ */
  IF ~~ THEN REPLY #18094 /* ~"And as deep as the greed of man."~ */ GOTO 53
  IF ~~ THEN REPLY #18095 /* ~"Very clever, Pharod. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18096 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 53 // from: 52.0
  SAY #17884 /* ~"Oh, yes..." Pharod sneers. "And the greed of man is something that shall always be counted upon when naught else is left, eh?"~ */
  IF ~~ THEN REPLY #18097 /* ~"Very clever, Pharod. I had some other questions..."~ */ GOTO 17
  IF ~~ THEN REPLY #18098 /* ~"I've heard enough... I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 54 // from: 16.0 33.1
  SAY #17885 /* ~Pharod's eyes gleam as you hand him the bronze sphere - he touches it gingerly, almost reverently. "You..." He chuckles. "Ah, corpse, such a gamble you were, and paid off handsomely, you have..." Pharod studies his reflection in the sphere and *tsks.* "The years have been cruel to me, I see..."~ */
  IF ~~ THEN REPLY #18099 /* ~"I did what you asked, Pharod. Now I want some answers."~ */ GOTO 55
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18100 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18101 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 55 // from: 54.0
  SAY #17886 /* ~Pharod doesn't even look at you as you speak... his attention is swallowed by the sphere he holds. "Yes, yes, ask your questions..." Pharod turns the sphere in his hands. "Very important, your questions..." ~ */
  IF ~~ THEN REPLY #18102 /* ~"What do you know about me? Why was I told to seek you out?"~ */ GOTO 56
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18103 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18104 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 56 // from: 55.0
  SAY #17887 /* ~Pharod studies you with a critical eye. "Stay your weapons for what I'm about to say, corpse, for it could be your ears'll take offense..." Pharod smiles wickedly. "My ears no longer care, but yours are still fresh for the burning, it seems."~ */
  IF ~~ THEN REPLY #18105 /* ~"Tell me, Pharod. I'm losing patience."~ */ GOTO 57
  IF ~~ THEN REPLY #18106 /* ~Vow: "You have my word that I'll stay my hand, Pharod. But I need to know what you know."~ */ DO ~IncrementGlobalOnceEx("GLOBALLawful_Pharod_4","GLOBALLaw",1)
~ GOTO 57
  IF ~~ THEN REPLY #18107 /* ~Lie: "You have my word that I'll stay my hand, Pharod. But I need to know what you know."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_3","GLOBALLaw",-1)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_2","GLOBALGood",-1)
~ GOTO 57
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18108 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18109 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 57 // from: 56.0 56.1 56.2
  SAY #17888 /* ~"The truth..." Pharod's tone softens, as if cajoling. "The truth was stretched a bit from my mind to my tongue when we first spoke, corpse - in all terrible honesty, I know little about you." He raises a withered finger. "Yet, hear me out..."~ */
  IF ~~ THEN REPLY #18110 /* ~"Yes...?"~ */ GOTO 58
  IF ~~ THEN REPLY #18111 /* ~"Pharod, this better be *worth* hearing."~ */ GOTO 58
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18112 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18113 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 58 // from: 17.5 57.0 57.1
  SAY #17889 /* ~"You're a cutter who plays at being dead, as I see." Pharod squints at you. "Some time ago, you came to me, like you are now, but not, just strolled right into Ill-Wind Court and said you wanted an 'audience' with me." ~ */
  IF ~~ THEN REPLY #18114 /* ~"An audience with you?"~ */ GOTO 59
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18115 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18116 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #17890 /* ~"Aye, an 'audience.'" Pharod chuckles, like whispering sand. "Like I was royalty..." He seems amused, but there's an edge in his voice. "You knew the right things to say, you did, oh yes. You spoke the chant like a Guvner, born and true. And I listened."~ */
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",1)
~ THEN REPLY #18117 /* ~"But you were royalty... at least a man of position, once, were you not?"~ */ GOTO 60
  IF ~  Global("Story_Reekwind_Pharod","GLOBAL",0)
~ THEN REPLY #18118 /* ~"What did he... I... want from you?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18119 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18120 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 59.0
  SAY #17891 /* ~"Once." Pharod hisses. "*Once.* Titles, only words, NOTHING in the end..." He lapses into silence, then *tsks.* "Knew that, too, my history, I think you did..."~ */
  IF ~~ THEN REPLY #18121 /* ~"What did he... I... want from you?"~ */ GOTO 61
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18122 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18123 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from: 59.1 60.0
  SAY #17892 /* ~Pharod gives a mock bow, his crutch creaking as he leans against it. "'Oh, Pharod, great Collector King,' you says. 'I have come before you to request a boon.' 'A boon?' I says. 'What could I offer a man of such obvious strength?'"~ */
  IF ~~ THEN REPLY #18124 /* ~"Go on..."~ */ GOTO 62
  IF ~~ THEN REPLY #18125 /* ~"Enough with the false pleasantries, Pharod. What did I want?"~ */ GOTO 62
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18126 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18127 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 62 // from: 61.0 61.1
  SAY #17893 /* ~Pharod wags his crooked finger. "And you asked for a strange thing: You says, 'Lord Pharod, I ask for *courtesy.* Your Collectors roam throughout the Hive. If they should find my body, I want it kept safe. That is all I ask.'" Pharod shrugs. "A simple boon."~ */
  IF ~  CheckStatGT(Protagonist,13,WIS)
~ THEN REPLY #18128 /* ~"I see. And is that all you know?"~ */ GOTO 63
  IF ~  CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18129 /* ~"I see. And is that all you know?"~ */ GOTO 68
  IF ~  CheckStatGT(Protagonist,12,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18130 /* ~"Except... there's nothing to be gained from it, for you. Why did you even agree to do it?"~ */ GOTO 64
  IF ~  CheckStatGT(Protagonist,13,INT)
CheckStatLT(Protagonist,13,CHR)
CheckStatLT(Protagonist,14,WIS)
~ THEN REPLY #18131 /* ~"Except... there's nothing to be gained from it, for you. Why did you even agree to do it?"~ */ GOTO 64
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18132 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18133 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 63 // from: 62.0
  SAY #17894 /* ~Before you can speak, you suddenly feel a prickling in your skull as Pharod speaks the word 'boon' and the smell of blood and fear rushes through your nostrils... Pharod is hiding something, something that happened in the past, involving you - and it scares him. The boon he granted you was no simple matter.~ */
  IF ~~ THEN REPLY #18134 /* ~"So you granted my boon just like that? There's nothing to be gained from it, for you. Why did you even agree to do it?"~ */ GOTO 64
  IF ~~ THEN REPLY #18135 /* ~"Uh... I see. And is that all you know?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18136 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18137 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 64 // from: 62.2 62.3 63.0
  SAY #17895 /* ~Pharod falls silent for a moment. "A dead man can keep no promises, and promises to a dead man are easy enough to make, corpse." ~ */
  IF ~~ THEN REPLY #18138 /* ~"You're a merchant, Pharod, not a Samaritan. There must have been another reason..."~ */ DO ~SetGlobal("Pharod_Sphere_Truth","GLOBAL",1)
~ GOTO 65
  IF ~~ THEN REPLY #18139 /* ~"All right, then. Is that all you know?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18140 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18141 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 65 // from: 64.0
  SAY #17896 /* ~"Aye..." Pharod's face suddenly peels back in fury, his skin flushing red. "After you'd strung up a score of my blood on the Hive walls t'DIE, I had *enough* reason to promise you the PLANES themselves. Then your butchering self comes to my HOME, my KIP, to DEMAND a 'boon' of me..." Pharod calms himself, though his face is still flushed. "Aye, I agreed..."~ */
  IF ~~ THEN REPLY #18142 /* ~Truth: "I'm sorry about your people, Pharod. That wasn't me... but if I can make up the loss to you, I will."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
IncrementGlobalOnceEx("GLOBALLawful_Pharod_5","GLOBALLaw",1)
~ GOTO 66
  IF ~~ THEN REPLY #18143 /* ~Truth: "I'm sorry about your people, Pharod, for what that's worth."~ */ DO ~IncrementGlobalOnceEx("GLOBALGood_Pharod_1","GLOBALGood",1)
~ GOTO 66
  IF ~~ THEN REPLY #18144 /* ~"Go on... what else?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18145 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18146 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 66 // from: 65.0 65.1
  SAY #17897 /* ~Pharod *tsks.* "No matter, them bodies served me well enough. The Dusties pay the same for fresh deaders as for old..."~ */
  IF ~~ THEN REPLY #18147 /* ~"Was that the only reason you agreed to my request?"~ */ GOTO 67
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18148 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18149 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 67 // from: 65.2 66.0
  SAY #17898 /* ~"You knew things about me... things only I knew. You knew I was greedy for somethin' beneath Sigil, and you put a name and picture to it: the bronze sphere, you said. I didn't think you would fetch it for me..." He chuckles. "Yet did you? Aye. The planes turn in strange ways..."~ */
  IF ~~ THEN REPLY #18150 /* ~"And that's *all* you know?"~ */ GOTO 68
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18151 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18152 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from: 62.1 63.1 64.1 67.0
  SAY #17899 /* ~"All I know? Nay... but it's all I know about you, corpse."~ */
  IF ~~ THEN REPLY #18153 /* ~"Fine. Next question... what did you take off my body after I died?"~ */ GOTO 69
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18154 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18155 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 69 // from: 17.6 68.0
  SAY #17900 /* ~"I?" Pharod licks his lips. "Why, *I* took nothing, corpse." His face splits in a grin. "Then, I wasn't the one that found your body..."~ */
  IF ~~ THEN REPLY #18156 /* ~"Who did?"~ */ GOTO 70
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18157 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18158 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 70 // from: 69.0 75.4
  SAY #17901 /* ~Pharod's smile widens, pulling the pasty folds of flesh back from his face like a curtain. "My daughter, the rose of my eye, the sweetest of my family, and the sharpest wit of them all..." He licks his dry lips and sighs in mock sadness. "Such a cruel tongue on her..."~ */
  IF ~  !Dead("Annah")
~ THEN REPLY #18159 /* ~"Your *daughter?* Who?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18161 /* ~I brought the bronze sphere to Pharod. There was little of use he could tell me: he said that I had come to him and asked for his 'assistance' in making sure the members of his Collector gang brought my body, safe and sound, to the Mortuary when I died. He told me that my body had been found by his daughter, Annah.~ */ GOTO 71
  IF ~  Dead("Annah")
~ THEN REPLY #18160 /* ~"Your *daughter?* Who?"~ */ DO ~SetGlobal("Pharod","GLOBAL",3)
~ JOURNAL #18162 /* ~I brought the bronze sphere to Pharod. There was little of use he could tell me: he said that I had come to him and asked for his 'assistance' in making sure the members of his Collector gang brought my body, safe and sound, to the Mortuary when I died. He told me that my body had been found by his daughter, Annah... I think that may have been the name of one of the tieflings I killed in the Hive. No matter, as long as Pharod knows where my body was found...~ */ GOTO 72
END

IF ~~ THEN BEGIN 71 // from: 70.0 78.0 78.1 78.2
  SAY #17902 /* ~"My darlin' girl, Annah. She found you, dead as deader can be, in a place where most Collectors wouldn't go for a *mountain* of coppers. Could be she plucked something off you, could be not...?" He leans in, shaking his head. "You'll have t'ask her, for it's not her Da's place to say."~ */
  IF ~  CheckStatGT(Protagonist,13,INT)
Global("Pharod_Extortion","GLOBAL",0)
~ THEN REPLY #18163 /* ~"Don't lie to me, Pharod. You're a merchant, and you always take a cut from your workers. What did Annah give *you* from my body?"~ */ GOTO 75
  IF ~  Global("Annah","GLOBAL",0)
~ THEN REPLY #18164 /* ~"Annah? All right, I'll ask her. Where is she?"~ */ GOTO 73
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18166 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18167 /* ~"Very well, that's all I wished to know."~ */ EXIT
END

IF ~~ THEN BEGIN 72 // from: 70.1
  SAY #17903 /* ~"My darlin' girl, Annah. She found you, dead as deader can be, in a place where most Collectors wouldn't go for a *mountain* of coppers. Maybe if you were to go there, you might find these precious bits you're a-missing..."~ */
  IF ~~ THEN REPLY #18168 /* ~"Where did she find me?"~ */ GOTO 74
END

IF ~~ THEN BEGIN 73 // from: 71.1
  SAY #17904 /* ~"Where's Annah?" Pharod shrugs. "She's hiding in the shadows here, I expect, listening to us trade the chant. I called for her after you went below... had to ask her if you were *really* in the dead-book when she found you or not..." He chuckles dryly, then takes a deep breath and calls out to the darkness. "Annah! Stop mithering in those shadows and come greet our guest!"~ */
  IF ~~ THEN REPLY #18169 /* ~"She's here...?"~ */ DO ~SetGlobal("0110_Cut_Scene","GLOBAL",1)
StartCutSceneMode()
StartCutSceneEx("0110cut1",FALSE)
~ EXIT
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18170 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Annah","GLOBAL",0)
~ THEN REPLY #18171 /* ~"Very well, that's all I wished to know. I'll go find her."~ */ EXIT
END

IF ~~ THEN BEGIN 74 // from: 17.7 72.0
  SAY #17905 /* ~"She says she found you in the Hive, she did. In a haunted Alley, north and east of the Smoldering Corpse..." Pharod thinks, tapping his fingers against his crutch. "O' course, you'll need to get past those Chaosmen Hivers, first..."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #18172 /* ~"What do you mean?"~ */ GOTO 85
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #18173 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47828 /* ~"Very well, that's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 75 // from: 71.0
  SAY #17906 /* ~"Ah... yes... my tribute..." Pharod folds his withered hands over his crutch, almost protectively. "There's no telling what was from *you* or not, corpse. Most like, there was nothing."~ */
  IF ~~ THEN REPLY #18175 /* ~Truth: "Pharod, my patience is at an end. There will be nothing left of you or this village if you don't hand over the 'tribute.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALEvil_Pharod_3","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18176 /* ~Bluff: "Pharod, my patience is at an end. There will be nothing left of you or this village if you don't hand over the 'tribute.'"~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_4","GLOBALLaw",-1)
~ GOTO 76
  IF ~  !Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18177 /* ~Truth: "Pharod, my patience is at an end. If you don't hand over what was stolen from me, I will see to it the Dustmen know where to find you."~ */ GOTO 76
  IF ~  Global("Lawful_Pharod_3","GLOBAL",1)
~ THEN REPLY #18178 /* ~Truth: "Pharod, my patience is at an end. If you don't hand over what was stolen from me, I will see to it the Dustmen know where to find you."~ */ DO ~IncrementGlobalOnceEx("GLOBALChaotic_Pharod_5","GLOBALLaw",-3)
IncrementGlobalOnceEx("GLOBALEvil_Pharod_4","GLOBALGood",-1)
~ GOTO 76
  IF ~~ THEN REPLY #18179 /* ~"Very well... now who found me again?"~ */ GOTO 70
END

IF ~~ THEN BEGIN 76 // from: 75.0 75.1 75.2 75.3
  SAY #17907 /* ~Pharod is silent for a moment. He taps his fingers against his crutch... slowly.~ */
  IF ~~ THEN REPLY #18180 /* ~"Well?"~ */ DO ~SetGlobal("Pharod_Extortion","GLOBAL",1)
AddexperienceParty(1000)
~ GOTO 77
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18181 /* ~"Never mind. I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Pharod","GLOBAL",2)
~ THEN REPLY #18182 /* ~"That's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 77 // from: 76.0
  SAY #17908 /* ~"Where has the decency of man gone..." Pharod grumbles, shaking his head. "A courtesy I am doing for you, corpse... such a courtesy. Pharod *parting* with anything... it'd be the dead-book for me if anyone heard... wait here, move not a yard. I shall return."~ */
  IF ~  CheckStatLT(Protagonist,14,INT)
~ THEN REPLY #18183 /* ~Wait...~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18185 /* ~Pharod fetched the tribute that his daughter had given to him from my body. With the tribute was a strange scrap of paper... which I have a strange feeling I may have written to myself.~ */ GOTO 78
  IF ~  CheckStatGT(Protagonist,13,INT)
~ THEN REPLY #18184 /* ~"Hmmm. Wonder where he's going..."~ */ DO ~FadeToColor([20.0],0)
Wait(3)
FadeFromColor([20.0],0)
~ JOURNAL #18186 /* ~Pharod fetched the tribute that his daughter had given to him from my body. With the tribute was a strange scrap of paper... which I have a strange feeling I may have written to myself. Even more curious, I wonder where Pharod went to get the tribute... he didn't leave by the main door, but I don't think there are any other exits from Ill-Wind Court. ~ */ GOTO 78
END

IF ~~ THEN BEGIN 78 // from: 77.0 77.1
  SAY #17909 /* ~After a long while, Pharod returns, his crutch *clacking* against the flagstones. In his hands, he holds a number of items, which he passes off to you. "You will be *silent* on this and accept the *blessing* that I even remembered..." ~ */
  IF ~  CheckStatLT(Protagonist,11,CHR)
~ THEN REPLY #18187 /* ~"A few hundred coppers, and a scrap of paper? Great. Now who was it who found me again?"~ */ DO ~GiveGoldForce(200)
GiveItemCreate("Npharod",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,10,CHR)
CheckStatLT(Protagonist,15,CHR)
~ THEN REPLY #18188 /* ~"A few hundred coppers, a scrap of paper, and a ring? Very well... now who was it who found me again?"~ */ DO ~GiveGoldForce(250)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
  IF ~  CheckStatGT(Protagonist,14,CHR)
~ THEN REPLY #18189 /* ~"A few hundred coppers, a scrap of paper, bandages, and a ring? Very well... now who was it who found me again?"~ */ DO ~GiveGoldForce(350)
GiveItemCreate("Npharod",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Bandage",Protagonist,1,0,0)
GiveItemCreate("Ring01",Protagonist,1,0,0)
~ GOTO 71
END

IF ~~ THEN BEGIN 79 // from: 17.2
  SAY #17910 /* ~Pharod squints at you, the folds of flesh coming down almost over his eyes. "A journal you had when we spoke last... has it lost itself?" Pharod chuckles dryly. "These eyes have not seen it... but keep them peeled, I will. I would love to read such a *magnificent* work..."~ */
  IF ~~ THEN REPLY #18190 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #18191 /* ~"I must take my leave. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 80 // from: 33.0
  SAY #17911 /* ~"Lies that lead to the death of another are the blackest thing..." Pharod taps his crutch, wheezing slightly. "You'd best keep your word, corpse, else the planes will grind you like a miller's wheel."~ */
  IF ~~ THEN REPLY #18192 /* ~"I'll keep that in mind. I have some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #18193 /* ~"We'll see, Pharod. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #47307 /* ~"Annah, rose of my eye - have I not taught you to *respect* the dead?" A thin smile worms across Pharod's face, and he makes a slight bow towards you. "This resourceful corpse needs to know where you found him."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 220
END

IF ~~ THEN BEGIN 82 // from:
  SAY #47308 /* ~"Ah! Yes, my mistake..." Pharod nods, then his voice drops dangerously. "Yet, my darlin' Annah, that still makes it YOUR mistake... for this one only had one foot in the dead-book when you brought him to me." He taps his crutch against the flagstones with a light tap. "He woke up, sought me out - MOST embarrassing."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 221
END

IF ~~ THEN BEGIN 83 // from:
  SAY #47309 /* ~"Show him where you found his body, Annah." Pharod taps his crutch again for emphasis. "Take him to the haunted alley." Pharod studies Annah for a moment, then grins and turns to you. "If yeh happen to lose my darlin' Annah on the way to the alley, corpse, you come back and see Pharod. I'll guide you..."~ */
  IF ~~ THEN JOURNAL #59007 /* ~I don't know whether to be flattered or insulted... Pharod just told his 'daughter' to escort me to the place where she'd scavenged my body. Some haunted alley. He told me if she happened to lose me on the way there, to come back and see him and he would guide me... ~ */ EXTERN ~DANNAH~ 224
END

IF ~~ THEN BEGIN 84 // from:
  SAY #47310 /* ~"Annah..." Pharod's voice is quiet, but it cuts through the girl's speech like a knife. "Be his minder. See that he comes to no harm while in the village. Then guide him to where he wishes to go."~ */
  IF ~~ THEN EXTERN ~DANNAH~ 226
END

IF ~~ THEN BEGIN 85 // from: 74.0
  SAY #47829 /* ~"My sweet Annah had to worm her way through one of their kips to get to the alley where she found you... a tenement crawling with them stood between her and the alley where she found your body."~ */
  IF ~  GlobalLT("Know_Painted_Door","GLOBAL",2)
~ THEN REPLY #47832 /* ~"So... there's a building I need to go through *before* I get to this 'haunted alley'?"~ */ GOTO 86
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47833 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47834 /* ~"Very well, that's all I wished to know. Farewell."~ */ EXIT
END

IF ~~ THEN BEGIN 86 // from: 85.0
  SAY #47830 /* ~"Yes... she said something about how those Chaosmen had a special gate." Pharod thinks for a moment. "It was a door you could only open when you had your eyes shut - otherwise it looked like nothing more than some Hive painting of a door."~ */
  IF ~  Global("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47835 /* ~"I remember that door... it's north and east of the Smoldering Corpse. I thought it was just a painting, though. So it becomes a REAL door when you try and open it with your eyes shut?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod told me where my body was found... a 'haunted alley' near the Smoldering Corpse bar in the Hive. Maybe I can find some information there about how I died. He told me that in order to get to the alley, I would have to go through a tenement building crawling with Chaosmen. The entrance to the building was the painting of a door north of the Smoldering Corpse; when you close your eyes, the door becomes real. This city keeps getting stranger and stranger... ~ */ GOTO 87
  IF ~  Global("Know_Painted_Door","GLOBAL",0)
~ THEN REPLY #47836 /* ~"So this... painted door... is north and east of the Smoldering Corpse? And it becomes MORE than a painting when you try and open it with your eyes closed?"~ */ DO ~SetGlobal("Know_Painted_Door","GLOBAL",2)
~ JOURNAL #47848 /* ~Pharod told me where my body was found... a 'haunted alley' near the Smoldering Corpse bar in the Hive. Maybe I can find some information there about how I died. He told me that in order to get to the alley, I would have to go through a tenement building crawling with Chaosmen. The entrance to the building was the painting of a door north of the Smoldering Corpse; when you close your eyes, the door becomes real. This city keeps getting stranger and stranger... ~ */ GOTO 87
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47837 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~  GlobalGT("Know_Painted_Door","GLOBAL",1)
~ THEN REPLY #47838 /* ~"Very well, that's all I wished to know. I'll go find this painted door."~ */ EXIT
END

IF ~~ THEN BEGIN 87 // from: 86.0 86.1
  SAY #47831 /* ~"Yes..." Pharod smiles. "Strange are Sigil ways, corpse. Strange are Sigil ways." ~ */
  IF ~~ THEN REPLY #47839 /* ~"I had some other questions for you..."~ */ GOTO 17
  IF ~~ THEN REPLY #47840 /* ~"Very well, that's all I wished to know. I'll go find this painted door."~ */ EXIT
END
